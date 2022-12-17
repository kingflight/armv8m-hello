.syntax unified
.cpu cortex-m33
.thumb

.section .isr_vector 	
    .long    __StackTop         /* Initial Top of Stack */
    .long    Reset_Handler      /* Reset Handler */
   	.long    Default_Handler

.text
.thumb_func
.global Reset_Handler
Reset_Handler:  
    ldr     R0, = main
    bx      R0
         
.thumb_func
.globl Default_Handler
Default_Handler:
loop1:
	b loop1



