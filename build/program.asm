	.file	"main.cpp"
	.text
	.section	.text._ZN13IntLinkedListC2Ei,"axG",@progbits,_ZN13IntLinkedListC5Ei,comdat
	.align 2
	.weak	_ZN13IntLinkedListC2Ei
	.type	_ZN13IntLinkedListC2Ei, @function
_ZN13IntLinkedListC2Ei:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN13IntLinkedListC2Ei, .-_ZN13IntLinkedListC2Ei
	.weak	_ZN13IntLinkedListC1Ei
	.set	_ZN13IntLinkedListC1Ei,_ZN13IntLinkedListC2Ei
	.section	.text._ZNK13IntLinkedList8getValueEv,"axG",@progbits,_ZNK13IntLinkedList8getValueEv,comdat
	.align 2
	.weak	_ZNK13IntLinkedList8getValueEv
	.type	_ZNK13IntLinkedList8getValueEv, @function
_ZNK13IntLinkedList8getValueEv:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_ZNK13IntLinkedList8getValueEv, .-_ZNK13IntLinkedList8getValueEv
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
.LC0:
	.string	"Pierwszy element: "
.LC1:
	.string	"Ostatni element: "
.LC2:
	.string	"Nast\304\231pny element: "
.LC3:
	.string	"Poprzedni element: "
.LC4:
	.string	"\nJedyny element: "
.LC5:
	.string	"\nMa poprzedni element? "
.LC6:
	.string	"\nMa nast\304\231pny element? "
.LC7:
	.string	"Jeden z trzech element\303\263w: "
#NO_APP
	.text
	.globl	main
	.type	main, @function
main:
.LFB1988:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	$24, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZN13IntLinkedListC1Ei
	movl	$0, %eax
	movq	%rbx, -24(%rbp)
	testb	%al, %al
	je	.L5
	movl	$24, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L5:
	movl	$5, -32(%rbp)
	jmp	.L6
.L7:
	movl	-32(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7setNextEi@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getNextEv@PLT
	movq	%rax, -24(%rbp)
	addl	$1, -32(%rbp)
.L6:
	cmpl	$9, -32(%rbp)
	jle	.L7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList8getFirstEv@PLT
	movq	%rax, -24(%rbp)
	movl	$3, -28(%rbp)
	jmp	.L8
.L9:
	movl	-28(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7setPrevEi@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getPrevEv@PLT
	movq	%rax, -24(%rbp)
	subl	$1, -28(%rbp)
.L8:
	cmpl	$0, -28(%rbp)
	jg	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList8getFirstEv@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getLastEv@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC1(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getPrevEv@PLT
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getPrevEv@PLT
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getPrevEv@PLT
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getPrevEv@PLT
	movq	%rax, -24(%rbp)
	jmp	.L10
.L11:
	leaq	.LC2(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getNextEv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList6rmPrevEv@PLT
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7hasNextEv@PLT
	testb	%al, %al
	jne	.L11
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L12
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getPrevEv@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList6rmNextEv@PLT
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7hasPrevEv@PLT
	testb	%al, %al
	jne	.L13
	leaq	.LC4(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7hasPrevEv@PLT
	movzbl	%al, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7hasNextEv@PLT
	movzbl	%al, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEb@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	leal	1(%rax), %r12d
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	imull	%r12d, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN13IntLinkedList7setNextEi@PLT
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	leal	-1(%rax), %r12d
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	imull	%r12d, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN13IntLinkedList7setPrevEi@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList8getFirstEv@PLT
	movq	%rax, -24(%rbp)
.L16:
	leaq	.LC7(%rip), %rdx
	leaq	_ZSt4cout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK13IntLinkedList8getValueEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7hasNextEv@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList7getNextEv@PLT
	movq	%rax, -24(%rbp)
	jmp	.L16
.L19:
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN13IntLinkedList5clearEv@PLT
	movl	$0, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1988:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
