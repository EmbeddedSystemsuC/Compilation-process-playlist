	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
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
	.align	2
	.global	func1
	.syntax unified
	.arm
	.fpu softvfp
	.type	func1, %function
func1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r2, #6
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	ble	.L2
	ldr	r0, [fp, #-8]
	bl	func2
	b	.L5
.L2:
	mov	r2, #6
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	bge	.L4
	ldr	r0, [fp, #-8]
	bl	func3
	str	r0, [fp, #-8]
	b	.L5
.L4:
	mov	r2, #6
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	bne	.L5
	ldr	r0, [fp, #-8]
	bl	func4
.L5:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	func1, .-func1
	.align	2
	.global	func2
	.syntax unified
	.arm
	.fpu softvfp
	.type	func2, %function
func2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L7
.L8:
	ldr	r0, [fp, #-16]
	bl	func4
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L8
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	func2, .-func2
	.align	2
	.global	func3
	.syntax unified
	.arm
	.fpu softvfp
	.type	func3, %function
func3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	func3, .-func3
	.align	2
	.global	func4
	.syntax unified
	.arm
	.fpu softvfp
	.type	func4, %function
func4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #2
	str	r3, [fp, #-8]
	mov	r3, #3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	sub	r3, r3, #10
	str	r3, [fp, #-16]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	func4, .-func4
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
