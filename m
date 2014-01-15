Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3OxY-0004dJ-Bb
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 11:48:37 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 15 Jan 2014 11:47:41 +0000
Message-Id: <1389786464-22085-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
References: <1389786464-22085-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] ppc: mpc85xx: use common linker script
To: barebox@lists.infradead.org

Updates to use a common linker script for all mpc85xx boards,
avoiding duplication.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Makefile                                  |   4 +
 arch/ppc/boards/freescale-p2020rdb/Makefile        |   1 -
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S   | 141 ---------------------
 arch/ppc/boards/geip-da923rc/Makefile              |   1 -
 arch/ppc/mach-mpc85xx/Kconfig                      |   5 +
 arch/ppc/mach-mpc85xx/Makefile                     |   1 +
 .../geip-da923rc => mach-mpc85xx}/barebox.lds.S    |   4 +
 7 files changed, 14 insertions(+), 143 deletions(-)
 delete mode 100644 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
 rename arch/ppc/{boards/geip-da923rc => mach-mpc85xx}/barebox.lds.S (97%)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index aa00c96..87be193 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -63,4 +63,8 @@ endif
 common-y += $(BOARD) $(CPU) $(MACH)
 common-y += arch/ppc/lib/
 
+ifdef CONFIG_MPC85xx
+lds-y += $(MACH)/barebox.lds
+else
 lds-y += $(BOARD)/barebox.lds
+endif
diff --git a/arch/ppc/boards/freescale-p2020rdb/Makefile b/arch/ppc/boards/freescale-p2020rdb/Makefile
index 141b680..dbd2af6 100644
--- a/arch/ppc/boards/freescale-p2020rdb/Makefile
+++ b/arch/ppc/boards/freescale-p2020rdb/Makefile
@@ -1,4 +1,3 @@
 obj-y	+= p2020rdb.o
 obj-y	+= law.o
 obj-y	+= tlb.o
-extra-y += barebox.lds
diff --git a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
deleted file mode 100644
index 85a864e..0000000
--- a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
+++ /dev/null
@@ -1,141 +0,0 @@
-/*
- * Copyright 2012 GE Intelligent Platforms, Inc.
- * Copyright 2007-2009, 2011 Freescale Semiconductor, Inc.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <asm-generic/barebox.lds.h>
-
-#define RESET_VECTOR_ADDRESS	0xeffffffc
-
-OUTPUT_ARCH("powerpc")
-
-PHDRS
-{
-  text PT_LOAD;
-  bss PT_LOAD;
-}
-
-SECTIONS
-{
-  /* Read-only sections, merged into text segment: */
-  . = TEXT_BASE;
-
-  .text      :
-  {
-    *(.text*)
-  } :text
-
-  _etext = .;
-  PROVIDE (etext = .);
-  _sdata = .;
-
-  .rodata    :
-  {
-    *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
-  } :text
-
-  /* Read-write section, merged into data segment: */
-  . = (. + 0x00FF) & 0xFFFFFF00;
-
-  _erotext = .;
-  PROVIDE (erotext = .);
-
-  .reloc   :
-  {
-    _GOT2_TABLE_ = .;
-    KEEP(*(.got2))
-    KEEP(*(.got))
-    PROVIDE(_GLOBAL_OFFSET_TABLE_ = . + 4);
-    _FIXUP_TABLE_ = .;
-    KEEP(*(.fixup))
-  }
-  __got2_entries = ((_GLOBAL_OFFSET_TABLE_ - _GOT2_TABLE_) >> 2) - 1;
-  __fixup_entries = (. - _FIXUP_TABLE_) >> 2;
-
-  .data    :
-  {
-    *(.data*)
-    *(.data1*)
-    *(.sdata*)
-    *(.sdata2*)
-    *(.dynamic*)
-    CONSTRUCTORS
-  }
-  _edata  =  .;
-  PROVIDE (edata = .);
-
-  . = .;
-  __barebox_cmd_start = .;
-  .barebox_cmd : { BAREBOX_CMDS }
-  __barebox_cmd_end = .;
-
-  __barebox_initcalls_start = .;
-  .barebox_initcalls : { INITCALLS }
-  __barebox_initcalls_end = .;
-  __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start)>>2;
-
-  __usymtab_start = .;
-  __usymtab : { BAREBOX_SYMS }
-  __usymtab_end = .;
-
-  __early_init_data_begin = .;
-  .early_init_data : { *(.early_init_data) }
-  __early_init_data_end = .;
-
-  . = .;
-  __start___ex_table = .;
-  __ex_table : { *(__ex_table) }
-  __stop___ex_table = .;
-
-  . = ALIGN(256);
-  __init_begin = .;
-  .text.init : { *(.text.init) }
-  .data.init : { *(.data.init) }
-  . = ALIGN(256);
-  __init_end = .;
-
-  __init_size = __init_end - _start;
-
-  .bootpg RESET_VECTOR_ADDRESS - 0xffc :
-  {
-    _text = .;
-    _stext = .;
-    arch/ppc/cpu-85xx/start.o	(.bootpg)
-  } :text = 0xffff
-
-  .resetvec RESET_VECTOR_ADDRESS :
-  {
-    arch/ppc/cpu-85xx/resetvec.o	(.resetvec)
-  } :text = 0xffff
-
-  . = RESET_VECTOR_ADDRESS + 0x4;
-
-  . = 0x10000;
-  __bss_start = .;
-  .bss        :
-  {
-    *(.sbss*) *(.scommon*)
-    *(.dynbss*)
-    *(.bss*)
-    *(COMMON)
-  } :bss
-
-  . = ALIGN(4);
-  __bss_stop = .;
-  _end = . ;
-  PROVIDE (end = .);
-}
diff --git a/arch/ppc/boards/geip-da923rc/Makefile b/arch/ppc/boards/geip-da923rc/Makefile
index 0c28a79..3abc6c6 100644
--- a/arch/ppc/boards/geip-da923rc/Makefile
+++ b/arch/ppc/boards/geip-da923rc/Makefile
@@ -4,4 +4,3 @@ obj-y += law.o
 obj-y += ddr.o
 obj-y += nand.o
 obj-y += product_data.o
-extra-y += barebox.lds
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index dc5708c..dc2d2b7 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -5,6 +5,11 @@ config TEXT_BASE
 	default 0xeff80000 if P2020RDB
 	default 0xfff80000 if DA923RC
 
+config RESET_VECTOR_ADDRESS
+	hex
+	default 0xfffffffc if DA923RC
+	default 0xeffffffc if P2020RDB
+
 config MPC85xx
 	bool
 	default y
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index ce6c77a..3e64617 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_MP)	+= mp.o
 obj-$(CONFIG_OFTREE)	+= fdt.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
 obj-$(CONFIG_DDR_SPD)	+= ../ddr-8xxx/
+extra-y += barebox.lds
diff --git a/arch/ppc/boards/geip-da923rc/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
similarity index 97%
rename from arch/ppc/boards/geip-da923rc/barebox.lds.S
rename to arch/ppc/mach-mpc85xx/barebox.lds.S
index abf8016..4d156e8 100644
--- a/arch/ppc/boards/geip-da923rc/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -15,7 +15,11 @@
 
 #include <asm-generic/barebox.lds.h>
 
+#ifdef CONFIG_RESET_VECTOR_ADDRESS
+#define RESET_VECTOR_ADDRESS    CONFIG_RESET_VECTOR_ADDRESS
+#else
 #define RESET_VECTOR_ADDRESS    0xfffffffc
+#endif
 #define BSS_START_ADDRESS       0x2000
 
 OUTPUT_ARCH("powerpc")
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
