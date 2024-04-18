	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/Guitar_Chorus_Effctor/build/debouncer.bc"
	.file	1 "/root/Bela/projects/Guitar_Chorus_Effctor" "debouncer.h"
	.globl	_ZN9DebouncerC2Ev
	.p2align	4
	.type	_ZN9DebouncerC2Ev,%function
_ZN9DebouncerC2Ev:                      @ @_ZN9DebouncerC2Ev
.Lfunc_begin0:
	.file	2 "/root/Bela/projects/Guitar_Chorus_Effctor" "debouncer.cpp"
	.loc	2 6 0                   @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:6:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: Debouncer:this <- %R0
	adr	r1, .LCPI0_0
.Ltmp0:
	@DEBUG_VALUE: setup:interval <- 1.000000e+00
	@DEBUG_VALUE: setup:sampleRate <- 1.000000e+00
	@DEBUG_VALUE: setup:this <- %R0
	.loc	2 20 16 prologue_end    @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:20:16
	vld1.64	{d16, d17}, [r1:128]
	vst1.32	{d16, d17}, [r0]
.Ltmp1:
	.loc	2 8 1                   @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:8:1
	bx	lr
.Ltmp2:
	.p2align	4
@ BB#1:
.LCPI0_0:
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
.Lfunc_end0:
	.size	_ZN9DebouncerC2Ev, .Lfunc_end0-_ZN9DebouncerC2Ev
	.cfi_endproc
	.fnend

	.globl	_ZN9Debouncer5setupEff
	.p2align	2
	.type	_ZN9Debouncer5setupEff,%function
_ZN9Debouncer5setupEff:                 @ @_ZN9Debouncer5setupEff
.Lfunc_begin1:
	.loc	2 18 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:18:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setup:this <- %R0
	@DEBUG_VALUE: setup:sampleRate <- %S0
	@DEBUG_VALUE: setup:interval <- %S1
	vmov.f32	s2, s1
.Ltmp3:
	@DEBUG_VALUE: setup:interval <- %S2
                                        @ kill: %S0<def> %S0<kill> %D0<def>
.Ltmp4:
	mov	r2, #0
