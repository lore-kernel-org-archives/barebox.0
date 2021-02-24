Delivery-date: Wed, 24 Feb 2021 09:50:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpsl-0004g8-I2
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:50:55 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpse-0007or-2K
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:50:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h1cS7nd8bfnIzoKh8viDs18d8ldUdQv5YBYl0vNhZ8o=; b=H4gsZOqlElOfPmObgV7WPvr/Ht
	M/fJqJ1S/3TjrGPMZpRF1BkYnHWolJ7GIPRGX9VTo+rpN2xNJ2TI1L4Mqe5+Lkxh4s8lfRe/oLjXx
	XZ042viFaxH1RVSNHjq28eSQivtFADua3l3HHKb4wwWWvNYwPjII63DIq3Lpj+tKFxmwcrAfO1/sK
	FaAxzc+ssOCNw/BXtsu5FmMcHb4KBNsbWX3Vq7TcW8IXCzDWFwYClh03nnuPXOPKZ5Y8LYShKOl2T
	NSzIfL5L6kcrtFqiIWVr1PE0l+PJrO0CAs/ON+4M11PuIbOTQqBnG2iP4FRK3CV/Kf6YvYy4LDQeh
	H4qYsPtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpqk-0006Fm-Pt; Wed, 24 Feb 2021 08:48:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpqe-0006Ea-0W
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:48:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpqc-0007Pk-SI; Wed, 24 Feb 2021 09:48:42 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpqc-0008Qe-6G; Wed, 24 Feb 2021 09:48:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 24 Feb 2021 09:48:40 +0100
Message-Id: <20210224084840.32241-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210224084840.32241-1-s.hauer@pengutronix.de>
References: <20210224084840.32241-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] openrisc: Remove architecture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox openrisc support was merged in 2011. It hasn't seen very much
active development since then and appears to have no active users.
Remove the architecture. Along with it also remove the ethoc driver
which depends on and is only used with openrisc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/openrisc.rst        |  57 ---
 Documentation/user/barebox.rst           |   1 -
 arch/openrisc/Kconfig                    |  29 --
 arch/openrisc/Makefile                   |  30 --
 arch/openrisc/boards/generic/Makefile    |   1 -
 arch/openrisc/boards/generic/config.h    |  24 -
 arch/openrisc/boards/generic/env/config  |  19 -
 arch/openrisc/boards/generic/generic.c   |  10 -
 arch/openrisc/configs/generic_defconfig  |  35 --
 arch/openrisc/cpu/.gitignore             |   1 -
 arch/openrisc/cpu/Makefile               |   5 -
 arch/openrisc/cpu/barebox.lds.S          |  78 ---
 arch/openrisc/cpu/cache.c                | 151 ------
 arch/openrisc/cpu/cpu.c                  |  38 --
 arch/openrisc/cpu/exceptions.c           |  84 ----
 arch/openrisc/cpu/start.S                | 358 --------------
 arch/openrisc/dts/Makefile               |   5 -
 arch/openrisc/dts/or1ksim.dts            |  51 --
 arch/openrisc/include/asm/bitops.h       |  35 --
 arch/openrisc/include/asm/bitops/ffs.h   |  26 -
 arch/openrisc/include/asm/bitops/fls.h   |  26 -
 arch/openrisc/include/asm/bitsperlong.h  |   1 -
 arch/openrisc/include/asm/byteorder.h    |   1 -
 arch/openrisc/include/asm/cache.h        |  43 --
 arch/openrisc/include/asm/common.h       |   4 -
 arch/openrisc/include/asm/dma.h          |  13 -
 arch/openrisc/include/asm/elf.h          | 107 -----
 arch/openrisc/include/asm/io.h           |  24 -
 arch/openrisc/include/asm/mmu.h          |   6 -
 arch/openrisc/include/asm/openrisc_exc.h |  37 --
 arch/openrisc/include/asm/posix_types.h  |   1 -
 arch/openrisc/include/asm/ptrace.h       | 131 -----
 arch/openrisc/include/asm/sections.h     |   1 -
 arch/openrisc/include/asm/spr-defs.h     | 578 ----------------------
 arch/openrisc/include/asm/string.h       |   4 -
 arch/openrisc/include/asm/swab.h         |   4 -
 arch/openrisc/include/asm/system.h       |  35 --
 arch/openrisc/include/asm/types.h        |  21 -
 arch/openrisc/include/asm/unaligned.h    |  51 --
 arch/openrisc/lib/Makefile               |   8 -
 arch/openrisc/lib/ashldi3.S              |  41 --
 arch/openrisc/lib/ashrdi3.S              |  55 ---
 arch/openrisc/lib/asm-offsets.c          |  18 -
 arch/openrisc/lib/board.c                |  31 --
 arch/openrisc/lib/clock.c                |  41 --
 arch/openrisc/lib/cpuinfo.c              | 200 --------
 arch/openrisc/lib/dtb.c                  |  35 --
 arch/openrisc/lib/lshrdi3.S              |  41 --
 arch/openrisc/lib/muldi3.S               |  58 ---
 drivers/net/Kconfig                      |   9 -
 drivers/net/Makefile                     |   1 -
 drivers/net/ethoc.c                      | 580 -----------------------
 drivers/of/Kconfig                       |   2 +-
 53 files changed, 1 insertion(+), 3245 deletions(-)
 delete mode 100644 Documentation/boards/openrisc.rst
 delete mode 100644 arch/openrisc/Kconfig
 delete mode 100644 arch/openrisc/Makefile
 delete mode 100644 arch/openrisc/boards/generic/Makefile
 delete mode 100644 arch/openrisc/boards/generic/config.h
 delete mode 100644 arch/openrisc/boards/generic/env/config
 delete mode 100644 arch/openrisc/boards/generic/generic.c
 delete mode 100644 arch/openrisc/configs/generic_defconfig
 delete mode 100644 arch/openrisc/cpu/.gitignore
 delete mode 100644 arch/openrisc/cpu/Makefile
 delete mode 100644 arch/openrisc/cpu/barebox.lds.S
 delete mode 100644 arch/openrisc/cpu/cache.c
 delete mode 100644 arch/openrisc/cpu/cpu.c
 delete mode 100644 arch/openrisc/cpu/exceptions.c
 delete mode 100644 arch/openrisc/cpu/start.S
 delete mode 100644 arch/openrisc/dts/Makefile
 delete mode 100644 arch/openrisc/dts/or1ksim.dts
 delete mode 100644 arch/openrisc/include/asm/bitops.h
 delete mode 100644 arch/openrisc/include/asm/bitops/ffs.h
 delete mode 100644 arch/openrisc/include/asm/bitops/fls.h
 delete mode 100644 arch/openrisc/include/asm/bitsperlong.h
 delete mode 100644 arch/openrisc/include/asm/byteorder.h
 delete mode 100644 arch/openrisc/include/asm/cache.h
 delete mode 100644 arch/openrisc/include/asm/common.h
 delete mode 100644 arch/openrisc/include/asm/dma.h
 delete mode 100644 arch/openrisc/include/asm/elf.h
 delete mode 100644 arch/openrisc/include/asm/io.h
 delete mode 100644 arch/openrisc/include/asm/mmu.h
 delete mode 100644 arch/openrisc/include/asm/openrisc_exc.h
 delete mode 100644 arch/openrisc/include/asm/posix_types.h
 delete mode 100644 arch/openrisc/include/asm/ptrace.h
 delete mode 100644 arch/openrisc/include/asm/sections.h
 delete mode 100644 arch/openrisc/include/asm/spr-defs.h
 delete mode 100644 arch/openrisc/include/asm/string.h
 delete mode 100644 arch/openrisc/include/asm/swab.h
 delete mode 100644 arch/openrisc/include/asm/system.h
 delete mode 100644 arch/openrisc/include/asm/types.h
 delete mode 100644 arch/openrisc/include/asm/unaligned.h
 delete mode 100644 arch/openrisc/lib/Makefile
 delete mode 100644 arch/openrisc/lib/ashldi3.S
 delete mode 100644 arch/openrisc/lib/ashrdi3.S
 delete mode 100644 arch/openrisc/lib/asm-offsets.c
 delete mode 100644 arch/openrisc/lib/board.c
 delete mode 100644 arch/openrisc/lib/clock.c
 delete mode 100644 arch/openrisc/lib/cpuinfo.c
 delete mode 100644 arch/openrisc/lib/dtb.c
 delete mode 100644 arch/openrisc/lib/lshrdi3.S
 delete mode 100644 arch/openrisc/lib/muldi3.S
 delete mode 100644 drivers/net/ethoc.c

diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
deleted file mode 100644
index f9d67f9650..0000000000
--- a/Documentation/boards/openrisc.rst
+++ /dev/null
@@ -1,57 +0,0 @@
-OpenRISC
-========
-
-or1ksim
--------
-
-Compile or1ksim emulator:
-
-.. code-block:: console
-
- $ cd ~/
- $ git clone https://github.com/openrisc/or1ksim
- $ cd or1ksim
- $ ./configure
- $ make
-
-Create minimal or1ksim.cfg file:
-
-.. code-block:: none
-
- section cpu
-   ver = 0x12
-   cfgr = 0x20
-   rev = 0x0001
- end
-
- section memory
-   name = "RAM"
-   type = unknown
-   baseaddr = 0x00000000
-   size = 0x02000000
-   delayr = 1
-   delayw = 2
- end
-
- section uart
-   enabled = 1
-   baseaddr = 0x90000000
-   irq = 2
-   16550 = 1
-   /* channel = "tcp:10084" */
-   channel = "xterm:"
- end
-
- section ethernet
-   enabled = 1
-   baseaddr = 0x92000000
-   irq = 4
-   rtx_type = "tap"
-   tap_dev = "tap0"
- end
-
-Run or1ksim:
-
-.. code-block:: console
-
- $ ~/or1ksim/sim -f or1ksim.cfg barebox
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 503f0b9797..8c9ad61ef4 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -54,7 +54,6 @@ variable. Currently, ``ARCH`` must be one of:
 
 * arm
 * mips
