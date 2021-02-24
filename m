Delivery-date: Wed, 24 Feb 2021 09:46:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpol-0004eS-JV
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:46:47 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpof-0007DX-5f
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:46:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=78tp3kwHGVV+1x0IzbdLvD7aQu1irQ80kxYTGq4nbpI=; b=Gxmms6AZU4FW2R8ylgaWUURkB5
	Ajv0YCUUg3L42zvjm/0TuMPgi5laGFBaYjK6wzkNHXKz+8yh7MygdNJMEQYrFo8sW9orIVWTWrsoE
	Idces2v2iiWs/tNLl+UjtwcCvI5qKshErin+yJ11pcCmn7QZiJQQZdW/zsizl7TQMAXvbkNqgRqTQ
	XUzONP5Fg04TsGDEcLAa8AlQVchMPkJSO1e7j6uoGqI26g3E3yINNpcFP1OS/WJHvlmxgcosVvavf
	CwPotA3vW4ByCJiBlL+FtL6+yYcYH2LvBAO6qfBSCnYZZVSWDC/ZFBR17i4A6TNb8/lgkKtbqJ6e7
	JXSILsfw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpmo-0005j3-Nt; Wed, 24 Feb 2021 08:44:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpmh-0005iE-B5
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:44:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpmg-0006n3-E6; Wed, 24 Feb 2021 09:44:38 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpmg-0008OB-5I; Wed, 24 Feb 2021 09:44:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 24 Feb 2021 09:44:36 +0100
Message-Id: <20210224084437.31344-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
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
Subject: [PATCH 1/2] nios2: Remove architecture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox nios2 support was merged in 2011. It hasn't seen very much
active development since then and appears to have no active users.
Remove the architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/barebox.rst                |   1 -
 arch/nios2/Kconfig                            |  29 -
 arch/nios2/Makefile                           |  27 -
 arch/nios2/boards/generic/Makefile            |   2 -
 arch/nios2/boards/generic/config.h            |  63 ---
 .../boards/generic/defaultenv-generic/config  |  20 -
 arch/nios2/boards/generic/generic.c           |  77 ---
 arch/nios2/boards/generic/nios_sopc.h         | 406 --------------
 arch/nios2/configs/generic_defconfig          |  32 --
 arch/nios2/cpu/.gitignore                     |   1 -
 arch/nios2/cpu/Makefile                       |   5 -
 arch/nios2/cpu/barebox.lds.S                  | 114 ----
 arch/nios2/cpu/cpu.c                          |  36 --
 arch/nios2/cpu/exceptions.S                   | 144 -----
 arch/nios2/cpu/start.S                        | 158 ------
 arch/nios2/cpu/traps.c                        |  36 --
 arch/nios2/include/asm/bitops.h               |  35 --
 arch/nios2/include/asm/bitsperlong.h          |   1 -
 arch/nios2/include/asm/byteorder.h            |   1 -
 arch/nios2/include/asm/cache.h                |  21 -
 arch/nios2/include/asm/common.h               |   4 -
 arch/nios2/include/asm/dma-mapping.h          |  48 --
 arch/nios2/include/asm/dma.h                  |   8 -
 arch/nios2/include/asm/early_printf.h         |  10 -
 arch/nios2/include/asm/elf.h                  | 165 ------
 arch/nios2/include/asm/io.h                   |  51 --
 arch/nios2/include/asm/mmu.h                  |   6 -
 arch/nios2/include/asm/nios2-io.h             | 175 ------
 arch/nios2/include/asm/nios2.h                |  56 --
 arch/nios2/include/asm/opcodes.h              | 124 -----
 arch/nios2/include/asm/posix_types.h          |   1 -
 arch/nios2/include/asm/ptrace.h               |  26 -
 arch/nios2/include/asm/sections.h             |   1 -
 arch/nios2/include/asm/spi.h                  |  22 -
 arch/nios2/include/asm/string.h               |  40 --
 arch/nios2/include/asm/swab.h                 |   4 -
 arch/nios2/include/asm/system.h               |  57 --
 arch/nios2/include/asm/types.h                |   6 -
 arch/nios2/include/asm/unaligned.h            |  15 -
 arch/nios2/lib/Makefile                       |   7 -
 arch/nios2/lib/asm-offsets.c                  |  22 -
 arch/nios2/lib/board.c                        |  29 -
 arch/nios2/lib/bootm.c                        |  80 ---
 arch/nios2/lib/cache.c                        |  77 ---
 arch/nios2/lib/clock.c                        |  53 --
 arch/nios2/lib/early_printf.c                 |  49 --
 arch/nios2/lib/libgcc.c                       | 524 ------------------
 arch/nios2/lib/longlong.h                     | 253 ---------
 48 files changed, 3122 deletions(-)
 delete mode 100644 arch/nios2/Kconfig
 delete mode 100644 arch/nios2/Makefile
 delete mode 100644 arch/nios2/boards/generic/Makefile
 delete mode 100644 arch/nios2/boards/generic/config.h
 delete mode 100644 arch/nios2/boards/generic/defaultenv-generic/config
 delete mode 100644 arch/nios2/boards/generic/generic.c
 delete mode 100644 arch/nios2/boards/generic/nios_sopc.h
 delete mode 100644 arch/nios2/configs/generic_defconfig
 delete mode 100644 arch/nios2/cpu/.gitignore
 delete mode 100644 arch/nios2/cpu/Makefile
 delete mode 100644 arch/nios2/cpu/barebox.lds.S
 delete mode 100644 arch/nios2/cpu/cpu.c
 delete mode 100644 arch/nios2/cpu/exceptions.S
 delete mode 100644 arch/nios2/cpu/start.S
 delete mode 100644 arch/nios2/cpu/traps.c
 delete mode 100644 arch/nios2/include/asm/bitops.h
 delete mode 100644 arch/nios2/include/asm/bitsperlong.h
 delete mode 100644 arch/nios2/include/asm/byteorder.h
 delete mode 100644 arch/nios2/include/asm/cache.h
 delete mode 100644 arch/nios2/include/asm/common.h
 delete mode 100644 arch/nios2/include/asm/dma-mapping.h
 delete mode 100644 arch/nios2/include/asm/dma.h
 delete mode 100644 arch/nios2/include/asm/early_printf.h
 delete mode 100644 arch/nios2/include/asm/elf.h
 delete mode 100644 arch/nios2/include/asm/io.h
 delete mode 100644 arch/nios2/include/asm/mmu.h
 delete mode 100644 arch/nios2/include/asm/nios2-io.h
 delete mode 100644 arch/nios2/include/asm/nios2.h
 delete mode 100644 arch/nios2/include/asm/opcodes.h
 delete mode 100644 arch/nios2/include/asm/posix_types.h
 delete mode 100644 arch/nios2/include/asm/ptrace.h
 delete mode 100644 arch/nios2/include/asm/sections.h
 delete mode 100644 arch/nios2/include/asm/spi.h
 delete mode 100644 arch/nios2/include/asm/string.h
 delete mode 100644 arch/nios2/include/asm/swab.h
 delete mode 100644 arch/nios2/include/asm/system.h
 delete mode 100644 arch/nios2/include/asm/types.h
 delete mode 100644 arch/nios2/include/asm/unaligned.h
 delete mode 100644 arch/nios2/lib/Makefile
 delete mode 100644 arch/nios2/lib/asm-offsets.c
 delete mode 100644 arch/nios2/lib/board.c
 delete mode 100644 arch/nios2/lib/bootm.c
 delete mode 100644 arch/nios2/lib/cache.c
 delete mode 100644 arch/nios2/lib/clock.c
 delete mode 100644 arch/nios2/lib/early_printf.c
 delete mode 100644 arch/nios2/lib/libgcc.c
 delete mode 100644 arch/nios2/lib/longlong.h

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 6bea883115..503f0b9797 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -54,7 +54,6 @@ variable. Currently, ``ARCH`` must be one of:
 
 * arm
 * mips
-* nios2
 * openrisc
 * ppc
 * riscv
diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
deleted file mode 100644
index c7c13a464b..0000000000
--- a/arch/nios2/Kconfig
+++ /dev/null
@@ -1,29 +0,0 @@
-config NIOS2
-	bool
-	select HAS_KALLSYMS
-	select HAS_MODULES
-	select HAS_CACHE
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select GENERIC_FIND_NEXT_BIT
-	default y
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x00000000
-
-choice
-	prompt "Select your board"
-
-config GENERIC
-	bool "Generic"
-	select NIOS2
-
-endchoice
-
-menu "Board configuration"
-
-config EARLY_PRINTF
-	default n
-	bool "Enable early printf functions"
-
-endmenu
diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
deleted file mode 100644
index ef283f4143..0000000000
--- a/arch/nios2/Makefile
+++ /dev/null
@@ -1,27 +0,0 @@
-KBUILD_DEFCONFIG := generic_defconfig
-
-KBUILD_CPPFLAGS += -fno-strict-aliasing -mno-hw-mul
-
-board-$(CONFIG_GENERIC) := generic
-
-KALLSYMS += --symbol-prefix=_
-
-archprepare: maketools
-
-	@$(kecho) "  SYMLINK include/nios_sopc.h -> arch/nios2/boards/$(board-y)/nios_sopc.h"
-	@ln -fsn $(src)/arch/nios2/boards/$(board-y)/nios_sopc.h $(obj)/include/nios_sopc.h
-
-PHONY += maketools
-
-ifneq ($(board-y),)
-BOARD  := arch/nios2/boards/$(board-y)/
-else
-BOARD  :=
-endif
-
-common-y += $(BOARD)
-common-y += arch/nios2/lib/
-common-y += arch/nios2/cpu/
-
-lds-y += arch/nios2/cpu/barebox.lds
-
diff --git a/arch/nios2/boards/generic/Makefile b/arch/nios2/boards/generic/Makefile
deleted file mode 100644
index f26283832a..0000000000
--- a/arch/nios2/boards/generic/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-obj-y += generic.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-generic
diff --git a/arch/nios2/boards/generic/config.h b/arch/nios2/boards/generic/config.h
deleted file mode 100644
index 4bca902f75..0000000000
--- a/arch/nios2/boards/generic/config.h
+++ /dev/null
@@ -1,63 +0,0 @@
-#ifndef _GENERIC_NAMES_H_
-#define _GENERIC_NAMES_H_
-
-#include "nios_sopc.h"
-
-#ifndef MMU_PRESENT
-#define IO_REGION_BASE                  0x80000000
-#define KERNEL_REGION_BASE              0x00000000
-#endif
-
-/*Name of the RAM memory in your SOPC project */
-#define NIOS_SOPC_MEMORY_BASE           (KERNEL_REGION_BASE | DDR_SDRAM_BASE)
-#define NIOS_SOPC_MEMORY_SIZE           DDR_SDRAM_SPAN
-
-/*Name of the timer in your SOPC project */
-#define NIOS_SOPC_TIMER_BASE            (IO_REGION_BASE | SYS_CLK_TIMER_BASE)
-#define NIOS_SOPC_TIMER_FREQ            SYS_CLK_TIMER_FREQ
-
-/*Name of TSE and SGDMA in your SOPC project */
-#define NIOS_SOPC_SGDMA_RX_BASE         (IO_REGION_BASE | SGDMA_RX_BASE)
-#define NIOS_SOPC_SGDMA_TX_BASE         (IO_REGION_BASE | SGDMA_TX_BASE)
-#define NIOS_SOPC_TSE_BASE              (IO_REGION_BASE | TSE_BASE)
-#define NIOS_SOPC_TSE_DESC_MEM_BASE     (IO_REGION_BASE | DESCRIPTOR_MEMORY_BASE)
-
-/*Name of the UART in your SOPC project */
-#define NIOS_SOPC_UART_BASE             (IO_REGION_BASE | UART_BASE)
-
-/*Name of the JTAG UART in your SOPC project */
-#define NIOS_SOPC_JTAG_UART_BASE        (IO_REGION_BASE | JTAG_UART_BASE)
-
-/*Name of the CFI flash in your SOPC project */
-#define NIOS_SOPC_FLASH_BASE            (IO_REGION_BASE | CFI_FLASH_BASE)
-#define NIOS_SOPC_FLASH_SIZE            CFI_FLASH_SPAN
-
-/*Name of the EPCS flash controller in your SOPC project */
-
-#define NIOS_SOPC_EPCS_BASE             (IO_REGION_BASE | (EPCS_FLASH_CONTROLLER_BASE + EPCS_FLASH_CONTROLLER_REGISTER_OFFSET))
-
-/* PHY MDIO Address */
-#define NIOS_SOPC_PHY_ADDR              1
-
-/* We reserve 256K for barebox */
-#define BAREBOX_RESERVED_SIZE           0x80000
-
-/* Barebox will be at top of main memory */
-#define NIOS_SOPC_TEXT_BASE             (NIOS_SOPC_MEMORY_BASE + NIOS_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
-
-/*
-* TEXT_BASE is defined here because STACK_BASE definition
-*  in include/asm-generic/memory_layout.h uses this name
-*/
-
-#define TEXT_BASE                       NIOS_SOPC_TEXT_BASE
-
-/* Board banner */
-
-#define BOARD_BANNER "\
-\033[44;1m***********************************************\e[0m\n\
-\033[44;1m*             Altera generic board            *\e[0m\n\
-\033[44;1m***********************************************\e[0m\
-\e[0m\n\n"
-
-#endif
diff --git a/arch/nios2/boards/generic/defaultenv-generic/config b/arch/nios2/boards/generic/defaultenv-generic/config
deleted file mode 100644
index 16adc49f1c..0000000000
--- a/arch/nios2/boards/generic/defaultenv-generic/config
+++ /dev/null
@@ -1,20 +0,0 @@
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
-PS1="\e[1;33mbarebox@\e[1;32mgeneric:\w\e[0m "
-
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
deleted file mode 100644
index 0c2c67c567..0000000000
--- a/arch/nios2/boards/generic/generic.c
+++ /dev/null
@@ -1,77 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <partition.h>
-#include <fs.h>
-#include <memory.h>
-#include <envfs.h>
-
-static int phy_address = 1;
-
-static struct resource mac_resources[] = {
-	[0] = {
-		.start	= NIOS_SOPC_TSE_BASE,
-		.end	= NIOS_SOPC_TSE_BASE + 0x400 - 1,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= NIOS_SOPC_SGDMA_RX_BASE,
-		.end	= 0x40 + NIOS_SOPC_SGDMA_RX_BASE - 1,
-		.flags	= IORESOURCE_MEM,
-	},
-	[2] = {
-		.start	= NIOS_SOPC_SGDMA_TX_BASE,
-		.end	= 0x40 + NIOS_SOPC_SGDMA_TX_BASE - 1,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mac_dev = {
-	.id            = DEVICE_ID_DYNAMIC,
-	.name          = "altera_tse",
-	.num_resources = ARRAY_SIZE(mac_resources),
-	.resource      = mac_resources,
-	.platform_data = &phy_address,
-};
-
-static int mem_init(void)
-{
-	barebox_add_memory_bank("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE);
-
-	return 0;
-}
-mem_initcall(mem_init);
-
-static int generic_devices_init(void)
-{
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
-	platform_device_register(&mac_dev);
-	/*register_device(&epcs_flash_device);*/
-
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-
-	protect_file("/dev/env0", 1);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_generic);
-
-	return 0;
-}
-
-device_initcall(generic_devices_init);
-
-
-static int altera_console_init(void)
-{
-	barebox_set_model("Altera Generic Board");
-	barebox_set_hostname("nios2");
-
-	add_generic_device("altera_serial", DEVICE_ID_DYNAMIC, NULL,
-			NIOS_SOPC_UART_BASE, 0x20, IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-
-console_initcall(altera_console_init);
-
diff --git a/arch/nios2/boards/generic/nios_sopc.h b/arch/nios2/boards/generic/nios_sopc.h
deleted file mode 100644
index 688bc44f41..0000000000
--- a/arch/nios2/boards/generic/nios_sopc.h
+++ /dev/null
@@ -1,406 +0,0 @@
-#ifndef _ALTERA_NIOSLINUX_H_
-#define _ALTERA_NIOSLINUX_H_
-
-/*
- * This file was automatically generated by the swinfo2header utility.
- *
- * Created from SOPC Builder system 'NiosLinux' in
- * file 'NiosLinux.sopcinfo'.
- */
-
-/*
- * This file contains macros for module 'LINUX_CPU' and devices
- * connected to the following masters:
- *   instruction_master
- *   tightly_coupled_instruction_master_0
- *   data_master
- *   tightly_coupled_data_master_0
- *
- * Do not include this header file and another header file created for a
- * different module or master group at the same time.
- * Doing so may result in duplicate macro names.
- * Instead, use the system header file which has macros with unique names.
- */
-
-/*
- * Macros for module 'LINUX_CPU', class 'altera_nios2'.
- * The macros have no prefix.
- */
-#define CPU_IMPLEMENTATION "fast"
-#define BIG_ENDIAN 0
-#define CPU_FREQ 100000000
-#define ICACHE_LINE_SIZE 32
-#define ICACHE_LINE_SIZE_LOG2 5
-#define ICACHE_SIZE 8192
-#define DCACHE_LINE_SIZE 32
-#define DCACHE_LINE_SIZE_LOG2 5
-#define DCACHE_SIZE 8192
-#define INITDA_SUPPORTED
-#define FLUSHDA_SUPPORTED
-#define HAS_JMPI_INSTRUCTION
-#define MMU_PRESENT
-#define KERNEL_REGION_BASE 0xc0000000
-#define IO_REGION_BASE 0xe0000000
-#define KERNEL_MMU_REGION_BASE 0x80000000
-#define USER_REGION_BASE 0x0
-#define PROCESS_ID_NUM_BITS 8
-#define TLB_NUM_WAYS 16
-#define TLB_NUM_WAYS_LOG2 4
-#define TLB_PTR_SZ 8
-#define TLB_NUM_ENTRIES 256
-#define FAST_TLB_MISS_EXCEPTION_ADDR 0xc4201000
-#define EXCEPTION_ADDR 0xc0000020
-#define RESET_ADDR 0xc30e0000
-#define BREAK_ADDR 0xc4203820
-#define HAS_DEBUG_STUB
-#define HAS_DEBUG_CORE 1
-#define HAS_ILLEGAL_INSTRUCTION_EXCEPTION
-#define HAS_ILLEGAL_MEMORY_ACCESS_EXCEPTION
-#define HAS_EXTRA_EXCEPTION_INFO
-#define CPU_ID_SIZE 1
-#define CPU_ID_VALUE 0x0
-#define HARDWARE_DIVIDE_PRESENT 0
-#define HARDWARE_MULTIPLY_PRESENT 1
-#define HARDWARE_MULX_PRESENT 0
-#define INST_ADDR_WIDTH 27
-#define DATA_ADDR_WIDTH 27
-#define NUM_OF_SHADOW_REG_SETS 0
-
-/*
- * Macros for device 'DDR_SDRAM', class 'altmemddr'
- * The macros are prefixed with 'DDR_SDRAM_'.
- * The prefix is the slave descriptor.
- */
-#define DDR_SDRAM_COMPONENT_TYPE altmemddr
-#define DDR_SDRAM_COMPONENT_NAME DDR_SDRAM
-#define DDR_SDRAM_BASE 0x0
-#define DDR_SDRAM_SPAN 33554432
-#define DDR_SDRAM_END 0x1ffffff
-#define DDR_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
-#define DDR_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define DDR_SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-
-/*
- * Macros for device 'CFI_FLASH', class 'altera_avalon_cfi_flash'
- * The macros are prefixed with 'CFI_FLASH_'.
- * The prefix is the slave descriptor.
- */
-#define CFI_FLASH_COMPONENT_TYPE altera_avalon_cfi_flash
-#define CFI_FLASH_COMPONENT_NAME CFI_FLASH
-#define CFI_FLASH_BASE 0x3000000
-#define CFI_FLASH_SPAN 16777216
-#define CFI_FLASH_END 0x3ffffff
-#define CFI_FLASH_SETUP_VALUE 25
-#define CFI_FLASH_WAIT_VALUE 100
-#define CFI_FLASH_HOLD_VALUE 20
-#define CFI_FLASH_TIMING_UNITS "ns"
-#define CFI_FLASH_SIZE 16777216
-#define CFI_FLASH_MEMORY_INFO_MEM_INIT_DATA_WIDTH 16
-#define CFI_FLASH_MEMORY_INFO_HAS_BYTE_LANE 1
-#define CFI_FLASH_MEMORY_INFO_IS_FLASH 1
-#define CFI_FLASH_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define CFI_FLASH_MEMORY_INFO_GENERATE_FLASH 1
-#define CFI_FLASH_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-#define CFI_FLASH_MEMORY_INFO_FLASH_INSTALL_DIR APP_DIR
-
-/*
- * Macros for device 'SSRAM', class 'altera_avalon_cy7c1380_ssram'
- * The macros are prefixed with 'SSRAM_'.
- * The prefix is the slave descriptor.
- */
-#define SSRAM_COMPONENT_TYPE altera_avalon_cy7c1380_ssram
-#define SSRAM_COMPONENT_NAME SSRAM
-#define SSRAM_BASE 0x4100000
-#define SSRAM_SPAN 1048576
-#define SSRAM_END 0x41fffff
-#define SSRAM_SRAM_MEMORY_SIZE 1
-#define SSRAM_SRAM_MEMORY_UNITS 1048576
-#define SSRAM_SSRAM_DATA_WIDTH 32
-#define SSRAM_SSRAM_READ_LATENCY 2
-#define SSRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
-#define SSRAM_MEMORY_INFO_HAS_BYTE_LANE 1
-#define SSRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define SSRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-
-/*
- * Macros for device 'TLB', class 'altera_avalon_onchip_memory2'
- * The macros are prefixed with 'TLB_'.
- * The prefix is the slave descriptor.
- */
-#define TLB_COMPONENT_TYPE altera_avalon_onchip_memory2
-#define TLB_COMPONENT_NAME TLB
-#define TLB_BASE 0x4201000
-#define TLB_SPAN 4096
-#define TLB_END 0x4201fff
-#define TLB_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
-#define TLB_INIT_CONTENTS_FILE "TLB"
-#define TLB_NON_DEFAULT_INIT_FILE_ENABLED 0
-#define TLB_GUI_RAM_BLOCK_TYPE "Automatic"
-#define TLB_WRITABLE 1
-#define TLB_DUAL_PORT 1
-#define TLB_SIZE_VALUE 4096
-#define TLB_SIZE_MULTIPLE 1
-#define TLB_CONTENTS_INFO ""
-#define TLB_RAM_BLOCK_TYPE "Auto"
-#define TLB_INIT_MEM_CONTENT 1
-#define TLB_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
-#define TLB_INSTANCE_ID "NONE"
-#define TLB_READ_DURING_WRITE_MODE "DONT_CARE"
-#define TLB_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
-#define TLB_MEMORY_INFO_HAS_BYTE_LANE 0
-#define TLB_MEMORY_INFO_GENERATE_HEX 1
-#define TLB_MEMORY_INFO_HEX_INSTALL_DIR QPF_DIR
-#define TLB_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define TLB_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-
-/*
- * Macros for device 'DESCRIPTOR_MEMORY', class 'altera_avalon_onchip_memory2'
- * The macros are prefixed with 'DESCRIPTOR_MEMORY_'.
- * The prefix is the slave descriptor.
- */
-#define DESCRIPTOR_MEMORY_COMPONENT_TYPE altera_avalon_onchip_memory2
-#define DESCRIPTOR_MEMORY_COMPONENT_NAME DESCRIPTOR_MEMORY
-#define DESCRIPTOR_MEMORY_BASE 0x4202000
-#define DESCRIPTOR_MEMORY_SPAN 4096
-#define DESCRIPTOR_MEMORY_END 0x4202fff
-#define DESCRIPTOR_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
-#define DESCRIPTOR_MEMORY_INIT_CONTENTS_FILE "DESCRIPTOR_MEMORY"
-#define DESCRIPTOR_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
-#define DESCRIPTOR_MEMORY_GUI_RAM_BLOCK_TYPE "Automatic"
-#define DESCRIPTOR_MEMORY_WRITABLE 1
-#define DESCRIPTOR_MEMORY_DUAL_PORT 0
-#define DESCRIPTOR_MEMORY_SIZE_VALUE 4096
-#define DESCRIPTOR_MEMORY_SIZE_MULTIPLE 1
-#define DESCRIPTOR_MEMORY_CONTENTS_INFO ""
-#define DESCRIPTOR_MEMORY_RAM_BLOCK_TYPE "Auto"
-#define DESCRIPTOR_MEMORY_INIT_MEM_CONTENT 1
-#define DESCRIPTOR_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
-#define DESCRIPTOR_MEMORY_INSTANCE_ID "NONE"
-#define DESCRIPTOR_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
-#define DESCRIPTOR_MEMORY_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
-#define DESCRIPTOR_MEMORY_MEMORY_INFO_HAS_BYTE_LANE 0
-#define DESCRIPTOR_MEMORY_MEMORY_INFO_GENERATE_HEX 1
-#define DESCRIPTOR_MEMORY_MEMORY_INFO_HEX_INSTALL_DIR QPF_DIR
-#define DESCRIPTOR_MEMORY_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define DESCRIPTOR_MEMORY_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-
-/*
- * Macros for device 'TSE', class 'triple_speed_ethernet'
- * The macros are prefixed with 'TSE_'.
- * The prefix is the slave descriptor.
- */
-#define TSE_COMPONENT_TYPE triple_speed_ethernet
-#define TSE_COMPONENT_NAME TSE
-#define TSE_BASE 0x4204000
-#define TSE_SPAN 1024
-#define TSE_END 0x42043ff
-#define TSE_TRANSMIT "SGDMA_TX"
-#define TSE_RECEIVE "SGDMA_RX"
-#define TSE_TRANSMIT_FIFO_DEPTH 2048
-#define TSE_RECEIVE_FIFO_DEPTH 2048
-#define TSE_FIFO_WIDTH 32
-#define TSE_ENABLE_MACLITE 1
-#define TSE_MACLITE_GIGE 0
-#define TSE_USE_MDIO 1
-#define TSE_NUMBER_OF_CHANNEL 1
-#define TSE_NUMBER_OF_MAC_MDIO_SHARED 1
-#define TSE_IS_MULTICHANNEL_MAC 0
-#define TSE_MDIO_SHARED 0
-#define TSE_REGISTER_SHARED 0
-#define TSE_PCS 0
-#define TSE_PCS_SGMII 0
-#define TSE_PCS_ID 0
-
-/*
- * Macros for device 'SGDMA_TX', class 'altera_avalon_sgdma'
- * The macros are prefixed with 'SGDMA_TX_'.
- * The prefix is the slave descriptor.
- */
-#define SGDMA_TX_COMPONENT_TYPE altera_avalon_sgdma
-#define SGDMA_TX_COMPONENT_NAME SGDMA_TX
-#define SGDMA_TX_BASE 0x4204400
-#define SGDMA_TX_SPAN 64
-#define SGDMA_TX_END 0x420443f
-#define SGDMA_TX_IRQ 5
-#define SGDMA_TX_READ_BLOCK_DATA_WIDTH 32
-#define SGDMA_TX_WRITE_BLOCK_DATA_WIDTH 32
-#define SGDMA_TX_STREAM_DATA_WIDTH 32
-#define SGDMA_TX_ADDRESS_WIDTH 32
-#define SGDMA_TX_HAS_READ_BLOCK 1
-#define SGDMA_TX_HAS_WRITE_BLOCK 0
-#define SGDMA_TX_READ_BURSTCOUNT_WIDTH 4
-#define SGDMA_TX_WRITE_BURSTCOUNT_WIDTH 4
-#define SGDMA_TX_BURST_TRANSFER 0
-#define SGDMA_TX_ALWAYS_DO_MAX_BURST 1
-#define SGDMA_TX_DESCRIPTOR_READ_BURST 0
-#define SGDMA_TX_UNALIGNED_TRANSFER 0
-#define SGDMA_TX_CONTROL_SLAVE_DATA_WIDTH 32
-#define SGDMA_TX_CONTROL_SLAVE_ADDRESS_WIDTH 4
-#define SGDMA_TX_DESC_DATA_WIDTH 32
-#define SGDMA_TX_CHAIN_WRITEBACK_DATA_WIDTH 32
-#define SGDMA_TX_STATUS_TOKEN_DATA_WIDTH 24
-#define SGDMA_TX_BYTES_TO_TRANSFER_DATA_WIDTH 16
-#define SGDMA_TX_BURST_DATA_WIDTH 8
-#define SGDMA_TX_CONTROL_DATA_WIDTH 8
-#define SGDMA_TX_ATLANTIC_CHANNEL_DATA_WIDTH 4
-#define SGDMA_TX_COMMAND_FIFO_DATA_WIDTH 104
-#define SGDMA_TX_SYMBOLS_PER_BEAT 4
-#define SGDMA_TX_IN_ERROR_WIDTH 0
-#define SGDMA_TX_OUT_ERROR_WIDTH 1
-
-/*
- * Macros for device 'DDR_SDRAM', class 'altmemddr'
- * Path to the device is from the master group 'SGDMA_TX_m_read'.
- * The macros are prefixed with 'SGDMA_TX_M_READ_DDR_SDRAM_'.
- * The prefix is the master group descriptor and the slave descriptor.
- */
-#define SGDMA_TX_M_READ_DDR_SDRAM_COMPONENT_TYPE altmemddr
-#define SGDMA_TX_M_READ_DDR_SDRAM_COMPONENT_NAME DDR_SDRAM
-#define SGDMA_TX_M_READ_DDR_SDRAM_BASE 0x0
-#define SGDMA_TX_M_READ_DDR_SDRAM_SPAN 33554432
-#define SGDMA_TX_M_READ_DDR_SDRAM_END 0x1ffffff
-#define SGDMA_TX_M_READ_DDR_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
-#define SGDMA_TX_M_READ_DDR_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define SGDMA_TX_M_READ_DDR_SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-
-/*
- * Macros for device 'SGDMA_RX', class 'altera_avalon_sgdma'
- * The macros are prefixed with 'SGDMA_RX_'.
- * The prefix is the slave descriptor.
- */
-#define SGDMA_RX_COMPONENT_TYPE altera_avalon_sgdma
-#define SGDMA_RX_COMPONENT_NAME SGDMA_RX
-#define SGDMA_RX_BASE 0x4204440
-#define SGDMA_RX_SPAN 64
-#define SGDMA_RX_END 0x420447f
-#define SGDMA_RX_IRQ 3
-#define SGDMA_RX_READ_BLOCK_DATA_WIDTH 32
-#define SGDMA_RX_WRITE_BLOCK_DATA_WIDTH 32
-#define SGDMA_RX_STREAM_DATA_WIDTH 32
-#define SGDMA_RX_ADDRESS_WIDTH 32
-#define SGDMA_RX_HAS_READ_BLOCK 0
-#define SGDMA_RX_HAS_WRITE_BLOCK 1
-#define SGDMA_RX_READ_BURSTCOUNT_WIDTH 4
-#define SGDMA_RX_WRITE_BURSTCOUNT_WIDTH 4
-#define SGDMA_RX_BURST_TRANSFER 0
-#define SGDMA_RX_ALWAYS_DO_MAX_BURST 1
-#define SGDMA_RX_DESCRIPTOR_READ_BURST 0
-#define SGDMA_RX_UNALIGNED_TRANSFER 0
-#define SGDMA_RX_CONTROL_SLAVE_DATA_WIDTH 32
-#define SGDMA_RX_CONTROL_SLAVE_ADDRESS_WIDTH 4
-#define SGDMA_RX_DESC_DATA_WIDTH 32
-#define SGDMA_RX_CHAIN_WRITEBACK_DATA_WIDTH 32
-#define SGDMA_RX_STATUS_TOKEN_DATA_WIDTH 24
-#define SGDMA_RX_BYTES_TO_TRANSFER_DATA_WIDTH 16
-#define SGDMA_RX_BURST_DATA_WIDTH 8
-#define SGDMA_RX_CONTROL_DATA_WIDTH 8
-#define SGDMA_RX_ATLANTIC_CHANNEL_DATA_WIDTH 4
-#define SGDMA_RX_COMMAND_FIFO_DATA_WIDTH 104
-#define SGDMA_RX_SYMBOLS_PER_BEAT 4
-#define SGDMA_RX_IN_ERROR_WIDTH 6
-#define SGDMA_RX_OUT_ERROR_WIDTH 0
-
-/*
- * Macros for device 'DDR_SDRAM', class 'altmemddr'
- * Path to the device is from the master group 'SGDMA_RX_m_write'.
- * The macros are prefixed with 'SGDMA_RX_M_WRITE_DDR_SDRAM_'.
- * The prefix is the master group descriptor and the slave descriptor.
- */
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_COMPONENT_TYPE altmemddr
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_COMPONENT_NAME DDR_SDRAM
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_BASE 0x0
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_SPAN 33554432
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_END 0x1ffffff
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
-#define SGDMA_RX_M_WRITE_DDR_SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
-
-/*
- * Macros for device 'UART', class 'altera_avalon_uart'
- * The macros are prefixed with 'UART_'.
- * The prefix is the slave descriptor.
- */
-#define UART_COMPONENT_TYPE altera_avalon_uart
-#define UART_COMPONENT_NAME UART
-#define UART_BASE 0x4204480
-#define UART_SPAN 32
-#define UART_END 0x420449f
-#define UART_IRQ 1
-#define UART_BAUD 9600
-#define UART_DATA_BITS 8
-#define UART_FIXED_BAUD 0
-#define UART_PARITY 'N'
-#define UART_STOP_BITS 1
-#define UART_SYNC_REG_DEPTH 2
-#define UART_USE_CTS_RTS 0
-#define UART_USE_EOP_REGISTER 0
-#define UART_SIM_TRUE_BAUD 0
-#define UART_SIM_CHAR_STREAM ""
-#define UART_FREQ 100000000
-
-/*
- * Macros for device 'SYS_CLK_TIMER', class 'altera_avalon_timer'
- * The macros are prefixed with 'SYS_CLK_TIMER_'.
- * The prefix is the slave descriptor.
- */
-#define SYS_CLK_TIMER_COMPONENT_TYPE altera_avalon_timer
-#define SYS_CLK_TIMER_COMPONENT_NAME SYS_CLK_TIMER
-#define SYS_CLK_TIMER_BASE 0x42044a0
-#define SYS_CLK_TIMER_SPAN 32
-#define SYS_CLK_TIMER_END 0x42044bf
-#define SYS_CLK_TIMER_IRQ 2
-#define SYS_CLK_TIMER_ALWAYS_RUN 0
-#define SYS_CLK_TIMER_FIXED_PERIOD 0
-#define SYS_CLK_TIMER_SNAPSHOT 1
-#define SYS_CLK_TIMER_PERIOD 1
-#define SYS_CLK_TIMER_PERIOD_UNITS "ms"
-#define SYS_CLK_TIMER_RESET_OUTPUT 0
-#define SYS_CLK_TIMER_TIMEOUT_PULSE_OUTPUT 0
-#define SYS_CLK_TIMER_FREQ 100000000
-#define SYS_CLK_TIMER_LOAD_VALUE 99999ULL
-#define SYS_CLK_TIMER_COUNTER_SIZE 32
-#define SYS_CLK_TIMER_MULT 0.0010
-#define SYS_CLK_TIMER_TICKS_PER_SEC 1000
-
-/*
- * Macros for device 'LED_STATUS', class 'altera_avalon_pio'
- * The macros are prefixed with 'LED_STATUS_'.
- * The prefix is the slave descriptor.
- */
-#define LED_STATUS_COMPONENT_TYPE altera_avalon_pio
-#define LED_STATUS_COMPONENT_NAME LED_STATUS
-#define LED_STATUS_BASE 0x42044c0
-#define LED_STATUS_SPAN 16
-#define LED_STATUS_END 0x42044cf
-#define LED_STATUS_DO_TEST_BENCH_WIRING 0
-#define LED_STATUS_DRIVEN_SIM_VALUE 0x0
-#define LED_STATUS_HAS_TRI 0
-#define LED_STATUS_HAS_OUT 1
-#define LED_STATUS_HAS_IN 0
-#define LED_STATUS_CAPTURE 0
-#define LED_STATUS_BIT_CLEARING_EDGE_REGISTER 0
-#define LED_STATUS_BIT_MODIFYING_OUTPUT_REGISTER 0
-#define LED_STATUS_DATA_WIDTH 2
-#define LED_STATUS_RESET_VALUE 0x3
-#define LED_STATUS_EDGE_TYPE "NONE"
-#define LED_STATUS_IRQ_TYPE "NONE"
-#define LED_STATUS_FREQ 100000000
-
-/*
- * Macros for device 'JTAG_UART', class 'altera_avalon_jtag_uart'
- * The macros are prefixed with 'JTAG_UART_'.
- * The prefix is the slave descriptor.
- */
-#define JTAG_UART_COMPONENT_TYPE altera_avalon_jtag_uart
-#define JTAG_UART_COMPONENT_NAME JTAG_UART
-#define JTAG_UART_BASE 0x42044d0
-#define JTAG_UART_SPAN 8
-#define JTAG_UART_END 0x42044d7
-#define JTAG_UART_IRQ 4
-#define JTAG_UART_WRITE_DEPTH 64
-#define JTAG_UART_READ_DEPTH 64
-#define JTAG_UART_WRITE_THRESHOLD 8
-#define JTAG_UART_READ_THRESHOLD 8
-
-
-#endif /* _ALTERA_NIOSLINUX_H_ */
diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
deleted file mode 100644
index 44c040a61a..0000000000
--- a/arch/nios2/configs/generic_defconfig
+++ /dev/null
@@ -1,32 +0,0 @@
-CONFIG_EARLY_PRINTF=y
-CONFIG_BAUDRATE=9600
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_NET=y
-CONFIG_DRIVER_NET_TSE=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_FS_TFTP=y
-CONFIG_ZLIB=y
diff --git a/arch/nios2/cpu/.gitignore b/arch/nios2/cpu/.gitignore
deleted file mode 100644
index d1165788c9..0000000000
--- a/arch/nios2/cpu/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-barebox.lds
diff --git a/arch/nios2/cpu/Makefile b/arch/nios2/cpu/Makefile
deleted file mode 100644
index 0b59ec57c1..0000000000
--- a/arch/nios2/cpu/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-obj-y                 += start.o
-obj-y                 += exceptions.o
-obj-y                 += cpu.o
-obj-y                 += traps.o
-extra-y               += barebox.lds
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
deleted file mode 100644
index 8d82aa59e7..0000000000
--- a/arch/nios2/cpu/barebox.lds.S
+++ /dev/null
@@ -1,114 +0,0 @@
-/*
- * barebox - barebox.lds.S
- *
- * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
- *
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
- *
- * Copyright (c) 2005-2007 Analog Device Inc.
- *
- * (C) Copyright 2000-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
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
-OUTPUT_FORMAT("elf32-littlenios2")
-OUTPUT_ARCH("nios2")
-
-SECTIONS
-{
-	. = NIOS_SOPC_TEXT_BASE;
-
-	. = ALIGN(4);
-	.text      :
-	{
-		_stext = .;
-		__text = .;
-		_text = .;
-		__bare_init_start = .;
-		*(.text_entry)
-		__bare_init_end = .;
-		*(.text)
-	}
-	BAREBOX_BARE_INIT_SIZE
-
-	. = ALIGN(4);
-
-	.rodata : {
-		*(.rodata*)
-		RO_DATA_SECTION
-	}
-
-	_etext = .; /* End of text and rodata section */
-
-	/* INIT DATA sections - "Small" data (see the gcc -G option)
-	 * is always gp-relative. Here we make all init data sections
-	 * adjacent to simplify the startup code -- and provide
-	 * the global pointer for gp-relative access.
-	 */
-	_sdata = .;
-	_data = .;
-	.data :
-	{
-	  *(.data)
-	  *(.data.*)
-	  *(.gnu.linkonce.d*)
-	}
-
-	. = ALIGN(16);
-	_gp = .;            /* Global pointer addr */
-	PROVIDE (gp = .);
-
-	.sdata :
-	{
-	  *(.sdata)
-	  *(.sdata.*)
-	  *(.gnu.linkonce.s.*)
-	}
-	. = ALIGN(4);
-
-	_edata = .;
-	PROVIDE (edata = .);
-
-	/* UNINIT DATA - Small uninitialized data is first so it's
-	 * adjacent to sdata and can be referenced via gp. The normal
-	 * bss follows. We keep it adjacent to simplify init code.
-	 */
-	__bss_start = .;
-	.sbss (NOLOAD) :
-	{
-	  *(.sbss)
-	  *(.sbss.*)
-	  *(.gnu.linkonce.sb.*)
-	  *(.scommon)
-	}
-	. = ALIGN(4);
-	.bss (NOLOAD) :
-	{
-	  *(.bss)
-	  *(.bss.*)
-	  *(.dynbss)
-	  *(COMMON)
-	  *(.scommon)
-	}
-	__bss_stop = .;
-
-	. = ALIGN(4);
-	_end = .;
-	PROVIDE (end = .);
-}
diff --git a/arch/nios2/cpu/cpu.c b/arch/nios2/cpu/cpu.c
deleted file mode 100644
index 9f86c911cc..0000000000
--- a/arch/nios2/cpu/cpu.c
+++ /dev/null
@@ -1,36 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-
-static void __noreturn nios2_restart_soc(struct restart_handler *rst)
-{
-	/* indirect call to go beyond 256MB limitation of toolchain */
-	nios2_callr(RESET_ADDR);
-
-	/* Not reached */
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	return restart_handler_register_fn("vector", nios2_restart_soc);
-}
-coredevice_initcall(restart_register_feature);
-
diff --git a/arch/nios2/cpu/exceptions.S b/arch/nios2/cpu/exceptions.S
deleted file mode 100644
index 8806f5cebf..0000000000
--- a/arch/nios2/cpu/exceptions.S
+++ /dev/null
@@ -1,144 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#include <config.h>
-#include <asm/opcodes.h>
-
-
-	.text
-	.align 4
-
-	.global _exception
-
-	.set noat
-	.set nobreak
-
-_exception:
-	/* SAVE ALL REGS -- this allows trap and unimplemented
-	 * instruction handlers to be coded conveniently in C
-	 */
-	addi    sp, sp, -(33*4)
-	stw     r0, 0(sp)
-	stw     r1, 4(sp)
-	stw     r2, 8(sp)
-	stw     r3, 12(sp)
-	stw     r4, 16(sp)
-	stw     r5, 20(sp)
-	stw     r6, 24(sp)
-	stw     r7, 28(sp)
-	stw     r8, 32(sp)
-	stw     r9, 36(sp)
-	stw     r10, 40(sp)
-	stw     r11, 44(sp)
-	stw     r12, 48(sp)
-	stw     r13, 52(sp)
-	stw     r14, 56(sp)
-	stw     r15, 60(sp)
-	stw     r16, 64(sp)
-	stw     r17, 68(sp)
-	stw     r19, 72(sp)
-	stw     r19, 76(sp)
-	stw     r20, 80(sp)
-	stw     r21, 84(sp)
-	stw     r22, 88(sp)
-	stw     r23, 92(sp)
-	stw     r24, 96(sp)
-	stw     r25, 100(sp)
-	stw     r26, 104(sp)
-	stw     r27, 108(sp)
-	stw     r28, 112(sp)
-	stw     r29, 116(sp)
-	stw     r30, 120(sp)
-	stw     r31, 124(sp)
-	rdctl   et, estatus
-	stw     et, 128(sp)
-
-	/* If interrupts are disabled -- software interrupt */
-	rdctl   et, estatus
-	andi    et, et, 1
-	beq     et, r0, 0f
-
-	/* If no interrupts are pending -- software interrupt */
-	rdctl   et, ipending
-	beq     et, r0, 0f
-
-        br      _exception_return
-
-	/* Return address fixup: execution resumes by re-issue of
-	 * interrupted instruction at ea-4 (ea == r29). Here we do
-	 * simple fixup to allow common exception return.
-	 */
-	ldw     r3, 116(sp)
-	addi    r3, r3, -4
-	stw     r3, 116(sp)
-	br      _exception_return
-
-0:
-	/* TRAP EXCEPTION */
-	movhi   r3, %hi(OPC_TRAP)
-	ori     r3, r3, %lo(OPC_TRAP)
-	addi    r1, ea, -4
-	ldw     r1, 0(r1)
-	bne     r1, r3, 1f
-	movhi   r3, %hi(trap_handler)
-	ori     r3, r3, %lo(trap_handler)
-	mov     r4, sp  /* ptr to regs */
-	callr   r3
-	br      _exception_return
-
-1:
-	/* UNIMPLEMENTED INSTRUCTION EXCEPTION */
-	movhi   r3, %hi(soft_emulation)
-	ori     r3, r3, %lo(soft_emulation)
-	mov     r4, sp  /* ptr to regs */
-	callr   r3
-
-	/* Restore registers and return from exception */
-_exception_return:
-	ldw     r1, 4(sp)
-	ldw     r2, 8(sp)
-	ldw     r3, 12(sp)
-	ldw     r4, 16(sp)
-	ldw     r5, 20(sp)
-	ldw     r6, 24(sp)
-	ldw     r7, 28(sp)
-	ldw     r8, 32(sp)
-	ldw     r9, 36(sp)
-	ldw     r10, 40(sp)
-	ldw     r11, 44(sp)
-	ldw     r12, 48(sp)
-	ldw     r13, 52(sp)
-	ldw     r14, 56(sp)
-	ldw     r15, 60(sp)
-	ldw     r16, 64(sp)
-	ldw     r17, 68(sp)
-	ldw     r19, 72(sp)
-	ldw     r19, 76(sp)
-	ldw     r20, 80(sp)
-	ldw     r21, 84(sp)
-	ldw     r22, 88(sp)
-	ldw     r23, 92(sp)
-	ldw     r24, 96(sp)
-	ldw     r25, 100(sp)
-	ldw     r26, 104(sp)
-	ldw     r27, 108(sp)
-	ldw     r28, 112(sp)
-	ldw     r29, 116(sp)
-	ldw     r30, 120(sp)
-	ldw     r31, 124(sp)
-	addi    sp, sp, (33*4)
-	eret
-/*-------------------------------------------------------------*/
diff --git a/arch/nios2/cpu/start.S b/arch/nios2/cpu/start.S
deleted file mode 100644
index d770b0014d..0000000000
--- a/arch/nios2/cpu/start.S
+++ /dev/null
@@ -1,158 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-
-/*************************************************************************
- * RESTART
- ************************************************************************/
-
-.section ".text_entry","ax"
-
-_start:
-	wrctl   status, r0      /* Disable interrupts */
-	/* ICACHE INIT -- only the icache line at the reset address
-	 * is invalidated at reset. So the init must stay within
-	 * the cache line size (8 words). If GERMS is used, we'll
-	 * just be invalidating the cache a second time. If cache
-	 * is not implemented initi behaves as nop.
-	 */
-	ori     r4, r0, %lo(ICACHE_LINE_SIZE)
-	movhi   r5, %hi(ICACHE_SIZE)
-	ori     r5, r5, %lo(ICACHE_SIZE)
-0:	initi   r5
-	sub     r5, r5, r4
-	bgt     r5, r0, 0b
-	br      _except_end   /* Skip the tramp */
-
-	/* EXCEPTION TRAMPOLINE -- the following gets copied
-	 * to the exception address (below), but is otherwise at the
-	 * default exception vector offset (0x0020).
-	 */
-_except_start:
-	movhi   et, %hi(_exception)
-	ori     et, et, %lo(_exception)
-	jmp     et
-_except_end:
-
-	/* INTERRUPTS -- for now, all interrupts masked and globally
-	 * disabled.
-	 */
-	wrctl   ienable, r0  /* All disabled */
-
-	/* DCACHE INIT -- if dcache not implemented, initd behaves as
-	 * nop.
-	 */
-	movhi   r4, %hi(DCACHE_LINE_SIZE)
-	ori     r4, r4, %lo(DCACHE_LINE_SIZE)
-	movhi   r5, %hi(DCACHE_SIZE)
-	ori     r5, r5, %lo(DCACHE_SIZE)
-	mov     r6, r0
-1:	initd   0(r6)
-	add     r6, r6, r4
-	bltu    r6, r5, 1b
-
-	/* RELOCATE CODE, DATA & COMMAND TABLE -- the following code
-	 * assumes code, data and the command table are all
-	 * contiguous. This lets us relocate everything as a single
-	 * block. Make sure the linker script matches this ;-)
-	 */
-	nextpc  r4
-_cur:	movhi   r5, %hi(_cur - _start)
-	ori     r5, r5, %lo(_cur - _start)
-	sub     r4, r4, r5                 /* r4 <- cur _start */
-	mov     r8, r4
-	movhi   r5, %hi(_start)
-	ori     r5, r5, %lo(_start)        /* r5 <- linked _start */
-	beq     r4, r5, 3f
-
-	movhi   r6, %hi(_edata)
-	ori     r6, r6, %lo(_edata)
-2:	ldwio   r7, 0(r4)
-	addi    r4, r4, 4
-	stwio   r7, 0(r5)
-	addi    r5, r5, 4
-	bne     r5, r6, 2b
-3:
-
-	/* ZERO BSS/SBSS -- bss and sbss are assumed to be adjacent
-	 * and between __bss_start and _end.
-	 */
-	 movhi  r5, %hi(__bss_start)
-	 ori    r5, r5, %lo(__bss_start)
-	 movhi  r6, %hi(_end)
-	 ori    r6, r6, %lo(_end)
-	 beq    r5, r6, 5f
-
-4:	stwio   r0, 0(r5)
-	 addi   r5, r5, 4
-	 bne    r5, r6, 4b
-5:
-
-	/* JUMP TO RELOC ADDR */
-	movhi   r4, %hi(_reloc)
-	ori     r4, r4, %lo(_reloc)
-	jmp     r4
-_reloc:
-
-	/* COPY EXCEPTION TRAMPOLINE -- copy the tramp to the
-	 * exception address. Define CONFIG_ROM_STUBS to prevent
-	 * the copy (e.g. exception in flash or in other
-	 * softare/firmware component).
-	 */
-#if !defined(CONFIG_ROM_STUBS)
-	movhi   r4, %hi(_except_start)
-	ori     r4, r4, %lo(_except_start)
-	movhi   r5, %hi(_except_end)
-	ori     r5, r5, %lo(_except_end)
-	movhi   r6, %hi(EXCEPTION_ADDR)
-	ori     r6, r6, %lo(EXCEPTION_ADDR)
-	beq     r4, r6, 7f                  /* Skip if at proper addr */
-
-6:	ldwio   r7, 0(r4)
-	stwio   r7, 0(r6)
-	addi    r4, r4, 4
-	addi    r6, r6, 4
-	bne     r4, r5, 6b
-7:
-#endif
-
-	/* STACK INIT -- zero top two words for call back chain.
-	 */
-	movhi   sp, %hi(STACK_BASE)
-	ori     sp, sp, %lo(STACK_BASE)
-	addi    sp, sp, -8
-	stw     r0, 0(sp)
-	stw     r0, 4(sp)
-	mov     fp, sp
-
-        /* Set the global pointer */
-	movhi   r26, %hi(_gp)
-	ori     r26, r26, %lo(_gp)
-
-	/*
-	 * Call board_init -- never returns
-	 */
-	movhi   r4, %hi(nios_start_barebox@h)
-	ori     r4, r4, %lo(nios_start_barebox@h)
-	callr   r4
-
-	/* NEVER RETURNS -- but branch to the _start just
-	 * in case ;-)
-	 */
-	br      _start
-
diff --git a/arch/nios2/cpu/traps.c b/arch/nios2/cpu/traps.c
deleted file mode 100644
index 484d007090..0000000000
--- a/arch/nios2/cpu/traps.c
+++ /dev/null
@@ -1,36 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#include <asm/ptrace.h>
-#include <common.h>
-
-void trap_handler (struct pt_regs *regs)
-{
-	/* Just issue warning */
-	printf("\n\n*** WARNING: unimplemented trap @ %08x\n\n",
-			regs->reg[29] - 4);
-}
-
-void soft_emulation(struct pt_regs *regs)
-{
-	/* TODO: Software emulation of mul/div etc. Until this is
-	 * implemented, generate warning and hang.
-	 */
-	printf("\n\n*** ERROR: unimplemented instruction @ %08x\n",
-			regs->reg[29] - 4);
-
-	hang();
-}
diff --git a/arch/nios2/include/asm/bitops.h b/arch/nios2/include/asm/bitops.h
deleted file mode 100644
index e77ab83202..0000000000
--- a/arch/nios2/include/asm/bitops.h
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
diff --git a/arch/nios2/include/asm/bitsperlong.h b/arch/nios2/include/asm/bitsperlong.h
deleted file mode 100644
index 6dc0bb0c13..0000000000
--- a/arch/nios2/include/asm/bitsperlong.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/bitsperlong.h>
diff --git a/arch/nios2/include/asm/byteorder.h b/arch/nios2/include/asm/byteorder.h
deleted file mode 100644
index 9558416d57..0000000000
--- a/arch/nios2/include/asm/byteorder.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <linux/byteorder/little_endian.h>
diff --git a/arch/nios2/include/asm/cache.h b/arch/nios2/include/asm/cache.h
deleted file mode 100644
index d9de8f999a..0000000000
--- a/arch/nios2/include/asm/cache.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/*
- * Copyright (C) 2003 Microtronix Datacom Ltd.
- * Copyright (C) 2000-2002 Greg Ungerer <gerg@snapgear.com>
- *
- * Ported from m68knommu.
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License. See the file "COPYING" in the main directory of this archive
- * for more details.
- */
-
-#ifndef _ASM_NIOS2_CACHEFLUSH_H
-#define _ASM_NIOS2_CACHEFLUSH_H
-
-void flush_cache_all(void);
-void flush_dcache_all(void);
-void flush_icache_all(void);
-void flush_icache_range(unsigned long start, unsigned long end);
-void flush_dcache_range(unsigned long start, unsigned long end);
-
-#endif /* _ASM_NIOS2_CACHEFLUSH_H */
diff --git a/arch/nios2/include/asm/common.h b/arch/nios2/include/asm/common.h
deleted file mode 100644
index 027dca2d56..0000000000
--- a/arch/nios2/include/asm/common.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _ASM_COMMON_H
-#define __ASM_COMMON_H
-
-#endif /* _ASM_COMMON_H */
diff --git a/arch/nios2/include/asm/dma-mapping.h b/arch/nios2/include/asm/dma-mapping.h
deleted file mode 100644
index 5ecc1ed21e..0000000000
--- a/arch/nios2/include/asm/dma-mapping.h
+++ /dev/null
@@ -1,48 +0,0 @@
-#ifndef __ASM_NIOS2_DMA_MAPPING_H
-#define __ASM_NIOS2_DMA_MAPPING_H
-
-#include <common.h>
-#include <xfuncs.h>
-
-#include <asm/cache.h>
-
-/* dma_alloc_coherent() return cache-line aligned allocation which is mapped
- * to uncached io region.
- *
- * IO_REGION_BASE should be defined in board config header file
- *   0x80000000 for nommu, 0xe0000000 for mmu
- */
-
-#if (DCACHE_SIZE != 0)
-static inline void *dma_alloc_coherent(size_t len, dma_addr_t *handle)
-{
-	void *addr = malloc(len + DCACHE_LINE_SIZE);
-	if (!addr)
-		return 0;
-	flush_dcache_range((unsigned long)addr,(unsigned long)addr + len + DCACHE_LINE_SIZE);
-	if (handle)
-		*handle = ((dma_addr_t)addr + (DCACHE_LINE_SIZE - 1)) &
-			  ~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
-	return (void *)(*handle | IO_REGION_BASE);
-}
-#else
-static inline void *dma_alloc_coherent(size_t len, dma_addr_t *handle)
-{
-	void *addr = malloc(len);
-	if (!addr)
-		return 0;
-	if (handle)
-		*handle = (dma_addr_t)addr;
-	return (void *)(*handle | IO_REGION_BASE);
-}
-#endif
-
-#if (DCACHE_SIZE != 0)
-#define dma_alloc dma_alloc
-static inline void *dma_alloc(size_t size)
-{
-	return xmemalign(DCACHE_LINE_SIZE, ALIGN(size, DCACHE_LINE_SIZE));
-}
-#endif
-
-#endif /* __ASM_NIOS2_DMA_MAPPING_H */
diff --git a/arch/nios2/include/asm/dma.h b/arch/nios2/include/asm/dma.h
deleted file mode 100644
index 8f709d2dbf..0000000000
--- a/arch/nios2/include/asm/dma.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/*
- * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
- */
-
-#include <asm/dma-mapping.h>
diff --git a/arch/nios2/include/asm/early_printf.h b/arch/nios2/include/asm/early_printf.h
deleted file mode 100644
index e483e345fe..0000000000
--- a/arch/nios2/include/asm/early_printf.h
+++ /dev/null
@@ -1,10 +0,0 @@
-#ifndef _EARLY_PRINTF_
-#define _EARLY_PRINTF_
-
-#include <asm/nios2-io.h>
-
-void early_putc(char ch);
-void early_puts(const char *s);
-int early_printf(const char *fmt, ...);
-
-#endif  /* _EARLY_PRINTF_ */
diff --git a/arch/nios2/include/asm/elf.h b/arch/nios2/include/asm/elf.h
deleted file mode 100644
index 6060e1ee6e..0000000000
--- a/arch/nios2/include/asm/elf.h
+++ /dev/null
@@ -1,165 +0,0 @@
-/*
- * Copyright (C) 2011 Tobias Klauser <tklauser@distanz.ch>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License. See the file COPYING in the main directory of this archive
- * for more details.
- */
-
-#ifndef _ASM_NIOS2_ELF_H
-#define _ASM_NIOS2_ELF_H
-
-/* Relocation types */
-#define R_NIOS2_NONE		0
-#define R_NIOS2_S16		1
-#define R_NIOS2_U16		2
-#define R_NIOS2_PCREL16		3
-#define R_NIOS2_CALL26		4
-#define R_NIOS2_IMM5		5
-#define R_NIOS2_CACHE_OPX	6
-#define R_NIOS2_IMM6		7
-#define R_NIOS2_IMM8		8
-#define R_NIOS2_HI16		9
-#define R_NIOS2_LO16		10
-#define R_NIOS2_HIADJ16		11
-#define R_NIOS2_BFD_RELOC_32	12
-#define R_NIOS2_BFD_RELOC_16	13
-#define R_NIOS2_BFD_RELOC_8	14
-#define R_NIOS2_GPREL		15
-#define R_NIOS2_GNU_VTINHERIT	16
-#define R_NIOS2_GNU_VTENTRY	17
-#define R_NIOS2_UJMP		18
-#define R_NIOS2_CJMP		19
-#define R_NIOS2_CALLR		20
-#define R_NIOS2_ALIGN		21
-/* Keep this the last entry.  */
-#define R_NIOS2_NUM		22
-
-#include <asm/ptrace.h>
-
-typedef unsigned long elf_greg_t;
-
-#define ELF_NGREG (sizeof(struct pt_regs) / sizeof(elf_greg_t))
-typedef elf_greg_t elf_gregset_t[ELF_NGREG];
-
-typedef unsigned long elf_fpregset_t;
-
-/*
- * This is used to ensure we don't load something for the wrong architecture.
- */
-#define elf_check_arch(x) ((x)->e_machine == EM_ALTERA_NIOS2)
-
-/*
- * These are used to set parameters in the core dumps.
- */
-#define ELF_CLASS  ELFCLASS32
-#define ELF_DATA   ELFDATA2LSB
-#define ELF_ARCH   EM_ALTERA_NIOS2
-
-#define ELF_PLAT_INIT(_r, load_addr)
-
-#define USE_ELF_CORE_DUMP
-#define ELF_EXEC_PAGESIZE 4096
-
-/* This is the location that an ET_DYN program is loaded if exec'ed.  Typical
-   use of this is to invoke "./ld.so someprog" to test out a new version of
-   the loader.  We need to make sure that it is out of the way of the program
-   that it will "exec", and that there is sufficient room for the brk.  */
-
-#define ELF_ET_DYN_BASE         0xD0000000UL
-
-/* regs is struct pt_regs, pr_reg is elf_gregset_t (which is
-   now struct_user_regs, they are different) */
-
-#ifdef CONFIG_MMU
-#define ELF_CORE_COPY_REGS(pr_reg, regs)                                             \
-	do {                                                                         \
-		pr_reg[0]  = regs->r8;                                               \
-		pr_reg[1]  = regs->r9;                                               \
-		pr_reg[2]  = regs->r10;                                              \
-		pr_reg[3]  = regs->r11;                                              \
-		pr_reg[4]  = regs->r12;                                              \
-		pr_reg[5]  = regs->r13;                                              \
-		pr_reg[6]  = regs->r14;                                              \
-		pr_reg[7]  = regs->r15;                                              \
-		pr_reg[8]  = regs->r1;                                               \
-		pr_reg[9]  = regs->r2;                                               \
-		pr_reg[10] = regs->r3;                                               \
-		pr_reg[11] = regs->r4;                                               \
-		pr_reg[12] = regs->r5;                                               \
-		pr_reg[13] = regs->r6;                                               \
-		pr_reg[14] = regs->r7                                                \
-		pr_reg[15] = regs->orig_r2;                                          \
-		pr_reg[16] = regs->ra;                                               \
-		pr_reg[17] = regs->fp;                                               \
-		pr_reg[18] = regs->sp;                                               \
-		pr_reg[19] = regs->gp;                                               \
-		pr_reg[20] = regs->estatus;                                          \
-		pr_reg[21] = regs->ea;                                               \
-		pr_reg[22] = regs->orig_r7;                                          \
-			{                                                            \
-			struct switch_stack *sw = ((struct switch_stack *)regs) - 1; \
-			pr_reg[23] = sw->r16;                                        \
-			pr_reg[24] = sw->r17;                                        \
-			pr_reg[25] = sw->r18;                                        \
-			pr_reg[26] = sw->r19;                                        \
-			pr_reg[27] = sw->r20;                                        \
-			pr_reg[28] = sw->r21;                                        \
-			pr_reg[29] = sw->r22;                                        \
-			pr_reg[30] = sw->r23;                                        \
-			pr_reg[31] = sw->fp;                                         \
-			pr_reg[32] = sw->gp;                                         \
-			pr_reg[33] = sw->ra;                                         \
-			}                                                            \
-	} while (0)
-#else
-#define ELF_CORE_COPY_REGS(pr_reg, regs)                                             \
-	do {                                                                         \
-		pr_reg[0] = regs->r1;                                                \
-		pr_reg[1] = regs->r2;                                                \
-		pr_reg[2] = regs->r3;                                                \
-		pr_reg[3] = regs->r4;                                                \
-		pr_reg[4] = regs->r5;                                                \
-		pr_reg[5] = regs->r6;                                                \
-		pr_reg[6] = regs->r7;                                                \
-		pr_reg[7] = regs->r8;                                                \
-		pr_reg[8] = regs->r9;                                                \
-		pr_reg[9] = regs->r10;                                               \
-		pr_reg[10] = regs->r11;                                              \
-		pr_reg[11] = regs->r12;                                              \
-		pr_reg[12] = regs->r13;                                              \
-		pr_reg[13] = regs->r14;                                              \
-		pr_reg[14] = regs->r15;                                              \
-		pr_reg[23] = regs->sp;                                               \
-		pr_reg[26] = regs->estatus;                                          \
-		{                                                                    \
-			struct switch_stack *sw = ((struct switch_stack *)regs) - 1; \
-			pr_reg[15] = sw->r16;                                        \
-			pr_reg[16] = sw->r17;                                        \
-			pr_reg[17] = sw->r18;                                        \
-			pr_reg[18] = sw->r19;                                        \
-			pr_reg[19] = sw->r20;                                        \
-			pr_reg[20] = sw->r21;                                        \
-			pr_reg[21] = sw->r22;                                        \
-			pr_reg[22] = sw->r23;                                        \
-			pr_reg[24] = sw->fp;                                         \
-			pr_reg[25] = sw->gp;                                         \
-		}                                                                    \
-	} while (0)
-
-#endif /* CONFIG_MMU */
-
-/* This yields a mask that user programs can use to figure out what
-   instruction set this cpu supports.  */
-
-#define ELF_HWCAP (0)
-
-/* This yields a string that ld.so will use to load implementation
-   specific libraries for optimization.  This is more specific in
-   intent than poking at uname or /proc/cpuinfo.  */
-
-#define ELF_PLATFORM  (NULL)
-
-#define SET_PERSONALITY(ex) set_personality(PER_LINUX_32BIT)
-
-#endif
diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
deleted file mode 100644
index a964c695e7..0000000000
--- a/arch/nios2/include/asm/io.h
+++ /dev/null
@@ -1,51 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#ifndef __ASM_NIOS2_IO_H_
-#define __ASM_NIOS2_IO_H_
-
-#include <asm/byteorder.h>
-
-#define	IO_SPACE_LIMIT	0
-
-#define __raw_writeb(v, a)       (*(volatile unsigned char  *)(a) = (v))
-#define __raw_writew(v, a)       (*(volatile unsigned short *)(a) = (v))
-#define __raw_writel(v, a)       (*(volatile unsigned int   *)(a) = (v))
-
-#define __raw_readb(a)          (*(volatile unsigned char  *)(a))
-#define __raw_readw(a)          (*(volatile unsigned short *)(a))
-#define __raw_readl(a)          (*(volatile unsigned int   *)(a))
-
-#define readb(addr)\
-	({unsigned char val;\
-	 asm volatile("ldbio %0, 0(%1)" : "=r"(val) : "r" (addr)); val; })
-#define readw(addr)\
-	({unsigned short val;\
-	 asm volatile("ldhio %0, 0(%1)" : "=r"(val) : "r" (addr)); val; })
-#define readl(addr)\
-	({unsigned int val;\
-	 asm volatile("ldwio %0, 0(%1)" : "=r"(val) : "r" (addr)); val; })
-
-#define writeb(val, addr)\
-	asm volatile("stbio %0, 0(%1)" : : "r" (val), "r" (addr))
-#define writew(val, addr)\
-	asm volatile ("sthio %0, 0(%1)" : : "r" (val), "r" (addr))
-#define writel(val, addr)\
-	asm volatile("stwio %0, 0(%1)" : : "r" (val), "r" (addr))
-
-#include <asm-generic/io.h>
-
-#endif /* __ASM_NIOS2_IO_H_ */
diff --git a/arch/nios2/include/asm/mmu.h b/arch/nios2/include/asm/mmu.h
deleted file mode 100644
index 95af871420..0000000000
--- a/arch/nios2/include/asm/mmu.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_MMU_H
-#define __ASM_MMU_H
-
-#define MAP_ARCH_DEFAULT MAP_UNCACHED
-
-#endif /* __ASM_MMU_H */
diff --git a/arch/nios2/include/asm/nios2-io.h b/arch/nios2/include/asm/nios2-io.h
deleted file mode 100644
index 6511548a55..0000000000
--- a/arch/nios2/include/asm/nios2-io.h
+++ /dev/null
@@ -1,175 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-/*************************************************************************
- * Altera Nios2 Standard Peripherals
- ************************************************************************/
-
-#ifndef __NIOS2IO_H__
-#define __NIOS2IO_H__
-
-/*------------------------------------------------------------------------
- * UART (http://www.altera.com/literature/ds/ds_nios_uart.pdf)
- *----------------------------------------------------------------------*/
-struct nios_uart {
-	unsigned	rxdata;		/* Rx data reg */
-	unsigned	txdata;		/* Tx data reg */
-	unsigned	status;		/* Status reg */
-	unsigned	control;	/* Control reg */
-	unsigned	divisor;	/* Baud rate divisor reg */
-	unsigned	endofpacket;	/* End-of-packet reg */
-};
-
-/* status register */
-#define NIOS_UART_PE		(1 << 0)	/* parity error */
-#define NIOS_UART_FE		(1 << 1)	/* frame error */
-#define NIOS_UART_BRK		(1 << 2)	/* break detect */
-#define NIOS_UART_ROE		(1 << 3)	/* rx overrun */
-#define NIOS_UART_TOE		(1 << 4)	/* tx overrun */
-#define NIOS_UART_TMT		(1 << 5)	/* tx empty */
-#define NIOS_UART_TRDY		(1 << 6)	/* tx ready */
-#define NIOS_UART_RRDY		(1 << 7)	/* rx ready */
-#define NIOS_UART_E		(1 << 8)	/* exception */
-#define NIOS_UART_DCTS		(1 << 10)	/* cts change */
-#define NIOS_UART_CTS		(1 << 11)	/* cts */
-#define NIOS_UART_EOP		(1 << 12)	/* eop detected */
-
-/* control register */
-#define NIOS_UART_IPE		(1 << 0)	/* parity error int ena*/
-#define NIOS_UART_IFE		(1 << 1)	/* frame error int ena */
-#define NIOS_UART_IBRK		(1 << 2)	/* break detect int ena */
-#define NIOS_UART_IROE		(1 << 3)	/* rx overrun int ena */
-#define NIOS_UART_ITOE		(1 << 4)	/* tx overrun int ena */
-#define NIOS_UART_ITMT		(1 << 5)	/* tx empty int ena */
-#define NIOS_UART_ITRDY		(1 << 6)	/* tx ready int ena */
-#define NIOS_UART_IRRDY		(1 << 7)	/* rx ready int ena */
-#define NIOS_UART_IE		(1 << 8)	/* exception int ena */
-#define NIOS_UART_TBRK		(1 << 9)	/* transmit break */
-#define NIOS_UART_IDCTS		(1 << 10)	/* cts change int ena */
-#define NIOS_UART_RTS		(1 << 11)	/* rts */
-#define NIOS_UART_IEOP		(1 << 12)	/* eop detected int ena */
-
-
-/*------------------------------------------------------------------------
- * TIMER (http://www.altera.com/literature/ds/ds_nios_timer.pdf)
- *----------------------------------------------------------------------*/
-struct nios_timer {
-	unsigned	status;			/* Timer status reg */
-	unsigned	control;		/* Timer control reg */
-	unsigned	periodl;		/* Timeout period low */
-	unsigned	periodh;		/* Timeout period high */
-	unsigned	snapl;			/* Snapshot low */
-	unsigned	snaph;			/* Snapshot high */
-};
-
-struct nios_timer_64 {
-	unsigned	status;			/* Timer status reg */
-	unsigned	control;		/* Timer control reg */
-	unsigned	period0;		/* Timeout period low */
-	unsigned	period1;		/* Timeout period high */
-	unsigned	period2;		/* Timeout period low */
-	unsigned	period3;		/* Timeout period high */
-	unsigned	snap0;			/* Snapshot low */
-	unsigned	snap1;			/* Snapshot high */
-	unsigned	snap2;			/* Snapshot low */
-	unsigned	snap3;			/* Snapshot high */
-};
-
-/* status register */
-#define NIOS_TIMER_TO		(1 << 0)	/* Timeout */
-#define NIOS_TIMER_RUN		(1 << 1)	/* Timer running */
-
-/* control register */
-#define NIOS_TIMER_ITO		(1 << 0)	/* Timeout int ena */
-#define NIOS_TIMER_CONT		(1 << 1)	/* Continuous mode */
-#define NIOS_TIMER_START	(1 << 2)	/* Start timer */
-#define NIOS_TIMER_STOP		(1 << 3)	/* Stop timer */
-
-
-/*------------------------------------------------------------------------
- * PIO (http://www.altera.com/literature/ds/ds_nios_pio.pdf)
- *----------------------------------------------------------------------*/
-struct nios_pio {
-	unsigned int	data;		/* Data value at each PIO in/out */
-	unsigned int	direction;	/* Data direct. for each PIO bit */
-	unsigned int	interruptmask;	/* Per-bit IRQ enable/disable */
-	unsigned int	edgecapture;	/* Per-bit sync. edge detect & hold */
-};
-
-/* direction register */
-#define NIOS_PIO_OUT		(1)		/* PIO bit is output */
-#define NIOS_PIO_IN		(0)		/* PIO bit is input */
-
-
-/*------------------------------------------------------------------------
- * SPI (http://www.altera.com/literature/ds/ds_nios_spi.pdf)
- *----------------------------------------------------------------------*/
-struct nios_spi {
-	unsigned	rxdata;		/* Rx data reg */
-	unsigned	txdata;		/* Tx data reg */
-	unsigned	status;		/* Status reg */
-	unsigned	control;	/* Control reg */
-	unsigned	reserved;	/* (master only) */
-	unsigned	slaveselect;	/* SPI slave select mask (master only) */
-};
-
-/* status register */
-#define NIOS_SPI_ROE		(1 << 3)	/* rx overrun */
-#define NIOS_SPI_TOE		(1 << 4)	/* tx overrun */
-#define NIOS_SPI_TMT		(1 << 5)	/* tx empty */
-#define NIOS_SPI_TRDY		(1 << 6)	/* tx ready */
-#define NIOS_SPI_RRDY		(1 << 7)	/* rx ready */
-#define NIOS_SPI_E		(1 << 8)	/* exception */
-
-/* control register */
-#define NIOS_SPI_IROE		(1 << 3)	/* rx overrun int ena */
-#define NIOS_SPI_ITOE		(1 << 4)	/* tx overrun int ena */
-#define NIOS_SPI_ITRDY		(1 << 6)	/* tx ready int ena */
-#define NIOS_SPI_IRRDY		(1 << 7)	/* rx ready int ena */
-#define NIOS_SPI_IE		(1 << 8)	/* exception int ena */
-#define NIOS_SPI_SSO		(1 << 10)	/* override SS_n output */
-
-/*------------------------------------------------------------------------
- * JTAG UART
- *----------------------------------------------------------------------*/
-struct nios_jtag {
-	unsigned	data;			/* Data register */
-	unsigned	control;		/* Control register */
-};
-
-/* data register */
-#define NIOS_JTAG_RVALID	(1<<15)		/* Read valid */
-#define NIOS_JTAG_DATA(d)	((d)&0x0ff)	/* Read data */
-#define NIOS_JTAG_RAVAIL(d)	((d)>>16)	/* Read space avail */
-
-/* control register */
-#define NIOS_JTAG_RE		(1 << 0)	/* read intr enable */
-#define NIOS_JTAG_WE		(1 << 1)	/* write intr enable */
-#define NIOS_JTAG_RI		(1 << 8)	/* read intr pending */
-#define NIOS_JTAG_WI		(1 << 9)	/* write intr pending*/
-#define NIOS_JTAG_AC		(1 << 10)	/* activity indicator */
-#define NIOS_JTAG_RRDY		(1 << 12)	/* read available */
-#define NIOS_JTAG_WSPACE(d)	((d)>>16)	/* Write space avail */
-
-/*------------------------------------------------------------------------
- * SYSTEM ID
- *----------------------------------------------------------------------*/
-struct nios_sysid {
-	unsigned	id;			/* The system build id*/
-	unsigned	timestamp;		/* Timestamp */
-};
-
-#endif /* __NIOS2IO_H__ */
diff --git a/arch/nios2/include/asm/nios2.h b/arch/nios2/include/asm/nios2.h
deleted file mode 100644
index 67e3177bad..0000000000
--- a/arch/nios2/include/asm/nios2.h
+++ /dev/null
@@ -1,56 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#ifndef __NIOS2_H__
-#define __NIOS2_H__
-
-/*------------------------------------------------------------------------
- * Control registers -- use with wrctl() & rdctl()
- *----------------------------------------------------------------------*/
-#define CTL_STATUS	0		/* Processor status reg		*/
-#define CTL_ESTATUS	1		/* Exception status reg		*/
-#define CTL_BSTATUS	2		/* Break status reg		*/
-#define CTL_IENABLE	3		/* Interrut enable reg		*/
-#define CTL_IPENDING	4		/* Interrut pending reg		*/
-
-/*------------------------------------------------------------------------
- * Access to control regs
- *----------------------------------------------------------------------*/
-#define _str_(x) #x
-
-#define rdctl(reg)\
-	({unsigned int val;\
-	asm volatile("rdctl %0, ctl" _str_(reg)\
-		: "=r" (val)); val; })
-
-#define wrctl(reg, val)\
-	asm volatile("wrctl ctl" _str_(reg) ",%0"\
-		: : "r" (val))
-
-/*------------------------------------------------------------------------
- * Control reg bit masks
- *----------------------------------------------------------------------*/
-#define STATUS_IE	(1<<0)		/* Interrupt enable		*/
-#define STATUS_U	(1<<1)		/* User-mode			*/
-
-/*------------------------------------------------------------------------
- * Bit-31 Cache bypass -- only valid for data access. When data cache
- * is not implemented, bit 31 is ignored for compatibility.
- *----------------------------------------------------------------------*/
-#define CACHE_BYPASS(a) ((a) | 0x80000000)
-#define CACHE_NO_BYPASS(a) ((a) & ~0x80000000)
-
-#endif /* __NIOS2_H__ */
diff --git a/arch/nios2/include/asm/opcodes.h b/arch/nios2/include/asm/opcodes.h
deleted file mode 100644
index dc186e3a00..0000000000
--- a/arch/nios2/include/asm/opcodes.h
+++ /dev/null
@@ -1,124 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#ifndef __ASM_NIOS2_OPCODES_H_
-#define __ASM_NIOS2_OPCODES_H_
-
-#define OPCODE_OP(inst)	((inst) & 0x3f)
-#define OPCODE_OPX(inst) (((inst)>>11) & 0x3f)
-#define OPCODE_RA(inst) (((inst)>>27) & 01f)
-#define OPCODE_RB(inst) (((inst)>>22) & 01f)
-#define OPCODE_RC(inst) (((inst)>>17) & 01f)
-
-/* I-TYPE (immediate) and J-TYPE (jump) opcodes
- */
-#define OPCODE_CALL	0x00
-#define OPCODE_LDBU	0x03
-#define OPCODE_ADDI	0x04
-#define OPCODE_STB	0x05
-#define OPCODE_BR	0x06
-#define OPCODE_LDB	0x07
-#define OPCODE_CMPGEI	0x08
-#define OPCODE_LDHU	0x0B
-#define OPCODE_ANDI	0x0C
-#define OPCODE_STH	0x0D
-#define OPCODE_BGE	0x0E
-#define OPCODE_LDH	0x0F
-#define OPCODE_CMPLTI	0x10
-#define OPCODE_XORI	0x1C
-#define OPCODE_ORI	0x14
-#define OPCODE_STW	0x15
-#define OPCODE_BLT	0x16
-#define OPCODE_LDW	0x17
-#define OPCODE_CMPNEI	0x18
-#define OPCODE_BNE	0x1E
-#define OPCODE_CMPEQI	0x20
-#define OPCODE_LDBUIO	0x23
-#define OPCODE_MULI	0x24
-#define OPCODE_STBIO	0x25
-#define OPCODE_BEQ	0x26
-#define OPCODE_LDBIO	0x27
-#define OPCODE_CMPGEUI	0x28
-#define OPCODE_ANDHI	0x2C
-#define OPCODE_STHIO	0x2D
-#define OPCODE_BGEU	0x2E
-#define OPCODE_LDHIO	0x2F
-#define OPCODE_CMPLTUI	0x30
-#define OPCODE_CUSTOM	0x32
-#define OPCODE_INITD	0x33
-#define OPCODE_ORHI	0x34
-#define OPCODE_STWIO	0x35
-#define OPCODE_BLTU	0x36
-#define OPCODE_LDWIO	0x37
-#define OPCODE_RTYPE	0x3A
-#define OPCODE_LDHUIO	0x2B
-#define OPCODE_FLUSHD	0x3B
-#define OPCODE_XORHI	0x3C
-
-/* R-Type (register) OPX field encodings
- */
-#define OPCODE_ERET	0x01
-#define OPCODE_ROLI	0x02
-#define OPCODE_ROL	0x03
-#define OPCODE_FLUSHP	0x04
-#define OPCODE_RET	0x05
-#define OPCODE_NOR	0x06
-#define OPCODE_MULXUU	0x07
-#define OPCODE_CMPGE	0x08
-#define OPCODE_BRET	0x09
-#define OPCODE_ROR	0x0B
-#define OPCODE_FLUSHI	0x0C
-#define OPCODE_JMP	0x0D
-#define OPCODE_AND	0x0E
-
-#define OPCODE_CMPLT	0x10
-#define OPCODE_SLLI	0x12
-#define OPCODE_SLL	0x13
-#define OPCODE_OR	0x16
-#define OPCODE_MULXSU	0x17
-#define OPCODE_CMPNE	0x18
-#define OPCODE_SRLI	0x1A
-#define OPCODE_SRL	0x1B
-#define OPCODE_NEXTPC	0x1C
-#define OPCODE_CALLR	0x1D
-#define OPCODE_XOR	0x1E
-#define OPCODE_MULXSS	0x1F
-
-#define OPCODE_CMPEQ	0x20
-#define OPCODE_CMPLTU	0x30
-#define OPCODE_ADD	0x31
-#define OPCODE_DIVU	0x24
-#define OPCODE_DIV	0x25
-#define OPCODE_RDCTL	0x26
-#define OPCODE_MUL	0x27
-#define OPCODE_CMPGEU	0x28
-#define OPCODE_TRAP	0x2D
-#define OPCODE_WRCTL	0x2E
-
-#define OPCODE_BREAK	0x34
-#define OPCODE_SYNC	0x36
-#define OPCODE_INITI	0x29
-#define OPCODE_SUB	0x39
-#define OPCODE_SRAI	0x3A
-#define OPCODE_SRA	0x3B
-
-/*Full instruction encodings for R-Type, without the R's ;-)
- *
- * TODO: BREAK, BRET, ERET, RET, SYNC (as needed)
- */
-#define OPC_TRAP	0x003b683a
-
-#endif /* __ASM_NIOS2_OPCODES_H_ */
diff --git a/arch/nios2/include/asm/posix_types.h b/arch/nios2/include/asm/posix_types.h
deleted file mode 100644
index 22cae6230c..0000000000
--- a/arch/nios2/include/asm/posix_types.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/posix_types.h>
diff --git a/arch/nios2/include/asm/ptrace.h b/arch/nios2/include/asm/ptrace.h
deleted file mode 100644
index a0b137152b..0000000000
--- a/arch/nios2/include/asm/ptrace.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#ifndef __ASM_NIOS2_PTRACE_H_
-#define __ASM_NIOS2_PTRACE_H_
-
-struct pt_regs {
-	unsigned reg[32];
-	unsigned status;
-};
-
-
-#endif /* __ASM_NIOS2_PTRACE_H_ */
diff --git a/arch/nios2/include/asm/sections.h b/arch/nios2/include/asm/sections.h
deleted file mode 100644
index 2b8c516038..0000000000
--- a/arch/nios2/include/asm/sections.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/sections.h>
diff --git a/arch/nios2/include/asm/spi.h b/arch/nios2/include/asm/spi.h
deleted file mode 100644
index 6c5740c340..0000000000
--- a/arch/nios2/include/asm/spi.h
+++ /dev/null
@@ -1,22 +0,0 @@
-#ifndef __ALTERA_SPI_H_
-#define __ALTERA_SPI_H_
-
-#include <spi/spi.h>
-
-struct spi_altera_master {
-	int	num_chipselect;
-	int	spi_mode;
-	int	databits;
-	int	speed;
-	int	bus_num;
-};
-
-struct altera_spi {
-	struct spi_master	master;
-	int			databits;
-	int			speed;
-	int			mode;
-	void __iomem		*regs;
-};
-
-#endif /*__ALTERA_SPI_H_*/
diff --git a/arch/nios2/include/asm/string.h b/arch/nios2/include/asm/string.h
deleted file mode 100644
index c1b74990dc..0000000000
--- a/arch/nios2/include/asm/string.h
+++ /dev/null
@@ -1,40 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#ifndef __ASM_NIOS2_STRING_H_
-#define __ASM_NIOS2_STRING_H_
-/*
-#undef __HAVE_ARCH_STRRCHR
-extern char *strrchr(const char * s, int c);
-
-#undef __HAVE_ARCH_STRCHR
-extern char *strchr(const char * s, int c);
-*/
-#undef __HAVE_ARCH_MEMCPY
-extern void *memcpy(void *, const void *, __kernel_size_t);
-
-#undef __HAVE_ARCH_MEMMOVE
-extern void *memmove(void *, const void *, __kernel_size_t);
-
-#undef __HAVE_ARCH_MEMCHR
-extern void *memchr(const void *, int, __kernel_size_t);
-
-#undef __HAVE_ARCH_MEMSET
-extern void *memset(void *, int, __kernel_size_t);
-
-#undef __HAVE_ARCH_MEMZERO
-extern void memzero(void *ptr, __kernel_size_t n);
-
-#endif /* __ASM_NIOS2_STRING_H_ */
diff --git a/arch/nios2/include/asm/swab.h b/arch/nios2/include/asm/swab.h
deleted file mode 100644
index b07e1d51f1..0000000000
--- a/arch/nios2/include/asm/swab.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef _ASM_SWAB_H
-#define _ASM_SWAB_H
-
-#endif /* _ASM_SWAB_H */
diff --git a/arch/nios2/include/asm/system.h b/arch/nios2/include/asm/system.h
deleted file mode 100644
index 63f14f50db..0000000000
--- a/arch/nios2/include/asm/system.h
+++ /dev/null
@@ -1,57 +0,0 @@
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#ifndef __ASM_NIOS2_SYSTEM_H_
-#define __ASM_NIOS2_SYSTEM_H_
-
-#define local_irq_enable() __asm__ __volatile__ (  \
-	"rdctl	r8, status\n"			   \
-	"ori	r8, r8, 1\n"			   \
-	"wrctl	status, r8\n"			   \
-	: : : "r8")
-
-#define local_irq_disable() __asm__ __volatile__ ( \
-	"rdctl	r8, status\n"			   \
-	"andi	r8, r8, 0xfffe\n"		   \
-	"wrctl	status, r8\n"			   \
-	: : : "r8")
-
-#define local_save_flags(x) __asm__ __volatile__ (	\
-	"rdctl	r8, status\n"				\
-	"mov	%0, r8\n"				\
-	: "=r" (x) : : "r8", "memory")
-
-#define local_irq_restore(x) __asm__ __volatile__ (	\
-	"mov	r8, %0\n"				\
-	"wrctl	status, r8\n"				\
-	: : "r" (x) : "r8", "memory")
-
-/* For spinlocks etc */
-#define local_irq_save(x) do { local_save_flags(x); local_irq_disable(); } \
-	while (0)
-
-#define	irqs_disabled()					\
-({							\
-	unsigned long flags;				\
-	local_save_flags(flags);			\
-	((flags & NIOS2_STATUS_PIE_MSK) == 0x0);	\
-})
-
-/* indirect call to go beyond 256MB limitation of toolchain */
-#define nios2_callr(addr) __asm__ __volatile__ (	\
-	"callr	%0"					\
-	: : "r" (addr))
-
-#endif /* __ASM_NIOS2_SYSTEM_H */
diff --git a/arch/nios2/include/asm/types.h b/arch/nios2/include/asm/types.h
deleted file mode 100644
index 380ad340c3..0000000000
--- a/arch/nios2/include/asm/types.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_TYPES_H
-#define __ASM_TYPES_H
-
-#include <asm-generic/int-ll64.h>
-
-#endif
diff --git a/arch/nios2/include/asm/unaligned.h b/arch/nios2/include/asm/unaligned.h
deleted file mode 100644
index 7615e8a85d..0000000000
--- a/arch/nios2/include/asm/unaligned.h
+++ /dev/null
@@ -1,15 +0,0 @@
-#ifndef _ASM_NIOS_UNALIGNED_H
-#define _ASM_NIOS_UNALIGNED_H
-
-#include <linux/unaligned/le_byteshift.h>
-#include <linux/unaligned/be_byteshift.h>
-#include <linux/unaligned/generic.h>
-
-/*
- * Select endianness
- */
-
-#define get_unaligned	__get_unaligned_le
-#define put_unaligned	__put_unaligned_le
-
-#endif /* _ASM_NIOS_UNALIGNED_H */
diff --git a/arch/nios2/lib/Makefile b/arch/nios2/lib/Makefile
deleted file mode 100644
index 3affc45f48..0000000000
--- a/arch/nios2/lib/Makefile
+++ /dev/null
@@ -1,7 +0,0 @@
-obj-y                      += board.o
-obj-y                      += libgcc.o
-obj-y                      += clock.o
-obj-y                      += cache.o
-obj-$(CONFIG_CMD_BOOTM)    += bootm.o
-obj-$(CONFIG_EARLY_PRINTF) += early_printf.o
-
diff --git a/arch/nios2/lib/asm-offsets.c b/arch/nios2/lib/asm-offsets.c
deleted file mode 100644
index 21e4771e54..0000000000
--- a/arch/nios2/lib/asm-offsets.c
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- *
- */
-
-#include <linux/kbuild.h>
-
-int main(void)
-{
-	return 0;
-}
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
deleted file mode 100644
index 0ca79f0f60..0000000000
--- a/arch/nios2/lib/board.c
+++ /dev/null
@@ -1,29 +0,0 @@
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
-#include <memory.h>
-#include <asm-generic/memory_layout.h>
-#include <cache.h>
-
-void __noreturn nios_start_barebox(void)
-{
-
-	mem_malloc_init((void *)(NIOS_SOPC_TEXT_BASE - MALLOC_SIZE),
-			(void *)(NIOS_SOPC_TEXT_BASE - 1));
-
-	start_barebox();
-}
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
deleted file mode 100644
index 2293cb1691..0000000000
--- a/arch/nios2/lib/bootm.c
+++ /dev/null
@@ -1,80 +0,0 @@
-/*
- * barebox - bootm.c
- *
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
- *
- * (C) Copyright 2003, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
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
-#include <image.h>
-#include <environment.h>
-#include <init.h>
-#include <boot.h>
-#include <bootm.h>
-#include <errno.h>
-#include <asm/cache.h>
-
-#define NIOS_MAGIC 0x534f494e /* enable command line and initrd passing */
-
-static int do_bootm_linux(struct image_data *idata)
-{
-	void (*kernel)(int, int, int, const char *);
-	const char *commandline = linux_bootargs_get();
-	int ret;
-
-	ret = bootm_load_os(idata, idata->os_address);
-	if (ret)
-		return ret;
-
-	if (idata->dryrun)
-		return 0;
-
-	kernel = (void *)(idata->os_address + idata->os_entry);
-
-	/* kernel parameters passing
-	 * r4 : NIOS magic
-	 * r5 : initrd start
-	 * r6 : initrd end or fdt
-	 * r7 : kernel command line
-	 * fdt is passed to kernel via r6, the same as initrd_end. fdt will be
-	 * verified with fdt magic. when both initrd and fdt are used at the
-	 * same time, fdt must follow immediately after initrd.
-	 */
-
-	/* flushes data and instruction caches before calling the kernel */
-	flush_cache_all();
-
-	kernel(NIOS_MAGIC, 0, 0, commandline);
-	/* does not return */
-
-	return 1;
-}
-
-static struct image_handler handler = {
-	.name = "NIOS2 Linux",
-	.bootm = do_bootm_linux,
-	.filetype = filetype_uimage,
-	.ih_os = IH_OS_LINUX,
-};
-
-int nios2_register_image_handler(void)
-{
-	return register_image_handler(&handler);
-}
-
-late_initcall(nios2_register_image_handler);
-
diff --git a/arch/nios2/lib/cache.c b/arch/nios2/lib/cache.c
deleted file mode 100644
index 8d2822105f..0000000000
--- a/arch/nios2/lib/cache.c
+++ /dev/null
@@ -1,77 +0,0 @@
-/*
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
- * Copyright (C) 2009, Wind River Systems Inc
- * Implemented by fredrik.markstrom@gmail.com and ivarholmqvist@gmail.com
- */
-
-#include <config.h>
-
-static void __flush_dcache(unsigned long start, unsigned long end)
-{
-	unsigned long addr;
-
-	start &= ~(DCACHE_LINE_SIZE - 1);
-	end += (DCACHE_LINE_SIZE - 1);
-	end &= ~(DCACHE_LINE_SIZE - 1);
-
-	if (end > start + DCACHE_SIZE)
-		end = start + DCACHE_SIZE;
-
-	for (addr = start; addr < end; addr += DCACHE_LINE_SIZE) {
-		__asm__ __volatile__ ("   flushd 0(%0)\n"
-					: /* Outputs */
-					: /* Inputs  */ "r"(addr)
-					/* : No clobber */);
-	}
-}
-
-static void __flush_icache(unsigned long start, unsigned long end)
-{
-	unsigned long addr;
-
-	start &= ~(ICACHE_LINE_SIZE - 1);
-	end += (ICACHE_LINE_SIZE - 1);
-	end &= ~(ICACHE_LINE_SIZE - 1);
-
-	if (end > start + ICACHE_SIZE)
-		end = start + ICACHE_SIZE;
-
-	for (addr = start; addr < end; addr += ICACHE_LINE_SIZE) {
-		__asm__ __volatile__ ("   flushi %0\n"
-					: /* Outputs */
-					: /* Inputs  */ "r"(addr)
-					/* : No clobber */);
-	}
-	__asm__ __volatile(" flushp\n");
-}
-
-void flush_dcache_all(void)
-{
-	__flush_dcache(0, DCACHE_SIZE);
-}
-
-void flush_icache_all(void)
-{
-	__flush_icache(0, ICACHE_SIZE);
-}
-
-void flush_cache_all(void)
-{
-	flush_dcache_all();
-	flush_icache_all();
-}
-
-void flush_icache_range(unsigned long start, unsigned long end)
-{
-	__flush_icache(start, end);
-}
-
-void flush_dcache_range(unsigned long start, unsigned long end)
-{
-	__flush_dcache(start, end);
-	/* FIXME: Maybe we should remove __flush_icache ? */
-	__flush_icache(start, end);
-}
diff --git a/arch/nios2/lib/clock.c b/arch/nios2/lib/clock.c
deleted file mode 100644
index cfd896077d..0000000000
--- a/arch/nios2/lib/clock.c
+++ /dev/null
@@ -1,53 +0,0 @@
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
-#include <asm/nios2-io.h>
-#include <io.h>
-
-static struct nios_timer *timer = (struct nios_timer *)NIOS_SOPC_TIMER_BASE;
-
-static uint64_t nios_clocksource_read(void)
-{
-	uint64_t value;
-
-	writew(0x5555, &timer->snapl);       /* Dummy value*/
-	value = (uint64_t)((readw(&timer->snaph) << 16) + readw(&timer->snapl));
-
-	return ~value;
-}
-
-static struct clocksource cs = {
-	.read	= nios_clocksource_read,
-	.mask	= 0xffffffff,
-	.shift	= 12,
-};
-
-static int clocksource_init(void)
-{
-	writew(0, &timer->control);
-	writew(0xFFFF, &timer->periodl);
-	writew(0xFFFF, &timer->periodh);
-	writew(NIOS_TIMER_CONT | NIOS_TIMER_START, &timer->control);
-
-	cs.mult = clocksource_hz2mult(NIOS_SOPC_TIMER_FREQ, cs.shift);
-
-	return init_clock(&cs);
-}
-
-core_initcall(clocksource_init);
-
diff --git a/arch/nios2/lib/early_printf.c b/arch/nios2/lib/early_printf.c
deleted file mode 100644
index 7b4ac97dcd..0000000000
--- a/arch/nios2/lib/early_printf.c
+++ /dev/null
@@ -1,49 +0,0 @@
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
-#include <stdio.h>
-#include <common.h>
-#include <asm/nios2-io.h>
-#include <io.h>
-
-void early_putc(char ch)
-{
-	struct nios_uart *uart = (struct nios_uart *)NIOS_SOPC_UART_BASE;
-
-	while ((readl(&uart->status) & NIOS_UART_TRDY) == 0);
-	writel((unsigned char)ch, &uart->txdata);
-}
-
-void early_puts(const char *s)
-{
-	while (*s != 0)
-		early_putc(*s++);
-}
-
-int early_printf(const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[50];
-
-	va_start(args, fmt);
-
-	i = vsprintf(printbuffer, fmt, args);
-	va_end(args);
-
-	early_puts(printbuffer);
-
-	return 0;
-}
diff --git a/arch/nios2/lib/libgcc.c b/arch/nios2/lib/libgcc.c
deleted file mode 100644
index 814df73310..0000000000
--- a/arch/nios2/lib/libgcc.c
+++ /dev/null
@@ -1,524 +0,0 @@
-/*
- * This file is part of GNU CC.
- *
- * GNU CC is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published
- * by the Free Software Foundation; either version 2, or (at your
- * option) any later version.
- *
- * GNU CC is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-
-#define W_TYPE_SIZE 32
-#define BITS_PER_UNIT 8
-
-typedef unsigned int UWtype;
-typedef unsigned int UHWtype;
-typedef unsigned long long UDWtype;
-
-typedef unsigned char UQItype;
-typedef long SItype;
-typedef unsigned long USItype;
-typedef long long DItype;
-typedef unsigned long long DSItype;
-
-#include "longlong.h"
-
-typedef int word_type;
-typedef long Wtype;
-typedef long long DWtype;
-
-struct DWstruct { Wtype low, high; };
-
-typedef union {
-	struct DWstruct s;
-	DWtype ll;
-} DWunion;
-
-const UQItype __clz_tab[256] = {
-	0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4,
-	5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
-	6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
-	6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
-	7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
-	7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
-	7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
-	7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
-	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
-};
-
-
-DWtype __ashldi3(DWtype u, word_type b)
-{
-	const DWunion uu = {.ll = u};
-	const word_type bm = (sizeof(Wtype) * BITS_PER_UNIT) - b;
-	DWunion w;
-	UWtype carries;
-
-	if (b == 0)
-		return u;
-
-	if (bm <= 0) {
-		w.s.low = 0;
-		w.s.high = (UWtype) uu.s.low << -bm;
-	} else {
-		carries = (UWtype) uu.s.low >> bm;
-		w.s.low = (UWtype) uu.s.low << b;
-		w.s.high = ((UWtype) uu.s.high << b) | carries;
-	}
-
-	return w.ll;
-}
-
-DWtype __ashrdi3(DWtype u, word_type b)
-{
-	const DWunion uu = {.ll = u};
-	const word_type bm = (sizeof(Wtype) * BITS_PER_UNIT) - b;
-	DWunion w;
-	UWtype carries;
-
-	if (b == 0)
-		return u;
-
-	if (bm <= 0) {
-		w.s.high = uu.s.high >> (sizeof(Wtype) * BITS_PER_UNIT - 1);
-		w.s.low = uu.s.high >> -bm;
-	} else {
-		carries = (UWtype) uu.s.high << bm;
-		w.s.high = uu.s.high >> b;
-		w.s.low = ((UWtype) uu.s.low >> b) | carries;
-	}
-
-	return w.ll;
-}
-
-DWtype __lshrdi3(DWtype u, word_type b)
-{
-	const DWunion uu = {.ll = u};
-	const word_type bm = (sizeof(Wtype) * BITS_PER_UNIT) - b;
-	DWunion w;
-	UWtype carries;
-
-	if (b == 0)
-		return u;
-
-	if (bm <= 0) {
-		w.s.high = 0;
-		w.s.low = (UWtype) uu.s.high >> -bm;
-	} else {
-		carries = (UWtype) uu.s.high << bm;
-		w.s.high = (UWtype) uu.s.high >> b;
-		w.s.low = ((UWtype) uu.s.low >> b) | carries;
-	}
-
-	return w.ll;
-}
-
-word_type __cmpdi2(DWtype a, DWtype b)
-{
-	const DWunion au = {.ll = a};
-	const DWunion bu = {.ll = b};
-
-	if (au.s.high < bu.s.high)
-		return 0;
-	else if (au.s.high > bu.s.high)
-		return 2;
-
-	if ((UWtype) au.s.low < (UWtype) bu.s.low)
-		return 0;
-	else if ((UWtype) au.s.low > (UWtype) bu.s.low)
-		return 2;
-
-	return 1;
-}
-
-UDWtype __udivmoddi4(UDWtype n, UDWtype d, UDWtype *rp)
-{
-	const DWunion nn = {.ll = n};
-	const DWunion dd = {.ll = d};
-
-	DWunion rr;
-	UWtype d0, d1, n0, n1, n2;
-	UWtype q0, q1;
-	UWtype b, bm;
-
-	DWunion ww;
-
-	d0 = dd.s.low;
-	d1 = dd.s.high;
-	n0 = nn.s.low;
-	n1 = nn.s.high;
-
-#if !UDIV_NEEDS_NORMALIZATION
-	if (d1 == 0) {
-		if (d0 > n1) {
-			udiv_qrnnd(q0, n0, n1, n0, d0);
-			q1 = 0;
-		} else {
-			if (d0 == 0)
-				d0 = 1 / d0;  /* Divide intentionally by zero.*/
-			udiv_qrnnd(q1, n1, 0, n1, d0);
-			udiv_qrnnd(q0, n0, n1, n0, d0);
-			/* Remainder in n0.  */
-		}
-
-		if (rp != 0) {
-			rr.s.low = n0;
-			rr.s.high = 0;
-			*rp = rr.ll;
-		}
-	}
-
-#else /* UDIV_NEEDS_NORMALIZATION */
-
-	if (d1 == 0) {
-		if (d0 > n1) {
-			count_leading_zeros(bm, d0);
-			if (bm != 0) {
-				/* Normalize, i.e. make the most significant
-				bit of the denominator set.  */
-				d0 = d0 << bm;
-				n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
-				n0 = n0 << bm;
-			}
-
-		udiv_qrnnd(q0, n0, n1, n0, d0);
-		q1 = 0;
-		/* Remainder in n0 >> bm.  */
-		} else { /* qq = NN / 0d */
-			if (d0 == 0)
-				d0 = 1 / d0; /* Divide intentionally by zero. */
-
-			count_leading_zeros(bm, d0);
-
-			if (bm == 0) {
-				/* From (n1 >= d0) /\ (the most significant bit
-				of d0 is set), conclude (the most significant
-				bit of n1 is set) /\ (the leading quotient digit
-				q1 = 1).
-
-				 This special case is necessary, not an
-				 optimization.(Shifts counts of W_TYPE_SIZE are
-				 undefined.) */
-
-				n1 -= d0;
-				q1 = 1;
-			} else { /* Normalize.  */
-				b = W_TYPE_SIZE - bm;
-
-				d0 = d0 << bm;
-				n2 = n1 >> b;
-				n1 = (n1 << bm) | (n0 >> b);
-				n0 = n0 << bm;
-
-				udiv_qrnnd(q1, n1, n2, n1, d0);
-			}
-
-			/* n1 != d0...  */
-			udiv_qrnnd(q0, n0, n1, n0, d0);
-		}
-
-		if (rp != 0) {
-			rr.s.low = n0 >> bm;
-			rr.s.high = 0;
-			*rp = rr.ll;
-		}
-	}
-#endif /* UDIV_NEEDS_NORMALIZATION */
-
-	else {
-		if (d1 > n1) { /* 00 = nn / DD */
-			q0 = 0;
-			q1 = 0;
-			/* Remainder in n1n0.  */
-			if (rp != 0) {
-				rr.s.low = n0;
-				rr.s.high = n1;
-				*rp = rr.ll;
-			}
-		} else { /* 0q = NN / dd */
-			count_leading_zeros(bm, d1);
-			if (bm == 0) {
-				/* From (n1 >= d1) /\ (the most significant bit
-				of d1 is set), conclude (the most significant
-				bit of n1 is set) /\ (the quotient digit q0 = 0
-				or 1).
-
-				This special case is necessary,
-				not an optimization.  */
-
-				/* The condition on the next line takes
-				advantage of that n1 >= d1 (true due to program
-				flow).  */
-
-				if (n1 > d1 || n0 >= d0) {
-					q0 = 1;
-					sub_ddmmss(n1, n0, n1, n0, d1, d0);
-				} else
-					q0 = 0;
-
-				q1 = 0;
-
-				if (rp != 0) {
-					rr.s.low = n0;
-					rr.s.high = n1;
-					*rp = rr.ll;
-				}
-			} else {
-				UWtype m1, m0;
-				/* Normalize.  */
-				b = W_TYPE_SIZE - bm;
-				d1 = (d1 << bm) | (d0 >> b);
-				d0 = d0 << bm;
-				n2 = n1 >> b;
-				n1 = (n1 << bm) | (n0 >> b);
-				n0 = n0 << bm;
-				udiv_qrnnd(q0, n1, n2, n1, d1);
-				umul_ppmm(m1, m0, q0, d0);
-
-				if (m1 > n1 || (m1 == n1 && m0 > n0)) {
-					q0--;
-					sub_ddmmss(m1, m0, m1, m0, d1, d0);
-				}
-
-				q1 = 0;
-
-				/* Remainder in (n1n0 - m1m0) >> bm.  */
-				if (rp != 0) {
-					sub_ddmmss(n1, n0, n1, n0, m1, m0);
-					rr.s.low = (n1 << b) | (n0 >> bm);
-					rr.s.high = n1 >> bm;
-					*rp = rr.ll;
-				}
-			}
-		}
-	}
-
-	ww.s.low = q0;
-	ww.s.high = q1;
-
-	return ww.ll;
-}
-
-DWtype __divdi3(DWtype u, DWtype v)
-{
-	word_type c = 0;
-	DWunion uu = {.ll = u};
-	DWunion vv = {.ll = v};
-	DWtype w;
-
-	if (uu.s.high < 0) {
-		c = ~c;
-		uu.ll = -uu.ll;
-	}
-
-	if (vv.s.high < 0) {
-		c = ~c;
-		vv.ll = -vv.ll;
-	}
-
-	w = __udivmoddi4(uu.ll, vv.ll, (UDWtype *) 0);
-
-	if (c)
-		w = -w;
-
-	return w;
-}
-
-DWtype __negdi2(DWtype u)
-{
-	const DWunion uu = {.ll = u};
-	const DWunion w = { {.low = -uu.s.low,
-			.high = -uu.s.high - ((UWtype) -uu.s.low > 0) } };
-
-	return w.ll;
-}
-
-
-DWtype __muldi3(DWtype u, DWtype v)
-{
-	const DWunion uu = {.ll = u};
-	const DWunion vv = {.ll = v};
-	DWunion  w = {.ll = __umulsidi3(uu.s.low, vv.s.low)};
-
-	w.s.high += ((UWtype) uu.s.low * (UWtype) vv.s.high
-		+ (UWtype) uu.s.high * (UWtype) vv.s.low);
-
-	return w.ll;
-}
-
-DWtype __moddi3(DWtype u, DWtype v)
-{
-	word_type c = 0;
-	DWunion uu = {.ll = u};
-	DWunion vv = {.ll = v};
-	DWtype w;
-
-	if (uu.s.high < 0) {
-		c = ~c;
-		uu.ll = -uu.ll;
-	}
-
-	if (vv.s.high < 0)
-		vv.ll = -vv.ll;
-
-	(void) __udivmoddi4(uu.ll, vv.ll, (UDWtype *)&w);
-
-	if (c)
-		w = -w;
-
-	return w;
-}
-
-word_type __ucmpdi2(DWtype a, DWtype b)
-{
-	const DWunion au = {.ll = a};
-	const DWunion bu = {.ll = b};
-
-	if ((UWtype) au.s.high < (UWtype) bu.s.high)
-		return 0;
-	else if ((UWtype) au.s.high > (UWtype) bu.s.high)
-		return 2;
-	if ((UWtype) au.s.low < (UWtype) bu.s.low)
-		return 0;
-	else if ((UWtype) au.s.low > (UWtype) bu.s.low)
-		return 2;
-	return 1;
-}
-
-
-UDWtype __udivdi3(UDWtype n, UDWtype d)
-{
-	return __udivmoddi4(n, d, (UDWtype *) 0);
-}
-
-UDWtype __umoddi3(UDWtype u, UDWtype v)
-{
-	UDWtype w;
-	(void) __udivmoddi4(u, v, &w);
-
-	return w;
-}
-
-static USItype udivmodsi4(USItype num, USItype den, word_type modwanted)
-{
-	USItype bit = 1;
-	USItype res = 0;
-
-	while (den < num && bit && !(den & (1L<<31))) {
-		den <<= 1;
-		bit <<= 1;
-	}
-	while (bit) {
-		if (num >= den) {
-			num -= den;
-			res |= bit;
-		}
-
-		bit >>= 1;
-		den >>= 1;
-	}
-
-	if (modwanted)
-		return num;
-
-	return res;
-}
-
-SItype __divsi3(SItype a, SItype b)
-{
-	word_type neg = 0;
-	SItype res;
-
-	if (a < 0) {
-		a = -a;
-		neg = !neg;
-	}
-
-	if (b < 0) {
-		b = -b;
-		neg = !neg;
-	}
-
-	res = udivmodsi4(a, b, 0);
-
-	if (neg)
-		res = -res;
-
-	return res;
-}
-
-
-SItype __udivsi3(SItype a, SItype b)
-{
-	return udivmodsi4(a, b, 0);
-}
-
-
-SItype __modsi3(SItype a, SItype b)
-{
-	word_type neg = 0;
-	SItype res;
-
-	if (a < 0) {
-		a = -a;
-		neg = 1;
-	}
-
-	if (b < 0)
-		b = -b;
-
-	res = udivmodsi4(a, b, 1);
-
-	if (neg)
-		res = -res;
-
-	return res;
-}
-
-SItype __mulsi3(SItype a, SItype b)
-{
-	SItype res = 0;
-	USItype cnt = a;
-
-	while (cnt) {
-		if (cnt & 1)
-			res += b;
-		b <<= 1;
-		cnt >>= 1;
-	}
-
-	return res;
-}
-
-SItype __umodsi3(SItype a, SItype b)
-{
-	return udivmodsi4(a, b, 1);
-}
-
-int __gcc_bcmp(const unsigned char *s1, const unsigned char *s2, unsigned long size)
-{
-	unsigned char c1;
-	unsigned char c2;
-
-	while (size > 0) {
-		c1 = *s1++;
-		c2 = *s2++;
-		if (c1 != c2)
-			return c1 - c2;
-		size--;
-	}
-	return 0;
-}
diff --git a/arch/nios2/lib/longlong.h b/arch/nios2/lib/longlong.h
deleted file mode 100644
index 58b29d89e6..0000000000
--- a/arch/nios2/lib/longlong.h
+++ /dev/null
@@ -1,253 +0,0 @@
-/* longlong.h -- definitions for mixed size 32/64 bit arithmetic.
- * Copyright (C) 1991, 1992, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2004,
- * 2005  Free Software Foundation, Inc.
- *
- * This definition file is free software; you can redistribute it
- * and/or modify it under the terms of the GNU General Public
- * License as published by the Free Software Foundation; either
- * version 2, or (at your option) any later version.
-
- * This definition file is distributed in the hope that it will be
- * useful, but WITHOUT ANY WARRANTY; without even the implied
- * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
- * See the GNU General Public License for more details.
- */
-/* You have to define the following before including this file:
-
-   UWtype -- An unsigned type, default type for operations (typically a "word")
-   UHWtype -- An unsigned type, at least half the size of UWtype.
-   UDWtype -- An unsigned type, at least twice as large a UWtype
-   W_TYPE_SIZE -- size in bits of UWtype
-
-   UQItype -- Unsigned 8 bit type.
-   SItype, USItype -- Signed and unsigned 32 bit types.
-   DItype, UDItype -- Signed and unsigned 64 bit types.
-
-   On a 32 bit machine UWtype should typically be USItype;
-   on a 64 bit machine, UWtype should typically be UDItype.  */
-
-#define __BITS4 (W_TYPE_SIZE / 4)
-#define __ll_B ((UWtype) 1 << (W_TYPE_SIZE / 2))
-#define __ll_lowpart(t) ((UWtype) (t) & (__ll_B - 1))
-#define __ll_highpart(t) ((UWtype) (t) >> (W_TYPE_SIZE / 2))
-
-#ifndef W_TYPE_SIZE
-#define W_TYPE_SIZE	32
-#define UWtype		USItype
-#define UHWtype		USItype
-#define UDWtype		UDItype
-#endif
-
-extern const UQItype __clz_tab[256];
-
-/* Define auxiliary asm macros.
-
-   1) umul_ppmm(high_prod, low_prod, multiplier, multiplicand) multiplies two
-   UWtype integers MULTIPLIER and MULTIPLICAND, and generates a two UWtype
-   word product in HIGH_PROD and LOW_PROD.
-
-   2) __umulsidi3(a,b) multiplies two UWtype integers A and B, and returns a
-   UDWtype product.  This is just a variant of umul_ppmm.
-
-   3) udiv_qrnnd(quotient, remainder, high_numerator, low_numerator,
-   denominator) divides a UDWtype, composed by the UWtype integers
-   HIGH_NUMERATOR and LOW_NUMERATOR, by DENOMINATOR and places the quotient
-   in QUOTIENT and the remainder in REMAINDER.  HIGH_NUMERATOR must be less
-   than DENOMINATOR for correct operation.  If, in addition, the most
-   significant bit of DENOMINATOR must be 1, then the pre-processor symbol
-   UDIV_NEEDS_NORMALIZATION is defined to 1.
-
-   4) sdiv_qrnnd(quotient, remainder, high_numerator, low_numerator,
-   denominator).  Like udiv_qrnnd but the numbers are signed.  The quotient
-   is rounded towards 0.
-
-   5) count_leading_zeros(count, x) counts the number of zero-bits from the
-   msb to the first nonzero bit in the UWtype X.  This is the number of
-   steps X needs to be shifted left to set the msb.  Undefined for X == 0,
-   unless the symbol COUNT_LEADING_ZEROS_0 is defined to some value.
-
-   6) count_trailing_zeros(count, x) like count_leading_zeros, but counts
-   from the least significant end.
-
-   7) add_ssaaaa(high_sum, low_sum, high_addend_1, low_addend_1,
-   high_addend_2, low_addend_2) adds two UWtype integers, composed by
-   HIGH_ADDEND_1 and LOW_ADDEND_1, and HIGH_ADDEND_2 and LOW_ADDEND_2
-   respectively.  The result is placed in HIGH_SUM and LOW_SUM.  Overflow
-   (i.e. carry out) is not stored anywhere, and is lost.
-
-   8) sub_ddmmss(high_difference, low_difference, high_minuend, low_minuend,
-   high_subtrahend, low_subtrahend) subtracts two two-word UWtype integers,
-   composed by HIGH_MINUEND_1 and LOW_MINUEND_1, and HIGH_SUBTRAHEND_2 and
-   LOW_SUBTRAHEND_2 respectively.  The result is placed in HIGH_DIFFERENCE
-   and LOW_DIFFERENCE.  Overflow (i.e. carry out) is not stored anywhere,
-   and is lost.
-
-   If any of these macros are left undefined for a particular CPU,
-   C macros are used.  */
-
-/* The CPUs come in alphabetical order below.
-
-   Please add support for more CPUs here, or improve the current support
-   for the CPUs below!
-   (E.g. WE32100, IBM360.)  */
-
-/* Snipped per CPU support */
-
-/* If this machine has no inline assembler, use C macros.  */
-
-#if !defined (add_ssaaaa)
-#define add_ssaaaa(sh, sl, ah, al, bh, bl) \
-	do {                                            \
-		UWtype __x;                             \
-		__x = (al) + (bl);                      \
-		(sh) = (ah) + (bh) + (__x < (al));      \
-		(sl) = __x;                             \
-	} while (0)
-#endif
-
-#if !defined (sub_ddmmss)
-#define sub_ddmmss(sh, sl, ah, al, bh, bl) \
-	do {                                            \
-		UWtype __x;                             \
-		__x = (al) - (bl);                      \
-		(sh) = (ah) - (bh) - (__x > (al));      \
-		(sl) = __x;                             \
-	} while (0)
-#endif
-
-/* If we lack umul_ppmm but have smul_ppmm, define umul_ppmm in terms of
-   smul_ppmm.  */
-#if !defined (umul_ppmm) && defined (smul_ppmm)
-#define umul_ppmm(w1, w0, u, v) \
-	do {                                                              \
-		UWtype __w1;                                              \
-		UWtype __xm0 = (u), __xm1 = (v);                          \
-		smul_ppmm (__w1, w0, __xm0, __xm1);                       \
-		(w1) = __w1 + (-(__xm0 >> (W_TYPE_SIZE - 1)) & __xm1)     \
-		+ (-(__xm1 >> (W_TYPE_SIZE - 1)) & __xm0);                \
-  } while (0)
-#endif
-
-/* If we still don't have umul_ppmm, define it using plain C.  */
-#if !defined (umul_ppmm)
-#define umul_ppmm(w1, w0, u, v) \
-	do {                                                                  \
-		UWtype __x0, __x1, __x2, __x3;                                \
-		UHWtype __ul, __vl, __uh, __vh;                               \
-		                                                              \
-		__ul = __ll_lowpart (u);                                      \
-		__uh = __ll_highpart (u);                                     \
-		__vl = __ll_lowpart (v);                                      \
-		__vh = __ll_highpart (v);                                     \
-		                                                              \
-		__x0 = (UWtype) __ul * __vl;                                  \
-		__x1 = (UWtype) __ul * __vh;                                  \
-		__x2 = (UWtype) __uh * __vl;                                  \
-		__x3 = (UWtype) __uh * __vh;                                  \
-		                                                              \
-		__x1 += __ll_highpart (__x0);/* this can't give carry */      \
-		__x1 += __x2;		/* but this indeed can */             \
-		if (__x1 < __x2)		/* did we get it? */          \
-		__x3 += __ll_B;		/* yes, add it in the proper pos.  */ \
-		                                                              \
-		(w1) = __x3 + __ll_highpart (__x1);                           \
-		(w0) = __ll_lowpart (__x1) * __ll_B + __ll_lowpart (__x0);    \
-	} while (0)
-#endif
-
-#if !defined (__umulsidi3)
-#define __umulsidi3(u, v) \
-	({DWunion __w;                           \
-	umul_ppmm (__w.s.high, __w.s.low, u, v); \
-	__w.ll; })
-#endif
-
-/* Define this unconditionally, so it can be used for debugging.  */
-#define __udiv_qrnnd_c(q, r, n1, n0, d) \
-	do {                                                                                \
-		UWtype __d1, __d0, __q1, __q0;                                              \
-		UWtype __r1, __r0, __m;                                                     \
-		__d1 = __ll_highpart (d);                                                   \
-		__d0 = __ll_lowpart (d);                                                    \
-		                                                                            \
-		__r1 = (n1) % __d1;                                                         \
-		__q1 = (n1) / __d1;                                                         \
-		__m = (UWtype) __q1 * __d0;                                                 \
-		__r1 = __r1 * __ll_B | __ll_highpart (n0);                                  \
-		if (__r1 < __m) {                                                           \
-			__q1--, __r1 += (d);                                                \
-			if (__r1 >= (d)) /* i.e. we didn't get carry when adding to __r1 */ \
-				if (__r1 < __m)                                             \
-					__q1--, __r1 += (d);                                \
-		}                                                                           \
-		__r1 -= __m;                                                                \
-		                                                                            \
-		__r0 = __r1 % __d1;                                                         \
-		__q0 = __r1 / __d1;                                                         \
-		__m = (UWtype) __q0 * __d0;                                                 \
-		__r0 = __r0 * __ll_B | __ll_lowpart (n0);                                   \
-		if (__r0 < __m) {                                                           \
-			__q0--, __r0 += (d);                                                \
-			if (__r0 >= (d))                                                    \
-				if (__r0 < __m)                                             \
-					__q0--, __r0 += (d);                                \
-		}                                                                           \
-		__r0 -= __m;                                                                \
-		                                                                            \
-		(q) = (UWtype) __q1 * __ll_B | __q0;                                        \
-		(r) = __r0;                                                                 \
-	} while (0)
-
-/* If the processor has no udiv_qrnnd but sdiv_qrnnd, go through
-   __udiv_w_sdiv (defined in libgcc or elsewhere).  */
-#if !defined (udiv_qrnnd) && defined (sdiv_qrnnd)
-#define udiv_qrnnd(q, r, nh, nl, d) \
-	do {                                           \
-		USItype __r;                           \
-		(q) = __udiv_w_sdiv (&__r, nh, nl, d); \
-		(r) = __r;                             \
-	} while (0)
-#endif
-
-/* If udiv_qrnnd was not defined for this processor, use __udiv_qrnnd_c.  */
-#if !defined (udiv_qrnnd)
-#define UDIV_NEEDS_NORMALIZATION 1
-#define udiv_qrnnd __udiv_qrnnd_c
-#endif
-
-#if !defined (count_leading_zeros)
-#define count_leading_zeros(count, x) \
-	do {                                                                        \
-		UWtype __xr = (x);                                                  \
-		UWtype __a;                                                         \
-		                                                                    \
-		if (W_TYPE_SIZE <= 32) {                                            \
-			__a = __xr < ((UWtype)1<<2*__BITS4)                         \
-			? (__xr < ((UWtype)1<<__BITS4) ? 0 : __BITS4)               \
-			: (__xr < ((UWtype)1<<3*__BITS4) ?  2*__BITS4 : 3*__BITS4); \
-		}                                                                   \
-		else {                                                              \
-			for (__a = W_TYPE_SIZE - 8; __a > 0; __a -= 8)              \
-			if (((__xr >> __a) & 0xff) != 0)                            \
-				break;                                              \
-		}                                                                   \
-		(count) = W_TYPE_SIZE - (__clz_tab[__xr >> __a] + __a);             \
-	} while (0)
-#define COUNT_LEADING_ZEROS_0 W_TYPE_SIZE
-#endif
-
-#if !defined (count_trailing_zeros)
-/* Define count_trailing_zeros using count_leading_zeros.  The latter might be
-   defined in asm, but if it is not, the C version above is good enough.  */
-#define count_trailing_zeros(count, x) \
-	do {                                                       \
-		UWtype __ctz_x = (x);                              \
-		UWtype __ctz_c;                                    \
-		count_leading_zeros (__ctz_c, __ctz_x & -__ctz_x); \
-		(count) = W_TYPE_SIZE - 1 - __ctz_c;               \
-	} while (0)
-#endif
-
-#ifndef UDIV_NEEDS_NORMALIZATION
-#define UDIV_NEEDS_NORMALIZATION 0
-#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

