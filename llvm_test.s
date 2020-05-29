	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"llvm_test.c"
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)            # 4-byte Folded Spill
	sw	$fp, 16($sp)            # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 12($fp)
	addiu	$1, $zero, 1
	sw	$1, 8($fp)
	addiu	$1, $zero, 2
	sw	$1, 4($fp)
	lw	$1, 8($fp)
	lw	$2, 4($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 16($sp)            # 4-byte Folded Reload
	lw	$ra, 20($sp)            # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 24
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end0:
	.size	main, ($func_end0)-main
                                        # -- End function
	.ident	"clang version 11.0.0 (git@gitee.com:mirrors_addons/llvm-project.git b0404681171d8cfebdb1f439f45aeb1001321eb7)"
	.section	".note.GNU-stack","",@progbits
	.text
