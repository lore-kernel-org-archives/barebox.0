Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gandharva.secretlabs.de ([2a01:4f8:161:8201::2:4])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctf8n-0007y4-3i
 for barebox@lists.infradead.org; Thu, 30 Mar 2017 18:49:51 +0000
Received: from [10.0.1.2] (ip127-36-210-87.adsl2.static.versatel.nl
 [87.210.36.127])
 by gandharva.secretlabs.de (Postfix) with ESMTPSA id 4C32AAE281
 for <barebox@lists.infradead.org>; Thu, 30 Mar 2017 18:49:22 +0000 (UTC)
From: Holger Freyther <holger@moiji-mobile.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <CCE0355C-0078-435E-A307-9D64235CC014@moiji-mobile.com>
Date: Thu, 30 Mar 2017 20:49:21 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Linking issue with ld.bfd 2.28.0.20170307
To: barebox@lists.infradead.org

Hi,

I am rebuilding the bootloader with gcc6 and the above version
of binutils and it is failing to link with .bfd but is working
with .gold.

Is this known? Is anyone else seeing this issue? And no I did
not try linking with -N and I have no idea what ld thinks is
the program headers here.

cheers
	holger

   arm-poky-linux-gnueabi-ld.bfd     -r -o common/built-in.o common/memory.o common/memory_display.o common/clock.o common/console_common.o common/startup.o common/misc.o common/resource.o common/bootsource.o common/restart.o common/complete.o common/version.o common/binfmt.o common/bootm.o common/memtest.o common/command.o common/console.o common/console_countdown.o common/environment.o common/env.o common/filetype.o common/bootargs.o common/globalvar.o common/date.o common/kallsyms.o common/dlmalloc.o common/meminfo.o common/oftree.o common/password.o common/poller.o common/hush.o common/state/built-in.o common/image.o common/uimage.o common/imd.o common/ubiformat.o common/boot.o common/memsize.o
   arm-poky-linux-gnueabi-ld.bfd     -r -o common/built-in-pbl.o common/pbl-imd-barebox.o common/pbl-memsize.o common/state/built-in-pbl.o
  arm-poky-linux-gnueabi-ld.bfd    -Map barebox.map --gc-sections -pie -o .tmp_barebox1 -T arch/arm/lib32/barebox.lds --start-group  common/built-in.o  drivers/built-in.o  commands/built-in.o  lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o  arch/arm/boards/built-in.o  arch/arm/mach-davinci/built-in.o  arch/arm/cpu/built-in.o  arch/arm/lib/built-in.o  arch/arm/lib32/built-in.o  arch/arm/crypto/built-in.o  arch/arm/dts/built-in.o  pbl/built-in.o  defaultenv/built-in.o --end-group 
arm-poky-linux-gnueabi-ld.bfd: .tmp_barebox1: Not enough room for program headers, try linking with -N
arm-poky-linux-gnueabi-ld.bfd: final link failed: Bad value

/*
 *
 * Automatically generated file; DO NOT EDIT.
 * Barebox/arm 2017.03.0 Configuration
 *
 */
/*
 * Helper macros to use CONFIG_ options in C expressions. Note that
 * these only work with boolean and tristate options.
 */
/*
 * Getting something that works in C and CPP for an arg that may or may
 * not be defined is tricky.  Here, if we have "#define CONFIG_BOOGER 1"
 * we match on the placeholder define, insert the "0," for arg1 and generate
 * the triplet (0, 1, 0).  Then the last step cherry picks the 2nd arg (a one).
 * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and when
 * the last step cherry picks the 2nd arg, we get a zero.
 */
/*
 * IS_ENABLED(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y' or 'm',
 * 0 otherwise.
 *
 */
/*
 * IS_BUILTIN(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', 0
 * otherwise. For boolean options, this is equivalent to
 * IS_ENABLED(CONFIG_FOO).
 */
/*
 * IS_MODULE(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'm', 0
 * otherwise.
 */
/*
 * (C) Copyright 2000-2004
 * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 *
 */
/*
 * Align to a 32 byte boundary equal to the
 * alignment gcc 4.5 uses for a struct
 */
