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
	.comm	uix,4,4
	.global	iix
	.data
	.align	2
	.type	iix, %object
	.size	iix, 4
iix:
	.word	5
	.global	x
	.section	.rodata
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.word	6
	.text
	.align	1
	.global	func1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	func1, %function
func1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r2, #6
	ldr	r3, [r7, #4]
	cmp	r3, r2
	ble	.L2
	ldr	r0, [r7, #4]
	bl	func2
	b	.L5
.L2:
	movs	r2, #6
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bge	.L4
	ldr	r0, [r7, #4]
	bl	func3
	str	r0, [r7, #4]
	b	.L5
.L4:
	movs	r2, #6
	ldr	r3, [r7, #4]
	cmp	r3, r2
	bne	.L5
	ldr	r0, [r7, #4]
	bl	func4
.L5:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	func1, .-func1
	.align	1
	.global	func2
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	func2, %function
func2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L7
.L8:
	ldr	r0, [r7, #4]
	bl	func4
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L7:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L8
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	func2, .-func2
	.align	1
	.global	func3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	func3, %function
func3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	func3, .-func3
	.align	1
	.global	func4
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	func4, %function
func4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #2
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	subs	r3, r3, #10
	str	r3, [r7, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	func4, .-func4
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