-* openrisc
 * ppc
 * riscv
 * sandbox
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
deleted file mode 100644
index 32d23029d8..0000000000
--- a/arch/openrisc/Kconfig
+++ /dev/null
@@ -1,29 +0,0 @@
-config OPENRISC
-	bool
-	select OFTREE
-	select HAS_CACHE
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select GENERIC_FIND_NEXT_BIT
-	default y
-
-# not used
-config ARCH_TEXT_BASE
-	hex
-	default 0x00000000
-
-config BUILTIN_DTB
-	bool "link a DTB into the barebox image"
-	depends on OFTREE
-
-config BUILTIN_DTB_NAME
-	string "DTB to build into the barebox image"
-	depends on BUILTIN_DTB
-
-choice
-	prompt "Select your board"
-
-config GENERIC
-	bool "Generic"
-	select OPENRISC
-
-endchoice
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
deleted file mode 100644
index 72d7fa3d53..0000000000
--- a/arch/openrisc/Makefile
+++ /dev/null
@@ -1,30 +0,0 @@
-KBUILD_DEFCONFIG := generic_defconfig
-
-KBUILD_CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
-
-board-$(CONFIG_GENERIC) := generic
-
-KALLSYMS += --symbol-prefix=_
-
-archprepare: maketools
-
-PHONY += maketools
-
-ifneq ($(board-y),)
-BOARD  := arch/openrisc/boards/$(board-y)/
-else
-BOARD  :=
-endif
-
-common-y += $(BOARD)
-common-y += arch/openrisc/lib/
-common-y += arch/openrisc/cpu/
-
-lds-y += arch/openrisc/cpu/barebox.lds
-
-common-$(CONFIG_BUILTIN_DTB) += arch/openrisc/dts/
-
-dts := arch/openrisc/dts
-
-%.dtb: scripts
-	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
diff --git a/arch/openrisc/boards/generic/Makefile b/arch/openrisc/boards/generic/Makefile
deleted file mode 100644
index d8a3d7f2cc..0000000000
--- a/arch/openrisc/boards/generic/Makefile
+++ /dev/null
@@ -1 +0,0 @@
-obj-y += generic.o
diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
deleted file mode 100644
index f6a054beed..0000000000
--- a/arch/openrisc/boards/generic/config.h
+++ /dev/null
@@ -1,24 +0,0 @@
-#ifndef _GENERIC_NAMES_H_
-#define _GENERIC_NAMES_H_
-
-#define CONFIG_SYS_CLK_FREQ		50000000
-
-#define OPENRISC_TIMER_FREQ		CONFIG_SYS_CLK_FREQ
-
-#define OPENRISC_SOPC_MEMORY_BASE	0x00000000
-#define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
-
-/* We reserve 512K for barebox */
-#define BAREBOX_RESERVED_SIZE		0x80000
-
-/* Barebox will be at top of main memory */
-#define OPENRISC_SOPC_TEXT_BASE		(OPENRISC_SOPC_MEMORY_BASE + OPENRISC_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
-
-/*
-* TEXT_BASE is defined here because STACK_BASE definition
-*  in include/asm-generic/memory_layout.h uses this name
-*/
-
-#define TEXT_BASE                       OPENRISC_SOPC_TEXT_BASE
-
-#endif
diff --git a/arch/openrisc/boards/generic/env/config b/arch/openrisc/boards/generic/env/config
deleted file mode 100644
index 4027f2775f..0000000000
--- a/arch/openrisc/boards/generic/env/config
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-# can be either 'net' or 'flash'
-kernel=flash
-root=flash
-
-kernel_loc=nor
-
-# use 'dhcp' todo dhcp in barebox and in kernel
-ip=none
-
-autoboot_timeout=3
-
-nor_parts="256k(barebox),128k(env),4M(kernel),-(rootfs)"
-
-bootargs="console=ttyS0,9600"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;33mbarebox@\e[1;32mor32:\w\e[0m "
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
deleted file mode 100644
index ff6f9f4d42..0000000000
--- a/arch/openrisc/boards/generic/generic.c
+++ /dev/null
@@ -1,10 +0,0 @@
-#include <common.h>
-#include <init.h>
-
-static int openrisc_core_init(void)
-{
-	barebox_set_hostname("or1k");
-
-	return 0;
-}
-core_initcall(openrisc_core_init);
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
deleted file mode 100644
index 1f2d40eae9..0000000000
--- a/arch/openrisc/configs/generic_defconfig
+++ /dev/null
@@ -1,35 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="or1ksim"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_ETHOC=y
-CONFIG_FS_TFTP=y
diff --git a/arch/openrisc/cpu/.gitignore b/arch/openrisc/cpu/.gitignore
deleted file mode 100644
index d1165788c9..0000000000
--- a/arch/openrisc/cpu/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-barebox.lds
diff --git a/arch/openrisc/cpu/Makefile b/arch/openrisc/cpu/Makefile
deleted file mode 100644
index 1cd7506003..0000000000
--- a/arch/openrisc/cpu/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-obj-y                 += start.o
-obj-y                 += cpu.o
-obj-y                 += exceptions.o
-obj-y                 += cache.o
-extra-y               += barebox.lds
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
deleted file mode 100644
index adb0c22f85..0000000000
--- a/arch/openrisc/cpu/barebox.lds.S
+++ /dev/null
@@ -1,78 +0,0 @@
-/*
- * barebox - barebox.lds.S
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
-#include <config.h>
-#include <asm-generic/barebox.lds.h>
-
-OUTPUT_FORMAT("elf32-or1k", "elf32-or1k", "elf32-or1k")
-__DYNAMIC  =  0;
-
-MEMORY
-{
-	vectors	: ORIGIN = 0, LENGTH = 0x2000
-	ram	: ORIGIN = TEXT_BASE,
-		  LENGTH = BAREBOX_RESERVED_SIZE
-}
-
-SECTIONS
-{
-	.vectors :
-	{
-		*(.vectors)
-	} > vectors
-
-	. = ALIGN(4);
-	__start = .;
-	.text : AT (__start) {
-		_stext = .;
-		*(.text)
-		_etext = .;
-		*(.lit)
-		*(.shdata)
-		_endtext = .;
-	}  > ram
-
-	. = ALIGN(4);
-	.rodata : {
-		*(.rodata);
-		*(.rodata.*)
-		*(.bbenv.rodata.*)
-		RO_DATA_SECTION
-	} > ram
-
-	__etext = .; /* End of text and rodata section */
-
-	. = ALIGN(4);
-	.data : {
-		sdata = .;
-		_sdata = .;
-		*(.data)
-		edata = .;
-		_edata = .;
-	} > ram
-
-	. = ALIGN(4);
-	.bss :
-	{
-		__bss_start = .;
-		_bss_start = .;
-		*(.shbss)
-		*(.bss)
-		*(COMMON)
-		_bss_end = .;
-		__bss_stop = .;
-	} > ram
-	__end = .;
-}
diff --git a/arch/openrisc/cpu/cache.c b/arch/openrisc/cpu/cache.c
deleted file mode 100644
index a124d6612c..0000000000
--- a/arch/openrisc/cpu/cache.c
+++ /dev/null
@@ -1,151 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#include <common.h>
-#include <init.h>
-#include <asm/system.h>
-#include <asm/cache.h>
-
-void flush_dcache_range(unsigned long addr, unsigned long stop)
-{
-	ulong block_size = (mfspr(SPR_DCCFGR) & SPR_DCCFGR_CBS) ? 32 : 16;
-
-	while (addr < stop) {
-		mtspr(SPR_DCBFR, addr);
-		addr += block_size;
-	}
-}
-
-void invalidate_dcache_range(unsigned long addr, unsigned long stop)
-{
-	ulong block_size = (mfspr(SPR_DCCFGR) & SPR_DCCFGR_CBS) ? 32 : 16;
-
-	while (addr < stop) {
-		mtspr(SPR_DCBIR, addr);
-		addr += block_size;
-	}
-}
-
-static void invalidate_icache_range(unsigned long addr, unsigned long stop)
-{
-	ulong block_size = (mfspr(SPR_ICCFGR) & SPR_ICCFGR_CBS) ? 32 : 16;
-
-	while (addr < stop) {
-		mtspr(SPR_ICBIR, addr);
-		addr += block_size;
-	}
-}
-
-void flush_cache(unsigned long addr, unsigned long size)
-{
-	flush_dcache_range(addr, addr + size);
-	invalidate_icache_range(addr, addr + size);
-}
-
-int icache_status(void)
-{
-	return mfspr(SPR_SR) & SPR_SR_ICE;
-}
-
-int checkicache(void)
-{
-	unsigned long iccfgr;
-	unsigned long cache_set_size;
-	unsigned long cache_ways;
-	unsigned long cache_block_size;
-
-	iccfgr = mfspr(SPR_ICCFGR);
-	cache_ways = 1 << (iccfgr & SPR_ICCFGR_NCW);
-	cache_set_size = 1 << ((iccfgr & SPR_ICCFGR_NCS) >> 3);
-	cache_block_size = (iccfgr & SPR_ICCFGR_CBS) ? 32 : 16;
-
-	return cache_set_size * cache_ways * cache_block_size;
-}
-
-int dcache_status(void)
-{
-	return mfspr(SPR_SR) & SPR_SR_DCE;
-}
-
-int checkdcache(void)
-{
-	unsigned long dccfgr;
-	unsigned long cache_set_size;
-	unsigned long cache_ways;
-	unsigned long cache_block_size;
-
-	dccfgr = mfspr(SPR_DCCFGR);
-	cache_ways = 1 << (dccfgr & SPR_DCCFGR_NCW);
-	cache_set_size = 1 << ((dccfgr & SPR_DCCFGR_NCS) >> 3);
-	cache_block_size = (dccfgr & SPR_DCCFGR_CBS) ? 32 : 16;
-
-	return cache_set_size * cache_ways * cache_block_size;
-}
-
-void dcache_enable(void)
-{
-	mtspr(SPR_SR, mfspr(SPR_SR) | SPR_SR_DCE);
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-}
-
-void dcache_disable(void)
-{
-	mtspr(SPR_SR, mfspr(SPR_SR) & ~SPR_SR_DCE);
-}
-
-void icache_enable(void)
-{
-	mtspr(SPR_SR, mfspr(SPR_SR) | SPR_SR_ICE);
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-	asm volatile("l.nop");
-}
-
-void icache_disable(void)
-{
-	mtspr(SPR_SR, mfspr(SPR_SR) & ~SPR_SR_ICE);
-}
-
-static int cache_init(void)
-{
-	if (mfspr(SPR_UPR) & SPR_UPR_ICP) {
-		icache_disable();
-		invalidate_icache_range(0, checkicache());
-		icache_enable();
-	}
-
-	if (mfspr(SPR_UPR) & SPR_UPR_DCP) {
-		dcache_disable();
-		invalidate_dcache_range(0, checkdcache());
-		dcache_enable();
-	}
-
-	return 0;
-}
-
-core_initcall(cache_init);
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
deleted file mode 100644
index 47d8ab4288..0000000000
--- a/arch/openrisc/cpu/cpu.c
+++ /dev/null
@@ -1,38 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#include <common.h>
-#include <init.h>
-#include <restart.h>
-#include <asm/system.h>
-#include <asm/openrisc_exc.h>
-
-extern void __reset(void);
-
-static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
-{
-	__reset();
-	/* not reached, __reset does not return */
-
-	/* Not reached */
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	return restart_handler_register_fn("vector", openrisc_restart_cpu);
-}
-coredevice_initcall(restart_register_feature);
diff --git a/arch/openrisc/cpu/exceptions.c b/arch/openrisc/cpu/exceptions.c
deleted file mode 100644
index c69ceafe80..0000000000
--- a/arch/openrisc/cpu/exceptions.c
+++ /dev/null
@@ -1,84 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#include <common.h>
-#include <asm/system.h>
-#include <asm/openrisc_exc.h>
-
-static const char * const excp_table[] = {
-	"Unknown exception",
-	"Reset",
-	"Bus Error",
-	"Data Page Fault",
-	"Instruction Page Fault",
-	"Tick Timer",
-	"Alignment",
-	"Illegal Instruction",
-	"External Interrupt",
-	"D-TLB Miss",
-	"I-TLB Miss",
-	"Range",
-	"System Call",
-	"Floating Point",
-	"Trap",
-};
-
-static void (*handlers[32])(void);
-
-void exception_install_handler(int exception, void (*handler)(void))
-{
-	if (exception < 0 || exception > 31)
-		return;
-
-	handlers[exception] = handler;
-}
-
-void exception_free_handler(int exception)
-{
-	if (exception < 0 || exception > 31)
-		return;
-
-	handlers[exception] = 0;
-}
-
-static void exception_hang(int vect)
-{
-	printf("Unhandled exception at 0x%x ", vect & 0xff00);
-
-	vect = ((vect >> 8) & 0xff);
-	if (vect < ARRAY_SIZE(excp_table))
-		printf("(%s)\n", excp_table[vect]);
-	else
-		printf("(%s)\n", excp_table[0]);
-
-	printf("EPCR: 0x%08lx\n", mfspr(SPR_EPCR_BASE));
-	printf("EEAR: 0x%08lx\n", mfspr(SPR_EEAR_BASE));
-	printf("ESR:  0x%08lx\n", mfspr(SPR_ESR_BASE));
-	hang();
-}
-
-/* Called from assembly */
-void exception_handler(int vect);
-
-void exception_handler(int vect)
-{
-	int exception = vect >> 8;
-
-	if (handlers[exception])
-		handlers[exception]();
-	else
-		exception_hang(vect);
-}
diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S
deleted file mode 100644
index 7ac790b055..0000000000
--- a/arch/openrisc/cpu/start.S
+++ /dev/null
@@ -1,358 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#include <config.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/spr-defs.h>
-
-#define EXCEPTION_STACK_SIZE (128+128)
-
-#define HANDLE_EXCEPTION			\
-	l.addi	r1, r1, -EXCEPTION_STACK_SIZE	;\
-	l.sw	0x1c(r1), r9			;\
-	l.jal	_exception_handler		;\
-	 l.nop					;\
-	l.lwz 	r9, 0x1c(r1)			;\
-	l.addi	r1, r1, EXCEPTION_STACK_SIZE	;\
-	l.rfe					;\
-	 l.nop
-
-	.section .vectors, "ax"
-	.global __reset
-
-	/* reset */
-	.org	0x100
-__reset:
-	/* there is no guarantee r0 is hardwired to zero, clear it here */
-	l.andi	r0, r0, 0
-	/* reset stack and frame pointers */
-	l.andi	r1, r0, 0
-	l.andi	r2, r0, 0
-
-	/* set supervisor mode */
-	l.ori	r3,r0,SPR_SR_SM
-	l.mtspr	r0,r3,SPR_SR
-
-	l.jal	_cur
-	l.nop
-_cur:
-	l.ori	r8, r9, 0		/* Get _cur current address */
-
-	l.movhi	r3, hi(_cur)
-	l.ori	r3, r3, lo(_cur)
-	l.sfeq	r8, r3			/* If we are running at the linked address */
-	l.bf	_no_vector_reloc	/* there is not need for relocation */
-	 l.sub	r8, r8, r3
-
-	l.mfspr	r4, r0, SPR_CPUCFGR
-	l.andi	r4, r4, SPR_CPUCFGR_EVBARP	/* Exception Vector Base Address Register present ? */
-	l.sfnei	r4,0
-	l.bnf	_reloc_vectors
-	l.movhi	r5, 0			/* Destination */
-
-	l.mfspr	r4, r0, SPR_EVBAR
-	l.add	r5, r5, r4
-
-_reloc_vectors:
-	/* Relocate vectors*/
-	l.movhi	r6, hi(__start)		/* Length */
-	l.ori	r6, r6, lo(__start)
-	l.ori	r3, r8, 0
-
-.L_relocvectors:
-	l.lwz	r7, 0(r3)
-	l.sw	0(r5), r7
-	l.addi	r5, r5, 4
-	l.sfeq	r5, r6
-	l.bnf	.L_relocvectors
-	 l.addi	r3, r3, 4
-
-_no_vector_reloc:
-
-	/* Relocate barebox */
-	l.movhi	r3,hi(__start)		/* source start offset */
-	l.ori	r3,r3,lo(__start)
-	l.add	r3,r8,r3
-
-	l.movhi	r4,hi(_stext)		/* dest start address */
-	l.ori	r4,r4,lo(_stext)
-	l.movhi	r5,hi(__end)		/* dest end address */
-	l.ori	r5,r5,lo(__end)
-
-.L_reloc:
-	l.lwz	r6,0(r3)
-	l.sw	0(r4),r6
-	l.addi	r3,r3,4
-	l.sfltu	r4,r5
-	l.bf	.L_reloc
-	l.addi	r4,r4,4			/*delay slot */
-
-	/* JUMP TO RELOC ADDR */
-	l.movhi	r4, hi(_start)
-	l.ori	r4, r4, lo(_start)
-	l.jr	r4
-	l.nop
-
-	/* bus error */
-	.org	0x200
-	HANDLE_EXCEPTION
-
-	/* data page fault */
-	.org	0x300
-	HANDLE_EXCEPTION
-
-	/* instruction page fault */
-	.org	0x400
-	HANDLE_EXCEPTION
-
-	/* tick timer */
-	.org	0x500
-	HANDLE_EXCEPTION
-
-	/* alignment */
-	.org	0x600
-	HANDLE_EXCEPTION
-
-	/* illegal instruction */
-	.org	0x700
-	HANDLE_EXCEPTION
-
-	/* external interrupt */
-	.org	0x800
-	HANDLE_EXCEPTION
-
-	/* D-TLB miss */
-	.org	0x900
-	HANDLE_EXCEPTION
-
-	/* I-TLB miss */
-	.org	0xa00
-	HANDLE_EXCEPTION
-
-	/* range */
-	.org	0xb00
-	HANDLE_EXCEPTION
-
-	/* system call */
-	.org	0xc00
-	HANDLE_EXCEPTION
-
-	/* floating point */
-	.org	0xd00
-	HANDLE_EXCEPTION
-
-	/* trap */
-	.org	0xe00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0xf00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1100
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1200
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1300
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1400
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1500
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1600
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1700
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1800
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1900
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1a00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1b00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1c00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1d00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1e00
-	HANDLE_EXCEPTION
-
-	/* reserved */
-	.org	0x1f00
-	HANDLE_EXCEPTION
-
-	/* Startup routine */
-	.text
-	.global _start
-_start:
-	/* Init stack and frame pointers */
-	l.movhi	r1, hi(STACK_BASE)
-	l.ori	r1, r1, lo(STACK_BASE)
-	l.or	r2, r0, r1
-
-	/* clear BSS segments */
-	l.movhi	r4, hi(_bss_start)
-	l.ori	r4, r4, lo(_bss_start)
-	l.movhi	r5, hi(_bss_end)
-	l.ori	r5, r5, lo(_bss_end)
-.L_clear_bss:
-	l.sw	0(r4), r0
-	l.sfltu	r4,r5
-	l.bf	.L_clear_bss
-	 l.addi	r4,r4,4
-
-	/* Reset registers before jumping to board_init */
-	l.andi	r3, r0, 0
-	l.andi	r4, r0, 0
-	l.andi	r5, r0, 0
-	l.andi	r6, r0, 0
-	l.andi	r7, r0, 0
-	l.andi	r8, r0, 0
-	l.andi	r9, r0, 0
-	l.andi	r10, r0, 0
-	l.andi	r11, r0, 0
-	l.andi	r12, r0, 0
-	l.andi	r13, r0, 0
-	l.andi	r14, r0, 0
-	l.andi	r15, r0, 0
-	l.andi	r17, r0, 0
-	l.andi	r18, r0, 0
-	l.andi	r19, r0, 0
-	l.andi	r20, r0, 0
-	l.andi	r21, r0, 0
-	l.andi	r22, r0, 0
-	l.andi	r23, r0, 0
-	l.andi	r24, r0, 0
-	l.andi	r25, r0, 0
-	l.andi	r26, r0, 0
-	l.andi	r27, r0, 0
-	l.andi	r28, r0, 0
-	l.andi	r29, r0, 0
-	l.andi	r30, r0, 0
-	l.andi	r31, r0, 0
-
-	l.j	openrisc_start_barebox
-	 l.nop
-
-	.size	_start, .-_start
-
-/*
- * Store state onto stack and call the real exception handler
- */
-	.section .text
-	.extern	exception_handler
-	.type	_exception_handler,@function
-
-_exception_handler:
-	/* Store state (r9 already saved)*/
-	l.sw	0x00(r1), r2
-	l.sw	0x04(r1), r3
-	l.sw	0x08(r1), r4
-	l.sw	0x0c(r1), r5
-	l.sw	0x10(r1), r6
-	l.sw	0x14(r1), r7
-	l.sw	0x18(r1), r8
-	l.sw	0x20(r1), r10
-	l.sw	0x24(r1), r11
-	l.sw	0x28(r1), r12
-	l.sw	0x2c(r1), r13
-	l.sw	0x30(r1), r14
-	l.sw	0x34(r1), r15
-	l.sw	0x38(r1), r16
-	l.sw	0x3c(r1), r17
-	l.sw	0x40(r1), r18
-	l.sw	0x44(r1), r19
-	l.sw	0x48(r1), r20
-	l.sw	0x4c(r1), r21
-	l.sw	0x50(r1), r22
-	l.sw	0x54(r1), r23
-	l.sw	0x58(r1), r24
-	l.sw	0x5c(r1), r25
-	l.sw	0x60(r1), r26
-	l.sw	0x64(r1), r27
-	l.sw	0x68(r1), r28
-	l.sw	0x6c(r1), r29
-	l.sw	0x70(r1), r30
-	l.sw	0x74(r1), r31
-
-	/* Save return address */
-	l.or	r14, r0, r9
-	/* Call exception handler with the link address as argument */
-	l.jal	exception_handler
-	 l.or	r3, r0, r14
-	/* Load return address */
-	l.or	r9, r0, r14
-
-	/* Restore state */
-	l.lwz	r2, 0x00(r1)
-	l.lwz	r3, 0x04(r1)
-	l.lwz	r4, 0x08(r1)
-	l.lwz	r5, 0x0c(r1)
-	l.lwz	r6, 0x10(r1)
-	l.lwz	r7, 0x14(r1)
-	l.lwz	r8, 0x18(r1)
-	l.lwz	r10, 0x20(r1)
-	l.lwz	r11, 0x24(r1)
-	l.lwz	r12, 0x28(r1)
-	l.lwz	r13, 0x2c(r1)
-	l.lwz	r14, 0x30(r1)
-	l.lwz	r15, 0x34(r1)
-	l.lwz	r16, 0x38(r1)
-	l.lwz	r17, 0x3c(r1)
-	l.lwz	r18, 0x40(r1)
-	l.lwz	r19, 0x44(r1)
-	l.lwz	r20, 0x48(r1)
-	l.lwz	r21, 0x4c(r1)
-	l.lwz	r22, 0x50(r1)
-	l.lwz	r23, 0x54(r1)
-	l.lwz	r24, 0x58(r1)
-	l.lwz	r25, 0x5c(r1)
-	l.lwz	r26, 0x60(r1)
-	l.lwz	r27, 0x64(r1)
-	l.lwz	r28, 0x68(r1)
-	l.lwz	r29, 0x6c(r1)
-	l.lwz	r30, 0x70(r1)
-	l.lwz	r31, 0x74(r1)
-	l.jr	r9
-	 l.nop
diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
deleted file mode 100644
index 6d6c9a3ce0..0000000000
--- a/arch/openrisc/dts/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-
-BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
-obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
-
-clean-files := *.dtb *.dtb.S
diff --git a/arch/openrisc/dts/or1ksim.dts b/arch/openrisc/dts/or1ksim.dts
deleted file mode 100644
index 7316cc6770..0000000000
--- a/arch/openrisc/dts/or1ksim.dts
+++ /dev/null
@@ -1,51 +0,0 @@
-/dts-v1/;
-/ {
-	model = "or1ksim";
-	compatible = "opencores,or1ksim";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	interrupt-parent = <&pic>;
-
-	chosen {
-		bootargs = "console=uart,mmio,0x90000000,115200";
-	};
-
-	memory {
-		device_type = "memory";
-		reg = <0x00000000 0x02000000>;
-	};
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		cpu@0 {
-			compatible = "opencores,or1200-rtlsvn481";
-			reg = <0>;
-			clock-frequency = <20000000>;
-		};
-	};
-
-	/*
-	 * OR1K PIC is built into CPU and accessed via special purpose
-	 * registers.  It is not addressable and, hence, has no 'reg'
-	 * property.
-	 */
-	pic: pic {
-		compatible = "opencores,or1k-pic";
-		#interrupt-cells = <1>;
-		interrupt-controller;
-	};
-
-	serial0: serial@90000000 {
-		compatible = "ns16550a";
-		reg = <0x90000000 0x100>;
-		interrupts = <2>;
-		clock-frequency = <50000000>;
-	};
-
-	enet0: ethoc@92000000 {
-		compatible = "opencores,ethoc";
-		reg = <0x92000000 0x100>;
-		interrupts = <4>;
-	};
-};
diff --git a/arch/openrisc/include/asm/bitops.h b/arch/openrisc/include/asm/bitops.h
deleted file mode 100644
index e77ab83202..0000000000
--- a/arch/openrisc/include/asm/bitops.h
+++ /dev/null
@@ -1,35 +0,0 @@
-/*
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
- *
- */
-
-#ifndef _ASM_BITOPS_H_
-#define _ASM_BITOPS_H_
-
-#include <asm-generic/bitops/__ffs.h>
-#include <asm-generic/bitops/__fls.h>
-#include <asm-generic/bitops/ffs.h>
-#include <asm-generic/bitops/fls.h>
-#include <asm-generic/bitops/ffz.h>
-#include <asm-generic/bitops/hweight.h>
-#include <asm-generic/bitops/fls64.h>
-#include <asm-generic/bitops/find.h>
-#include <asm-generic/bitops/ops.h>
-
-#define set_bit(x, y)			__set_bit(x, y)
-#define clear_bit(x, y)			__clear_bit(x, y)
-#define change_bit(x, y)		__change_bit(x, y)
-#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
-#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
-#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
-
-#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/openrisc/include/asm/bitops/ffs.h b/arch/openrisc/include/asm/bitops/ffs.h
deleted file mode 100644
index 1de5295816..0000000000
--- a/arch/openrisc/include/asm/bitops/ffs.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * OpenRISC Linux
- *
- * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef __ASM_OPENRISC_FFS_H
-#define __ASM_OPENRISC_FFS_H
-
-static inline int ffs(int x)
-{
-	int ret;
-
-	__asm__ ("l.ff1 %0,%1"
-		 : "=r" (ret)
-		 : "r" (x));
-
-	return ret;
-}
-
-#endif /* __ASM_OPENRISC_FFS_H */
diff --git a/arch/openrisc/include/asm/bitops/fls.h b/arch/openrisc/include/asm/bitops/fls.h
deleted file mode 100644
index 8c77c13776..0000000000
--- a/arch/openrisc/include/asm/bitops/fls.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * OpenRISC Linux
- *
- * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef __ASM_OPENRISC_FLS_H
-#define __ASM_OPENRISC_FLS_H
-
-static inline int fls(int x)
-{
-	int ret;
-
-	__asm__ ("l.fl1 %0,%1"
-		 : "=r" (ret)
-		 : "r" (x));
-
-	return ret;
-}
-
-#endif /* __ASM_OPENRISC_FLS_H */
diff --git a/arch/openrisc/include/asm/bitsperlong.h b/arch/openrisc/include/asm/bitsperlong.h
deleted file mode 100644
index 6dc0bb0c13..0000000000
--- a/arch/openrisc/include/asm/bitsperlong.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/bitsperlong.h>
diff --git a/arch/openrisc/include/asm/byteorder.h b/arch/openrisc/include/asm/byteorder.h
deleted file mode 100644
index 60d14f7e14..0000000000
--- a/arch/openrisc/include/asm/byteorder.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <linux/byteorder/big_endian.h>
diff --git a/arch/openrisc/include/asm/cache.h b/arch/openrisc/include/asm/cache.h
deleted file mode 100644
index 5dee26b190..0000000000
--- a/arch/openrisc/include/asm/cache.h
+++ /dev/null
@@ -1,43 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
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
-#ifndef __ASM_OPENRISC_CACHE_H_
-#define __ASM_OPENRISC_CACHE_H_
-
-void flush_dcache_range(unsigned long addr, unsigned long stop);
-void invalidate_dcache_range(unsigned long addr, unsigned long stop);
-void flush_cache(unsigned long addr, unsigned long size);
-int icache_status(void);
-int checkicache(void);
-int dcache_status(void);
-int checkdcache(void);
-void dcache_enable(void);
-void dcache_disable(void);
-void icache_enable(void);
-void icache_disable(void);
-
-/*
- * Valid L1 data cache line sizes for the OpenRISC architecture are
- * 16 and 32 bytes.
- * If the board configuration has not specified one we default to the
- * largest of these values for alignment of DMA buffers.
- */
-#ifdef CONFIG_SYS_CACHELINE_SIZE
-#define ARCH_DMA_MINALIGN       CONFIG_SYS_CACHELINE_SIZE
-#else
-#define ARCH_DMA_MINALIGN       32
-#endif
-
-#endif /* __ASM_OPENRISC_CACHE_H_ */
diff --git a/arch/openrisc/include/asm/common.h b/arch/openrisc/include/asm/common.h
deleted file mode 100644
index 027dca2d56..0000000000
--- a/arch/openrisc/include/asm/common.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _ASM_COMMON_H
-#define __ASM_COMMON_H
-
-#endif /* _ASM_COMMON_H */
diff --git a/arch/openrisc/include/asm/dma.h b/arch/openrisc/include/asm/dma.h
deleted file mode 100644
index 27d269f491..0000000000
--- a/arch/openrisc/include/asm/dma.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/*
- * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
- */
-
-#ifndef __ASM_DMA_H
-#define __ASM_DMA_H
-
-/* empty */
-
-#endif /* __ASM_DMA_H */
diff --git a/arch/openrisc/include/asm/elf.h b/arch/openrisc/include/asm/elf.h
deleted file mode 100644
index 6a134a5723..0000000000
--- a/arch/openrisc/include/asm/elf.h
+++ /dev/null
@@ -1,107 +0,0 @@
-/*
- * OpenRISC Linux
- *
- * Linux architectural port borrowing liberally from similar works of
- * others.  All original copyrights apply as per the original source
- * declaration.
- *
- * OpenRISC implementation:
- * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
- * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
- * et al.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef __ASM_OPENRISC_ELF_H
-#define __ASM_OPENRISC_ELF_H
-
-/*
- * ELF register definitions..
- */
-#include <linux/types.h>
-#include <asm/ptrace.h>
-
-/* The OR1K relocation types... not all relevant for module loader */
-#define R_OR32_NONE	0
-#define R_OR32_32	1
-#define R_OR32_16	2
-#define R_OR32_8	3
-#define R_OR32_CONST	4
-#define R_OR32_CONSTH	5
-#define R_OR32_JUMPTARG	6
-#define R_OR32_VTINHERIT 7
-#define R_OR32_VTENTRY	8
-
-typedef unsigned long elf_greg_t;
-
-/*
- * Note that NGREG is defined to ELF_NGREG in include/linux/elfcore.h, and is
- * thus exposed to user-space.
- */
-#define ELF_NGREG (sizeof(struct user_regs_struct) / sizeof(elf_greg_t))
-typedef elf_greg_t elf_gregset_t[ELF_NGREG];
-
-/* A placeholder; OR32 does not have fp support yes, so no fp regs for now.  */
-typedef unsigned long elf_fpregset_t;
-
-/* This should be moved to include/linux/elf.h */
-#define EM_OR32         0x8472
-#define EM_OPENRISC     92     /* OpenRISC 32-bit embedded processor */
-
-/*
- * These are used to set parameters in the core dumps.
- */
-#define ELF_ARCH	EM_OR32
-#define ELF_CLASS	ELFCLASS32
-#define ELF_DATA	ELFDATA2MSB
-
-#ifdef __KERNEL__
-
-/*
- * This is used to ensure we don't load something for the wrong architecture.
- */
-
-#define elf_check_arch(x) \
-	(((x)->e_machine == EM_OR32) || ((x)->e_machine == EM_OPENRISC))
-
-/* This is the location that an ET_DYN program is loaded if exec'ed.  Typical
-   use of this is to invoke "./ld.so someprog" to test out a new version of
-   the loader.  We need to make sure that it is out of the way of the program
-   that it will "exec", and that there is sufficient room for the brk.  */
-
-#define ELF_ET_DYN_BASE         (0x08000000)
-
-/*
- * Enable dump using regset.
- * This covers all of general/DSP/FPU regs.
- */
-#define CORE_DUMP_USE_REGSET
-
-#define ELF_EXEC_PAGESIZE	8192
-
-extern void dump_elf_thread(elf_greg_t *dest, struct pt_regs *pt);
-#define ELF_CORE_COPY_REGS(dest, regs) dump_elf_thread(dest, regs);
-
-/* This yields a mask that user programs can use to figure out what
-   instruction set this cpu supports.  This could be done in userspace,
-   but it's not easy, and we've already done it here.  */
-
-#define ELF_HWCAP	(0)
-
-/* This yields a string that ld.so will use to load implementation
-   specific libraries for optimization.  This is more specific in
-   intent than poking at uname or /proc/cpuinfo.
-
-   For the moment, we have only optimizations for the Intel generations,
-   but that could change... */
-
-#define ELF_PLATFORM	(NULL)
-
-#define SET_PERSONALITY(ex) set_personality(PER_LINUX)
-
-#endif /* __KERNEL__ */
-#endif
diff --git a/arch/openrisc/include/asm/io.h b/arch/openrisc/include/asm/io.h
deleted file mode 100644
index 05580bd193..0000000000
--- a/arch/openrisc/include/asm/io.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#ifndef __ASM_OPENRISC_IO_H
-#define __ASM_OPENRISC_IO_H
-
-#define IO_SPACE_LIMIT		0x0
-
-#include <asm/byteorder.h>
-#include <asm-generic/io.h>
-
-#endif
diff --git a/arch/openrisc/include/asm/mmu.h b/arch/openrisc/include/asm/mmu.h
deleted file mode 100644
index 95af871420..0000000000
--- a/arch/openrisc/include/asm/mmu.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_MMU_H
-#define __ASM_MMU_H
-
-#define MAP_ARCH_DEFAULT MAP_UNCACHED
-
-#endif /* __ASM_MMU_H */
diff --git a/arch/openrisc/include/asm/openrisc_exc.h b/arch/openrisc/include/asm/openrisc_exc.h
deleted file mode 100644
index 58d677e6d1..0000000000
--- a/arch/openrisc/include/asm/openrisc_exc.h
+++ /dev/null
@@ -1,37 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
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
-#ifndef _OPENRISC_EXC_H_
-#define _OPENRISC_EXC_H_
-
-#define EXC_RESET		0x01
-#define EXC_BUS_ERROR		0x02
-#define EXC_DATA_PAGE_FAULT	0x03
-#define EXC_INSTR_PAGE_FAULT	0x04
-#define EXC_TIMER		0x05
-#define EXC_ALIGNMENT		0x06
-#define EXC_ILLEGAL_INSTR	0x07
-#define EXC_EXT_IRQ		0x08
-#define EXC_DTLB_MISS		0x09
-#define EXC_ITLB_MISS		0x0a
-#define EXC_RANGE		0x0b
-#define EXC_SYSCALL		0x0c
-#define EXC_FLOAT_POINT		0x0d
-#define EXC_TRAP		0x0e
-
-void exception_install_handler(int exception, void (*handler)(void));
-void exception_free_handler(int exception);
-
-#endif
diff --git a/arch/openrisc/include/asm/posix_types.h b/arch/openrisc/include/asm/posix_types.h
deleted file mode 100644
index 22cae6230c..0000000000
--- a/arch/openrisc/include/asm/posix_types.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/posix_types.h>
diff --git a/arch/openrisc/include/asm/ptrace.h b/arch/openrisc/include/asm/ptrace.h
deleted file mode 100644
index ffdea52925..0000000000
--- a/arch/openrisc/include/asm/ptrace.h
+++ /dev/null
@@ -1,131 +0,0 @@
-/*
- * OpenRISC Linux
- *
- * Linux architectural port borrowing liberally from similar works of
- * others.  All original copyrights apply as per the original source
- * declaration.
- *
- * OpenRISC implementation:
- * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
- * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
- * et al.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef __ASM_OPENRISC_PTRACE_H
-#define __ASM_OPENRISC_PTRACE_H
-
-#include <asm/spr-defs.h>
-
-#ifndef __ASSEMBLY__
-/*
- * This is the layout of the regset returned by the GETREGSET ptrace call
- */
-struct user_regs_struct {
-	/* GPR R0-R31... */
-	unsigned long gpr[32];
-	unsigned long pc;
-	unsigned long sr;
-	unsigned long pad1;
-	unsigned long pad2;
-};
-#endif
-
-#ifdef __KERNEL__
-
-/*
- * Make kernel PTrace/register structures opaque to userspace... userspace can
- * access thread state via the regset mechanism.  This allows us a bit of
- * flexibility in how we order the registers on the stack, permitting some
- * optimizations like packing call-clobbered registers together so that
- * they share a cacheline (not done yet, though... future optimization).
- */
-
-#ifndef __ASSEMBLY__
-/*
- * This struct describes how the registers are laid out on the kernel stack
- * during a syscall or other kernel entry.
- *
- * This structure should always be cacheline aligned on the stack.
- * FIXME: I don't think that's the case right now.  The alignment is
- * taken care of elsewhere... head.S, process.c, etc.
- */
-
-struct pt_regs {
-	union {
-		struct {
-			/* Named registers */
-			long  sr;	/* Stored in place of r0 */
-			long  sp;	/* r1 */
-		};
-		struct {
-			/* Old style */
-			long offset[2];
-			long gprs[30];
-		};
-		struct {
-			/* New style */
-			long gpr[32];
-		};
-	};
-	long  pc;
-	long  orig_gpr11;	/* For restarting system calls */
-	long  syscallno;	/* Syscall number (used by strace) */
-	long dummy;		/* Cheap alignment fix */
-};
-#endif /* __ASSEMBLY__ */
-
-/* TODO: Rename this to REDZONE because that's what it is */
-#define STACK_FRAME_OVERHEAD  128  /* size of minimum stack frame */
-
-#define instruction_pointer(regs)	((regs)->pc)
-#define user_mode(regs)			(((regs)->sr & SPR_SR_SM) == 0)
-#define user_stack_pointer(regs)	((unsigned long)(regs)->sp)
-#define profile_pc(regs)		instruction_pointer(regs)
-
-/*
- * Offsets used by 'ptrace' system call interface.
- */
-#define PT_SR         0
-#define PT_SP         4
-#define PT_GPR2       8
-#define PT_GPR3       12
-#define PT_GPR4       16
-#define PT_GPR5       20
-#define PT_GPR6       24
-#define PT_GPR7       28
-#define PT_GPR8       32
-#define PT_GPR9       36
-#define PT_GPR10      40
-#define PT_GPR11      44
-#define PT_GPR12      48
-#define PT_GPR13      52
-#define PT_GPR14      56
-#define PT_GPR15      60
-#define PT_GPR16      64
-#define PT_GPR17      68
-#define PT_GPR18      72
-#define PT_GPR19      76
-#define PT_GPR20      80
-#define PT_GPR21      84
-#define PT_GPR22      88
-#define PT_GPR23      92
-#define PT_GPR24      96
-#define PT_GPR25      100
-#define PT_GPR26      104
-#define PT_GPR27      108
-#define PT_GPR28      112
-#define PT_GPR29      116
-#define PT_GPR30      120
-#define PT_GPR31      124
-#define PT_PC	      128
-#define PT_ORIG_GPR11 132
-#define PT_SYSCALLNO  136
-
-#endif /* __KERNEL__ */
-
-#endif /* __ASM_OPENRISC_PTRACE_H */
diff --git a/arch/openrisc/include/asm/sections.h b/arch/openrisc/include/asm/sections.h
deleted file mode 100644
index 2b8c516038..0000000000
--- a/arch/openrisc/include/asm/sections.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/sections.h>
diff --git a/arch/openrisc/include/asm/spr-defs.h b/arch/openrisc/include/asm/spr-defs.h
deleted file mode 100644
index b3b08db4d0..0000000000
--- a/arch/openrisc/include/asm/spr-defs.h
+++ /dev/null
@@ -1,578 +0,0 @@
-/*
- * SPR Definitions
- *
- * Copyright (C) 2000 Damjan Lampret
- * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
- * Copyright (C) 2008, 2010 Embecosm Limited
- * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
- * et al.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This file is part of OpenRISC 1000 Architectural Simulator.
- */
-
-#ifndef SPR_DEFS__H
-#define SPR_DEFS__H
-
-/* Definition of special-purpose registers (SPRs) */
-
-#define MAX_GRPS (32)
-#define MAX_SPRS_PER_GRP_BITS (11)
-#define MAX_SPRS_PER_GRP (1 << MAX_SPRS_PER_GRP_BITS)
-#define MAX_SPRS (0x10000)
-
-/* Base addresses for the groups */
-#define SPRGROUP_SYS	(0 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_DMMU	(1 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_IMMU	(2 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_DC	(3 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_IC	(4 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_MAC	(5 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_D	(6 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_PC	(7 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_PM	(8 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_PIC	(9 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_TT	(10 << MAX_SPRS_PER_GRP_BITS)
-#define SPRGROUP_FP	(11 << MAX_SPRS_PER_GRP_BITS)
-
-/* System control and status group */
-#define SPR_VR		(SPRGROUP_SYS + 0)
-#define SPR_UPR		(SPRGROUP_SYS + 1)
-#define SPR_CPUCFGR	(SPRGROUP_SYS + 2)
-#define SPR_DMMUCFGR	(SPRGROUP_SYS + 3)
-#define SPR_IMMUCFGR	(SPRGROUP_SYS + 4)
-#define SPR_DCCFGR	(SPRGROUP_SYS + 5)
-#define SPR_ICCFGR	(SPRGROUP_SYS + 6)
-#define SPR_DCFGR	(SPRGROUP_SYS + 7)
-#define SPR_PCCFGR	(SPRGROUP_SYS + 8)
-#define SPR_VR2		(SPRGROUP_SYS + 9)
-#define SPR_AVR		(SPRGROUP_SYS + 10)
-#define SPR_EVBAR	(SPRGROUP_SYS + 11)
-#define SPR_AECR	(SPRGROUP_SYS + 12)
-#define SPR_AESR	(SPRGROUP_SYS + 13)
-#define SPR_NPC		(SPRGROUP_SYS + 16)
-#define SPR_SR		(SPRGROUP_SYS + 17)
-#define SPR_PPC		(SPRGROUP_SYS + 18)
-#define SPR_FPCSR	(SPRGROUP_SYS + 20)
-#define SPR_EPCR_BASE	(SPRGROUP_SYS + 32)
-#define SPR_EPCR_LAST	(SPRGROUP_SYS + 47)
-#define SPR_EEAR_BASE	(SPRGROUP_SYS + 48)
-#define SPR_EEAR_LAST	(SPRGROUP_SYS + 63)
-#define SPR_ESR_BASE	(SPRGROUP_SYS + 64)
-#define SPR_ESR_LAST	(SPRGROUP_SYS + 79)
-#define SPR_GPR_BASE	(SPRGROUP_SYS + 1024)
-
-/* Data MMU group */
-#define SPR_DMMUCR	(SPRGROUP_DMMU + 0)
-#define SPR_DTLBEIR	(SPRGROUP_DMMU + 2)
-#define SPR_DTLBMR_BASE(WAY)	(SPRGROUP_DMMU + 0x200 + (WAY) * 0x100)
-#define SPR_DTLBMR_LAST(WAY)	(SPRGROUP_DMMU + 0x27f + (WAY) * 0x100)
-#define SPR_DTLBTR_BASE(WAY)	(SPRGROUP_DMMU + 0x280 + (WAY) * 0x100)
-#define SPR_DTLBTR_LAST(WAY)	(SPRGROUP_DMMU + 0x2ff + (WAY) * 0x100)
-
-/* Instruction MMU group */
-#define SPR_IMMUCR	(SPRGROUP_IMMU + 0)
-#define SPR_ITLBEIR	(SPRGROUP_IMMU + 2)
-#define SPR_ITLBMR_BASE(WAY)	(SPRGROUP_IMMU + 0x200 + (WAY) * 0x100)
-#define SPR_ITLBMR_LAST(WAY)	(SPRGROUP_IMMU + 0x27f + (WAY) * 0x100)
-#define SPR_ITLBTR_BASE(WAY)	(SPRGROUP_IMMU + 0x280 + (WAY) * 0x100)
-#define SPR_ITLBTR_LAST(WAY)	(SPRGROUP_IMMU + 0x2ff + (WAY) * 0x100)
-
-/* Data cache group */
-#define SPR_DCCR	(SPRGROUP_DC + 0)
-#define SPR_DCBPR	(SPRGROUP_DC + 1)
-#define SPR_DCBFR	(SPRGROUP_DC + 2)
-#define SPR_DCBIR	(SPRGROUP_DC + 3)
-#define SPR_DCBWR	(SPRGROUP_DC + 4)
-#define SPR_DCBLR	(SPRGROUP_DC + 5)
-#define SPR_DCR_BASE(WAY)	(SPRGROUP_DC + 0x200 + (WAY) * 0x200)
-#define SPR_DCR_LAST(WAY)	(SPRGROUP_DC + 0x3ff + (WAY) * 0x200)
-
-/* Instruction cache group */
-#define SPR_ICCR	(SPRGROUP_IC + 0)
-#define SPR_ICBPR	(SPRGROUP_IC + 1)
-#define SPR_ICBIR	(SPRGROUP_IC + 2)
-#define SPR_ICBLR	(SPRGROUP_IC + 3)
-#define SPR_ICR_BASE(WAY)	(SPRGROUP_IC + 0x200 + (WAY) * 0x200)
-#define SPR_ICR_LAST(WAY)	(SPRGROUP_IC + 0x3ff + (WAY) * 0x200)
-
-/* MAC group */
-#define SPR_MACLO	(SPRGROUP_MAC + 1)
-#define SPR_MACHI	(SPRGROUP_MAC + 2)
-
-/* Debug group */
-#define SPR_DVR(N)	(SPRGROUP_D + (N))
-#define SPR_DCR(N)	(SPRGROUP_D + 8 + (N))
-#define SPR_DMR1	(SPRGROUP_D + 16)
-#define SPR_DMR2	(SPRGROUP_D + 17)
-#define SPR_DWCR0	(SPRGROUP_D + 18)
-#define SPR_DWCR1	(SPRGROUP_D + 19)
-#define SPR_DSR		(SPRGROUP_D + 20)
-#define SPR_DRR		(SPRGROUP_D + 21)
-
-/* Performance counters group */
-#define SPR_PCCR(N)	(SPRGROUP_PC + (N))
-#define SPR_PCMR(N)	(SPRGROUP_PC + 8 + (N))
-
-/* Power management group */
-#define SPR_PMR		(SPRGROUP_PM + 0)
-
-/* PIC group */
-#define SPR_PICMR	(SPRGROUP_PIC + 0)
-#define SPR_PICPR	(SPRGROUP_PIC + 1)
-#define SPR_PICSR	(SPRGROUP_PIC + 2)
-
-/* Tick Timer group */
-#define SPR_TTMR	(SPRGROUP_TT + 0)
-#define SPR_TTCR	(SPRGROUP_TT + 1)
-
-/*
- * Bit definitions for the Version Register
- */
-#define SPR_VR_VER	0xff000000 /* Processor version */
-#define SPR_VR_CFG	0x00ff0000 /* Processor configuration */
-#define SPR_VR_RES	0x0000ffc0 /* Reserved */
-#define SPR_VR_REV	0x0000003f /* Processor revision */
-
-#define SPR_VR_VER_OFF	24
-#define SPR_VR_CFG_OFF	16
-#define SPR_VR_REV_OFF	0
-
-/*
- * Bit definitions for the Unit Present Register
- */
-#define SPR_UPR_UP	0x00000001 /* UPR present */
-#define SPR_UPR_DCP	0x00000002 /* Data cache present */
-#define SPR_UPR_ICP	0x00000004 /* Instruction cache present */
-#define SPR_UPR_DMP	0x00000008 /* Data MMU present */
-#define SPR_UPR_IMP	0x00000010 /* Instruction MMU present */
-#define SPR_UPR_MP	0x00000020 /* MAC present */
-#define SPR_UPR_DUP	0x00000040 /* Debug unit present */
-#define SPR_UPR_PCUP	0x00000080 /* Performance counters unit present */
-#define SPR_UPR_PMP	0x00000100 /* Power management present */
-#define SPR_UPR_PICP	0x00000200 /* PIC present */
-#define SPR_UPR_TTP	0x00000400 /* Tick timer present */
-#define SPR_UPR_RES	0x00fe0000 /* Reserved */
-#define SPR_UPR_CUP	0xff000000 /* Context units present */
-
-/*
- * Bit definitions for the CPU configuration register
- */
-#define SPR_CPUCFGR_NSGF	0x0000000f /* Number of shadow GPR files */
-#define SPR_CPUCFGR_CGF		0x00000010 /* Custom GPR file */
-#define SPR_CPUCFGR_OB32S	0x00000020 /* ORBIS32 supported */
-#define SPR_CPUCFGR_OB64S	0x00000040 /* ORBIS64 supported */
-#define SPR_CPUCFGR_OF32S	0x00000080 /* ORFPX32 supported */
-#define SPR_CPUCFGR_OF64S	0x00000100 /* ORFPX64 supported */
-#define SPR_CPUCFGR_OV64S	0x00000200 /* ORVDX64 supported */
-#define SPR_CPUCFGR_ND		0x00000400 /* No delay slot */
-#define SPR_CPUCFGR_AVRP	0x00000800 /* Arch. Version Register present */
-#define SPR_CPUCFGR_EVBARP	0x00001000 /* Exception Vector Base Address Register (EVBAR) present */
-#define SPR_CPUCFGR_ISRP	0x00002000 /* Implementation-Specific Registers (ISR0-7) present */
-#define SPR_CPUCFGR_AECSRP	0x00004000 /* Arithmetic Exception Control Register (AECR) and */
-					   /* Arithmetic Exception Status Register (AESR) presents */
-#define SPR_CPUCFGR_RES		0xffffc000 /* Reserved */
-
-/*
- * Bit definitions for the Debug configuration register and other
- * constants.
- */
-
-#define SPR_DCFGR_NDP	0x00000007  /* Number of matchpoints mask */
-#define SPR_DCFGR_NDP1	0x00000000  /* One matchpoint supported */
-#define SPR_DCFGR_NDP2	0x00000001  /* Two matchpoints supported */
-#define SPR_DCFGR_NDP3	0x00000002  /* Three matchpoints supported */
-#define SPR_DCFGR_NDP4	0x00000003  /* Four matchpoints supported */
-#define SPR_DCFGR_NDP5	0x00000004  /* Five matchpoints supported */
-#define SPR_DCFGR_NDP6	0x00000005  /* Six matchpoints supported */
-#define SPR_DCFGR_NDP7	0x00000006  /* Seven matchpoints supported */
-#define SPR_DCFGR_NDP8	0x00000007  /* Eight matchpoints supported */
-#define SPR_DCFGR_WPCI	0x00000008  /* Watchpoint counters implemented */
-
-#define MATCHPOINTS_TO_NDP(n)	(1 == n ? SPR_DCFGR_NDP1 : \
-				2 == n ? SPR_DCFGR_NDP2 : \
-				3 == n ? SPR_DCFGR_NDP3 : \
-				4 == n ? SPR_DCFGR_NDP4 : \
-				5 == n ? SPR_DCFGR_NDP5 : \
-				6 == n ? SPR_DCFGR_NDP6 : \
-				7 == n ? SPR_DCFGR_NDP7 : SPR_DCFGR_NDP8)
-#define MAX_MATCHPOINTS	8
-#define MAX_WATCHPOINTS	(MAX_MATCHPOINTS + 2)
-
-/*
- * Bit definitions for the Supervision Register
- */
-#define SPR_SR_SM	0x00000001 /* Supervisor Mode */
-#define SPR_SR_TEE	0x00000002 /* Tick timer Exception Enable */
-#define SPR_SR_IEE	0x00000004 /* Interrupt Exception Enable */
-#define SPR_SR_DCE	0x00000008 /* Data Cache Enable */
-#define SPR_SR_ICE	0x00000010 /* Instruction Cache Enable */
-#define SPR_SR_DME	0x00000020 /* Data MMU Enable */
-#define SPR_SR_IME	0x00000040 /* Instruction MMU Enable */
-#define SPR_SR_LEE	0x00000080 /* Little Endian Enable */
-#define SPR_SR_CE	0x00000100 /* CID Enable */
-#define SPR_SR_F	0x00000200 /* Condition Flag */
-#define SPR_SR_CY	0x00000400 /* Carry flag */
-#define SPR_SR_OV	0x00000800 /* Overflow flag */
-#define SPR_SR_OVE	0x00001000 /* Overflow flag Exception */
-#define SPR_SR_DSX	0x00002000 /* Delay Slot Exception */
-#define SPR_SR_EPH	0x00004000 /* Exception Prefix High */
-#define SPR_SR_FO	0x00008000 /* Fixed one */
-#define SPR_SR_SUMRA	0x00010000 /* Supervisor SPR read access */
-#define SPR_SR_RES	0x0ffe0000 /* Reserved */
-#define SPR_SR_CID	0xf0000000 /* Context ID */
-
-/*
- * Bit definitions for the Data MMU Control Register
- */
-#define SPR_DMMUCR_P2S		0x0000003e /* Level 2 Page Size */
-#define SPR_DMMUCR_P1S		0x000007c0 /* Level 1 Page Size */
-#define SPR_DMMUCR_VADDR_WIDTH	0x0000f800 /* Virtual ADDR Width */
-#define SPR_DMMUCR_PADDR_WIDTH	0x000f0000 /* Physical ADDR Width */
-
-/*
- * Bit definitions for the Instruction MMU Control Register
- */
-#define SPR_IMMUCR_P2S		0x0000003e /* Level 2 Page Size */
-#define SPR_IMMUCR_P1S		0x000007c0 /* Level 1 Page Size */
-#define SPR_IMMUCR_VADDR_WIDTH	0x0000f800 /* Virtual ADDR Width */
-#define SPR_IMMUCR_PADDR_WIDTH	0x000f0000 /* Physical ADDR Width */
-
-/*
- * Bit definitions for the Data TLB Match Register
- */
-#define SPR_DTLBMR_V	0x00000001 /* Valid */
-#define SPR_DTLBMR_PL1	0x00000002 /* Page Level 1 (if 0 then PL2) */
-#define SPR_DTLBMR_CID	0x0000003c /* Context ID */
-#define SPR_DTLBMR_LRU	0x000000c0 /* Least Recently Used */
-#define SPR_DTLBMR_VPN	0xfffff000 /* Virtual Page Number */
-
-/*
- * Bit definitions for the Data TLB Translate Register
- */
-#define SPR_DTLBTR_CC	0x00000001 /* Cache Coherency */
-#define SPR_DTLBTR_CI	0x00000002 /* Cache Inhibit */
-#define SPR_DTLBTR_WBC	0x00000004 /* Write-Back Cache */
-#define SPR_DTLBTR_WOM	0x00000008 /* Weakly-Ordered Memory */
-#define SPR_DTLBTR_A	0x00000010 /* Accessed */
-#define SPR_DTLBTR_D	0x00000020 /* Dirty */
-#define SPR_DTLBTR_URE	0x00000040 /* User Read Enable */
-#define SPR_DTLBTR_UWE	0x00000080 /* User Write Enable */
-#define SPR_DTLBTR_SRE	0x00000100 /* Supervisor Read Enable */
-#define SPR_DTLBTR_SWE	0x00000200 /* Supervisor Write Enable */
-#define SPR_DTLBTR_PPN	0xfffff000 /* Physical Page Number */
-
-/*
- * Bit definitions for the Instruction TLB Match Register
- */
-#define SPR_ITLBMR_V	0x00000001 /* Valid */
-#define SPR_ITLBMR_PL1	0x00000002 /* Page Level 1 (if 0 then PL2) */
-#define SPR_ITLBMR_CID	0x0000003c /* Context ID */
-#define SPR_ITLBMR_LRU	0x000000c0 /* Least Recently Used */
-#define SPR_ITLBMR_VPN	0xfffff000 /* Virtual Page Number */
-
-/*
- * Bit definitions for the Instruction TLB Translate Register
- */
-#define SPR_ITLBTR_CC	0x00000001 /* Cache Coherency */
-#define SPR_ITLBTR_CI	0x00000002 /* Cache Inhibit */
-#define SPR_ITLBTR_WBC	0x00000004 /* Write-Back Cache */
-#define SPR_ITLBTR_WOM	0x00000008 /* Weakly-Ordered Memory */
-#define SPR_ITLBTR_A	0x00000010 /* Accessed */
-#define SPR_ITLBTR_D	0x00000020 /* Dirty */
-#define SPR_ITLBTR_SXE	0x00000040 /* User Read Enable */
-#define SPR_ITLBTR_UXE	0x00000080 /* User Write Enable */
-#define SPR_ITLBTR_PPN	0xfffff000 /* Physical Page Number */
-
-/*
- * Bit definitions for Data Cache Control register
- */
-#define SPR_DCCR_EW	0x000000ff /* Enable ways */
-
-/*
- * Bit definitions for Insn Cache Control register
- */
-#define SPR_ICCR_EW	0x000000ff /* Enable ways */
-
-/*
- * Bit definitions for Data Cache Configuration Register
- */
-
-#define SPR_DCCFGR_NCW		0x00000007
-#define SPR_DCCFGR_NCS		0x00000078
-#define SPR_DCCFGR_CBS		0x00000080
-#define SPR_DCCFGR_CWS		0x00000100
-#define SPR_DCCFGR_CCRI		0x00000200
-#define SPR_DCCFGR_CBIRI	0x00000400
-#define SPR_DCCFGR_CBPRI	0x00000800
-#define SPR_DCCFGR_CBLRI	0x00001000
-#define SPR_DCCFGR_CBFRI	0x00002000
-#define SPR_DCCFGR_CBWBRI	0x00004000
-
-#define SPR_DCCFGR_NCW_OFF	0
-#define SPR_DCCFGR_NCS_OFF	3
-#define SPR_DCCFGR_CBS_OFF	7
-
-/*
- * Bit definitions for Instruction Cache Configuration Register
- */
-#define SPR_ICCFGR_NCW		0x00000007
-#define SPR_ICCFGR_NCS		0x00000078
-#define SPR_ICCFGR_CBS		0x00000080
-#define SPR_ICCFGR_CCRI		0x00000200
-#define SPR_ICCFGR_CBIRI	0x00000400
-#define SPR_ICCFGR_CBPRI	0x00000800
-#define SPR_ICCFGR_CBLRI	0x00001000
-
-#define SPR_ICCFGR_NCW_OFF	0
-#define SPR_ICCFGR_NCS_OFF	3
-#define SPR_ICCFGR_CBS_OFF	7
-
-/*
- * Bit definitions for Data MMU Configuration Register
- */
-#define SPR_DMMUCFGR_NTW	0x00000003
-#define SPR_DMMUCFGR_NTS	0x0000001C
-#define SPR_DMMUCFGR_NAE	0x000000E0
-#define SPR_DMMUCFGR_CRI	0x00000100
-#define SPR_DMMUCFGR_PRI	0x00000200
-#define SPR_DMMUCFGR_TEIRI	0x00000400
-#define SPR_DMMUCFGR_HTR	0x00000800
-
-#define SPR_DMMUCFGR_NTW_OFF	0
-#define SPR_DMMUCFGR_NTS_OFF	2
-
-/*
- * Bit definitions for Instruction MMU Configuration Register
- */
-#define SPR_IMMUCFGR_NTW	0x00000003
-#define SPR_IMMUCFGR_NTS	0x0000001C
-#define SPR_IMMUCFGR_NAE	0x000000E0
-#define SPR_IMMUCFGR_CRI	0x00000100
-#define SPR_IMMUCFGR_PRI	0x00000200
-#define SPR_IMMUCFGR_TEIRI	0x00000400
-#define SPR_IMMUCFGR_HTR	0x00000800
-
-#define SPR_IMMUCFGR_NTW_OFF	0
-#define SPR_IMMUCFGR_NTS_OFF	2
-
-/*
- * Bit definitions for Debug Control registers
- */
-#define SPR_DCR_DP	0x00000001 /* DVR/DCR present */
-#define SPR_DCR_CC	0x0000000e /* Compare condition */
-#define SPR_DCR_SC	0x00000010 /* Signed compare */
-#define SPR_DCR_CT	0x000000e0 /* Compare to */
-
-/* Bit results with SPR_DCR_CC mask */
-#define SPR_DCR_CC_MASKED	0x00000000
-#define SPR_DCR_CC_EQUAL	0x00000002
-#define SPR_DCR_CC_LESS		0x00000004
-#define SPR_DCR_CC_LESSE	0x00000006
-#define SPR_DCR_CC_GREAT	0x00000008
-#define SPR_DCR_CC_GREATE	0x0000000a
-#define SPR_DCR_CC_NEQUAL	0x0000000c
-
-/* Bit results with SPR_DCR_CT mask */
-#define SPR_DCR_CT_DISABLED	0x00000000
-#define SPR_DCR_CT_IFEA		0x00000020
-#define SPR_DCR_CT_LEA		0x00000040
-#define SPR_DCR_CT_SEA		0x00000060
-#define SPR_DCR_CT_LD		0x00000080
-#define SPR_DCR_CT_SD		0x000000a0
-#define SPR_DCR_CT_LSEA		0x000000c0
-#define SPR_DCR_CT_LSD		0x000000e0
-
-/*
- * Bit definitions for Debug Mode 1 register
- */
-#define SPR_DMR1_CW		0x000fffff /* Chain register pair data */
-#define SPR_DMR1_CW0_AND	0x00000001
-#define SPR_DMR1_CW0_OR		0x00000002
-#define SPR_DMR1_CW0		(SPR_DMR1_CW0_AND | SPR_DMR1_CW0_OR)
-#define SPR_DMR1_CW1_AND	0x00000004
-#define SPR_DMR1_CW1_OR		0x00000008
-#define SPR_DMR1_CW1		(SPR_DMR1_CW1_AND | SPR_DMR1_CW1_OR)
-#define SPR_DMR1_CW2_AND	0x00000010
-#define SPR_DMR1_CW2_OR		0x00000020
-#define SPR_DMR1_CW2		(SPR_DMR1_CW2_AND | SPR_DMR1_CW2_OR)
-#define SPR_DMR1_CW3_AND	0x00000040
-#define SPR_DMR1_CW3_OR		0x00000080
-#define SPR_DMR1_CW3		(SPR_DMR1_CW3_AND | SPR_DMR1_CW3_OR)
-#define SPR_DMR1_CW4_AND	0x00000100
-#define SPR_DMR1_CW4_OR		0x00000200
-#define SPR_DMR1_CW4		(SPR_DMR1_CW4_AND | SPR_DMR1_CW4_OR)
-#define SPR_DMR1_CW5_AND	0x00000400
-#define SPR_DMR1_CW5_OR		0x00000800
-#define SPR_DMR1_CW5		(SPR_DMR1_CW5_AND | SPR_DMR1_CW5_OR)
-#define SPR_DMR1_CW6_AND	0x00001000
-#define SPR_DMR1_CW6_OR		0x00002000
-#define SPR_DMR1_CW6		(SPR_DMR1_CW6_AND | SPR_DMR1_CW6_OR)
-#define SPR_DMR1_CW7_AND	0x00004000
-#define SPR_DMR1_CW7_OR		0x00008000
-#define SPR_DMR1_CW7		(SPR_DMR1_CW7_AND | SPR_DMR1_CW7_OR)
-#define SPR_DMR1_CW8_AND	0x00010000
-#define SPR_DMR1_CW8_OR		0x00020000
-#define SPR_DMR1_CW8		(SPR_DMR1_CW8_AND | SPR_DMR1_CW8_OR)
-#define SPR_DMR1_CW9_AND	0x00040000
-#define SPR_DMR1_CW9_OR		0x00080000
-#define SPR_DMR1_CW9		(SPR_DMR1_CW9_AND | SPR_DMR1_CW9_OR)
-#define SPR_DMR1_RES1		0x00300000 /* Reserved */
-#define SPR_DMR1_ST		0x00400000 /* Single-step trace*/
-#define SPR_DMR1_BT		0x00800000 /* Branch trace */
-#define SPR_DMR1_RES2		0xff000000 /* Reserved */
-
-/*
- * Bit definitions for Debug Mode 2 register. AWTC and WGB corrected by JPB
- */
-#define SPR_DMR2_WCE0		0x00000001 /* Watchpoint counter 0 enable */
-#define SPR_DMR2_WCE1		0x00000002 /* Watchpoint counter 0 enable */
-#define SPR_DMR2_AWTC		0x00000ffc /* Assign watchpoints to counters */
-#define SPR_DMR2_AWTC_OFF	2 /* Bit offset to AWTC field */
-#define SPR_DMR2_WGB		0x003ff000 /* Watch generating breakpoint */
-#define SPR_DMR2_WGB_OFF	12 /* Bit offset to WGB field */
-#define SPR_DMR2_WBS		0xffc00000 /* Watchpoint status */
-#define SPR_DMR2_WBS_OFF	22 /* Bit offset to WBS field */
-
-/*
- * Bit definitions for Debug watchpoint counter registers
- */
-#define SPR_DWCR_COUNT		0x0000ffff /* Count */
-#define SPR_DWCR_MATCH		0xffff0000 /* Match */
-#define SPR_DWCR_MATCH_OFF	16 /* Match bit offset */
-
-/*
- * Bit definitions for Debug stop register
- *
- */
-#define SPR_DSR_RSTE	0x00000001 /* Reset exception */
-#define SPR_DSR_BUSEE	0x00000002 /* Bus error exception */
-#define SPR_DSR_DPFE	0x00000004 /* Data Page Fault exception */
-#define SPR_DSR_IPFE	0x00000008 /* Insn Page Fault exception */
-#define SPR_DSR_TTE	0x00000010 /* Tick Timer exception */
-#define SPR_DSR_AE	0x00000020 /* Alignment exception */
-#define SPR_DSR_IIE	0x00000040 /* Illegal Instruction exception */
-#define SPR_DSR_IE	0x00000080 /* Interrupt exception */
-#define SPR_DSR_DME	0x00000100 /* DTLB miss exception */
-#define SPR_DSR_IME	0x00000200 /* ITLB miss exception */
-#define SPR_DSR_RE	0x00000400 /* Range exception */
-#define SPR_DSR_SCE	0x00000800 /* System call exception */
-#define SPR_DSR_FPE	0x00001000 /* Floating Point Exception */
-#define SPR_DSR_TE	0x00002000 /* Trap exception */
-
-/*
- * Bit definitions for Debug reason register
- */
-#define SPR_DRR_RSTE	0x00000001 /* Reset exception */
-#define SPR_DRR_BUSEE	0x00000002 /* Bus error exception */
-#define SPR_DRR_DPFE	0x00000004 /* Data Page Fault exception */
-#define SPR_DRR_IPFE	0x00000008 /* Insn Page Fault exception */
-#define SPR_DRR_TTE	0x00000010 /* Tick Timer exception */
-#define SPR_DRR_AE	0x00000020 /* Alignment exception */
-#define SPR_DRR_IIE	0x00000040 /* Illegal Instruction exception */
-#define SPR_DRR_IE	0x00000080 /* Interrupt exception */
-#define SPR_DRR_DME	0x00000100 /* DTLB miss exception */
-#define SPR_DRR_IME	0x00000200 /* ITLB miss exception */
-#define SPR_DRR_RE	0x00000400 /* Range exception */
-#define SPR_DRR_SCE	0x00000800 /* System call exception */
-#define SPR_DRR_FPE	0x00001000 /* Floating Point Exception */
-#define SPR_DRR_TE	0x00002000 /* Trap exception */
-
-/*
- * Bit definitions for Performance counters mode registers
- */
-#define SPR_PCMR_CP	0x00000001 /* Counter present */
-#define SPR_PCMR_UMRA	0x00000002 /* User mode read access */
-#define SPR_PCMR_CISM	0x00000004 /* Count in supervisor mode */
-#define SPR_PCMR_CIUM	0x00000008 /* Count in user mode */
-#define SPR_PCMR_LA	0x00000010 /* Load access event */
-#define SPR_PCMR_SA	0x00000020 /* Store access event */
-#define SPR_PCMR_IF	0x00000040 /* Instruction fetch event*/
-#define SPR_PCMR_DCM	0x00000080 /* Data cache miss event */
-#define SPR_PCMR_ICM	0x00000100 /* Insn cache miss event */
-#define SPR_PCMR_IFS	0x00000200 /* Insn fetch stall event */
-#define SPR_PCMR_LSUS	0x00000400 /* LSU stall event */
-#define SPR_PCMR_BS	0x00000800 /* Branch stall event */
-#define SPR_PCMR_DTLBM	0x00001000 /* DTLB miss event */
-#define SPR_PCMR_ITLBM	0x00002000 /* ITLB miss event */
-#define SPR_PCMR_DDS	0x00004000 /* Data dependency stall event */
-#define SPR_PCMR_WPE	0x03ff8000 /* Watchpoint events */
-
-/*
- * Bit definitions for the Power management register
- */
-#define SPR_PMR_SDF	0x0000000f /* Slow down factor */
-#define SPR_PMR_DME	0x00000010 /* Doze mode enable */
-#define SPR_PMR_SME	0x00000020 /* Sleep mode enable */
-#define SPR_PMR_DCGE	0x00000040 /* Dynamic clock gating enable */
-#define SPR_PMR_SUME	0x00000080 /* Suspend mode enable */
-
-/*
- * Bit definitions for PICMR
- */
-#define SPR_PICMR_IUM	0xfffffffc /* Interrupt unmask */
-
-/*
- * Bit definitions for PICPR
- */
-#define SPR_PICPR_IPRIO	0xfffffffc /* Interrupt priority */
-
-/*
- * Bit definitions for PICSR
- */
-#define SPR_PICSR_IS	0xffffffff /* Interrupt status */
-
-/*
- * Bit definitions for Tick Timer Control Register
- */
-#define SPR_TTCR_CNT	0xffffffff /* Count, time period */
-#define SPR_TTMR_TP	0x0fffffff /* Time period */
-#define SPR_TTMR_IP	0x10000000 /* Interrupt Pending */
-#define SPR_TTMR_IE	0x20000000 /* Interrupt Enable */
-#define SPR_TTMR_DI	0x00000000 /* Disabled */
-#define SPR_TTMR_RT	0x40000000 /* Restart tick */
-#define SPR_TTMR_SR	0x80000000 /* Single run */
-#define SPR_TTMR_CR	0xc0000000 /* Continuous run */
-#define SPR_TTMR_M	0xc0000000 /* Tick mode */
-
-/*
- * Bit definitions for the FP Control Status Register
- */
-#define SPR_FPCSR_FPEE	0x00000001 /* Floating Point Exception Enable */
-#define SPR_FPCSR_RM	0x00000006 /* Rounding Mode */
-#define SPR_FPCSR_OVF	0x00000008 /* Overflow Flag */
-#define SPR_FPCSR_UNF	0x00000010 /* Underflow Flag */
-#define SPR_FPCSR_SNF	0x00000020 /* SNAN Flag */
-#define SPR_FPCSR_QNF	0x00000040 /* QNAN Flag */
-#define SPR_FPCSR_ZF	0x00000080 /* Zero Flag */
-#define SPR_FPCSR_IXF	0x00000100 /* Inexact Flag */
-#define SPR_FPCSR_IVF	0x00000200 /* Invalid Flag */
-#define SPR_FPCSR_INF	0x00000400 /* Infinity Flag */
-#define SPR_FPCSR_DZF	0x00000800 /* Divide By Zero Flag */
-#define SPR_FPCSR_ALLF	(SPR_FPCSR_OVF | SPR_FPCSR_UNF | SPR_FPCSR_SNF | \
-			SPR_FPCSR_QNF | SPR_FPCSR_ZF | SPR_FPCSR_IXF | \
-			SPR_FPCSR_IVF | SPR_FPCSR_INF | SPR_FPCSR_DZF)
-
-#define FPCSR_RM_RN	(0<<1)
-#define FPCSR_RM_RZ	(1<<1)
-#define FPCSR_RM_RIP	(2<<1)
-#define FPCSR_RM_RIN	(3<<1)
-
-/*
- * l.nop constants
- */
-#define NOP_NOP			0x0000 /* Normal nop instruction */
-#define NOP_EXIT		0x0001 /* End of simulation */
-#define NOP_REPORT		0x0002 /* Simple report */
-#define NOP_PUTC		0x0004 /* Simputc instruction */
-#define NOP_CNT_RESET		0x0005 /* Reset statistics counters */
-#define NOP_GET_TICKS		0x0006 /* Get # ticks running */
-#define NOP_GET_PS		0x0007 /* Get picosecs/cycle */
-#define NOP_REPORT_FIRST	0x0400 /* Report with number */
-#define NOP_REPORT_LAST		0x03ff /* Report with number */
-
-#endif /* SPR_DEFS__H */
diff --git a/arch/openrisc/include/asm/string.h b/arch/openrisc/include/asm/string.h
deleted file mode 100644
index 73e265564a..0000000000
--- a/arch/openrisc/include/asm/string.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __ASM_OPENRISC_STRING_H
-#define __ASM_OPENRISC_STRING_H
-
-#endif
diff --git a/arch/openrisc/include/asm/swab.h b/arch/openrisc/include/asm/swab.h
deleted file mode 100644
index b07e1d51f1..0000000000
--- a/arch/openrisc/include/asm/swab.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _ASM_SWAB_H
-#define _ASM_SWAB_H
-
-#endif /* _ASM_SWAB_H */
diff --git a/arch/openrisc/include/asm/system.h b/arch/openrisc/include/asm/system.h
deleted file mode 100644
index 0c6249721f..0000000000
--- a/arch/openrisc/include/asm/system.h
+++ /dev/null
@@ -1,35 +0,0 @@
-/*
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#ifndef __ASM_OPENRISC_SYSTEM_H
-#define __ASM_OPENRISC_SYSTEM_H
-
-#include <asm/spr-defs.h>
-
-static inline unsigned long mfspr(unsigned long add)
-{
-	unsigned long ret;
-
-	__asm__ __volatile__ ("l.mfspr %0,r0,%1" : "=r" (ret) : "K" (add));
-
-	return ret;
-}
-
-static inline void mtspr(unsigned long add, unsigned long val)
-{
-	__asm__ __volatile__ ("l.mtspr r0,%1,%0" : : "K" (add), "r" (val));
-}
-
-#endif /* __ASM_OPENRISC_SYSTEM_H */
diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/types.h
deleted file mode 100644
index 21a45b74cd..0000000000
--- a/arch/openrisc/include/asm/types.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/*
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#ifndef _ASM_TYPES_H
-#define _ASM_TYPES_H
-
-#include <asm-generic/int-ll64.h>
-
-#endif /* _ASM_TYPES_H */
diff --git a/arch/openrisc/include/asm/unaligned.h b/arch/openrisc/include/asm/unaligned.h
deleted file mode 100644
index 1141cbd6fd..0000000000
--- a/arch/openrisc/include/asm/unaligned.h
+++ /dev/null
@@ -1,51 +0,0 @@
-/*
- * OpenRISC Linux
- *
- * Linux architectural port borrowing liberally from similar works of
- * others.  All original copyrights apply as per the original source
- * declaration.
- *
- * OpenRISC implementation:
- * Copyright (C) 2003 Matjaz Breskvar <phoenix@bsemi.com>
- * Copyright (C) 2010-2011 Jonas Bonn <jonas@southpole.se>
- * et al.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef __ASM_OPENRISC_UNALIGNED_H
-#define __ASM_OPENRISC_UNALIGNED_H
-
-/*
- * This is copied from the generic implementation and the C-struct
- * variant replaced with the memmove variant.  The GCC compiler
- * for the OR32 arch optimizes too aggressively for the C-struct
- * variant to work, so use the memmove variant instead.
- *
- * It may be worth considering implementing the unaligned access
- * exception handler and allowing unaligned accesses (access_ok.h)...
- * not sure if it would be much of a performance win without further
- * investigation.
- */
-#include <asm/byteorder.h>
-
-#if defined(__LITTLE_ENDIAN)
-# include <linux/unaligned/le_memmove.h>
-# include <linux/unaligned/be_byteshift.h>
-# include <linux/unaligned/generic.h>
-# define get_unaligned	__get_unaligned_le
-# define put_unaligned	__put_unaligned_le
-#elif defined(__BIG_ENDIAN)
-# include <linux/unaligned/be_memmove.h>
-# include <linux/unaligned/le_byteshift.h>
-# include <linux/unaligned/generic.h>
-# define get_unaligned	__get_unaligned_be
-# define put_unaligned	__put_unaligned_be
-#else
-# error need to define endianess
-#endif
-
-#endif /* __ASM_OPENRISC_UNALIGNED_H */
diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile
deleted file mode 100644
index 62082feed0..0000000000
--- a/arch/openrisc/lib/Makefile
+++ /dev/null
@@ -1,8 +0,0 @@
-obj-y                 += clock.o
-obj-y                 += board.o
-obj-y                 += cpuinfo.o
-obj-y                 += muldi3.o
-obj-y                 += lshrdi3.o
-obj-y                 += ashldi3.o
-obj-y                 += ashrdi3.o
-obj-$(CONFIG_BUILTIN_DTB) += dtb.o
diff --git a/arch/openrisc/lib/ashldi3.S b/arch/openrisc/lib/ashldi3.S
deleted file mode 100644
index 3e422fadc4..0000000000
--- a/arch/openrisc/lib/ashldi3.S
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
- *
- * Extracted from gcc generated assembly.
- *
- * Extended precision shifts.
- *
- * R3/R4 (MSW, LSW) has 64 bit value
- * R5    has shift count
- * result in R11/R12
- *
- */
-
-.globl __ashldi3
-
-__ashldi3:
-	l.sfeqi r5,0x0
-	l.bf out		/* if count = 0, go out                   */
-
-	l.addi r6,r0,0x20	/* r6 = 32                                */
-	l.sub r6,r6,r5		/* r6 = 32 - count                        */
-	l.sfgtsi r6,0x0		/* if count >= 32                         */
-	l.bnf more_than_32	/* branch to more_than_32                 */
-	l.nop 0x0
-
-less_than_32:
-	l.srl r6,r4,r6		/* r6 gets the bits moved from LSW to MSW */
-	l.sll r3,r3,r5		/* shift MSW                              */
-	l.sll r4,r4,r5		/* shift LSW                              */
-	l.or r3,r6,r3		/* MSW gets bits shifted from LSW         */
-
-out:
-	l.ori r11,r3,0x0
-	l.jr r9
-	l.ori r12,r4,0x0
-
-more_than_32:
-	l.sub r3,r0,r6		/* r3 = -r6, the number of bits above 32  */
-	l.sll r3,r4,r3		/* MSW = LSW << r3                        */
-	l.j out			/* go out                                 */
-	l.addi r4,r0,0x0	/* LSW = 0                                */
diff --git a/arch/openrisc/lib/ashrdi3.S b/arch/openrisc/lib/ashrdi3.S
deleted file mode 100644
index 92ba65dbf7..0000000000
--- a/arch/openrisc/lib/ashrdi3.S
+++ /dev/null
@@ -1,55 +0,0 @@
-/*
- * (C) Copyright 2012 - Franck JULLIEN <elec4fun@gmail.com>
- *
- * Extracted from gcc generated assembly.
- *
- * Extended precision shifts.
- *
- * R3/R4 (MSW, LSW) has 64 bit value
- * R5    has shift count
- * result in R11/R12
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
-
-.globl __ashrdi3
-
-__ashrdi3:
-	l.sfeqi r5,0x0			/* if count = 0, go out                   */
-	l.bf out
-
-	l.addi r6,r0,0x20		/* r6 = 32                                */
-	l.sub r6,r6,r5			/* r6 = 32 - count                        */
-	l.sfgtsi r6,0x0			/* if count >= 32                         */
-	l.bnf more_than_32		/* branch to more_than_32                 */
-	l.nop 0x0
-
-
- less_than_32:
-	l.sll r6,r3,r6			/* r6 gets the bits moved from MSW to LSW */
-	l.srl r4,r4,r5			/* shift LSW                              */
-	l.sra r5,r3,r5			/* shift MSW to r5                        */
-	l.or r4,r6,r4			/* LSW gets bits shifted from MSW         */
-	l.ori r3,r5,0x0			/* r3 = MSW                               */
-
- out:
-	l.ori r11,r3,0x0
-	l.jr r9
-	l.ori r12,r4,0x0
-
- more_than_32:
-	l.srai r5,r3,0x1f		/* r5 = MSW sign extended                 */
-	l.sub r4,r0,r6			/* r4 = -r6, the number of bits above 32  */
-	l.sra r4,r3,r4			/* LSW gets bits shifted from MSB         */
-	l.j out				/* go out                                 */
-	l.ori r3,r5,0x0			/* r3 = MSW                               */
diff --git a/arch/openrisc/lib/asm-offsets.c b/arch/openrisc/lib/asm-offsets.c
deleted file mode 100644
index 8cee8e00c6..0000000000
--- a/arch/openrisc/lib/asm-offsets.c
+++ /dev/null
@@ -1,18 +0,0 @@
-/*
- * OpenRISC asm-offsets.c
- *
- * This program is used to generate definitions needed by
- * assembly language modules.
- *
- * We use the technique used in the OSF Mach kernel code:
- * generate asm statements containing #defines,
- * compile this file to assembler, and then extract the
- * #defines from the assembly-language output.
- */
-
-#include <linux/kbuild.h>
-
-int main(void)
-{
-	return 0;
-}
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
deleted file mode 100644
index 9591120fee..0000000000
--- a/arch/openrisc/lib/board.c
+++ /dev/null
@@ -1,31 +0,0 @@
-/*
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
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
-#include <common.h>
-#include <malloc.h>
-#include <init.h>
-#include <memory.h>
-#include <asm-generic/memory_layout.h>
-
-/* Called from assembly */
-void openrisc_start_barebox(void);
-
-void __noreturn openrisc_start_barebox(void)
-{
-	mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZE),
-			(void *)(OPENRISC_SOPC_TEXT_BASE - 1));
-
-	start_barebox();
-}
diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c
deleted file mode 100644
index 5ff978e841..0000000000
--- a/arch/openrisc/lib/clock.c
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
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
-#include <common.h>
-#include <clock.h>
-#include <init.h>
-#include <asm/system.h>
-#include <asm/openrisc_exc.h>
-
-static uint64_t openrisc_clocksource_read(void)
-{
-	return (uint64_t)(mfspr(SPR_TTCR));
-}
-
-static struct clocksource cs = {
-	.read	= openrisc_clocksource_read,
-	.mask	= 0xffffffff,
-	.shift	= 12,
-};
-
-static int clocksource_init(void)
-{
-	mtspr(SPR_TTMR, SPR_TTMR_CR | 0xFFFFFF);
-	cs.mult = clocksource_hz2mult(OPENRISC_TIMER_FREQ, cs.shift);
-
-	return init_clock(&cs);
-}
-
-core_initcall(clocksource_init);
diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
deleted file mode 100644
index d94178ea59..0000000000
--- a/arch/openrisc/lib/cpuinfo.c
+++ /dev/null
@@ -1,200 +0,0 @@
-/*
- * (C) Copyright 2011, Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
- * (C) Copyright 2011, Julius Baxter <julius@opencores.org>
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
-#include <common.h>
-#include <command.h>
-#include <asm/system.h>
-#include <asm/cache.h>
-#include <asm/openrisc_exc.h>
-
-/* CPUID */
-#define OR1KSIM	0x00
-#define OR1200	0x12
-#define MOR1KX	0x01
-#define ALTOR32	0x32
-#define OR10	0x10
-
-static volatile int illegal_instruction;
-
-static void illegal_instruction_handler(void)
-{
-	ulong *epcr = (ulong *)mfspr(SPR_EPCR_BASE);
-
-	/* skip over the illegal instruction */
-	mtspr(SPR_EPCR_BASE, (ulong)(++epcr));
-	illegal_instruction = 1;
-}
-
-static int checkinstructions(void)
-{
-	ulong ra = 1, rb = 1, rc;
-
-	exception_install_handler(EXC_ILLEGAL_INSTR,
-				illegal_instruction_handler);
-
-	illegal_instruction = 0;
-	asm volatile("l.mul %0,%1,%2" : "=r" (rc) : "r" (ra), "r" (rb));
-	printf("           Hardware multiplier: %s\n",
-		illegal_instruction ? "no" : "yes");
-
-	illegal_instruction = 0;
-	asm volatile("l.div %0,%1,%2" : "=r" (rc) : "r" (ra), "r" (rb));
-	printf("           Hardware divider: %s\n",
-		illegal_instruction ? "no" : "yes");
-
-	exception_free_handler(EXC_ILLEGAL_INSTR);
-
-	return 0;
-}
-
-static void cpu_implementation(ulong vr2, char *string)
-{
-	switch (vr2 >> 24) {
-
-	case OR1KSIM:
-		sprintf(string, "or1ksim");
-		break;
-	case OR1200:
-		sprintf(string, "OR1200");
-		break;
-	case MOR1KX:
-		sprintf(string, "mor1kx v%u.%u - ", (uint)((vr2 >> 16) & 0xff),
-			(uint)((vr2 >> 8) & 0xff));
-
-		if ((uint)(vr2 & 0xff) == 1)
-			strcat(string, "cappuccino");
-		else if ((uint)(vr2 & 0xff) == 2)
-			strcat(string, "espresso");
-		else if ((uint)(vr2 & 0xff) == 3)
-			strcat(string, "prontoespresso");
-		else
-			strcat(string, "unknwown");
-
-		break;
-	case ALTOR32:
-		sprintf(string, "AltOr32");
-		break;
-	case OR10:
-		sprintf(string, "OR10");
-		break;
-	default:
-		sprintf(string, "unknown");
-	}
-}
-
-static int checkcpu(void)
-{
-	ulong upr = mfspr(SPR_UPR);
-	ulong vr = mfspr(SPR_VR);
-	ulong vr2 = mfspr(SPR_VR2);
-	ulong iccfgr = mfspr(SPR_ICCFGR);
-	ulong dccfgr = mfspr(SPR_DCCFGR);
-	ulong immucfgr = mfspr(SPR_IMMUCFGR);
-	ulong dmmucfgr = mfspr(SPR_DMMUCFGR);
-	ulong cpucfgr = mfspr(SPR_CPUCFGR);
-	uint ver = (vr & SPR_VR_VER) >> 24;
-	uint rev = vr & SPR_VR_REV;
-	uint block_size;
-	uint ways;
-	uint sets;
-
-	char impl_str[50];
-
-	printf("CPU:   OpenRISC-%x00 (rev %d) @ %d MHz\n",
-		ver, rev, (CONFIG_SYS_CLK_FREQ / 1000000));
-
-	if (vr2) {
-		cpu_implementation(vr2, impl_str);
-		printf("       Implementation: %s\n", impl_str);
-	}
-
-	if (upr & SPR_UPR_DCP) {
-		block_size = (dccfgr & SPR_DCCFGR_CBS) ? 32 : 16;
-		ways = 1 << (dccfgr & SPR_DCCFGR_NCW);
-		printf("       D-Cache: %d bytes, %d bytes/line, %d way(s)\n",
-		       checkdcache(), block_size, ways);
-	} else {
-		printf("       D-Cache: no\n");
-	}
-
-	if (upr & SPR_UPR_ICP) {
-		block_size = (iccfgr & SPR_ICCFGR_CBS) ? 32 : 16;
-		ways = 1 << (iccfgr & SPR_ICCFGR_NCW);
-		printf("       I-Cache: %d bytes, %d bytes/line, %d way(s)\n",
-		       checkicache(), block_size, ways);
-	} else {
-		printf("       I-Cache: no\n");
-	}
-
-	if (upr & SPR_UPR_DMP) {
-		sets = 1 << ((dmmucfgr & SPR_DMMUCFGR_NTS) >> 2);
-		ways = (dmmucfgr & SPR_DMMUCFGR_NTW) + 1;
-		printf("       DMMU: %d sets, %d way(s)\n",
-		       sets, ways);
-	} else {
-		printf("       DMMU: no\n");
-	}
-
-	if (upr & SPR_UPR_IMP) {
-		sets = 1 << ((immucfgr & SPR_IMMUCFGR_NTS) >> 2);
-		ways = (immucfgr & SPR_IMMUCFGR_NTW) + 1;
-		printf("       IMMU: %d sets, %d way(s)\n",
-		       sets, ways);
-	} else {
-		printf("       IMMU: no\n");
-	}
-
-	printf("       MAC unit: %s\n",
-		(upr & SPR_UPR_MP) ? "yes" : "no");
-	printf("       Debug unit: %s\n",
-		(upr & SPR_UPR_DUP) ? "yes" : "no");
-	printf("       Performance counters: %s\n",
-		(upr & SPR_UPR_PCUP) ? "yes" : "no");
-	printf("       Power management: %s\n",
-		(upr & SPR_UPR_PMP) ? "yes" : "no");
-	printf("       Interrupt controller: %s\n",
-		(upr & SPR_UPR_PICP) ? "yes" : "no");
-	printf("       Timer: %s\n",
-		(upr & SPR_UPR_TTP) ? "yes" : "no");
-	printf("       Custom unit(s): %s\n",
-		(upr & SPR_UPR_CUP) ? "yes" : "no");
-
-	printf("       Supported instructions:\n");
-	printf("           ORBIS32: %s\n",
-		(cpucfgr & SPR_CPUCFGR_OB32S) ? "yes" : "no");
-	printf("           ORBIS64: %s\n",
-		(cpucfgr & SPR_CPUCFGR_OB64S) ? "yes" : "no");
-	printf("           ORFPX32: %s\n",
-		(cpucfgr & SPR_CPUCFGR_OF32S) ? "yes" : "no");
-	printf("           ORFPX64: %s\n",
-		(cpucfgr & SPR_CPUCFGR_OF64S) ? "yes" : "no");
-
-	checkinstructions();
-
-	return 0;
-}
-
-static int do_cpuinfo(int argc, char *argv[])
-{
-	checkcpu();
-	return 0;
-}
-
-BAREBOX_CMD_START(cpuinfo)
-	.cmd            = do_cpuinfo,
-	BAREBOX_CMD_DESC("show CPU information")
-	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-BAREBOX_CMD_END
diff --git a/arch/openrisc/lib/dtb.c b/arch/openrisc/lib/dtb.c
deleted file mode 100644
index 61cf35ddf3..0000000000
--- a/arch/openrisc/lib/dtb.c
+++ /dev/null
@@ -1,35 +0,0 @@
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * Based on arch/arm/cpu/dtb.c:
- * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <common.h>
-#include <init.h>
-#include <of.h>
-
-extern char __dtb_start[];
-
-static int of_openrisc_init(void)
-{
-	struct device_node *root;
-
-	root = of_get_root_node();
-	if (root)
-		return 0;
-
-	barebox_register_fdt(__dtb_start);
-
-	return 0;
-}
-core_initcall(of_openrisc_init);
diff --git a/arch/openrisc/lib/lshrdi3.S b/arch/openrisc/lib/lshrdi3.S
deleted file mode 100644
index de30445f4e..0000000000
--- a/arch/openrisc/lib/lshrdi3.S
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
- *
- * Extracted from gcc generated assembly.
- *
- * Extended precision shifts.
- *
- * R3/R4 (MSW, LSW) has 64 bit value
- * R5    has shift count
- * result in R11/R12
- *
- */
-
-.globl __lshrdi3
-
-__lshrdi3:
-	l.sfeqi r5,0x0
-	l.bf out		/* if count = 0, go out                   */
-
-	l.addi r6,r0,0x20	/* r6 = 32                                */
-	l.sub r6,r6,r5		/* r6 = 32 - count                        */
-	l.sfgtsi r6,0x0		/* if count >= 32                         */
-	l.bnf more_than_32	/* branch to more_than_32                 */
-	l.nop 0x0
-
-less_than_32:
-	l.sll r6,r3,r6		/* r6 gets the bits moved from MSW to LSW */
-	l.srl r4,r4,r5		/* shift LSW                              */
-	l.srl r3,r3,r5		/* shift MSW                              */
-	l.or r4,r6,r4		/* LSW gets bits shifted from MSW         */
-
- out:
-	l.ori r11,r3,0x0
-	l.jr r9
-	l.ori r12,r4,0x0
-
-more_than_32:
-	l.sub r4,r0,r6		/* r4 = -r6, the number of bits above 32  */
-	l.srl r4,r3,r4		/* LSW = MSW >> r4                        */
-	l.j out			/* go out                                 */
-	l.addi r3,r0,0x0	/* MSW = 0                                */
diff --git a/arch/openrisc/lib/muldi3.S b/arch/openrisc/lib/muldi3.S
deleted file mode 100644
index 902338a242..0000000000
--- a/arch/openrisc/lib/muldi3.S
+++ /dev/null
@@ -1,58 +0,0 @@
-/*
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
- *
- * Extracted from gcc generated assembly.
- *
- * Multiply two quads. Hereafter, the illustration of what is going on :
- *
- *                        |    r3    |    r4    |
- *                        |    r5    |    r6    |
- *                         --------------------
- *                        |       r4 * r6       |
- *             |       r3 * r6       |          | +
- *             |       r5 * r4       |          | +
- *  |       r3 * r5       |          |          | +
- *   -------------------------------------------  =
- *                        |    64 bits result   |
- *
- */
-
-.globl __muldi3
-
-__muldi3:
-	/* starts with the full 64 bits mul (r4 * r6) */
-	l.andi r7,r4,0xffff
-	l.srli r8,r4,0x10
-
-	l.andi r11,r6,0xffff
-	l.srli r12,r6,0x10
-
-	l.mul r13,r11,r7
-	l.mul r11,r11,r8
-	l.mul r7,r12,r7
-
-	l.srli r15,r13,0x10
-	l.add r7,r7,r15
-	l.add r7,r11,r7
-	l.sfleu r11,r7
-	l.bf no_carry
-	l.mul r8,r12,r8
-
-	l.movhi r15,0x1
-	l.add r8,r8,r15
-
-no_carry:
-	/* Now compute r3 * r6  */
-	l.mul r6,r6,r3
-	/* and r4 * r5          */
-	l.mul r4,r4,r5
-	/* finaly previous results and put the result in r11:r12 */
-	l.srli r3,r7,0x10
-	l.slli r7,r7,0x10
-	l.andi r13,r13,0xffff
-	l.add r8,r8,r3
-	l.add r11,r4,r6
-	l.add r12,r7,r13
-	l.add r11,r11,r8
-	l.jr r9
-	l.nop
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 0d55ea7a3b..ea2b04b1c3 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -143,15 +143,6 @@ config DRIVER_NET_EP93XX
 	depends on ARCH_EP93XX
 	select PHYLIB
 
