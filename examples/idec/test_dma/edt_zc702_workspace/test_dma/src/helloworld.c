#include <xil_printf.h>
#include <stdlib.h>
#include <stdio.h>
#include "xparameters.h"

#define AXI_M_CONTROLL      *(volatile unsigned int *) 0x43c00010
#define MOVE_ADDRESS_SAXI   *(volatile unsigned int *) 0x43c00020
#define COPY_ADDRESS_SAXI   *(volatile unsigned int *) 0x43c00028

#define SRC_ADDRESS  0x01000000
#define DST_ADDRESS  0x02000000

// ------------------------------------------------------------ PROTOTYPES ----
extern void outbyte(char c);
extern char inbyte();

void menu_display(void){
	printf("-----------------------------------------------------------------\n");
	printf("------------------- ZYNQ AXI Mater Test--------------------------\n");
	printf("-----------------------------------------------------------------\n");
	printf(" Select one of the options below:\r\n");
	printf("    't' - Copy ddr to bram   \r\n");
	printf("    'm' - Copy bram to ddr    \r\n");
	printf("    'c' - clear data ddr \r\n");
	printf("    'f' - fill count data\r\n");
	printf("    'a' - change Memory Attributes\r\n");
}
void display_memory_data(int *src)
{
	unsigned int i,j;
	printf("DDR memory_address=0x%x \r\n",src);
	printf("Data\r\n");
	for(i=0,j=0;i<64;i++,j++){
		printf("%#8x ",*src++);

		if((i&0x7)==0x7){
			printf("\r\n");
			j=0;
		}
	}
	printf("\r\n");
}

int main (void)
{
	int i,k;
	int *src_ptr;
	int *dst_ptr;
	unsigned char c;

	init_platform();

	COPY_ADDRESS_SAXI=0;
	MOVE_ADDRESS_SAXI=0;

	src_ptr=(int *)SRC_ADDRESS;
	dst_ptr=(int *)DST_ADDRESS;

	menu_display();
	while(1){
		c = inbyte();
		if(c == '\r'){
			outbyte('\n');
		}
		printf("\n\r Command Selected : %c",c);
		outbyte(c);
		printf("\n\n");
		switch(c){

			case 'f':
			case 'F':
				src_ptr=(int *)SRC_ADDRESS;
				dst_ptr=(int *)DST_ADDRESS;
				for(i=0;i<64;i++){
					*src_ptr++=i;
					*dst_ptr++=0;
				}
				printf("Fill DDR memory complete!!\r\n");
				break;

			case 'c':
			case 'C':
				src_ptr=(int *)SRC_ADDRESS;
				dst_ptr=(int *)DST_ADDRESS;
				for(i=0;i<64;i++){
					*src_ptr++=0;
					*dst_ptr++=0;
				}
				printf("Clear DDR memory complete!!\r\n");
				break;

			case 'a':
			case 'A':
				printf("Change Memory Attributes :Non Cache\r\n");
				Xil_SetTlbAttributes(0x02000000,0x1c02);
				Xil_SetTlbAttributes(0x01000000,0x1c02);
				break;


			case 't':
			case 'T':
				AXI_M_CONTROLL=1;
				while(AXI_M_CONTROLL);
				printf("(DDR TO BRAM)Axi master copy complete!!\r\n");
				src_ptr=(int *)SRC_ADDRESS;
				dst_ptr=(int *)DST_ADDRESS;
				display_memory_data(src_ptr);
				display_memory_data(dst_ptr);
				break;

			case 'm':
			case 'M':
				AXI_M_CONTROLL=2;
				while(AXI_M_CONTROLL);
				printf("(BRAM TO DDR)Axi master copy complete!!\r\n");
				src_ptr=(int *)SRC_ADDRESS;
				dst_ptr=(int *)DST_ADDRESS;
				display_memory_data(src_ptr);
				display_memory_data(dst_ptr);
				break;

            default:
				printf("Wrong Command\r\n");
				menu_display();
				break;
		}
	}

	return 0;
}