.Ltmp5:
	.loc	2 20 16 prologue_end    @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:20:16
	str	r2, [r0]
	.loc	2 20 33 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:20:33
	str	r2, [r0, #4]
	.loc	2 21 11 is_stmt 1       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:21:11
	str	r2, [r0, #8]
	.loc	2 19 33                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:19:33
	vmul.f32	d16, d1, d0
	.loc	2 19 22 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:19:22
	vcvt.s32.f32	d0, d16
	vmov	r1, s0
	.loc	2 19 20                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:19:20
	str	r1, [r0, #12]
	.loc	2 22 1 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:22:1
	bx	lr
.Ltmp6:
.Lfunc_end1:
	.size	_ZN9Debouncer5setupEff, .Lfunc_end1-_ZN9Debouncer5setupEff
	.cfi_endproc
	.fnend

	.globl	_ZN9DebouncerC2Eff
	.p2align	2
	.type	_ZN9DebouncerC2Eff,%function
_ZN9DebouncerC2Eff:                     @ @_ZN9DebouncerC2Eff
.Lfunc_begin2:
	.loc	2 12 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:12:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: Debouncer:this <- %R0
	@DEBUG_VALUE: Debouncer:sampleRate <- %S0
	@DEBUG_VALUE: Debouncer:interval <- %S1
	vmov.f32	s2, s1
.Ltmp7:
	@DEBUG_VALUE: Debouncer:interval <- %S2
                                        @ kill: %S0<def> %S0<kill> %D0<def>
.Ltmp8:
	@DEBUG_VALUE: setup:interval <- %S2
	@DEBUG_VALUE: setup:sampleRate <- %S0
	mov	r2, #0
.Ltmp9:
	.loc	2 20 16 prologue_end    @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:20:16
	str	r2, [r0]
	.loc	2 20 33 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:20:33
	str	r2, [r0, #4]
	.loc	2 21 11 is_stmt 1       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:21:11
	str	r2, [r0, #8]
	.loc	2 19 33                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:19:33
	vmul.f32	d16, d1, d0
	.loc	2 19 22 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:19:22
	vcvt.s32.f32	d0, d16
.Ltmp10:
	vmov	r1, s0
.Ltmp11:
	@DEBUG_VALUE: setup:this <- %R0
	.loc	2 19 20                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:19:20
	str	r1, [r0, #12]
.Ltmp12:
	.loc	2 14 1 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:14:1
	bx	lr
.Ltmp13:
.Lfunc_end2:
	.size	_ZN9DebouncerC2Eff, .Lfunc_end2-_ZN9DebouncerC2Eff
	.cfi_endproc
	.fnend

	.globl	_ZN9Debouncer7processEb
	.p2align	2
	.type	_ZN9Debouncer7processEb,%function
_ZN9Debouncer7processEb:                @ @_ZN9Debouncer7processEb
.Lfunc_begin3:
	.loc	2 26 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:26:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: process:this <- %R0
	@DEBUG_VALUE: process:rawInput [bit_piece offset=0 size=1] <- %R1
	.loc	2 29 19 prologue_end    @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:29:19
	ldr	r2, [r0]
	.loc	2 29 17 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:29:17
	str	r2, [r0, #4]
.Ltmp14:
	@DEBUG_VALUE: process:rawInput [bit_piece offset=0 size=1] <- undef
	.loc	2 32 8 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:32:8
	cmp	r2, #3
	bhi	.LBB3_13
.Ltmp15:
@ BB#1:
	@DEBUG_VALUE: process:this <- %R0
	adr	r3, .LJTI3_0
	lsl	r2, r2, #2
	ldr	pc, [r2, r3]
.Ltmp16:
@ BB#2:
	.p2align	2
.LJTI3_0:
	.long	.LBB3_3
	.long	.LBB3_10
	.long	.LBB3_5
	.long	.LBB3_8
.LBB3_3:
.Ltmp17:
	@DEBUG_VALUE: process:this <- %R0
	mov	r2, #0
.Ltmp18:
	.loc	2 34 9                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:34:9
	cmp	r1, #1
	bne	.LBB3_13
.Ltmp19:
@ BB#4:
	@DEBUG_VALUE: process:this <- %R0
	mov	r2, #1
	b	.LBB3_7
.Ltmp20:
.LBB3_5:
	@DEBUG_VALUE: process:this <- %R0
	mov	r2, #2
.Ltmp21:
	.loc	2 53 9                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:53:9
	cmp	r1, #0
	bne	.LBB3_13
.Ltmp22:
@ BB#6:
	@DEBUG_VALUE: process:this <- %R0
	mov	r2, #3
.Ltmp23:
.LBB3_7:
	@DEBUG_VALUE: process:this <- %R0
	mov	r1, #0
.Ltmp24:
	.loc	2 36 21                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:36:21
	str	r2, [r0]
	.loc	2 37 16                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:37:16
	str	r1, [r0, #8]
	b	.LBB3_13
.Ltmp25:
.LBB3_8:
	@DEBUG_VALUE: process:this <- %R0
	.loc	2 62 9                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:62:9
	ldr	r1, [r0, #8]
	mov	r2, #3
	add	r1, r1, #1
	str	r1, [r0, #8]
	.loc	2 62 23 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:62:23
	ldr	r3, [r0, #12]
.Ltmp26:
	.loc	2 62 9                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:62:9
	cmp	r1, r3
	blt	.LBB3_13
.Ltmp27:
@ BB#9:
	@DEBUG_VALUE: process:this <- %R0
	mov	r2, #0
	b	.LBB3_12
.Ltmp28:
.LBB3_10:
	@DEBUG_VALUE: process:this <- %R0
	.loc	2 44 9 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:44:9
	ldr	r1, [r0, #8]
	mov	r2, #1
	add	r1, r1, #1
	str	r1, [r0, #8]
	.loc	2 44 23 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:44:23
	ldr	r3, [r0, #12]
.Ltmp29:
	.loc	2 44 9                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:44:9
	cmp	r1, r3
	blt	.LBB3_13
.Ltmp30:
@ BB#11:
	@DEBUG_VALUE: process:this <- %R0
	mov	r2, #2
.Ltmp31:
.LBB3_12:
	@DEBUG_VALUE: process:this <- %R0
	.loc	2 64 21 is_stmt 1       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:64:21
	str	r2, [r0]
.Ltmp32:
.LBB3_13:
	@DEBUG_VALUE: process:this <- %R0
	.loc	2 74 33                 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:74:33
	sub	r1, r2, #1
	mov	r0, #0
.Ltmp33:
	cmp	r1, #2
	movwlo	r0, #1
.Ltmp34:
	.loc	2 68 5                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:68:5
	bx	lr
.Ltmp35:
.Lfunc_end3:
	.size	_ZN9Debouncer7processEb, .Lfunc_end3-_ZN9Debouncer7processEb
	.cfi_endproc
	.fnend

	.globl	_ZN9Debouncer12currentValueEv
	.p2align	2
	.type	_ZN9Debouncer12currentValueEv,%function
_ZN9Debouncer12currentValueEv:          @ @_ZN9Debouncer12currentValueEv
.Lfunc_begin4:
	.loc	2 73 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:73:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: currentValue:this <- %R0
	.loc	2 74 5 prologue_end     @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:74:5
	ldr	r0, [r0]
.Ltmp36:
	.loc	2 74 33 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:74:33
	sub	r1, r0, #1
	mov	r0, #0
	cmp	r1, #2
	movwlo	r0, #1
.Ltmp37:
	.loc	2 77 1 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:77:1
	bx	lr
.Ltmp38:
.Lfunc_end4:
	.size	_ZN9Debouncer12currentValueEv, .Lfunc_end4-_ZN9Debouncer12currentValueEv
	.cfi_endproc
	.fnend

	.globl	_ZN9Debouncer10risingEdgeEv
	.p2align	2
	.type	_ZN9Debouncer10risingEdgeEv,%function
_ZN9Debouncer10risingEdgeEv:            @ @_ZN9Debouncer10risingEdgeEv
.Lfunc_begin5:
	.loc	2 81 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:81:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: risingEdge:this <- %R0
	.loc	2 82 5 prologue_end     @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:82:5
	ldr	r1, [r0]
	.loc	2 82 37 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:82:37
	cmp	r1, #1
	bne	.LBB5_2
.Ltmp39:
@ BB#1:
	@DEBUG_VALUE: risingEdge:this <- %R0
	.loc	2 82 40 discriminator 1 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:82:40
	ldr	r1, [r0, #4]
	mov	r0, #1
.Ltmp40:
	.loc	2 82 5 discriminator 1  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:82:5
	cmp	r1, #0
	movne	r0, #0
	b	.LBB5_3
.Ltmp41:
.LBB5_2:
	@DEBUG_VALUE: risingEdge:this <- %R0
	mov	r0, #0
.Ltmp42:
.LBB5_3:
	.loc	2 85 1 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:85:1
	bx	lr
.Ltmp43:
.Lfunc_end5:
	.size	_ZN9Debouncer10risingEdgeEv, .Lfunc_end5-_ZN9Debouncer10risingEdgeEv
	.cfi_endproc
	.fnend

	.globl	_ZN9Debouncer11fallingEdgeEv
	.p2align	2
	.type	_ZN9Debouncer11fallingEdgeEv,%function
_ZN9Debouncer11fallingEdgeEv:           @ @_ZN9Debouncer11fallingEdgeEv
.Lfunc_begin6:
	.loc	2 89 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:89:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: fallingEdge:this <- %R0
	.loc	2 90 5 prologue_end     @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:90:5
	ldr	r1, [r0]
	.loc	2 90 36 is_stmt 0       @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:90:36
	cmp	r1, #3
	bne	.LBB6_2
.Ltmp44:
@ BB#1:
	@DEBUG_VALUE: fallingEdge:this <- %R0
	.loc	2 90 39 discriminator 1 @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:90:39
	ldr	r1, [r0, #4]
	mov	r0, #1
.Ltmp45:
	.loc	2 90 5 discriminator 1  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:90:5
	cmp	r1, #2
	movne	r0, #0
	b	.LBB6_3
.Ltmp46:
.LBB6_2:
	@DEBUG_VALUE: fallingEdge:this <- %R0
	mov	r0, #0
.Ltmp47:
.LBB6_3:
	.loc	2 93 1 is_stmt 1        @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:93:1
	bx	lr
.Ltmp48:
.Lfunc_end6:
	.size	_ZN9Debouncer11fallingEdgeEv, .Lfunc_end6-_ZN9Debouncer11fallingEdgeEv
	.cfi_endproc
	.fnend

	.globl	_ZN9DebouncerD2Ev
	.p2align	2
	.type	_ZN9DebouncerD2Ev,%function
_ZN9DebouncerD2Ev:                      @ @_ZN9DebouncerD2Ev
.Lfunc_begin7:
	.loc	2 97 0                  @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:97:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ~Debouncer:this <- %R0
	.loc	2 98 1 prologue_end     @ /root/Bela/projects/Guitar_Chorus_Effctor/debouncer.cpp:98:1
	bx	lr
.Ltmp49:
.Lfunc_end7:
	.size	_ZN9DebouncerD2Ev, .Lfunc_end7-_ZN9DebouncerD2Ev
	.cfi_endproc
	.fnend

	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/Guitar_Chorus_Effctor/build/debouncer.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=107
.Linfo_string3:
	.asciz	"currentState_"         @ string offset=118
.Linfo_string4:
	.asciz	"int"                   @ string offset=132
.Linfo_string5:
	.asciz	"previousState_"        @ string offset=136
.Linfo_string6:
	.asciz	"counter_"              @ string offset=151
.Linfo_string7:
	.asciz	"debounceInterval_"     @ string offset=160
.Linfo_string8:
	.asciz	"Debouncer"             @ string offset=178
.Linfo_string9:
	.asciz	"float"                 @ string offset=188
.Linfo_string10:
	.asciz	"_ZN9Debouncer5setupEff" @ string offset=194
.Linfo_string11:
	.asciz	"setup"                 @ string offset=217
.Linfo_string12:
	.asciz	"_ZN9Debouncer7processEb" @ string offset=223
.Linfo_string13:
	.asciz	"process"               @ string offset=247
.Linfo_string14:
	.asciz	"bool"                  @ string offset=255
.Linfo_string15:
	.asciz	"_ZN9Debouncer12currentValueEv" @ string offset=260
.Linfo_string16:
	.asciz	"currentValue"          @ string offset=290
.Linfo_string17:
	.asciz	"_ZN9Debouncer10risingEdgeEv" @ string offset=303
.Linfo_string18:
	.asciz	"risingEdge"            @ string offset=331
.Linfo_string19:
	.asciz	"_ZN9Debouncer11fallingEdgeEv" @ string offset=342
.Linfo_string20:
	.asciz	"fallingEdge"           @ string offset=371
.Linfo_string21:
	.asciz	"~Debouncer"            @ string offset=383
.Linfo_string22:
	.asciz	"kStateLow"             @ string offset=394
.Linfo_string23:
	.asciz	"kStateJustHigh"        @ string offset=404
.Linfo_string24:
	.asciz	"kStateHigh"            @ string offset=419
.Linfo_string25:
	.asciz	"kStateJustLow"         @ string offset=430
.Linfo_string26:
	.asciz	"this"                  @ string offset=444
.Linfo_string27:
	.asciz	"sampleRate"            @ string offset=449
.Linfo_string28:
	.asciz	"interval"              @ string offset=460
.Linfo_string29:
	.asciz	"_ZN9DebouncerC2Ev"     @ string offset=469
.Linfo_string30:
	.asciz	"_ZN9DebouncerC2Eff"    @ string offset=487
.Linfo_string31:
	.asciz	"_ZN9DebouncerD2Ev"     @ string offset=506
.Linfo_string32:
	.asciz	"rawInput"              @ string offset=524
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1065353216
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	252                     @ 
	.byte	3                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1065353216
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	252                     @ 
	.byte	3                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Lfunc_end1-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	129                     @ 257
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp8-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	129                     @ 257
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	129                     @ 257
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp8-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp33-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.short	4                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.byte	157                     @ DW_OP_bit_piece
	.byte	1                       @ 1
	.byte	0                       @ 0
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin5-.Lfunc_begin0
	.long	.Ltmp40-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp41-.Lfunc_begin0
	.long	.Ltmp42-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin6-.Lfunc_begin0
	.long	.Ltmp45-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp46-.Lfunc_begin0
	.long	.Ltmp47-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	826                     @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x333 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x103 DW_TAG_class_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	4                       @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x2e:0xc DW_TAG_member
	.long	.Linfo_string3          @ DW_AT_name
	.long	297                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x3a:0xc DW_TAG_member
	.long	.Linfo_string5          @ DW_AT_name
	.long	297                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	42                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x46:0xc DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	297                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	3                       @ Abbrev [3] 0x52:0xc DW_TAG_member
	.long	.Linfo_string7          @ DW_AT_name
	.long	297                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	4                       @ Abbrev [4] 0x5e:0xe DW_TAG_subprogram
	.long	.Linfo_string8          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	16                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0x66:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x6c:0x18 DW_TAG_subprogram
	.long	.Linfo_string8          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0x74:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0x79:0x5 DW_TAG_formal_parameter
	.long	309                     @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x7e:0x5 DW_TAG_formal_parameter
	.long	309                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x84:0x1c DW_TAG_subprogram
	.long	.Linfo_string10         @ DW_AT_linkage_name
	.long	.Linfo_string11         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0x90:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0x95:0x5 DW_TAG_formal_parameter
	.long	309                     @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x9a:0x5 DW_TAG_formal_parameter
	.long	309                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xa0:0x1b DW_TAG_subprogram
	.long	.Linfo_string12         @ DW_AT_linkage_name
	.long	.Linfo_string13         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0xb0:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	6                       @ Abbrev [6] 0xb5:0x5 DW_TAG_formal_parameter
	.long	316                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xbb:0x16 DW_TAG_subprogram
	.long	.Linfo_string15         @ DW_AT_linkage_name
	.long	.Linfo_string16         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0xcb:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xd1:0x16 DW_TAG_subprogram
	.long	.Linfo_string17         @ DW_AT_linkage_name
	.long	.Linfo_string18         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0xe1:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xe7:0x16 DW_TAG_subprogram
	.long	.Linfo_string19         @ DW_AT_linkage_name
	.long	.Linfo_string20         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0xf7:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0xfd:0xe DW_TAG_subprogram
	.long	.Linfo_string21         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0x105:0x5 DW_TAG_formal_parameter
	.long	304                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x10b:0x1d DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	7                       @ DW_AT_decl_line
	.byte	10                      @ Abbrev [10] 0x10f:0x6 DW_TAG_enumerator
	.long	.Linfo_string22         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	10                      @ Abbrev [10] 0x115:0x6 DW_TAG_enumerator
	.long	.Linfo_string23         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	10                      @ Abbrev [10] 0x11b:0x6 DW_TAG_enumerator
	.long	.Linfo_string24         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	10                      @ Abbrev [10] 0x121:0x6 DW_TAG_enumerator
	.long	.Linfo_string25         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0x129:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	12                      @ Abbrev [12] 0x130:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x135:0x7 DW_TAG_base_type
	.long	.Linfo_string9          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	11                      @ Abbrev [11] 0x13c:0x7 DW_TAG_base_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	13                      @ Abbrev [13] 0x143:0x2c DW_TAG_subprogram
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	132                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	335                     @ DW_AT_object_pointer
	.byte	14                      @ Abbrev [14] 0x14f:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	15                      @ Abbrev [15] 0x158:0xb DW_TAG_formal_parameter
	.long	.Linfo_string27         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	309                     @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x163:0xb DW_TAG_formal_parameter
	.long	.Linfo_string28         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.long	309                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x16f:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x174:0x50 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	397                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	5                       @ DW_AT_decl_line
	.long	.Linfo_string29         @ DW_AT_linkage_name
	.long	94                      @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x18d:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	18                      @ Abbrev [18] 0x198:0x2b DW_TAG_inlined_subroutine
	.long	323                     @ DW_AT_abstract_origin
	.long	.Ltmp0                  @ DW_AT_low_pc
	.long	.Ltmp1-.Ltmp0           @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	7                       @ DW_AT_call_line
	.byte	19                      @ Abbrev [19] 0x1a7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	335                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x1b0:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	344                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x1b9:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	355                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1c4:0x2d DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	471                     @ DW_AT_object_pointer
	.long	323                     @ DW_AT_abstract_origin
	.byte	21                      @ Abbrev [21] 0x1d7:0x7 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	335                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x1de:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	344                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x1e7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	355                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x1f1:0x6e DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	522                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	.Linfo_string30         @ DW_AT_linkage_name
	.long	108                     @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x20a:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	22                      @ Abbrev [22] 0x215:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	.Linfo_string27         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	309                     @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x224:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	.Linfo_string28         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	309                     @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x233:0x2b DW_TAG_inlined_subroutine
	.long	323                     @ DW_AT_abstract_origin
	.long	.Ltmp9                  @ DW_AT_low_pc
	.long	.Ltmp12-.Ltmp9          @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	13                      @ DW_AT_call_line
	.byte	19                      @ Abbrev [19] 0x242:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	335                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x24b:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	344                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x254:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	355                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x25f:0x16 DW_TAG_subprogram
	.byte	2                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	187                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	619                     @ DW_AT_object_pointer
	.byte	14                      @ Abbrev [14] 0x26b:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x275:0x40 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	649                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.long	160                     @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x289:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	22                      @ Abbrev [22] 0x296:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc11           @ DW_AT_location
	.long	.Linfo_string32         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
	.long	316                     @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x2a5:0xf DW_TAG_inlined_subroutine
	.long	607                     @ DW_AT_abstract_origin
	.long	.Ltmp32                 @ DW_AT_low_pc
	.long	.Ltmp34-.Ltmp32         @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	68                      @ DW_AT_call_line
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x2b5:0x1d DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	712                     @ DW_AT_object_pointer
	.long	607                     @ DW_AT_abstract_origin
	.byte	19                      @ Abbrev [19] 0x2c8:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc12           @ DW_AT_location
	.long	619                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x2d2:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	743                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	209                     @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x2e7:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc13           @ DW_AT_location
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x2f5:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	778                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	231                     @ DW_AT_specification
	.byte	24                      @ Abbrev [24] 0x30a:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc14           @ DW_AT_location
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x318:0x25 DW_TAG_subprogram
	.long	.Lfunc_begin7           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	817                     @ DW_AT_object_pointer
	.byte	2                       @ DW_AT_decl_file
	.byte	96                      @ DW_AT_decl_line
	.long	.Linfo_string31         @ DW_AT_linkage_name
	.long	253                     @ DW_AT_specification
	.byte	17                      @ Abbrev [17] 0x331:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string26         @ DW_AT_name
	.long	367                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	830                     @ Compilation Unit Length
	.long	792                     @ DIE offset
	.asciz	"Debouncer::~Debouncer" @ External Name
	.long	497                     @ DIE offset
	.asciz	"Debouncer::Debouncer"  @ External Name
	.long	629                     @ DIE offset
	.asciz	"Debouncer::process"    @ External Name
	.long	607                     @ DIE offset
	.asciz	"Debouncer::currentValue" @ External Name
	.long	323                     @ DIE offset
	.asciz	"Debouncer::setup"      @ External Name
	.long	722                     @ DIE offset
	.asciz	"Debouncer::risingEdge" @ External Name
	.long	757                     @ DIE offset
	.asciz	"Debouncer::fallingEdge" @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	830                     @ Compilation Unit Length
	.long	309                     @ DIE offset
	.asciz	"float"                 @ External Name
	.long	38                      @ DIE offset
	.asciz	"Debouncer"             @ External Name
	.long	297                     @ DIE offset
	.asciz	"int"                   @ External Name
	.long	316                     @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	_ZN9DebouncerC1Ev
	.type	_ZN9DebouncerC1Ev,%function
_ZN9DebouncerC1Ev = _ZN9DebouncerC2Ev
	.globl	_ZN9DebouncerC1Eff
	.type	_ZN9DebouncerC1Eff,%function
_ZN9DebouncerC1Eff = _ZN9DebouncerC2Eff
	.globl	_ZN9DebouncerD1Ev
	.type	_ZN9DebouncerD1Ev,%function
_ZN9DebouncerD1Ev = _ZN9DebouncerD2Ev
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