-config DRIVER_NET_ETHOC
-	bool "OpenCores ethernet MAC driver"
-	depends on OPENRISC
-	depends on HAS_CACHE
-	select PHYLIB
-	help
-	  This option enables support for the OpenCores 10/100 Mbps
-	  Ethernet MAC core.
-
 config DRIVER_NET_FEC_IMX
 	bool "i.MX FEC Ethernet driver"
 	depends on ARCH_HAS_FEC_IMX || COMPILE_TEST
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 656d45a868..6890121d43 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -18,7 +18,6 @@ obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
-obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
 obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_FSL_FMAN)	+= fsl-fman.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
deleted file mode 100644
index f24120ce72..0000000000
--- a/drivers/net/ethoc.c
+++ /dev/null
@@ -1,580 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * OpenCores 10/100 Mbps Ethernet driver
- *
- * Copyright (C) 2007-2008 Avionic Design Development GmbH
- * Copyright (C) 2008-2009 Avionic Design GmbH
- * Copyright (C) 2013 Beniamino Galvani <b.galvani@gmail.com>
- *
- * Originally written by Thierry Reding <thierry.reding@avionic-design.de>
- */
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <io.h>
-#include <asm/cache.h>
-#include <linux/err.h>
-
-/* register offsets */
-#define	MODER		0x00
-#define	INT_SOURCE	0x04
-#define	INT_MASK	0x08
-#define	IPGT		0x0c
-#define	IPGR1		0x10
-#define	IPGR2		0x14
-#define	PACKETLEN	0x18
-#define	COLLCONF	0x1c
-#define	TX_BD_NUM	0x20
-#define	CTRLMODER	0x24
-#define	MIIMODER	0x28
-#define	MIICOMMAND	0x2c
-#define	MIIADDRESS	0x30
-#define	MIITX_DATA	0x34
-#define	MIIRX_DATA	0x38
-#define	MIISTATUS	0x3c
-#define	MAC_ADDR0	0x40
-#define	MAC_ADDR1	0x44
-#define	ETH_HASH0	0x48
-#define	ETH_HASH1	0x4c
-#define	ETH_TXCTRL	0x50
-
-/* mode register */
-#define	MODER_RXEN	(1 <<  0) /* receive enable */
-#define	MODER_TXEN	(1 <<  1) /* transmit enable */
-#define	MODER_NOPRE	(1 <<  2) /* no preamble */
-#define	MODER_BRO	(1 <<  3) /* broadcast address */
-#define	MODER_IAM	(1 <<  4) /* individual address mode */
-#define	MODER_PRO	(1 <<  5) /* promiscuous mode */
-#define	MODER_IFG	(1 <<  6) /* interframe gap for incoming frames */
-#define	MODER_LOOP	(1 <<  7) /* loopback */
-#define	MODER_NBO	(1 <<  8) /* no back-off */
-#define	MODER_EDE	(1 <<  9) /* excess defer enable */
-#define	MODER_FULLD	(1 << 10) /* full duplex */
-#define	MODER_RESET	(1 << 11) /* FIXME: reset (undocumented) */
-#define	MODER_DCRC	(1 << 12) /* delayed CRC enable */
-#define	MODER_CRC	(1 << 13) /* CRC enable */
-#define	MODER_HUGE	(1 << 14) /* huge packets enable */
-#define	MODER_PAD	(1 << 15) /* padding enabled */
-#define	MODER_RSM	(1 << 16) /* receive small packets */
-
-/* interrupt source and mask registers */
-#define	INT_MASK_TXF	(1 << 0) /* transmit frame */
-#define	INT_MASK_TXE	(1 << 1) /* transmit error */
-#define	INT_MASK_RXF	(1 << 2) /* receive frame */
-#define	INT_MASK_RXE	(1 << 3) /* receive error */
-#define	INT_MASK_BUSY	(1 << 4)
-#define	INT_MASK_TXC	(1 << 5) /* transmit control frame */
-#define	INT_MASK_RXC	(1 << 6) /* receive control frame */
-
-#define	INT_MASK_TX	(INT_MASK_TXF | INT_MASK_TXE)
-#define	INT_MASK_RX	(INT_MASK_RXF | INT_MASK_RXE)
-
-#define	INT_MASK_ALL ( \
-		INT_MASK_TXF | INT_MASK_TXE | \
-		INT_MASK_RXF | INT_MASK_RXE | \
-		INT_MASK_TXC | INT_MASK_RXC | \
-		INT_MASK_BUSY \
-	)
-
-/* packet length register */
-#define	PACKETLEN_MIN(min)		(((min) & 0xffff) << 16)
-#define	PACKETLEN_MAX(max)		(((max) & 0xffff) <<  0)
-#define	PACKETLEN_MIN_MAX(min, max)	(PACKETLEN_MIN(min) | \
-					PACKETLEN_MAX(max))
-
-/* transmit buffer number register */
-#define	TX_BD_NUM_VAL(x)	(((x) <= 0x80) ? (x) : 0x80)
-
-/* control module mode register */
-#define	CTRLMODER_PASSALL	(1 << 0) /* pass all receive frames */
-#define	CTRLMODER_RXFLOW	(1 << 1) /* receive control flow */
-#define	CTRLMODER_TXFLOW	(1 << 2) /* transmit control flow */
-
-/* MII mode register */
-#define	MIIMODER_CLKDIV(x)	((x) & 0xfe) /* needs to be an even number */
-#define	MIIMODER_NOPRE		(1 << 8) /* no preamble */
-
-/* MII command register */
-#define	MIICOMMAND_SCAN		(1 << 0) /* scan status */
-#define	MIICOMMAND_READ		(1 << 1) /* read status */
-#define	MIICOMMAND_WRITE	(1 << 2) /* write control data */
-
-/* MII address register */
-#define	MIIADDRESS_FIAD(x)		(((x) & 0x1f) << 0)
-#define	MIIADDRESS_RGAD(x)		(((x) & 0x1f) << 8)
-#define	MIIADDRESS_ADDR(phy, reg)	(MIIADDRESS_FIAD(phy) | \
-					MIIADDRESS_RGAD(reg))
-
-/* MII transmit data register */
-#define	MIITX_DATA_VAL(x)	((x) & 0xffff)
-
-/* MII receive data register */
-#define	MIIRX_DATA_VAL(x)	((x) & 0xffff)
-
-/* MII status register */
-#define	MIISTATUS_LINKFAIL	(1 << 0)
-#define	MIISTATUS_BUSY		(1 << 1)
-#define	MIISTATUS_INVALID	(1 << 2)
-
-/* TX buffer descriptor */
-#define	TX_BD_CS		(1 <<  0) /* carrier sense lost */
-#define	TX_BD_DF		(1 <<  1) /* defer indication */
-#define	TX_BD_LC		(1 <<  2) /* late collision */
-#define	TX_BD_RL		(1 <<  3) /* retransmission limit */
-#define	TX_BD_RETRY_MASK	(0x00f0)
-#define	TX_BD_RETRY(x)		(((x) & 0x00f0) >>  4)
-#define	TX_BD_UR		(1 <<  8) /* transmitter underrun */
-#define	TX_BD_CRC		(1 << 11) /* TX CRC enable */
-#define	TX_BD_PAD		(1 << 12) /* pad enable for short packets */
-#define	TX_BD_WRAP		(1 << 13)
-#define	TX_BD_IRQ		(1 << 14) /* interrupt request enable */
-#define	TX_BD_READY		(1 << 15) /* TX buffer ready */
-#define	TX_BD_LEN(x)		(((x) & 0xffff) << 16)
-#define	TX_BD_LEN_MASK		(0xffff << 16)
-
-#define	TX_BD_STATS		(TX_BD_CS | TX_BD_DF | TX_BD_LC | \
-				TX_BD_RL | TX_BD_RETRY_MASK | TX_BD_UR)
-
-/* RX buffer descriptor */
-#define	RX_BD_LC	(1 <<  0) /* late collision */
-#define	RX_BD_CRC	(1 <<  1) /* RX CRC error */
-#define	RX_BD_SF	(1 <<  2) /* short frame */
-#define	RX_BD_TL	(1 <<  3) /* too long */
-#define	RX_BD_DN	(1 <<  4) /* dribble nibble */
-#define	RX_BD_IS	(1 <<  5) /* invalid symbol */
-#define	RX_BD_OR	(1 <<  6) /* receiver overrun */
-#define	RX_BD_MISS	(1 <<  7)
-#define	RX_BD_CF	(1 <<  8) /* control frame */
-#define	RX_BD_WRAP	(1 << 13)
-#define	RX_BD_IRQ	(1 << 14) /* interrupt request enable */
-#define	RX_BD_EMPTY	(1 << 15)
-#define	RX_BD_LEN(x)	(((x) & 0xffff) << 16)
-
-#define	RX_BD_STATS	(RX_BD_LC | RX_BD_CRC | RX_BD_SF | RX_BD_TL | \
-			RX_BD_DN | RX_BD_IS | RX_BD_OR | RX_BD_MISS)
-
-#define	ETHOC_BUFSIZ		1536
-#define	ETHOC_ZLEN		64
-#define	ETHOC_BD_BASE		0x400
-
-/**
- * struct ethoc - driver-private device structure
- * @iobase:	pointer to I/O memory region
- * @num_tx:	number of send buffers
- * @cur_tx:	last send buffer written
- * @dty_tx:	last buffer actually sent
- * @num_rx:	number of receive buffers
- * @cur_rx:	current receive buffer
- */
-struct ethoc {
-	void __iomem *iobase;
-
-	u32 num_tx;
-	u32 cur_tx;
-	u32 dty_tx;
-
-	u32 num_rx;
-	u32 cur_rx;
-
-	struct mii_bus miibus;
-};
-
-/**
- * struct ethoc_bd - buffer descriptor
- * @stat:	buffer statistics
- * @addr:	physical memory address
- */
-struct ethoc_bd {
-	u32 stat;
-	u32 addr;
-};
-
-static inline u32 ethoc_read(struct ethoc *dev, loff_t offset)
-{
-	return ioread32be(dev->iobase + offset);
-}
-
-static inline void ethoc_write(struct ethoc *dev, loff_t offset, u32 data)
-{
-	iowrite32be(data, dev->iobase + offset);
-}
-
-static inline void ethoc_read_bd(struct ethoc *dev, int index,
-				 struct ethoc_bd *bd)
-{
-	loff_t offset = ETHOC_BD_BASE + (index * sizeof(struct ethoc_bd));
-	bd->stat = ethoc_read(dev, offset + 0);
-	bd->addr = ethoc_read(dev, offset + 4);
-}
-
-static inline void ethoc_write_bd(struct ethoc *dev, int index,
-				  const struct ethoc_bd *bd)
-{
-	loff_t offset = ETHOC_BD_BASE + (index * sizeof(struct ethoc_bd));
-	ethoc_write(dev, offset + 0, bd->stat);
-	ethoc_write(dev, offset + 4, bd->addr);
-}
-
-static inline void ethoc_ack_irq(struct ethoc *dev, u32 mask)
-{
-	ethoc_write(dev, INT_SOURCE, mask);
-}
-
-static inline void ethoc_enable_rx_and_tx(struct ethoc *dev)
-{
-	u32 mode = ethoc_read(dev, MODER);
-	mode |= MODER_RXEN | MODER_TXEN;
-	ethoc_write(dev, MODER, mode);
-}
-
-static inline void ethoc_disable_rx_and_tx(struct ethoc *dev)
-{
-	u32 mode = ethoc_read(dev, MODER);
-	mode &= ~(MODER_RXEN | MODER_TXEN);
-	ethoc_write(dev, MODER, mode);
-}
-
-static int ethoc_init_ring(struct ethoc *dev)
-{
-	struct ethoc_bd bd;
-	int i;
-
-	dev->num_tx = 1;
-	dev->num_rx = PKTBUFSRX;
-
-	dev->cur_tx = 0;
-	dev->dty_tx = 0;
-	dev->cur_rx = 0;
-
-	ethoc_write(dev, TX_BD_NUM, dev->num_tx);
-
-	/* setup transmission buffers */
-	bd.addr = 0;
-	bd.stat = TX_BD_IRQ | TX_BD_CRC;
-
-	for (i = 0; i < dev->num_tx; i++) {
-		if (i == dev->num_tx - 1)
-			bd.stat |= TX_BD_WRAP;
-
-		ethoc_write_bd(dev, i, &bd);
-	}
-
-	bd.stat = RX_BD_EMPTY | RX_BD_IRQ;
-
-	for (i = 0; i < dev->num_rx; i++) {
-		if (i == dev->num_rx - 1)
-			bd.stat |= RX_BD_WRAP;
-
-		bd.addr = (u32)NetRxPackets[i];
-		ethoc_write_bd(dev, dev->num_tx + i, &bd);
-
-		flush_dcache_range(bd.addr, bd.addr + PKTSIZE);
-	}
-
-	return 0;
-}
-
-static int ethoc_reset(struct ethoc *dev)
-{
-	u32 mode;
-
-	/* TODO: reset controller? */
-
-	ethoc_disable_rx_and_tx(dev);
-
-	/* TODO: setup registers */
-
-	/* enable FCS generation and automatic padding */
-	mode = ethoc_read(dev, MODER);
-	mode |= MODER_CRC | MODER_PAD;
-	ethoc_write(dev, MODER, mode);
-
-	/* set full-duplex mode */
-	mode = ethoc_read(dev, MODER);
-	mode |= MODER_FULLD;
-	ethoc_write(dev, MODER, mode);
-	ethoc_write(dev, IPGT, 0x15);
-
-	ethoc_write(dev, PACKETLEN, PACKETLEN_MIN_MAX(64, PKTSIZE));
-
-	ethoc_ack_irq(dev, INT_MASK_ALL);
-	ethoc_enable_rx_and_tx(dev);
-	return 0;
-}
-
-static unsigned int ethoc_update_rx_stats(struct eth_device *edev,
-					  struct ethoc_bd *bd)
-{
-	unsigned int ret = 0;
-
-	if (bd->stat & RX_BD_TL) {
-		dev_err(&edev->dev, "RX: frame too long\n");
-		ret++;
-	}
-
-	if (bd->stat & RX_BD_SF) {
-		dev_err(&edev->dev, "RX: frame too short\n");
-		ret++;
-	}
-
-	if (bd->stat & RX_BD_DN)
-		dev_err(&edev->dev, "RX: dribble nibble\n");
-
-	if (bd->stat & RX_BD_CRC) {
-		dev_err(&edev->dev, "RX: wrong CRC\n");
-		ret++;
-	}
-
-	if (bd->stat & RX_BD_OR) {
-		dev_err(&edev->dev, "RX: overrun\n");
-		ret++;
-	}
-
-	if (bd->stat & RX_BD_LC) {
-		dev_err(&edev->dev, "RX: late collision\n");
-		ret++;
-	}
-
-	return ret;
-}
-
-static int ethoc_rx(struct eth_device *edev, int limit)
-{
-	struct ethoc *priv = edev->priv;
-	int count;
-
-	for (count = 0; count < limit; ++count) {
-		unsigned int entry;
-		struct ethoc_bd bd;
-
-		entry = priv->num_tx + priv->cur_rx;
-		ethoc_read_bd(priv, entry, &bd);
-		if (bd.stat & RX_BD_EMPTY) {
-			ethoc_ack_irq(priv, INT_MASK_RX);
-			/* If packet (interrupt) came in between checking
-			 * BD_EMTPY and clearing the interrupt source, then we
-			 * risk missing the packet as the RX interrupt won't
-			 * trigger right away when we reenable it; hence, check
-			 * BD_EMTPY here again to make sure there isn't such a
-			 * packet waiting for us...
-			 */
-			ethoc_read_bd(priv, entry, &bd);
-			if (bd.stat & RX_BD_EMPTY)
-				break;
-		}
-
-		if (ethoc_update_rx_stats(edev, &bd) == 0) {
-			int size = bd.stat >> 16;
-
-			size -= 4; /* strip the CRC */
-			invalidate_dcache_range(bd.addr, bd.addr + PKTSIZE);
-			net_receive(edev, (unsigned char *)bd.addr, size);
-		}
-
-		/* clear the buffer descriptor so it can be reused */
-		bd.stat &= ~RX_BD_STATS;
-		bd.stat |=  RX_BD_EMPTY;
-		ethoc_write_bd(priv, entry, &bd);
-		if (++priv->cur_rx == priv->num_rx)
-			priv->cur_rx = 0;
-	}
-
-	return count;
-}
-
-static int ethoc_recv_packet(struct eth_device *edev)
-{
-	struct ethoc *priv = edev->priv;
-
-	if (ethoc_read(priv, INT_SOURCE) & INT_MASK_RX)
-		return ethoc_rx(edev, PKTBUFSRX);
-
-	return 0;
-}
-
-static int ethoc_init_dev(struct eth_device *edev)
-{
-	return 0;
-}
-
-
-static int ethoc_open(struct eth_device *edev)
-{
-	struct ethoc *dev = edev->priv;
-
-	ethoc_init_ring(dev);
-	ethoc_reset(dev);
-
-	return 0;
-}
-
-static void ethoc_halt(struct eth_device *edev)
-{
-	ethoc_disable_rx_and_tx(edev->priv);
-}
-
-static int ethoc_get_ethaddr(struct eth_device *edev, unsigned char *mac)
-{
-	struct ethoc *priv = edev->priv;
-	u32 reg;
-
-	reg = ethoc_read(priv, MAC_ADDR0);
-	mac[2] = (reg >> 24) & 0xff;
-	mac[3] = (reg >> 16) & 0xff;
-	mac[4] = (reg >>  8) & 0xff;
-	mac[5] = (reg >>  0) & 0xff;
-
-	reg = ethoc_read(priv, MAC_ADDR1);
-	mac[0] = (reg >>  8) & 0xff;
-	mac[1] = (reg >>  0) & 0xff;
-
-	return 0;
-}
-
-static int ethoc_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
-{
-	struct ethoc *dev = edev->priv;
-
-	ethoc_write(dev, MAC_ADDR0, (mac[2] << 24) | (mac[3] << 16) |
-		    (mac[4] << 8) | (mac[5] << 0));
-	ethoc_write(dev, MAC_ADDR1, (mac[0] << 8) | (mac[1] << 0));
-
-	return 0;
-}
-
-static int ethoc_send_packet(struct eth_device *edev, void *packet, int length)
-{
-	struct ethoc *priv = edev->priv;
-	struct ethoc_bd bd;
-	u32 entry;
-	u32 pending;
-	u64 start;
-
-	entry = priv->cur_tx % priv->num_tx;
-	ethoc_read_bd(priv, entry, &bd);
-	if (unlikely(length < ETHOC_ZLEN))
-		bd.stat |= TX_BD_PAD;
-	else
-		bd.stat &= ~TX_BD_PAD;
-	bd.addr = (u32)packet;
-
-	flush_dcache_range(bd.addr, bd.addr + length);
-	bd.stat &= ~(TX_BD_STATS | TX_BD_LEN_MASK);
-	bd.stat |= TX_BD_LEN(length);
-	ethoc_write_bd(priv, entry, &bd);
-
-	bd.stat |= TX_BD_READY;
-	ethoc_write_bd(priv, entry, &bd);
-
-	start = get_time_ns();
-	do {
-		pending = ethoc_read(priv, INT_SOURCE);
-		ethoc_ack_irq(priv, pending & INT_MASK_TX);
-
-		if (is_timeout(start, 200 * MSECOND)) {
-			dev_err(&edev->dev, "TX timeout\n");
-			return -ETIMEDOUT;
-		}
-	} while (!(pending & INT_MASK_TX));
-
-	return 0;
-}
-
-static int ethoc_mdio_read(struct mii_bus *bus, int phy, int reg)
-{
-	struct ethoc *priv = bus->priv;
-	u64 start;
-	u32 data;
-
-	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
-	ethoc_write(priv, MIICOMMAND, MIICOMMAND_READ);
-
-	start = get_time_ns();
-	while (ethoc_read(priv, MIISTATUS) & MIISTATUS_BUSY) {
-		if (is_timeout(start, 2 * MSECOND)) {
-			dev_err(bus->parent, "PHY command timeout\n");
-			return -EBUSY;
-		}
-	}
-
-	data = ethoc_read(priv, MIIRX_DATA);
-
-	/* reset MII command register */
-	ethoc_write(priv, MIICOMMAND, 0);
-
-	return data;
-}
-
-static int ethoc_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
-{
-	struct ethoc *priv = bus->priv;
-	u64 start;
-
-	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
-	ethoc_write(priv, MIITX_DATA, val);
-	ethoc_write(priv, MIICOMMAND, MIICOMMAND_WRITE);
-
-	start = get_time_ns();
-	while (ethoc_read(priv, MIISTATUS) & MIISTATUS_BUSY) {
-		if (is_timeout(start, 2 * MSECOND)) {
-			dev_err(bus->parent, "PHY command timeout\n");
-			return -EBUSY;
-		}
-	}
-
-	/* reset MII command register */
-	ethoc_write(priv, MIICOMMAND, 0);
-
-	return 0;
-}
-
-static int ethoc_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	struct eth_device *edev;
-	struct ethoc *priv;
-
-	edev = xzalloc(sizeof(struct eth_device) +
-		       sizeof(struct ethoc));
-	edev->priv = (struct ethoc *)(edev + 1);
-
-	priv = edev->priv;
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->iobase = IOMEM(iores->start);
-
-	priv->miibus.read = ethoc_mdio_read;
-	priv->miibus.write = ethoc_mdio_write;
-	priv->miibus.priv = priv;
-	priv->miibus.parent = dev;
-
-	edev->init = ethoc_init_dev;
-	edev->open = ethoc_open;
-	edev->send = ethoc_send_packet;
-	edev->recv = ethoc_recv_packet;
-	edev->halt = ethoc_halt;
-
-	edev->get_ethaddr = ethoc_get_ethaddr;
-	edev->set_ethaddr = ethoc_set_ethaddr;
-	edev->parent = dev;
-
-	mdiobus_register(&priv->miibus);
-
-	eth_register(edev);
-
-	return 0;
-}
-
-static struct of_device_id ethoc_dt_ids[] = {
-	{ .compatible = "opencores,ethoc", },
-	{ }
-};
-
-static struct driver_d ethoc_driver = {
-	.name  = "ethoc",
-	.probe = ethoc_probe,
-	.of_compatible = DRV_OF_COMPAT(ethoc_dt_ids),
-};
-device_platform_driver(ethoc_driver);
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 23be25d85d..94bea6854b 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -4,7 +4,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV || KVX
+	depends on PPC || ARM || EFI_BOOTUP || SANDBOX || RISCV || KVX
 	def_bool y
 
 config DTC
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

