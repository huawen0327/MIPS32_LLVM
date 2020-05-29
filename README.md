**C语言->IR**

```shell
clang -S --target=mips -emit-llvm llvm_test.c
```

**IR->汇编**

```shell
llc llvm_test.ll
```

**汇编->.o文件**

```shell
clang --target=mips -c llvm_test.s -o llvm_test.o
```

**.o->机器码**

``` shell
llvm-objdump -d llvm_test.o
```

**output**

```
llvm_test.o:    file format elf32-mips


Disassembly of section .text:

00000000 <main>:
       0: 27 bd ff e8                   addiu   $sp, $sp, -24 <main+0xffffffffffffffe8>
       4: af bf 00 14                   sw      $ra, 20($sp)
       8: af be 00 10                   sw      $fp, 16($sp)
       c: 03 a0 f0 25                   move    $fp, $sp
      10: af c0 00 0c                   sw      $zero, 12($fp)
      14: 24 01 00 01                   addiu   $1, $zero, 1 <main+0x1>
      18: af c1 00 08                   sw      $1, 8($fp)
      1c: 24 01 00 02                   addiu   $1, $zero, 2 <main+0x2>
      20: af c1 00 04                   sw      $1, 4($fp)
      24: 8f c1 00 08                   lw      $1, 8($fp)
      28: 8f c2 00 04                   lw      $2, 4($fp)
      2c: 00 22 08 21                   addu    $1, $1, $2
      30: af c1 00 00                   sw      $1, 0($fp)
      34: 24 02 00 00                   addiu   $2, $zero, 0 <main>
      38: 03 c0 e8 25                   move    $sp, $fp
      3c: 8f be 00 10                   lw      $fp, 16($sp)
      40: 8f bf 00 14                   lw      $ra, 20($sp)
      44: 03 e0 00 08                   jr      $ra
      48: 27 bd 00 18                   addiu   $sp, $sp, 24 <main+0x18>
```





