	.file	"circle.c"
# GNU C (Ubuntu/Linaro 4.6.3-1ubuntu5) version 4.6.3 (x86_64-linux-gnu)
#	compiled by GNU C version 4.6.3, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultilib . -imultiarch x86_64-linux-gnu circle.c
# -mtune=generic -march=x86-64 -fverbose-asm -fstack-protector
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcommon -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
# -fident -finline-functions-called-once -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-debug-strings
# -fmove-loop-invariants -fpeephole -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
# -fsigned-zeros -fsplit-ivs-in-unroller -fstack-protector
# -fstrict-volatile-bitfields -ftrapping-math -ftree-cselim -ftree-forwprop
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-slp-vectorize
# -ftree-vect-loop-version -funit-at-a-time -funwind-tables
# -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mglibc -mieee-fp
# -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

# Compiler executable checksum: 75e879ed14f91af504f4150eadeaa0e6

	.section	.rodata
.LC2:
	.string	"\tAreas of Circles\n"
	.align 8
.LC3:
	.string	"\t\tRadius\t\tArea\n\t---------------------------------"
.LC4:
	.string	"Circle 1%14.3f\t%15.5f\n"
.LC6:
	.string	"Circle 2%14.3f\t%15.5f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movabsq	$4607182418800017408, %rax	#, tmp63
	movq	%rax, -16(%rbp)	# tmp63, dRadius
	movl	$0, %eax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, dArea
	movl	$.LC2, %edi	#,
	call	puts	#
	movl	$.LC3, %edi	#,
	call	puts	#
	movsd	-16(%rbp), %xmm0	# dRadius, tmp65
	call	fnCircularArea	#
	movsd	%xmm0, -8(%rbp)	# tmp66, dArea
	movl	$.LC4, %eax	#, D.2055
	movsd	-8(%rbp), %xmm1	# dArea, tmp67
	movsd	-16(%rbp), %xmm0	# dRadius, tmp68
	movq	%rax, %rdi	# D.2055,
	movl	$2, %eax	#,
	call	printf	#
	movabsq	$4617315517961601024, %rax	#, tmp69
	movq	%rax, -16(%rbp)	# tmp69, dRadius
	movsd	-16(%rbp), %xmm0	# dRadius, tmp70
	call	fnCircularArea	#
	movsd	%xmm0, -8(%rbp)	# tmp71, dArea
	movl	$.LC6, %eax	#, D.2056
	movsd	-8(%rbp), %xmm1	# dArea, tmp72
	movsd	-16(%rbp), %xmm0	# dRadius, tmp73
	movq	%rax, %rdi	# D.2056,
	movl	$2, %eax	#,
	call	printf	#
	movl	$0, %eax	#, D.2057
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	fnCircularArea
	.type	fnCircularArea, @function
fnCircularArea:
.LFB1:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# dR, dR
	movsd	-8(%rbp), %xmm1	# dR, tmp62
	movsd	.LC7(%rip), %xmm0	#, tmp63
	mulsd	%xmm1, %xmm0	# tmp62, D.2053
	mulsd	-8(%rbp), %xmm0	# dR, D.2052
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fnCircularArea, .-fnCircularArea
	.section	.rodata
	.align 8
.LC7:
	.long	776530087
	.long	1074340351
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
