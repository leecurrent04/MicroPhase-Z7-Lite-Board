#include <stdio.h>
#include <xil_types.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h" // XPAR_AXI_CUSTOM_SLAVE_0_BASEADDR 정의를 위해 필요
#include "xil_io.h"      // Xil_Out32, Xil_In32 함수를 위해 필요
#include "sleep.h"       // usleep, sleep 함수를 위해 필요

// AXI Lite IP의 베이스 주소 정의
#define MY_AXI_LITE_BASE_ADDR (XPAR_BLINK_0_BASEADDR)

// slv_reg0 레지스터의 오프셋 정의
// 이 값은 Vivado에서 해당 AXI Lite IP의 Register Map을 확인하여 정확히 일치시켜야 합니다.
// AXI Lite IP에서 slv_reg0는 보통 0x00 오프셋에 위치하는 경우가 많습니다.
#define SLV_REG0_OFFSET 0x00

static inline void setTimer(u8 value)
{
    printf("Writing 0x%x to SLV_REG0...\r\n", value&0x1);
    Xil_Out32(MY_AXI_LITE_BASE_ADDR + SLV_REG0_OFFSET, value&0x1);
    return;
}

int main() {
    u32 reg_value;

    init_platform();
    
    printf("--- AXI Lite SLV_REG0 Control Example ---\r\n");
    printf("AXI Lite IP Base Address: 0x%08X\r\n", MY_AXI_LITE_BASE_ADDR);
    printf("SLV_REG0 Offset: 0x%02X\r\n", SLV_REG0_OFFSET);

    // 1. SLV_REG0에 0b00 (0x0) 쓰기 (카운터 정지)
    setTimer(0x0);

    // 쓴 값을 다시 읽어와 확인
    reg_value = Xil_In32(MY_AXI_LITE_BASE_ADDR + SLV_REG0_OFFSET);
    printf("Read back from SLV_REG0: 0x%08X\r\n", reg_value);
    usleep(500000); // 0.5초 대기

    // 2. SLV_REG0에 0b01 (0x1) 쓰기
    setTimer(0x1);
    usleep(5000000); // 5초 대기

    setTimer(0x00);

    printf("\n--- AXI Lite SLV_REG0 Control Example Finished ---\r\n");

    return 0;
}