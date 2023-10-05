	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.global	PORTA_Data
	.data
	.align	2
	.type	PORTA_Data, %object
	.size	PORTA_Data, 4
PORTA_Data:
	.word	1073809420
	.global	PORTA_Mode
	.align	2
	.type	PORTA_Mode, %object
	.size	PORTA_Mode, 4
PORTA_Mode:
	.word	1073809412
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r3, .L7
	ldr	r3, [r3]
	ldr	r2, .L7
	orr	r3, r3, #4
	str	r3, [r2]
	ldr	r3, .L7+4
	ldr	r2, [r3]
	ldrb	r3, [r2]
	bfc	r3, #0, #4
	strb	r3, [r2]
	ldr	r3, .L7+4
	ldr	r2, [r3]
	ldrb	r3, [r2]
	movs	r1, #2
	bfi	r3, r1, #0, #4
	strb	r3, [r2]
.L6:
	ldr	r3, .L7+8
	ldr	r2, [r3]
	ldrh	r3, [r2]	@ movhi
	orr	r3, r3, #256
	strh	r3, [r2]	@ movhi
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L7+12
	cmp	r3, r2
	bls	.L3
	ldr	r3, .L7+8
	ldr	r2, [r3]
	ldrh	r3, [r2]	@ movhi
	bfc	r3, #8, #1
	strh	r3, [r2]	@ movhi
	movs	r3, #0
	str	r3, [r7]
	b	.L4
.L5:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L4:
	ldr	r3, [r7]
	ldr	r2, .L7+12
	cmp	r3, r2
	bls	.L5
	b	.L6
.L8:
	.align	2
.L7:
	.word	1073877016
	.word	PORTA_Mode
	.word	PORTA_Data
	.word	499999
	.size	main, .-main
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
