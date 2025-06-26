#include <stdio.h>       // For printf
#include "xparameters.h" // Contains device base addresses
#include "xgpio.h"       // For XGpio driver functions
#include "xstatus.h"     // For XST_SUCCESS, XST_FAILURE
#include "sleep.h"       // For the sleep function

// --- Device Base Addresses ---
// You MUST replace these with the actual base addresses from your xparameters.h
// Example: If your Vivado design has AXI GPIOs named "axi_gpio_leds" and "axi_gpio_buttons",
#define LEDS_GPIO_BASEADDR    XPAR_AXI_GPIO_LEDS_BASEADDR
#define BUTTONS_GPIO_BASEADDR XPAR_AXI_GPIO_BUTTONS_BASEADDR

// --- GPIO Channel Definitions ---
// For a simple AXI GPIO, Channel 1 is typically used.
#define GPIO_CHANNEL_1 1

// --- Function Prototypes ---
/**
 * @brief Initializes a single XGpio instance.
 *
 * @param GpioPtr Pointer to the XGpio instance to be initialized.
 * @param BaseAddress The base address of the AXI GPIO IP.
 * @param DirectionMask The direction mask for the GPIO channel (0xFFFFFFFF for input, 0x00000000 for output).
 * @return XST_SUCCESS if initialization is successful, XST_FAILURE otherwise.
 */
static int Gpio_Init(XGpio *GpioPtr, UINTPTR BaseAddress, u32 DirectionMask);

// --- Main Function ---
int main (void)
{
    XGpio leds_gpio;   // Instance for controlling LEDs
    XGpio buttons_gpio; // Instance for reading buttons
    int status;
    u32 button_data;    // Variable to store button status

    printf("--- Starting Vitis 2024.1+ AXI GPIO Example ---\r\n");

    // Initialize LEDs AXI GPIO: Set as Output
    // 0x00000000 means all pins in Channel 1 are set as outputs.
    status = Gpio_Init(&leds_gpio, LEDS_GPIO_BASEADDR, 0x00000000);
    if (status != XST_SUCCESS) {
        printf("ERROR: Failed to initialize LEDs GPIO.\r\n");
        return XST_FAILURE;
    }
    // Initially turn off all LEDs
    XGpio_DiscreteWrite(&leds_gpio, GPIO_CHANNEL_1, 0x0);
    printf("LEDs GPIO initialized as output. All LEDs are off.\r\n");

    // Initialize Buttons AXI GPIO: Set as Input
    // 0xFFFFFFFF means all pins in Channel 1 are set as inputs.
    status = Gpio_Init(&buttons_gpio, BUTTONS_GPIO_BASEADDR, 0xFFFFFFFF);
    if (status != XST_SUCCESS) {
        printf("ERROR: Failed to initialize Buttons GPIO.\r\n");
        return XST_FAILURE;
    }
    printf("Buttons GPIO initialized as input.\r\n");

    // --- Main Application Loop ---
    while (1)
    {
        // Read the current state of the buttons
        button_data = XGpio_DiscreteRead(&buttons_gpio, GPIO_CHANNEL_1);
        // printf("Buttons Status: 0x%02x\r\n", button_data); // Use %02x for consistent formatting

        // button Pull up
        printf("Buttons Status : %01d %01d\r\n", (~(button_data>>1))&0x1, (~(button_data>>0))&0x1);

        // Control LEDs based on button status
        // Write the button status directly to the LED GPIO.
        // This will turn on LEDs corresponding to pressed buttons.
        XGpio_DiscreteWrite(&leds_gpio, GPIO_CHANNEL_1, button_data);

        sleep(1); // Wait for 1 second before next read
    }

    return XST_SUCCESS; // This line is never reached in a continuous loop
}


/**
 * @brief Initializes a single XGpio instance.
 *
 * This function handles the lookup of the configuration and
 * initialization of an AXI GPIO device.
 *
 * @param GpioPtr Pointer to the XGpio instance to be initialized.
 * @param BaseAddress The base address of the AXI GPIO IP.
 * @param DirectionMask The direction mask for the GPIO channel.
 * 0xFFFFFFFF for input, 0x00000000 for output.
 * @return XST_SUCCESS if initialization is successful, XST_FAILURE otherwise.
 */
static int Gpio_Init(XGpio *GpioPtr, UINTPTR BaseAddress, u32 DirectionMask)
{
    XGpio_Config *ConfigPtr;
    int Status;

    // Lookup the configuration for the GPIO device using its base address
    ConfigPtr = XGpio_LookupConfig(BaseAddress);
    if (NULL == ConfigPtr) {
        printf("ERROR: XGpio_LookupConfig failed for base address 0x%lx.\r\n", BaseAddress);
        return XST_FAILURE;
    }

    // Initialize the GPIO instance
    Status = XGpio_CfgInitialize(GpioPtr, ConfigPtr, ConfigPtr->BaseAddress);
    if (Status != XST_SUCCESS) {
        printf("ERROR: XGpio_CfgInitialize failed for base address 0x%lx with status %d.\r\n", BaseAddress, Status);
        return XST_FAILURE;
    }

    // Set the data direction for the GPIO channel
    XGpio_SetDataDirection(GpioPtr, GPIO_CHANNEL_1, DirectionMask);

    return XST_SUCCESS;
}