/* Indirect stringification.  Doing two levels allows the parameter to be a
 * macro itself.  For example, compile with -DFOO=bar, __stringify(FOO)
 * converts to "bar".
 */
/* use 2 ASSERT because ld can not accept '"size" "10"' format */
OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(start)
SECTIONS
{
 . = 0x0;
 .image_start : { *(.__image_start) }
 . = ALIGN(4);
 .text :
 {
  _stext = .;
  _text = .;
  *(.text_entry*)
  __bare_init_start = .;
  *(.text_bare_init*)
  __bare_init_end = .;
  . = ALIGN(0x20);
  __exceptions_start = .;
  KEEP(*(.text_exceptions*))
  __exceptions_stop = .;
  *(.text*)
 }
 _barebox_bare_init_size = __bare_init_end - _text; ASSERT(_barebox_bare_init_size < 0xffffffff, "Barebox bare_init size > ") ASSERT(_barebox_bare_init_size < 0xffffffff, "0xffffffff"
)
 . = ALIGN(4);
 .rodata : { *(.rodata*) }
 /*
         * Stack unwinding tables
         */
 . = ALIGN(8);
 .ARM.unwind_idx : {
  __start_unwind_idx = .;
  *(.ARM.exidx*)
  __stop_unwind_idx = .;
 }
 .ARM.unwind_tab : {
  __start_unwind_tab = .;
  *(.ARM.extab*)
  *(.ARM.extab*)
  __stop_unwind_tab = .;
 }
 _etext = .; /* End of text and rodata section */
 _sdata = .;
 . = ALIGN(4);
 .data : { *(.data*) }
 .barebox_imd : { KEEP(*(.barebox_imd_start)) KEEP(*(.barebox_imd_1*)) *(.barebox_imd_0*) KEEP(*(.barebox_imd_end)) }
 . = .;
 __barebox_cmd_start = .;
 .barebox_cmd : { KEEP(*(SORT_BY_NAME(.barebox_cmd*))) }
 __barebox_cmd_end = .;
 __barebox_magicvar_start = .;
 .barebox_magicvar : { KEEP(*(SORT_BY_NAME(.barebox_magicvar*))) }
 __barebox_magicvar_end = .;
 __barebox_initcalls_start = .;
 .barebox_initcalls : { KEEP(*(.initcall.0)) KEEP(*(.initcall.1)) KEEP(*(.initcall.2)) KEEP(*(.initcall.3)) KEEP(*(.initcall.4)) KEEP(*(.initcall.5)) KEEP(*(.initcall.6)) KEEP(*(.initcall.7)) KEEP(*(.initcall.8)) KEEP(*(.initcall.9)) KEEP(*(.initcall.10)) KEEP(*(.initcall.11)) KEEP(*(.initcall.12)) KEEP(*(.initcall.13)) KEEP(*(.initcall.14)) }
 __barebox_initcalls_end = .;
 __barebox_exitcalls_start = .;
 .barebox_exitcalls : { KEEP(*(.exitcall.0)) KEEP(*(.exitcall.1)) KEEP(*(.exitcall.2)) KEEP(*(.exitcall.3)) KEEP(*(.exitcall.4)) KEEP(*(.exitcall.5)) KEEP(*(.exitcall.6)) }
 __barebox_exitcalls_end = .;
 __usymtab_start = .;
 __usymtab : { KEEP(*(__usymtab)) }
 __usymtab_end = .;
 .oftables : { . = ALIGN(8); __clk_of_table_start = .; KEEP(*(.__clk_of_table)); KEEP(*(.__clk_of_table_end)); __clk_of_table_end = .; }
 .dtb : { . = ALIGN(8); __dtb_start = .; KEEP(*(.dtb.rodata.*)); __dtb_end = .; }
 .rel.dyn : {
  __rel_dyn_start = .;
  *(.rel*)
  __rel_dyn_end = .;
 }
 .dynsym : {
  __dynsym_start = .;
  *(.dynsym)
  __dynsym_end = .;
 }
 _edata = .;
 .image_end : { *(.__image_end) }
 . = ALIGN(4);
 __bss_start = .;
 .bss : { *(.bss*) }
 __bss_stop = .;
 _end = .;
 _barebox_image_size = __bss_start - 0x82000000;
}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
