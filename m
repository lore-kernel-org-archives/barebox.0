Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxS9B-0000ER-Lf
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 22:46:38 +0000
Received: by bwz1 with SMTP id 1so1242614bwz.36
	for <barebox@lists.infradead.org>; Wed, 09 Mar 2011 14:46:24 -0800 (PST)
From: Franck JULLIEN <franck.jullien@gmail.com>
Date: Wed,  9 Mar 2011 23:46:26 +0100
Message-Id: <1299710787-11990-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <n>
References: <n>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] Add Altera Nios2 arch support
To: barebox@lists.infradead.org

---
 nios2/Kconfig                    |   39 +++
 nios2/Makefile                   |   31 ++
 nios2/configs/generic_defconfig  |  212 +++++++++++++
 nios2/cpu-nios2/Makefile         |    5 +
 nios2/cpu-nios2/cpu.c            |   38 +++
 nios2/cpu-nios2/exceptions.S     |  160 ++++++++++
 nios2/cpu-nios2/interrupts.c     |  140 +++++++++
 nios2/cpu-nios2/start.S          |  165 +++++++++++
 nios2/cpu-nios2/traps.c          |   48 +++
 nios2/include/asm/addrspace.h    |   15 +
 nios2/include/asm/barebox.h      |   47 +++
 nios2/include/asm/bitops.h       |   45 +++
 nios2/include/asm/bitsperlong.h  |   32 ++
 nios2/include/asm/byteorder.h    |   36 +++
 nios2/include/asm/cache.h        |   31 ++
 nios2/include/asm/common.h       |    5 +
 nios2/include/asm/dma-mapping.h  |   25 ++
 nios2/include/asm/early_printf.h |   10 +
 nios2/include/asm/elf.h          |  119 ++++++++
 nios2/include/asm/entry.h        |  177 +++++++++++
 nios2/include/asm/getorder.h     |   24 ++
 nios2/include/asm/int-ll64.h     |   78 +++++
 nios2/include/asm/io.h           |  130 ++++++++
 nios2/include/asm/linkage.h      |    7 +
 nios2/include/asm/memory_model.h |   77 +++++
 nios2/include/asm/nios2-io.h     |  182 ++++++++++++
 nios2/include/asm/nios2.h        |   63 ++++
 nios2/include/asm/opcodes.h      |  131 ++++++++
 nios2/include/asm/page.h         |  129 ++++++++
 nios2/include/asm/pfn.h          |   13 +
 nios2/include/asm/pgtable-bits.h |   38 +++
 nios2/include/asm/posix_types.h  |   77 +++++
 nios2/include/asm/ptrace.h       |   33 ++
 nios2/include/asm/sections.h     |    1 +
 nios2/include/asm/segment.h      |    6 +
 nios2/include/asm/spaces.h       |   32 ++
 nios2/include/asm/string.h       |   47 +++
 nios2/include/asm/swab.h         |    4 +
 nios2/include/asm/system.h       |   64 ++++
 nios2/include/asm/types.h        |   31 ++
 nios2/include/asm/user.h         |  136 +++++++++
 nios2/lib/Makefile               |    6 +
 nios2/lib/board.c                |   47 +++
 nios2/lib/cache.S                |   74 +++++
 nios2/lib/clock.c                |   61 ++++
 nios2/lib/early_printf.c         |   58 ++++
 nios2/lib/libgcc.c               |  605 ++++++++++++++++++++++++++++++++++++++
 nios2/lib/longlong.h             |  263 +++++++++++++++++
 48 files changed, 3797 insertions(+), 0 deletions(-)
 create mode 100644 nios2/Kconfig
 create mode 100644 nios2/Makefile
 create mode 100644 nios2/configs/generic_defconfig
 create mode 100644 nios2/cpu-nios2/Makefile
 create mode 100644 nios2/cpu-nios2/cpu.c
 create mode 100644 nios2/cpu-nios2/exceptions.S
 create mode 100644 nios2/cpu-nios2/interrupts.c
 create mode 100644 nios2/cpu-nios2/start.S
 create mode 100644 nios2/cpu-nios2/traps.c
 create mode 100644 nios2/include/asm/addrspace.h
 create mode 100644 nios2/include/asm/barebox.h
 create mode 100644 nios2/include/asm/bitops.h
 create mode 100644 nios2/include/asm/bitsperlong.h
 create mode 100644 nios2/include/asm/byteorder.h
 create mode 100644 nios2/include/asm/cache.h
 create mode 100644 nios2/include/asm/common.h
 create mode 100644 nios2/include/asm/dma-mapping.h
 create mode 100644 nios2/include/asm/early_printf.h
 create mode 100644 nios2/include/asm/elf.h
 create mode 100644 nios2/include/asm/entry.h
 create mode 100644 nios2/include/asm/getorder.h
 create mode 100644 nios2/include/asm/int-ll64.h
 create mode 100644 nios2/include/asm/io.h
 create mode 100644 nios2/include/asm/linkage.h
 create mode 100644 nios2/include/asm/memory_model.h
 create mode 100644 nios2/include/asm/nios2-io.h
 create mode 100644 nios2/include/asm/nios2.h
 create mode 100644 nios2/include/asm/opcodes.h
 create mode 100644 nios2/include/asm/page.h
 create mode 100644 nios2/include/asm/pfn.h
 create mode 100644 nios2/include/asm/pgtable-bits.h
 create mode 100644 nios2/include/asm/posix_types.h
 create mode 100644 nios2/include/asm/ptrace.h
 create mode 100644 nios2/include/asm/sections.h
 create mode 100644 nios2/include/asm/segment.h
 create mode 100644 nios2/include/asm/spaces.h
 create mode 100644 nios2/include/asm/string.h
 create mode 100644 nios2/include/asm/swab.h
 create mode 100644 nios2/include/asm/system.h
 create mode 100644 nios2/include/asm/types.h
 create mode 100644 nios2/include/asm/user.h
 create mode 100644 nios2/lib/Makefile
 create mode 100644 nios2/lib/board.c
 create mode 100644 nios2/lib/cache.S
 create mode 100644 nios2/lib/clock.c
 create mode 100644 nios2/lib/early_printf.c
 create mode 100644 nios2/lib/libgcc.c
 create mode 100644 nios2/lib/longlong.h

diff --git a/nios2/Kconfig b/nios2/Kconfig
new file mode 100644
index 0000000..9b6fd2b
--- /dev/null
+++ b/nios2/Kconfig
@@ -0,0 +1,39 @@
+config NIOS2
+	bool
+	select HAS_KALLSYMS
+	select HAS_MODULES
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	default y
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000
+		
+config BOARDINFO
+	default "Altera Generic Board" if GENERIC
+
+choice
+	prompt "Select your board"
+
+config GENERIC
+	bool "Altera Generic Board"
+	select NIOS2
+
+
+endchoice
+
+menu "Board configuration           "
+
+config EARLY_PRINTF
+	default n
+	bool "Enable early printf functions"
+	
+endmenu
+
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
+
diff --git a/nios2/Makefile b/nios2/Makefile
new file mode 100644
index 0000000..9842c0b
--- /dev/null
+++ b/nios2/Makefile
@@ -0,0 +1,31 @@
+CPPFLAGS += -fno-strict-aliasing
+
+board-$(CONFIG_GENERIC) := generic
+cpu-$(CONFIG_NIOS2)	:= nios2
+
+KALLSYMS         += --symbol-prefix=_
+
+archprepare: maketools
+
+	@echo "  SYMLINK include/nios_sopc.h -> arch/nios2/boards/$(board-y)/nios_sopc.h"
+	@ln -fsn ../arch/nios2/boards/$(board-y)/nios_sopc.h include/nios_sopc.h
+
+PHONY += maketools
+
+ifneq ($(board-y),)
+BOARD  := arch/nios2/boards/$(board-y)/
+else
+BOARD  :=
+endif
+
+ifneq ($(cpu-y),)
+CPU  := arch/nios2/cpu-$(cpu-y)/
+else
+CPU  :=
+endif
+
+common-y += $(BOARD)
+common-y += arch/nios2/lib/ $(CPU)
+
+lds-y += $(BOARD)/barebox.lds
+
diff --git a/nios2/configs/generic_defconfig b/nios2/configs/generic_defconfig
new file mode 100644
index 0000000..76b69da
--- /dev/null
+++ b/nios2/configs/generic_defconfig
@@ -0,0 +1,212 @@
+#
+# Automatically generated make config: don't edit
+# Linux/nios2 2011.02.0 Barebox Configuration
+# Mon Feb 21 22:11:24 2011
+#
+CONFIG_NIOS2=y
+CONFIG_BOARDINFO="Altera Generic Board"
+CONFIG_GENERIC=y
+
+#
+# Board configuration           
+#
+# CONFIG_EARLY_PRINTF is not set
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION_AUTO=y
+
+#
+# memory layout                 
+#
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x40000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=9600
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_MENU is not set
+# CONFIG_PASSWORD is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/nios2/boards/generic/env"
+# CONFIG_POLLER is not set
+
+#
+# Debugging                     
+#
+# CONFIG_DEBUG_INFO is not set
+# CONFIG_ENABLE_FLASH_NOISE is not set
+# CONFIG_ENABLE_PARTITION_NOISE is not set
+# CONFIG_ENABLE_DEVICE_NOISE is not set
+
+#
+# Commands                      
+#
+
+#
+# scripting                     
+#
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+# CONFIG_CMD_LOGIN is not set
+# CONFIG_CMD_PASSWD is not set
+
+#
+# file commands                 
+#
+CONFIG_CMD_LS=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_RMDIR=y
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+
+#
+# console                       
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+# CONFIG_CMD_ECHO_E is not set
+
+#
+# memory                        
+#
+# CONFIG_CMD_LOADB is not set
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+# CONFIG_CMD_MTEST is not set
+
+#
+# flash                         
+#
+CONFIG_CMD_FLASH=y
+# CONFIG_CMD_UBI is not set
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_ZLIB=y
+# CONFIG_CMD_BOOTM_BZLIB is not set
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+# CONFIG_CMD_UNLZO is not set
+CONFIG_NET=y
+# CONFIG_NET_DHCP is not set
+# CONFIG_NET_NFS is not set
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+# CONFIG_NET_NETCONSOLE is not set
+# CONFIG_NET_RESOLV is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+CONFIG_DRIVER_SERIAL_ALTERA=y
+# CONFIG_DRIVER_SERIAL_ALTERA_JTAG is not set
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_MIIDEV=y
+
+#
+# Network drivers               
+#
+CONFIG_DRIVER_NET_TSE=y
+# CONFIG_TSE_USE_DEDICATED_DESC_MEM is not set
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+
+#
+# SPI drivers                   
+#
+CONFIG_SPI=y
+# CONFIG_I2C is not set
+
+#
+# flash drivers                 
+#
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_INTEL=y
+CONFIG_DRIVER_CFI_AMD=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
+# CONFIG_CFI_BUFFER_WRITE is not set
+# CONFIG_MTD is not set
+# CONFIG_ATA is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
+# CONFIG_MCI is not set
+
+#
+# MFD
+#
+# CONFIG_I2C_MC13892 is not set
+# CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_LED is not set
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_ZLIB=y
+CONFIG_CRC32=y
+# CONFIG_DIGEST is not set
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/nios2/cpu-nios2/Makefile b/nios2/cpu-nios2/Makefile
new file mode 100644
index 0000000..c0ce4a6
--- /dev/null
+++ b/nios2/cpu-nios2/Makefile
@@ -0,0 +1,5 @@
+obj-y += start.o
+obj-y += exceptions.o
+obj-y += cpu.o
+obj-$(CONFIG_USE_IRQ) += interrupts.o
+obj-y += traps.o
\ No newline at end of file
diff --git a/nios2/cpu-nios2/cpu.c b/nios2/cpu-nios2/cpu.c
new file mode 100644
index 0000000..102b12e
--- /dev/null
+++ b/nios2/cpu-nios2/cpu.c
@@ -0,0 +1,38 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/system.h>
+
+void __noreturn reset_cpu(ulong ignored)
+{
+#ifdef CONFIG_USE_IRQ
+	disable_interrupts();
+#endif
+	/* indirect call to go beyond 256MB limitation of toolchain */
+	nios2_callr(RESET_ADDR);
+
+	/* Not reached */
+	while (1);
+}
+
diff --git a/nios2/cpu-nios2/exceptions.S b/nios2/cpu-nios2/exceptions.S
new file mode 100644
index 0000000..a949372
--- /dev/null
+++ b/nios2/cpu-nios2/exceptions.S
@@ -0,0 +1,160 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm/opcodes.h>
+
+
+	.text
+	.align 4
+
+	.global _exception
+
+	.set noat
+	.set nobreak
+
+_exception:
+	/* SAVE ALL REGS -- this allows trap and unimplemented
+	 * instruction handlers to be coded conveniently in C
+	 */
+	addi    sp, sp, -(33*4)
+	stw     r0, 0(sp)
+	stw     r1, 4(sp)
+	stw     r2, 8(sp)
+	stw     r3, 12(sp)
+	stw     r4, 16(sp)
+	stw     r5, 20(sp)
+	stw     r6, 24(sp)
+	stw     r7, 28(sp)
+	stw     r8, 32(sp)
+	stw     r9, 36(sp)
+	stw     r10, 40(sp)
+	stw     r11, 44(sp)
+	stw     r12, 48(sp)
+	stw     r13, 52(sp)
+	stw     r14, 56(sp)
+	stw     r15, 60(sp)
+	stw     r16, 64(sp)
+	stw     r17, 68(sp)
+	stw     r19, 72(sp)
+	stw     r19, 76(sp)
+	stw     r20, 80(sp)
+	stw     r21, 84(sp)
+	stw     r22, 88(sp)
+	stw     r23, 92(sp)
+	stw     r24, 96(sp)
+	stw     r25, 100(sp)
+	stw     r26, 104(sp)
+	stw     r27, 108(sp)
+	stw     r28, 112(sp)
+	stw     r29, 116(sp)
+	stw     r30, 120(sp)
+	stw     r31, 124(sp)
+	rdctl   et, estatus
+	stw     et, 128(sp)
+
+	/* If interrupts are disabled -- software interrupt */
+	rdctl   et, estatus
+	andi    et, et, 1
+	beq     et, r0, 0f
+
+	/* If no interrupts are pending -- software interrupt */
+	rdctl   et, ipending
+	beq     et, r0, 0f
+
+#ifdef CONFIG_USE_IRQ
+
+	/* HARDWARE INTERRUPT: Call interrupt handler */
+	movhi   r3, %hi(external_interrupt)
+	ori     r3, r3, %lo(external_interrupt)
+	mov     r4, sp    /* ptr to regs */
+	callr   r3
+#else
+        br      _exception_return
+#endif
+
+	/* Return address fixup: execution resumes by re-issue of
+	 * interrupted instruction at ea-4 (ea == r29). Here we do
+	 * simple fixup to allow common exception return.
+	 */
+	ldw     r3, 116(sp)
+	addi    r3, r3, -4
+	stw     r3, 116(sp)
+	br      _exception_return
+
+0:
+	/* TRAP EXCEPTION */
+	movhi   r3, %hi(OPC_TRAP)
+	ori     r3, r3, %lo(OPC_TRAP)
+	addi    r1, ea, -4
+	ldw     r1, 0(r1)
+	bne     r1, r3, 1f
+	movhi   r3, %hi(trap_handler)
+	ori     r3, r3, %lo(trap_handler)
+	mov     r4, sp  /* ptr to regs */
+	callr   r3
+	br      _exception_return
+
+1:
+	/* UNIMPLEMENTED INSTRUCTION EXCEPTION */
+	movhi   r3, %hi(soft_emulation)
+	ori     r3, r3, %lo(soft_emulation)
+	mov     r4, sp  /* ptr to regs */
+	callr   r3
+
+	/* Restore regsisters and return from exception*/
+_exception_return:
+	ldw     r1, 4(sp)
+	ldw     r2, 8(sp)
+	ldw     r3, 12(sp)
+	ldw     r4, 16(sp)
+	ldw     r5, 20(sp)
+	ldw     r6, 24(sp)
+	ldw     r7, 28(sp)
+	ldw     r8, 32(sp)
+	ldw     r9, 36(sp)
+	ldw     r10, 40(sp)
+	ldw     r11, 44(sp)
+	ldw     r12, 48(sp)
+	ldw     r13, 52(sp)
+	ldw     r14, 56(sp)
+	ldw     r15, 60(sp)
+	ldw     r16, 64(sp)
+	ldw     r17, 68(sp)
+	ldw     r19, 72(sp)
+	ldw     r19, 76(sp)
+	ldw     r20, 80(sp)
+	ldw     r21, 84(sp)
+	ldw     r22, 88(sp)
+	ldw     r23, 92(sp)
+	ldw     r24, 96(sp)
+	ldw     r25, 100(sp)
+	ldw     r26, 104(sp)
+	ldw     r27, 108(sp)
+	ldw     r28, 112(sp)
+	ldw     r29, 116(sp)
+	ldw     r30, 120(sp)
+	ldw     r31, 124(sp)
+	addi    sp, sp, (33*4)
+	eret
+/*-------------------------------------------------------------*/
diff --git a/nios2/cpu-nios2/interrupts.c b/nios2/cpu-nios2/interrupts.c
new file mode 100644
index 0000000..47da4f1
--- /dev/null
+++ b/nios2/cpu-nios2/interrupts.c
@@ -0,0 +1,140 @@
+/*
+ * (C) Copyright 2000-2002
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <nios2.h>
+#include <asm/nios2-io.h>
+#include <asm/types.h>
+#include <asm/io.h>
+#include <asm/ptrace.h>
+#include <common.h>
+#include <command.h>
+#include <watchdog.h>
+
+/****************************************************************************/
+
+struct irq_action {
+	interrupt_handler_t *handler;
+	void *arg;
+	int count;
+};
+
+static struct irq_action vecs[32];
+
+/****************************************************************************/
+
+int disable_interrupts (void)
+{
+	int val = rdctl (CTL_STATUS);
+	wrctl (CTL_STATUS, val & ~STATUS_IE);
+	return (val & STATUS_IE);
+}
+
+void enable_interrupts(void)
+{
+	int val = rdctl (CTL_STATUS);
+	wrctl (CTL_STATUS, val | STATUS_IE);
+}
+
+void external_interrupt (struct pt_regs *regs)
+{
+
+	unsigned irqs;
+	struct irq_action *act;
+
+	/* Evaluate only irqs that are both enabled AND pending */
+	irqs = rdctl (CTL_IENABLE) & rdctl (CTL_IPENDING);
+	act = vecs;
+
+	/* Assume (as does the Nios2 HAL) that bit 0 is highest
+	 * priority. NOTE: There is ALWAYS a handler assigned
+	 * (the default if no other).
+	 */
+	while (irqs) {
+		if (irqs & 1) {
+			act->handler (act->arg);
+			act->count++;
+		}
+		irqs >>=1;
+		act++;
+	}
+
+}
+
+static void def_hdlr (void *arg)
+{
+	unsigned irqs = rdctl (CTL_IENABLE);
+
+	/* Disable the individual interrupt -- with gratuitous
+	 * warning.
+	 */
+	irqs &= ~(1 << (int)arg);
+	wrctl (CTL_IENABLE, irqs);
+	printf ("WARNING: Disabling unhandled interrupt: %d\n",
+			(int)arg);
+}
+
+/*************************************************************************/
+void irq_install_handler (int irq, interrupt_handler_t *hdlr, void *arg)
+{
+
+	int flag;
+	struct irq_action *act;
+	unsigned ena = rdctl (CTL_IENABLE);
+
+	if ((irq < 0) || (irq > 31))
+		return;
+	act = &vecs[irq];
+
+	flag = disable_interrupts ();
+	if (hdlr) {
+		act->handler = hdlr;
+		act->arg = arg;
+		ena |= (1 << irq);		/* enable */
+	} else {
+		act->handler = def_hdlr;
+		act->arg = (void *)irq;
+		ena &= ~(1 << irq);		/* disable */
+	}
+	wrctl (CTL_IENABLE, ena);
+	if (flag) enable_interrupts ();
+}
+
+
+int interrupt_init (void)
+{
+	int i;
+
+	/* Assign the default handler to all */
+	for (i = 0; i < 32; i++) {
+		vecs[i].handler = def_hdlr;
+		vecs[i].arg = (void *)i;
+		vecs[i].count = 0;
+	}
+
+	enable_interrupts ();
+	return (0);
+}
+
diff --git a/nios2/cpu-nios2/start.S b/nios2/cpu-nios2/start.S
new file mode 100644
index 0000000..adfb1f2
--- /dev/null
+++ b/nios2/cpu-nios2/start.S
@@ -0,0 +1,165 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm-generic/memory_layout.h>
+
+/*************************************************************************
+ * RESTART
+ ************************************************************************/
+
+.section ".text_entry","ax"
+
+_start:
+	wrctl   status, r0      /* Disable interrupts */
+	/* ICACHE INIT -- only the icache line at the reset address
+	 * is invalidated at reset. So the init must stay within
+	 * the cache line size (8 words). If GERMS is used, we'll
+	 * just be invalidating the cache a second time. If cache
+	 * is not implemented initi behaves as nop.
+	 */
+	ori     r4, r0, %lo(ICACHE_LINE_SIZE)
+	movhi   r5, %hi(ICACHE_SIZE)
+	ori     r5, r5, %lo(ICACHE_SIZE)
+0:	initi   r5
+	sub     r5, r5, r4
+	bgt     r5, r0, 0b
+	br      _except_end   /* Skip the tramp */
+
+	/* EXCEPTION TRAMPOLINE -- the following gets copied
+	 * to the exception address (below), but is otherwise at the
+	 * default exception vector offset (0x0020).
+	 */
+_except_start:
+	movhi   et, %hi(_exception)
+	ori     et, et, %lo(_exception)
+	jmp     et
+_except_end:
+
+	/* INTERRUPTS -- for now, all interrupts masked and globally
+	 * disabled.
+	 */
+	wrctl   ienable, r0  /* All disabled */
+
+	/* DCACHE INIT -- if dcache not implemented, initd behaves as
+	 * nop.
+	 */
+	movhi   r4, %hi(DCACHE_LINE_SIZE)
+	ori     r4, r4, %lo(DCACHE_LINE_SIZE)
+	movhi   r5, %hi(DCACHE_SIZE)
+	ori     r5, r5, %lo(DCACHE_SIZE)
+	mov     r6, r0
+1:	initd   0(r6)
+	add     r6, r6, r4
+	bltu    r6, r5, 1b
+
+	/* RELOCATE CODE, DATA & COMMAND TABLE -- the following code
+	 * assumes code, data and the command table are all
+	 * contiguous. This lets us relocate everything as a single
+	 * block. Make sure the linker script matches this ;-)
+	 */
+	nextpc  r4
+_cur:	movhi   r5, %hi(_cur - _start)
+	ori     r5, r5, %lo(_cur - _start)
+	sub     r4, r4, r5                 /* r4 <- cur _start */
+	mov     r8, r4
+	movhi   r5, %hi(_start)
+	ori     r5, r5, %lo(_start)        /* r5 <- linked _start */
+	beq     r4, r5, 3f
+
+	movhi   r6, %hi(_edata)
+	ori     r6, r6, %lo(_edata)
+2:	ldwio   r7, 0(r4)
+	addi    r4, r4, 4
+	stwio   r7, 0(r5)
+	addi    r5, r5, 4
+	bne     r5, r6, 2b
+3:
+
+	/* ZERO BSS/SBSS -- bss and sbss are assumed to be adjacent
+	 * and between __bss_start and _end.
+	 */
+	 movhi  r5, %hi(__bss_start)
+	 ori    r5, r5, %lo(__bss_start)
+	 movhi  r6, %hi(_end)
+	 ori    r6, r6, %lo(_end)
+	 beq    r5, r6, 5f
+
+4:	stwio   r0, 0(r5)
+	 addi   r5, r5, 4
+	 bne    r5, r6, 4b
+5:
+
+	/* JUMP TO RELOC ADDR */
+	movhi   r4, %hi(_reloc)
+	ori     r4, r4, %lo(_reloc)
+	jmp     r4
+_reloc:
+
+	/* COPY EXCEPTION TRAMPOLINE -- copy the tramp to the
+	 * exception address. Define CONFIG_ROM_STUBS to prevent
+	 * the copy (e.g. exception in flash or in other
+	 * softare/firmware component).
+	 */
+#if !defined(CONFIG_ROM_STUBS)
+	movhi   r4, %hi(_except_start)
+	ori     r4, r4, %lo(_except_start)
+	movhi   r5, %hi(_except_end)
+	ori     r5, r5, %lo(_except_end)
+	movhi   r6, %hi(EXCEPTION_ADDR)
+	ori     r6, r6, %lo(EXCEPTION_ADDR)
+	beq     r4, r6, 7f                  /* Skip if at proper addr */
+
+6:	ldwio   r7, 0(r4)
+	stwio   r7, 0(r6)
+	addi    r4, r4, 4
+	addi    r6, r6, 4
+	bne     r4, r5, 6b
+7:
+#endif
+
+	/* STACK INIT -- zero top two words for call back chain.
+	 */
+	movhi   sp, %hi(STACK_BASE)
+	ori     sp, sp, %lo(STACK_BASE)
+	addi    sp, sp, -8
+	stw     r0, 0(sp)
+	stw     r0, 4(sp)
+	mov     fp, sp
+
+        /* Set the global pointer */
+	movhi   r26, %hi(_gp)
+	ori     r26, r26, %lo(_gp)
+
+	/*
+	 * Call board_init -- never returns
+	 */
+	movhi   r4, %hi(start_barebox@h)
+	ori     r4, r4, %lo(start_barebox@h)
+	callr   r4
+
+	/* NEVER RETURNS -- but branch to the _start just
+	 * in case ;-)
+	 */
+	br      _start
+
diff --git a/nios2/cpu-nios2/traps.c b/nios2/cpu-nios2/traps.c
new file mode 100644
index 0000000..849fc4d
--- /dev/null
+++ b/nios2/cpu-nios2/traps.c
@@ -0,0 +1,48 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <asm/ptrace.h>
+#include <common.h>
+
+void trap_handler (struct pt_regs *regs)
+{
+
+	/* Just issue warning */
+	printf ("\n\n*** WARNING: unimplemented trap @ %08x\n\n",
+			regs->reg[29] - 4);
+
+}
+
+void soft_emulation (struct pt_regs *regs)
+{
+
+	/* TODO: Software emulation of mul/div etc. Until this is
+	 * implemented, generate warning and hang.
+	 */
+	printf ("\n\n*** ERROR: unimplemented instruction @ %08x\n",
+			regs->reg[29] - 4);
+        
+	hang ();
+
+
+}
diff --git a/nios2/include/asm/addrspace.h b/nios2/include/asm/addrspace.h
new file mode 100644
index 0000000..2a905a1
--- /dev/null
+++ b/nios2/include/asm/addrspace.h
@@ -0,0 +1,15 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 99 Ralf Baechle
+ * Copyright (C) 2000, 2002  Maciej W. Rozycki
+ * Copyright (C) 1990, 1999 by Silicon Graphics, Inc.
+ */
+#ifndef _ASM_NIOS2_ADDRSPACE_H
+#define _ASM_NIOS2_ADDRSPACE_H
+
+#include <asm/spaces.h>
+
+#endif /* _ASM_NIOS2_ADDRSPACE_H */
diff --git a/nios2/include/asm/barebox.h b/nios2/include/asm/barebox.h
new file mode 100644
index 0000000..2fcf31c
--- /dev/null
+++ b/nios2/include/asm/barebox.h
@@ -0,0 +1,47 @@
+/*
+ * barebox - barebox.h Structure declarations for board specific data
+ *
+ * Copyright (c) 2005 blackfin.uclinux.org
+ *
+ * (C) Copyright 2000-2004
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef _BAREBOX_H_
+#define _BAREBOX_H_	1
+
+typedef struct bd_info {
+	int bi_baudrate;		/* serial console baudrate */
+	unsigned long bi_ip_addr;	/* IP Address */
+	unsigned char bi_enetaddr[6];	/* Ethernet adress */
+	unsigned long bi_arch_number;	/* unique id for this board */
+	unsigned long bi_boot_params;	/* where this board expects params */
+	unsigned long bi_memstart;	/* start of DRAM memory */
+	unsigned long bi_memsize;	/* size  of DRAM memory in bytes */
+	unsigned long bi_flashstart;	/* start of FLASH memory */
+	unsigned long bi_flashsize;	/* size  of FLASH memory */
+	unsigned long bi_flashoffset;	/* reserved area for startup monitor */
+} bd_t;
+
+#define bi_env_data bi_env->data
+#define bi_env_crc  bi_env->crc
+
+#endif	/* _BAREBOX_H_ */
diff --git a/nios2/include/asm/bitops.h b/nios2/include/asm/bitops.h
new file mode 100644
index 0000000..8108b0e
--- /dev/null
+++ b/nios2/include/asm/bitops.h
@@ -0,0 +1,45 @@
+#ifndef __ASM_GENERIC_BITOPS_H
+#define __ASM_GENERIC_BITOPS_H
+
+/*
+ * For the benefit of those who are trying to port Linux to another
+ * architecture, here are some C-language equivalents.  You should
+ * recode these in the native assembly language, if at all possible.
+ *
+ * C language equivalents written by Theodore Ts'o, 9/26/92
+ */
+/*
+#include <asm/irqflags.h>
+#include <asm/compiler.h>
+*/
+/*
+ * clear_bit may not imply a memory barrier
+ */
+#ifndef smp_mb__before_clear_bit
+#define smp_mb__before_clear_bit()	smp_mb()
+#define smp_mb__after_clear_bit()	smp_mb()
+#endif
+/*
+#include <asm/__ffs.h>
+#include <asm/ffz.h>
+#include <asm/fls.h>
+#include <asm/__fls.h>
+#include <asm/fls64.h>
+#include <asm/find.h>
+*/
+#ifndef _LINUX_BITOPS_H
+#error only <linux/bitops.h> can be included directly
+#endif
+/*
+#include <asm/sched.h>
+#include <asm/ffs.h>
+#include <asm/hweight.h>
+#include <asm/lock.h>*/
+/*
+#include <asm/atomic.h>
+#include <asm/non-atomic.h>
+#include <asm/ext2-non-atomic.h>
+#include <asm/ext2-atomic.h>
+#include <asm/minix.h>*/
+
+#endif /* __ASM_GENERIC_BITOPS_H */
diff --git a/nios2/include/asm/bitsperlong.h b/nios2/include/asm/bitsperlong.h
new file mode 100644
index 0000000..4ae54e0
--- /dev/null
+++ b/nios2/include/asm/bitsperlong.h
@@ -0,0 +1,32 @@
+#ifndef __ASM_GENERIC_BITS_PER_LONG
+#define __ASM_GENERIC_BITS_PER_LONG
+
+/*
+ * There seems to be no way of detecting this automatically from user
+ * space, so 64 bit architectures should override this in their
+ * bitsperlong.h. In particular, an architecture that supports
+ * both 32 and 64 bit user space must not rely on CONFIG_64BIT
+ * to decide it, but rather check a compiler provided macro.
+ */
+#ifndef __BITS_PER_LONG
+#define __BITS_PER_LONG 32
+#endif
+
+#ifdef __KERNEL__
+
+#ifdef CONFIG_64BIT
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif /* CONFIG_64BIT */
+
+/*
+ * FIXME: The check currently breaks x86-64 build, so it's
+ * temporarily disabled. Please fix x86-64 and reenable
+ */
+#if 0 && BITS_PER_LONG != __BITS_PER_LONG
+#error Inconsistent word size. Check asm/bitsperlong.h
+#endif
+
+#endif /* __KERNEL__ */
+#endif /* __ASM_GENERIC_BITS_PER_LONG */
diff --git a/nios2/include/asm/byteorder.h b/nios2/include/asm/byteorder.h
new file mode 100644
index 0000000..d5c152e
--- /dev/null
+++ b/nios2/include/asm/byteorder.h
@@ -0,0 +1,36 @@
+/*
+* (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+* Scott McNutt <smcnutt@psyent.com>
+*
+* See file CREDITS for list of people who contributed to this
+* project.
+*
+* This program is free software; you can redistribute it and/or
+* modify it under the terms of the GNU General Public License as
+* published by the Free Software Foundation; either version 2 of
+* the License, or (at your option) any later version.
+*
+* This program is distributed in the hope that it will be useful,
+* but WITHOUT ANY WARRANTY; without even the implied warranty of
+* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+* GNU General Public License for more details.
+*
+* You should have received a copy of the GNU General Public License
+* along with this program; if not, write to the Free Software
+* Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+* MA 02111-1307 USA
+*/
+
+#ifndef __ASM_NIOS2_BYTEORDER_H_
+#define __ASM_NIOS2_BYTEORDER_H_
+
+#include <asm/types.h>
+
+#if !defined(__STRICT_ANSI__) || defined(__KERNEL__)
+#  define __BYTEORDER_HAS_U64__
+#  define __SWAB_64_THRU_32__
+#endif
+
+#include <linux/byteorder/little_endian.h>
+
+#endif /* __ASM_NIOS2_BYTEORDER_H_ */
diff --git a/nios2/include/asm/cache.h b/nios2/include/asm/cache.h
new file mode 100644
index 0000000..81f931d
--- /dev/null
+++ b/nios2/include/asm/cache.h
@@ -0,0 +1,31 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __ASM_NIOS2_CACHE_H_
+#define __ASM_NIOS2_CACHE_H_
+
+extern void flush_dcache (unsigned long start, unsigned long size);
+extern void flush_icache (unsigned long start, unsigned long size);
+extern void flush_cache (unsigned long start, unsigned long size);
+
+#endif /* __ASM_NIOS2_CACHE_H_ */
diff --git a/nios2/include/asm/common.h b/nios2/include/asm/common.h
new file mode 100644
index 0000000..fa58e37
--- /dev/null
+++ b/nios2/include/asm/common.h
@@ -0,0 +1,5 @@
+
+/* We have to disable instruction cache before
+ * executing an external program
+ */
+#define ARCH_SHUTDOWN
diff --git a/nios2/include/asm/dma-mapping.h b/nios2/include/asm/dma-mapping.h
new file mode 100644
index 0000000..f9159c5
--- /dev/null
+++ b/nios2/include/asm/dma-mapping.h
@@ -0,0 +1,25 @@
+#ifndef __ASM_NIOS2_DMA_MAPPING_H
+#define __ASM_NIOS2_DMA_MAPPING_H
+
+#include <asm/cache.h>
+
+/* dma_alloc_coherent() return cache-line aligned allocation which is mapped
+ * to uncached io region.
+ *
+ * IO_REGION_BASE should be defined in board config header file
+ *   0x80000000 for nommu, 0xe0000000 for mmu
+ */
+
+static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
+{
+	void *addr = malloc(len + DCACHE_LINE_SIZE);
+	if (!addr)
+		return 0;
+	flush_dcache((unsigned long)addr, len + DCACHE_LINE_SIZE);
+	*handle = ((unsigned long)addr +
+		   (DCACHE_LINE_SIZE - 1)) &
+		~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
+	return (void *)(*handle | IO_REGION_BASE);
+}
+
+#endif /* __ASM_NIOS2_DMA_MAPPING_H */
diff --git a/nios2/include/asm/early_printf.h b/nios2/include/asm/early_printf.h
new file mode 100644
index 0000000..7acf797
--- /dev/null
+++ b/nios2/include/asm/early_printf.h
@@ -0,0 +1,10 @@
+#ifndef _EARLY_PRINTF_
+#define _EARLY_PRINTF_
+
+#include <asm/nios2-io.h>
+
+void early_putc( char ch );
+void early_puts(const char *s);
+int early_printf(const char *fmt, ...);
+
+#endif  /* _EARLY_PRINTF_ */
diff --git a/nios2/include/asm/elf.h b/nios2/include/asm/elf.h
new file mode 100644
index 0000000..6b55a23
--- /dev/null
+++ b/nios2/include/asm/elf.h
@@ -0,0 +1,119 @@
+#ifndef _ASM_NIOS2_ELF_H
+#define _ASM_NIOS2_ELF_H
+
+#define R_NIOS2_NONE		0
+#define R_NIOS2_S16		1
+#define R_NIOS2_U16		2
+#define R_NIOS2_PCREL16		3
+#define R_NIOS2_CALL26		4
+#define R_NIOS2_IMM5		5
+#define R_NIOS2_CACHE_OPX 	6
+#define R_NIOS2_IMM6		7
+#define R_NIOS2_IMM8		8
+#define R_NIOS2_HI16		9
+#define R_NIOS2_LO16		10
+#define R_NIOS2_HIADJ16 	11
+#define R_NIOS2_BFD_RELOC_32	12
+#define R_NIOS2_BFD_RELOC_16	13
+#define R_NIOS2_BFD_RELOC_8	14
+#define R_NIOS2_GPREL		15
+#define R_NIOS2_GNU_VTINHERIT 	16
+#define R_NIOS2_GNU_VTENTRY  	17
+#define R_NIOS2_UJMP		18
+#define R_NIOS2_CJMP		19
+#define R_NIOS2_CALLR		20
+#define R_NIOS2_ALIGN		21
+/* Keep this the last entry.  */
+#define R_NIOS2_NUM		22
+
+#include <asm/ptrace.h>
+#include <asm/user.h>
+
+typedef unsigned long elf_greg_t;
+
+#define ELF_NGREG (sizeof (struct pt_regs) / sizeof(elf_greg_t))
+typedef elf_greg_t elf_gregset_t[ELF_NGREG];
+
+typedef unsigned long elf_fpregset_t;
+
+/*
+ * This is used to ensure we don't load something for the wrong architecture.
+ */
+#define elf_check_arch(x) ((x)->e_machine == EM_ALTERA_NIOS2)
+
+/*
+ * These are used to set parameters in the core dumps.
+ */
+#define ELF_CLASS	ELFCLASS32
+#define ELF_DATA	ELFDATA2LSB
+#define ELF_ARCH	EM_ALTERA_NIOS2
+
+#define ELF_PLAT_INIT(_r, load_addr)
+
+#define USE_ELF_CORE_DUMP
+#define ELF_EXEC_PAGESIZE	4096
+
+/* This is the location that an ET_DYN program is loaded if exec'ed.  Typical
+   use of this is to invoke "./ld.so someprog" to test out a new version of
+   the loader.  We need to make sure that it is out of the way of the program
+   that it will "exec", and that there is sufficient room for the brk.  */
+
+#define ELF_ET_DYN_BASE         0xD0000000UL
+
+/* regs is struct pt_regs, pr_reg is elf_gregset_t (which is
+   now struct_user_regs, they are different) */
+
+#define ELF_CORE_COPY_REGS(pr_reg, regs)				\
+	/* Bleech. */							\
+	pr_reg[0]  = regs->r8;						\
+	pr_reg[1]  = regs->r9;						\
+	pr_reg[2]  = regs->r10;						\
+	pr_reg[3]  = regs->r11;						\
+	pr_reg[4]  = regs->r12;						\
+	pr_reg[5]  = regs->r13;						\
+	pr_reg[6]  = regs->r14;						\
+	pr_reg[7]  = regs->r15;						\
+	pr_reg[8]  = regs->r1;						\
+	pr_reg[9]  = regs->r2;						\
+	pr_reg[10] = regs->r3;						\
+	pr_reg[11] = regs->r4;						\
+	pr_reg[12] = regs->r5;						\
+	pr_reg[13] = regs->r6;						\
+	pr_reg[14] = regs->r7;						\
+	pr_reg[15] = regs->orig_r2;					\
+	pr_reg[16] = regs->ra;						\
+	pr_reg[17] = regs->fp;						\
+	pr_reg[18] = regs->sp;						\
+	pr_reg[19] = regs->gp;						\
+	pr_reg[20] = regs->estatus;					\
+	pr_reg[21] = regs->ea;						\
+	pr_reg[22] = regs->orig_r7;					\
+	{								\
+	  struct switch_stack *sw = ((struct switch_stack *)regs) - 1;	\
+	  pr_reg[23] = sw->r16;						\
+	  pr_reg[24] = sw->r17;						\
+	  pr_reg[25] = sw->r18;						\
+	  pr_reg[26] = sw->r19;						\
+	  pr_reg[27] = sw->r20;						\
+	  pr_reg[28] = sw->r21;						\
+	  pr_reg[29] = sw->r22;						\
+	  pr_reg[30] = sw->r23;						\
+	  pr_reg[31] = sw->fp;						\
+	  pr_reg[32] = sw->gp;						\
+	  pr_reg[33] = sw->ra;						\
+	}
+
+/* This yields a mask that user programs can use to figure out what
+   instruction set this cpu supports.  */
+
+#define ELF_HWCAP	(0)
+
+/* This yields a string that ld.so will use to load implementation
+   specific libraries for optimization.  This is more specific in
+   intent than poking at uname or /proc/cpuinfo.  */
+
+#define ELF_PLATFORM  (NULL)
+
+#define SET_PERSONALITY(ex) set_personality(PER_LINUX_32BIT)
+
+#endif
diff --git a/nios2/include/asm/entry.h b/nios2/include/asm/entry.h
new file mode 100644
index 0000000..c52d409
--- /dev/null
+++ b/nios2/include/asm/entry.h
@@ -0,0 +1,177 @@
+/*
+ * Hacked from m68knommu port.
+ *
+ *  Copyright(C) 2004 Microtronix Datacom Ltd.
+ *
+ * All rights reserved.          
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
+ * NON INFRINGEMENT.  See the GNU General Public License for more
+ * details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ *
+ */
+
+#ifndef _ASM_NIOS2_ENTRY_H
+#define _ASM_NIOS2_ENTRY_H
+
+#ifdef __ASSEMBLY__
+
+#include <asm/setup.h>
+#include <asm/page.h>
+#include <asm/asm-offsets.h>
+
+/*
+ * Stack layout in 'ret_from_exception':
+ *
+ * This allows access to the syscall arguments in registers r4-r8
+ *
+ *	 0(sp) - r8
+ *	 4(sp) - r9
+ *	 8(sp) - r10
+ *	 C(sp) - r11
+ *	10(sp) - r12
+ *	14(sp) - r13
+ *	18(sp) - r14
+ *	1C(sp) - r15
+ *	20(sp) - r1
+ *	24(sp) - r2
+ *	28(sp) - r3
+ *	2C(sp) - r4
+ *	30(sp) - r5
+ *	34(sp) - r6
+ *	38(sp) - r7
+ *	3C(sp) - orig_r2
+ *	40(sp) - ra
+ *	44(sp) - fp
+ *	48(sp) - sp
+ *	4C(sp) - gp
+ *	50(sp) - estatus
+ *	58(sp) - ea
+ *
+ */
+
+/* process bits for task_struct.flags */
+PF_TRACESYS_OFF = 3
+PF_TRACESYS_BIT = 5
+PF_PTRACED_OFF = 3
+PF_PTRACED_BIT = 4
+PF_DTRACE_OFF = 1
+PF_DTRACE_BIT = 5
+
+/*
+ * This defines the normal kernel pt-regs layout.
+ *
+ */
+
+/*
+ * Standard Nios2 interrupt entry and exit macros.
+ * Must be called with interrupts disabled.
+ */
+.macro SAVE_ALL
+	rdctl	r24,estatus
+	andi	r24,r24,NIOS2_STATUS_U_MSK_ASM
+	beq	r24,r0,1f		// In supervisor mode, already on kernel stack
+
+	movia	r24,_current_thread	// Switch to current kernel stack
+	ldw	r24,0(r24)		//  using the thread_info
+	addi	r24,r24,THREAD_SIZE_ASM-PT_REGS_SIZE
+	stw	sp,PT_SP(r24)		// Save user stack before changing
+	mov	sp,r24
+	br	2f
+
+1:	mov	r24,sp
+	addi	sp,sp,-PT_REGS_SIZE	// Backup the kernel stack pointer
+	stw	r24,PT_SP(sp)
+2:	stw	r1,PT_R1(sp)
+	stw	r2,PT_R2(sp)
+	stw	r3,PT_R3(sp)
+	stw	r4,PT_R4(sp)
+	stw	r5,PT_R5(sp)
+	stw	r6,PT_R6(sp)
+	stw	r7,PT_R7(sp)
+	stw	r8,PT_R8(sp)
+	stw	r9,PT_R9(sp)
+	stw	r10,PT_R10(sp)
+	stw	r11,PT_R11(sp)
+	stw	r12,PT_R12(sp)
+	stw	r13,PT_R13(sp)
+	stw	r14,PT_R14(sp)
+	stw	r15,PT_R15(sp)
+	stw	r2,PT_ORIG_R2(sp)
+	stw	r7,PT_ORIG_R7(sp)
+	stw	ra,PT_RA(sp)
+	stw	fp,PT_FP(sp)
+	stw	gp,PT_GP(sp)
+	rdctl	r24,estatus
+	stw	r24,PT_ESTATUS(sp)
+	stw	ea,PT_EA(sp)
+.endm
+
+.macro RESTORE_ALL
+ 	ldw	r1,PT_R1(sp)		// Restore registers
+	ldw	r2,PT_R2(sp)
+	ldw	r3,PT_R3(sp)
+	ldw	r4,PT_R4(sp)
+	ldw	r5,PT_R5(sp)
+	ldw	r6,PT_R6(sp)
+	ldw	r7,PT_R7(sp)
+	ldw	r8,PT_R8(sp)
+	ldw	r9,PT_R9(sp)
+	ldw	r10,PT_R10(sp)
+	ldw	r11,PT_R11(sp)
+	ldw	r12,PT_R12(sp)
+	ldw	r13,PT_R13(sp)
+	ldw	r14,PT_R14(sp)
+	ldw	r15,PT_R15(sp)
+	ldw	ra,PT_RA(sp)
+	ldw	fp,PT_FP(sp)
+	ldw	gp,PT_GP(sp)
+	ldw	r24,PT_ESTATUS(sp)
+	wrctl	estatus,r24
+	ldw	ea,PT_EA(sp)
+	ldw	sp,PT_SP(sp)		// Restore sp last
+.endm
+
+.macro	SAVE_SWITCH_STACK
+	addi	sp,sp,-SWITCH_STACK_SIZE
+	stw	r16,SW_R16(sp)
+	stw	r17,SW_R17(sp)
+	stw	r18,SW_R18(sp)
+	stw	r19,SW_R19(sp)
+	stw	r20,SW_R20(sp)
+	stw	r21,SW_R21(sp)
+	stw	r22,SW_R22(sp)
+	stw	r23,SW_R23(sp)
+	stw	fp,SW_FP(sp)
+	stw	gp,SW_GP(sp)
+	stw	ra,SW_RA(sp)
+.endm
+
+.macro	RESTORE_SWITCH_STACK
+	ldw	r16,SW_R16(sp)
+	ldw	r17,SW_R17(sp)
+	ldw	r18,SW_R18(sp)
+	ldw	r19,SW_R19(sp)
+	ldw	r20,SW_R20(sp)
+	ldw	r21,SW_R21(sp)
+	ldw	r22,SW_R22(sp)
+	ldw	r23,SW_R23(sp)
+	ldw	fp,SW_FP(sp)
+	ldw	gp,SW_GP(sp)
+	ldw	ra,SW_RA(sp)
+	addi	sp,sp,SWITCH_STACK_SIZE
+.endm
+
+#endif /* __ASSEMBLY__ */
+#endif /* _ASM_NIOS2_ENTRY_H */
diff --git a/nios2/include/asm/getorder.h b/nios2/include/asm/getorder.h
new file mode 100644
index 0000000..67e7245
--- /dev/null
+++ b/nios2/include/asm/getorder.h
@@ -0,0 +1,24 @@
+#ifndef __ASM_GENERIC_GETORDER_H
+#define __ASM_GENERIC_GETORDER_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/compiler.h>
+
+/* Pure 2^n version of get_order */
+static inline __attribute_const__ int get_order(unsigned long size)
+{
+	int order;
+
+	size = (size - 1) >> (PAGE_SHIFT - 1);
+	order = -1;
+	do {
+		size >>= 1;
+		order++;
+	} while (size);
+	return order;
+}
+
+#endif	/* __ASSEMBLY__ */
+
+#endif	/* __ASM_GENERIC_GETORDER_H */
diff --git a/nios2/include/asm/int-ll64.h b/nios2/include/asm/int-ll64.h
new file mode 100644
index 0000000..f394147
--- /dev/null
+++ b/nios2/include/asm/int-ll64.h
@@ -0,0 +1,78 @@
+/*
+ * asm-generic/int-ll64.h
+ *
+ * Integer declarations for architectures which use "long long"
+ * for 64-bit types.
+ */
+
+#ifndef _ASM_GENERIC_INT_LL64_H
+#define _ASM_GENERIC_INT_LL64_H
+
+#include <asm/bitsperlong.h>
+
+#ifndef __ASSEMBLY__
+/*
+ * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
+ * header files exported to user space
+ */
+
+typedef __signed__ char __s8;
+typedef unsigned char __u8;
+
+typedef __signed__ short __s16;
+typedef unsigned short __u16;
+
+typedef __signed__ int __s32;
+typedef unsigned int __u32;
+
+#ifdef __GNUC__
+__extension__ typedef __signed__ long long __s64;
+__extension__ typedef unsigned long long __u64;
+#else
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#ifdef __KERNEL__
+
+#ifndef __ASSEMBLY__
+
+typedef signed char s8;
+typedef unsigned char u8;
+
+typedef signed short s16;
+typedef unsigned short u16;
+
+typedef signed int s32;
+typedef unsigned int u32;
+
+typedef signed long long s64;
+typedef unsigned long long u64;
+
+#define S8_C(x)  x
+#define U8_C(x)  x ## U
+#define S16_C(x) x
+#define U16_C(x) x ## U
+#define S32_C(x) x
+#define U32_C(x) x ## U
+#define S64_C(x) x ## LL
+#define U64_C(x) x ## ULL
+
+#else /* __ASSEMBLY__ */
+
+#define S8_C(x)  x
+#define U8_C(x)  x
+#define S16_C(x) x
+#define U16_C(x) x
+#define S32_C(x) x
+#define U32_C(x) x
+#define S64_C(x) x
+#define U64_C(x) x
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif /* _ASM_GENERIC_INT_LL64_H */
diff --git a/nios2/include/asm/io.h b/nios2/include/asm/io.h
new file mode 100644
index 0000000..121405c
--- /dev/null
+++ b/nios2/include/asm/io.h
@@ -0,0 +1,130 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __ASM_NIOS2_IO_H_
+#define __ASM_NIOS2_IO_H_
+
+static inline void sync(void)
+{
+	__asm__ __volatile__ ("sync" : : : "memory");
+}
+
+/*
+ * Given a physical address and a length, return a virtual address
+ * that can be used to access the memory range with the caching
+ * properties specified by "flags".
+ */
+#define MAP_NOCACHE	(0)
+#define MAP_WRCOMBINE	(0)
+#define MAP_WRBACK	(0)
+#define MAP_WRTHROUGH	(0)
+
+static inline void *
+map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)
+{
+	return (void *)paddr;
+}
+
+/*
+ * Take down a mapping set up by map_physmem().
+ */
+static inline void unmap_physmem(void *vaddr, unsigned long flags)
+{
+
+}
+
+static inline phys_addr_t virt_to_phys(void * vaddr)
+{
+	return (phys_addr_t)(vaddr);
+}
+
+extern unsigned char inb (unsigned char *port);
+extern unsigned short inw (unsigned short *port);
+extern unsigned inl (unsigned port);
+
+#define __raw_writeb(v,a)       (*(volatile unsigned char  *)(a) = (v))
+#define __raw_writew(v,a)       (*(volatile unsigned short *)(a) = (v))
+#define __raw_writel(v,a)       (*(volatile unsigned int   *)(a) = (v))
+
+#define __raw_readb(a)          (*(volatile unsigned char  *)(a))
+#define __raw_readw(a)          (*(volatile unsigned short *)(a))
+#define __raw_readl(a)          (*(volatile unsigned int   *)(a))
+
+#define readb(addr)\
+	({unsigned char val;\
+	 asm volatile( "ldbio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
+#define readw(addr)\
+	({unsigned short val;\
+	 asm volatile( "ldhio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
+#define readl(addr)\
+	({unsigned long val;\
+	 asm volatile( "ldwio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
+
+#define writeb(val,addr)\
+	asm volatile ("stbio %0, 0(%1)" : : "r" (val), "r" (addr))
+#define writew(val,addr)\
+	asm volatile ("sthio %0, 0(%1)" : : "r" (val), "r" (addr))
+#define writel(val,addr)\
+	asm volatile ("stwio %0, 0(%1)" : : "r" (val), "r" (addr))
+
+#define inb(addr)	readb(addr)
+#define inw(addr)	readw(addr)
+#define inl(addr)	readl(addr)
+#define outb(val, addr)	writeb(val,addr)
+#define outw(val, addr)	writew(val,addr)
+#define outl(val, addr)	writel(val,addr)
+
+static inline void insb (unsigned long port, void *dst, unsigned long count)
+{
+	unsigned char *p = dst;
+	while (count--) *p++ = inb (port);
+}
+static inline void insw (unsigned long port, void *dst, unsigned long count)
+{
+	unsigned short *p = dst;
+	while (count--) *p++ = inw (port);
+}
+static inline void insl (unsigned long port, void *dst, unsigned long count)
+{
+	unsigned long *p = dst;
+	while (count--) *p++ = inl (port);
+}
+
+static inline void outsb (unsigned long port, const void *src, unsigned long count)
+{
+	const unsigned char *p = src;
+	while (count--) outb (*p++, port);
+}
+
+static inline void outsw (unsigned long port, const void *src, unsigned long count)
+{
+	const unsigned short *p = src;
+	while (count--) outw (*p++, port);
+}
+static inline void outsl (unsigned long port, const void *src, unsigned long count)
+{
+	const unsigned long *p = src;
+	while (count--) outl (*p++, port);
+}
+
+#endif /* __ASM_NIOS2_IO_H_ */
diff --git a/nios2/include/asm/linkage.h b/nios2/include/asm/linkage.h
new file mode 100644
index 0000000..b9bbc66
--- /dev/null
+++ b/nios2/include/asm/linkage.h
@@ -0,0 +1,7 @@
+#ifndef _ASM_NIOS2_LINKAGE_H
+#define _ASM_NIOS2_LINKAGE_H
+
+#define __ALIGN .align 4
+#define __ALIGN_STR ".align 4"
+
+#endif
diff --git a/nios2/include/asm/memory_model.h b/nios2/include/asm/memory_model.h
new file mode 100644
index 0000000..fb2d63f
--- /dev/null
+++ b/nios2/include/asm/memory_model.h
@@ -0,0 +1,77 @@
+#ifndef __ASM_MEMORY_MODEL_H
+#define __ASM_MEMORY_MODEL_H
+
+#ifndef __ASSEMBLY__
+
+#if defined(CONFIG_FLATMEM)
+
+#ifndef ARCH_PFN_OFFSET
+#define ARCH_PFN_OFFSET		(0UL)
+#endif
+
+#elif defined(CONFIG_DISCONTIGMEM)
+
+#ifndef arch_pfn_to_nid
+#define arch_pfn_to_nid(pfn)	pfn_to_nid(pfn)
+#endif
+
+#ifndef arch_local_page_offset
+#define arch_local_page_offset(pfn, nid)	\
+	((pfn) - NODE_DATA(nid)->node_start_pfn)
+#endif
+
+#endif /* CONFIG_DISCONTIGMEM */
+
+/*
+ * supports 3 memory models.
+ */
+#if defined(CONFIG_FLATMEM)
+
+#define __pfn_to_page(pfn)	(mem_map + ((pfn) - ARCH_PFN_OFFSET))
+#define __page_to_pfn(page)	((unsigned long)((page) - mem_map) + \
+				 ARCH_PFN_OFFSET)
+#elif defined(CONFIG_DISCONTIGMEM)
+
+#define __pfn_to_page(pfn)			\
+({	unsigned long __pfn = (pfn);		\
+	unsigned long __nid = arch_pfn_to_nid(__pfn);  \
+	NODE_DATA(__nid)->node_mem_map + arch_local_page_offset(__pfn, __nid);\
+})
+
+#define __page_to_pfn(pg)						\
+({	struct page *__pg = (pg);					\
+	struct pglist_data *__pgdat = NODE_DATA(page_to_nid(__pg));	\
+	(unsigned long)(__pg - __pgdat->node_mem_map) +			\
+	 __pgdat->node_start_pfn;					\
+})
+
+#elif defined(CONFIG_SPARSEMEM_VMEMMAP)
+
+/* memmap is virtually contiguous.  */
+#define __pfn_to_page(pfn)	(vmemmap + (pfn))
+#define __page_to_pfn(page)	(unsigned long)((page) - vmemmap)
+
+#elif defined(CONFIG_SPARSEMEM)
+/*
+ * Note: section's mem_map is encorded to reflect its start_pfn.
+ * section[i].section_mem_map == mem_map's address - start_pfn;
+ */
+#define __page_to_pfn(pg)					\
+({	struct page *__pg = (pg);				\
+	int __sec = page_to_section(__pg);			\
+	(unsigned long)(__pg - __section_mem_map_addr(__nr_to_section(__sec)));	\
+})
+
+#define __pfn_to_page(pfn)				\
+({	unsigned long __pfn = (pfn);			\
+	struct mem_section *__sec = __pfn_to_section(__pfn);	\
+	__section_mem_map_addr(__sec) + __pfn;		\
+})
+#endif /* CONFIG_FLATMEM/DISCONTIGMEM/SPARSEMEM */
+
+#define page_to_pfn __page_to_pfn
+#define pfn_to_page __pfn_to_page
+
+#endif /* __ASSEMBLY__ */
+
+#endif
diff --git a/nios2/include/asm/nios2-io.h b/nios2/include/asm/nios2-io.h
new file mode 100644
index 0000000..c20885b
--- /dev/null
+++ b/nios2/include/asm/nios2-io.h
@@ -0,0 +1,182 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/*************************************************************************
+ * Altera Nios2 Standard Peripherals
+ ************************************************************************/
+
+#ifndef __NIOS2IO_H__
+#define __NIOS2IO_H__
+
+/*------------------------------------------------------------------------
+ * UART (http://www.altera.com/literature/ds/ds_nios_uart.pdf)
+ *----------------------------------------------------------------------*/
+typedef volatile struct nios_uart_t {
+	unsigned	rxdata;		/* Rx data reg */
+	unsigned	txdata;		/* Tx data reg */
+	unsigned	status;		/* Status reg */
+	unsigned	control;	/* Control reg */
+	unsigned	divisor;	/* Baud rate divisor reg */
+	unsigned	endofpacket;	/* End-of-packet reg */
+}nios_uart_t;
+
+/* status register */
+#define NIOS_UART_PE		(1 << 0)	/* parity error */
+#define NIOS_UART_FE		(1 << 1)	/* frame error */
+#define NIOS_UART_BRK		(1 << 2)	/* break detect */
+#define NIOS_UART_ROE		(1 << 3)	/* rx overrun */
+#define NIOS_UART_TOE		(1 << 4)	/* tx overrun */
+#define NIOS_UART_TMT		(1 << 5)	/* tx empty */
+#define NIOS_UART_TRDY		(1 << 6)	/* tx ready */
+#define NIOS_UART_RRDY		(1 << 7)	/* rx ready */
+#define NIOS_UART_E		(1 << 8)	/* exception */
+#define NIOS_UART_DCTS		(1 << 10)	/* cts change */
+#define NIOS_UART_CTS		(1 << 11)	/* cts */
+#define NIOS_UART_EOP		(1 << 12)	/* eop detected */
+
+/* control register */
+#define NIOS_UART_IPE		(1 << 0)	/* parity error int ena*/
+#define NIOS_UART_IFE		(1 << 1)	/* frame error int ena */
+#define NIOS_UART_IBRK		(1 << 2)	/* break detect int ena */
+#define NIOS_UART_IROE		(1 << 3)	/* rx overrun int ena */
+#define NIOS_UART_ITOE		(1 << 4)	/* tx overrun int ena */
+#define NIOS_UART_ITMT		(1 << 5)	/* tx empty int ena */
+#define NIOS_UART_ITRDY		(1 << 6)	/* tx ready int ena */
+#define NIOS_UART_IRRDY		(1 << 7)	/* rx ready int ena */
+#define NIOS_UART_IE		(1 << 8)	/* exception int ena */
+#define NIOS_UART_TBRK		(1 << 9)	/* transmit break */
+#define NIOS_UART_IDCTS		(1 << 10)	/* cts change int ena */
+#define NIOS_UART_RTS		(1 << 11)	/* rts */
+#define NIOS_UART_IEOP		(1 << 12)	/* eop detected int ena */
+
+
+/*------------------------------------------------------------------------
+ * TIMER (http://www.altera.com/literature/ds/ds_nios_timer.pdf)
+ *----------------------------------------------------------------------*/
+typedef volatile struct nios_timer_t {
+	unsigned	status;			/* Timer status reg */
+	unsigned	control;		/* Timer control reg */
+	unsigned	periodl;		/* Timeout period low */
+	unsigned	periodh;		/* Timeout period high */
+	unsigned	snapl;			/* Snapshot low */
+	unsigned	snaph;			/* Snapshot high */
+}nios_timer_t;
+
+typedef volatile struct nios_timer_64t {
+	unsigned	status;			/* Timer status reg */
+	unsigned	control;		/* Timer control reg */
+	unsigned	period0;		/* Timeout period low */
+	unsigned	period1;		/* Timeout period high */
+ 	unsigned	period2;		/* Timeout period low */
+	unsigned	period3;		/* Timeout period high */   
+	unsigned	snap0;			/* Snapshot low */
+	unsigned	snap1;			/* Snapshot high */
+        unsigned	snap2;			/* Snapshot low */
+	unsigned	snap3;			/* Snapshot high */
+}nios_timer_64t;
+
+/* status register */
+#define NIOS_TIMER_TO		(1 << 0)	/* Timeout */
+#define NIOS_TIMER_RUN		(1 << 1)	/* Timer running */
+
+/* control register */
+#define NIOS_TIMER_ITO		(1 << 0)	/* Timeout int ena */
+#define NIOS_TIMER_CONT		(1 << 1)	/* Continuous mode */
+#define NIOS_TIMER_START	(1 << 2)	/* Start timer */
+#define NIOS_TIMER_STOP		(1 << 3)	/* Stop timer */
+
+
+/*------------------------------------------------------------------------
+ * PIO (http://www.altera.com/literature/ds/ds_nios_pio.pdf)
+ *----------------------------------------------------------------------*/
+typedef volatile struct nios_pio_t {
+	unsigned int	data;		/* Data value at each PIO in/out */
+	unsigned int	direction;	/* Data direct. for each PIO bit */
+	unsigned int	interruptmask;	/* Per-bit IRQ enable/disable */
+	unsigned int	edgecapture;	/* Per-bit sync. edge detect & hold */
+}nios_pio_t;
+
+/* direction register */
+#define NIOS_PIO_OUT		(1)		/* PIO bit is output */
+#define NIOS_PIO_IN		(0)		/* PIO bit is input */
+
+
+/*------------------------------------------------------------------------
+ * SPI (http://www.altera.com/literature/ds/ds_nios_spi.pdf)
+ *----------------------------------------------------------------------*/
+typedef volatile struct nios_spi_t {
+	unsigned	rxdata;		/* Rx data reg */
+	unsigned	txdata;		/* Tx data reg */
+	unsigned	status;		/* Status reg */
+	unsigned	control;	/* Control reg */
+	unsigned	reserved;	/* (master only) */
+	unsigned	slaveselect;	/* SPI slave select mask (master only) */
+}nios_spi_t;
+
+/* status register */
+#define NIOS_SPI_ROE		(1 << 3)	/* rx overrun */
+#define NIOS_SPI_TOE		(1 << 4)	/* tx overrun */
+#define NIOS_SPI_TMT		(1 << 5)	/* tx empty */
+#define NIOS_SPI_TRDY		(1 << 6)	/* tx ready */
+#define NIOS_SPI_RRDY		(1 << 7)	/* rx ready */
+#define NIOS_SPI_E		(1 << 8)	/* exception */
+
+/* control register */
+#define NIOS_SPI_IROE		(1 << 3)	/* rx overrun int ena */
+#define NIOS_SPI_ITOE		(1 << 4)	/* tx overrun int ena */
+#define NIOS_SPI_ITRDY		(1 << 6)	/* tx ready int ena */
+#define NIOS_SPI_IRRDY		(1 << 7)	/* rx ready int ena */
+#define NIOS_SPI_IE		(1 << 8)	/* exception int ena */
+#define NIOS_SPI_SSO		(1 << 10)	/* override SS_n output */
+
+/*------------------------------------------------------------------------
+ * JTAG UART
+ *----------------------------------------------------------------------*/
+typedef volatile struct nios_jtag_t {
+	unsigned	data;			/* Data register */
+	unsigned	control;		/* Control register */
+}nios_jtag_t;
+
+/* data register */
+#define NIOS_JTAG_RVALID	(1<<15)		/* Read valid */
+#define NIOS_JTAG_DATA(d)	((d)&0x0ff)	/* Read data */
+#define NIOS_JTAG_RAVAIL(d)	((d)>>16)	/* Read space avail */
+
+/* control register */
+#define NIOS_JTAG_RE		(1 << 0)	/* read intr enable */
+#define NIOS_JTAG_WE		(1 << 1)	/* write intr enable */
+#define NIOS_JTAG_RI		(1 << 8)	/* read intr pending */
+#define NIOS_JTAG_WI		(1 << 9)	/* write intr pending*/
+#define NIOS_JTAG_AC		(1 << 10)	/* activity indicator */
+#define NIOS_JTAG_RRDY		(1 << 12)	/* read available */
+#define NIOS_JTAG_WSPACE(d)	((d)>>16)	/* Write space avail */
+
+/*------------------------------------------------------------------------
+ * SYSTEM ID
+ *----------------------------------------------------------------------*/
+typedef volatile struct nios_sysid_t {
+	unsigned	id;			/* The system build id*/
+	unsigned	timestamp;		/* Timestamp */
+}nios_sysid_t;
+
+#endif /* __NIOS2IO_H__ */
diff --git a/nios2/include/asm/nios2.h b/nios2/include/asm/nios2.h
new file mode 100644
index 0000000..54954e3
--- /dev/null
+++ b/nios2/include/asm/nios2.h
@@ -0,0 +1,63 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __NIOS2_H__
+#define __NIOS2_H__
+
+/*------------------------------------------------------------------------
+ * Control registers -- use with wrctl() & rdctl()
+ *----------------------------------------------------------------------*/
+#define CTL_STATUS	0		/* Processor status reg		*/
+#define CTL_ESTATUS	1		/* Exception status reg		*/
+#define CTL_BSTATUS	2		/* Break status reg		*/
+#define CTL_IENABLE	3		/* Interrut enable reg		*/
+#define CTL_IPENDING	4		/* Interrut pending reg		*/
+
+/*------------------------------------------------------------------------
+ * Access to control regs
+ *----------------------------------------------------------------------*/
+#define _str_(x) #x
+
+#define rdctl(reg)\
+	({unsigned int val;\
+	asm volatile( "rdctl %0, ctl" _str_(reg)\
+		: "=r" (val) ); val;})
+
+#define wrctl(reg,val)\
+	asm volatile( "wrctl ctl" _str_(reg) ",%0"\
+		: : "r" (val))
+
+/*------------------------------------------------------------------------
+ * Control reg bit masks
+ *----------------------------------------------------------------------*/
+#define STATUS_IE	(1<<0)		/* Interrupt enable		*/
+#define STATUS_U	(1<<1)		/* User-mode			*/
+
+/*------------------------------------------------------------------------
+ * Bit-31 Cache bypass -- only valid for data access. When data cache
+ * is not implemented, bit 31 is ignored for compatibility.
+ *----------------------------------------------------------------------*/
+#define CACHE_BYPASS(a) ((a) | 0x80000000)
+#define CACHE_NO_BYPASS(a) ((a) & ~0x80000000)
+
+#endif /* __NIOS2_H__ */
diff --git a/nios2/include/asm/opcodes.h b/nios2/include/asm/opcodes.h
new file mode 100644
index 0000000..211f8ba
--- /dev/null
+++ b/nios2/include/asm/opcodes.h
@@ -0,0 +1,131 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __ASM_NIOS2_OPCODES_H_
+#define __ASM_NIOS2_OPCODES_H_
+
+#define OPCODE_OP(inst)	((inst) & 0x3f)
+#define OPCODE_OPX(inst) (((inst)>>11) & 0x3f)
+#define OPCODE_RA(inst) (((inst)>>27) & 01f)
+#define OPCODE_RB(inst) (((inst)>>22) & 01f)
+#define OPCODE_RC(inst) (((inst)>>17) & 01f)
+
+/* I-TYPE (immediate) and J-TYPE (jump) opcodes
+ */
+#define OPCODE_CALL	0x00
+#define OPCODE_LDBU	0x03
+#define OPCODE_ADDI	0x04
+#define OPCODE_STB	0x05
+#define OPCODE_BR	0x06
+#define OPCODE_LDB	0x07
+#define OPCODE_CMPGEI	0x08
+#define OPCODE_LDHU	0x0B
+#define OPCODE_ANDI	0x0C
+#define OPCODE_STH	0x0D
+#define OPCODE_BGE	0x0E
+#define OPCODE_LDH	0x0F
+#define OPCODE_CMPLTI	0x10
+#define OPCODE_XORI	0x1C
+#define OPCODE_ORI	0x14
+#define OPCODE_STW	0x15
+#define OPCODE_BLT	0x16
+#define OPCODE_LDW	0x17
+#define OPCODE_CMPNEI	0x18
+#define OPCODE_BNE	0x1E
+#define OPCODE_CMPEQI	0x20
+#define OPCODE_LDBUIO	0x23
+#define OPCODE_MULI	0x24
+#define OPCODE_STBIO	0x25
+#define OPCODE_BEQ	0x26
+#define OPCODE_LDBIO	0x27
+#define OPCODE_CMPGEUI	0x28
+#define OPCODE_ANDHI	0x2C
+#define OPCODE_STHIO	0x2D
+#define OPCODE_BGEU	0x2E
+#define OPCODE_LDHIO	0x2F
+#define OPCODE_CMPLTUI	0x30
+#define OPCODE_CUSTOM	0x32
+#define OPCODE_INITD	0x33
+#define OPCODE_ORHI	0x34
+#define OPCODE_STWIO	0x35
+#define OPCODE_BLTU	0x36
+#define OPCODE_LDWIO	0x37
+#define OPCODE_RTYPE	0x3A
+#define OPCODE_LDHUIO	0x2B
+#define OPCODE_FLUSHD	0x3B
+#define OPCODE_XORHI	0x3C
+
+/* R-Type (register) OPX field encodings
+ */
+#define OPCODE_ERET	0x01
+#define OPCODE_ROLI	0x02
+#define OPCODE_ROL	0x03
+#define OPCODE_FLUSHP	0x04
+#define OPCODE_RET	0x05
+#define OPCODE_NOR	0x06
+#define OPCODE_MULXUU	0x07
+#define OPCODE_CMPGE	0x08
+#define OPCODE_BRET	0x09
+#define OPCODE_ROR	0x0B
+#define OPCODE_FLUSHI	0x0C
+#define OPCODE_JMP	0x0D
+#define OPCODE_AND	0x0E
+
+#define OPCODE_CMPLT	0x10
+#define OPCODE_SLLI	0x12
+#define OPCODE_SLL	0x13
+#define OPCODE_OR	0x16
+#define OPCODE_MULXSU	0x17
+#define OPCODE_CMPNE	0x18
+#define OPCODE_SRLI	0x1A
+#define OPCODE_SRL	0x1B
+#define OPCODE_NEXTPC	0x1C
+#define OPCODE_CALLR	0x1D
+#define OPCODE_XOR	0x1E
+#define OPCODE_MULXSS	0x1F
+
+#define OPCODE_CMPEQ	0x20
+#define OPCODE_CMPLTU	0x30
+#define OPCODE_ADD	0x31
+#define OPCODE_DIVU	0x24
+#define OPCODE_DIV	0x25
+#define OPCODE_RDCTL	0x26
+#define OPCODE_MUL	0x27
+#define OPCODE_CMPGEU	0x28
+#define OPCODE_TRAP	0x2D
+#define OPCODE_WRCTL	0x2E
+
+#define OPCODE_BREAK	0x34
+#define OPCODE_SYNC	0x36
+#define OPCODE_INITI	0x29
+#define OPCODE_SUB	0x39
+#define OPCODE_SRAI	0x3A
+#define OPCODE_SRA	0x3B
+
+/*Full instruction encodings for R-Type, without the R's ;-)
+ *
+ * TODO: BREAK, BRET, ERET, RET, SYNC (as needed)
+ */
+#define OPC_TRAP	0x003b683a
+
+#endif /* __ASM_NIOS2_OPCODES_H_ */
diff --git a/nios2/include/asm/page.h b/nios2/include/asm/page.h
new file mode 100644
index 0000000..f855072
--- /dev/null
+++ b/nios2/include/asm/page.h
@@ -0,0 +1,129 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 - 1999, 2000, 03 Ralf Baechle
+ * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_NIOS2_PAGE_H
+#define _ASM_NIOS2_PAGE_H
+
+
+#include <asm/spaces.h>
+
+/*
+ * PAGE_SHIFT determines the page size
+ */
+#define PAGE_SHIFT	12
+#define PAGE_SIZE	4096
+#define PAGE_MASK	(~(PAGE_SIZE - 1))
+
+#ifndef __ASSEMBLY__
+
+/*
+ * This gives the physical RAM offset.
+ */
+#define PHYS_OFFSET		DDR2_TOP_BASE
+
+/*
+ * It's normally defined only for FLATMEM config but it's
+ * used in our early mem init code for all memory models.
+ * So always define it.
+ */
+#define ARCH_PFN_OFFSET		PFN_UP(PHYS_OFFSET)
+
+#include <asm/pfn.h>
+#include <asm/io.h>
+#include <linux/string.h>
+
+static inline void clear_page(void * page) {
+  memset(page, 0, PAGE_SIZE);
+}
+extern void copy_page(void * to, void * from);
+
+extern unsigned long shm_align_mask;
+
+static inline unsigned long pages_do_alias(unsigned long addr1,
+	unsigned long addr2)
+{
+	return (addr1 ^ addr2) & shm_align_mask;
+}
+
+struct page;
+
+extern void clear_user_page(void *addr, unsigned long vaddr, struct page *page);
+
+extern void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
+			   struct page *to);
+struct vm_area_struct;
+
+/*
+ * These are used to make use of C type-checking..
+ */
+typedef struct { unsigned long pte; } pte_t;
+#define pte_val(x)	((x).pte)
+#define __pte(x)	((pte_t) { (x) } )
+
+
+/*
+ * Finall the top of the hierarchy, the pgd
+ */
+typedef struct { unsigned long pgd; } pgd_t;
+#define pgd_val(x)	((x).pgd)
+#define __pgd(x)	((pgd_t) { (x) } )
+
+/*
+ * Manipulate page protection bits
+ */
+typedef struct { unsigned long pgprot; } pgprot_t;
+#define pgprot_val(x)	((x).pgprot)
+#define __pgprot(x)	((pgprot_t) { (x) } )
+
+typedef struct page *pgtable_t;
+
+/*
+ * On R4000-style MMUs where a TLB entry is mapping a adjacent even / odd
+ * pair of pages we only have a single global bit per pair of pages.  When
+ * writing to the TLB make sure we always have the bit set for both pages
+ * or none.  This macro is used to access the `buddy' of the pte we're just
+ * working on.
+ */
+#define ptep_buddy(x)	((pte_t *)((unsigned long)(x) ^ sizeof(pte_t)))
+
+#endif /* !__ASSEMBLY__ */
+
+/*
+ * __pa()/__va() should be used only during mem init.
+ */
+#define __pa_page_offset(x)	PAGE_OFFSET
+#define __pa_symbol(x)	__pa(RELOC_HIDE((unsigned long)(x),0))
+#define __pa(x)		((unsigned long)(x) - PAGE_OFFSET + PHYS_OFFSET)
+#define __va(x)		((void *)((unsigned long)(x) + PAGE_OFFSET - PHYS_OFFSET))
+
+#define pfn_to_kaddr(pfn)	__va((pfn) << PAGE_SHIFT)
+
+#define pfn_valid(pfn)		((pfn) >= ARCH_PFN_OFFSET && (pfn) < (max_mapnr + ARCH_PFN_OFFSET))
+
+#define virt_to_page(kaddr)	pfn_to_page(PFN_DOWN(virt_to_phys(kaddr)))
+#define virt_addr_valid(kaddr)	pfn_valid(PFN_DOWN(virt_to_phys(kaddr)))
+
+#define VM_DATA_DEFAULT_FLAGS	(VM_READ | VM_WRITE | VM_EXEC | \
+				 VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
+
+#define UNCAC_ADDR(addr) ((void *)((unsigned)(addr) | IO_REGION_BASE))
+#define CAC_ADDR(addr) ((void *)(((unsigned)(addr) & ~IO_REGION_BASE) | KERNEL_REGION_BASE))
+
+#define page_to_virt(page)	((((page) - mem_map) << PAGE_SHIFT) + PAGE_OFFSET)
+
+#if 0
+#ifdef CONFIG_LIMITED_DMA
+#define WANT_PAGE_VIRTUAL
+#endif
+#define WANT_PAGE_VIRTUAL
+#endif
+
+#include <asm/memory_model.h>
+#include <asm/getorder.h>
+
+#endif /* _ASM_NIOS2_PAGE_H */
diff --git a/nios2/include/asm/pfn.h b/nios2/include/asm/pfn.h
new file mode 100644
index 0000000..7646637
--- /dev/null
+++ b/nios2/include/asm/pfn.h
@@ -0,0 +1,13 @@
+#ifndef _LINUX_PFN_H_
+#define _LINUX_PFN_H_
+
+#ifndef __ASSEMBLY__
+#include <linux/types.h>
+#endif
+
+#define PFN_ALIGN(x)	(((unsigned long)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)
+#define PFN_UP(x)	(((x) + PAGE_SIZE-1) >> PAGE_SHIFT)
+#define PFN_DOWN(x)	((x) >> PAGE_SHIFT)
+#define PFN_PHYS(x)	((phys_addr_t)(x) << PAGE_SHIFT)
+
+#endif
diff --git a/nios2/include/asm/pgtable-bits.h b/nios2/include/asm/pgtable-bits.h
new file mode 100644
index 0000000..0e04c38
--- /dev/null
+++ b/nios2/include/asm/pgtable-bits.h
@@ -0,0 +1,38 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 - 2002 by Ralf Baechle
+ * Copyright (C) 1999, 2000, 2001 Silicon Graphics, Inc.
+ * Copyright (C) 2002  Maciej W. Rozycki
+ */
+#ifndef _ASM_NIOS2_PGTABLE_BITS_H
+#define _ASM_NIOS2_PGTABLE_BITS_H
+
+/* These are actual HW defined protection bits (unshifted) in TLBACC
+ */
+#define _PAGE_GLOBAL                (1<<0)
+#define _PAGE_EXEC                  (1<<1)
+#define _PAGE_WRITE                 (1<<2)
+#define _PAGE_READ                  (1<<3)
+#define _PAGE_CACHED                (1<<4)
+
+/* TLBACC also has 7 IGNORE bits to use for SW defined attributes
+ */
+#define _PAGE_PRESENT               (1<<5)
+#define _PAGE_ACCESSED              (1<<6)  
+#define _PAGE_MODIFIED              (1<<7)  
+#define _PAGE_FILE                  (1<<8)  
+#define _PAGE_VALID                 (1<<9)
+#define _PAGE_OLD                   (1<<10)
+
+#if 1
+/* ivho: lets not turn on caches right now...
+ */
+#define PAGE_CACHABLE_DEFAULT	_PAGE_CACHED
+#else
+#define PAGE_CACHABLE_DEFAULT	0
+#endif
+
+#endif /* _ASM_NIOS2_PGTABLE_BITS_H */
diff --git a/nios2/include/asm/posix_types.h b/nios2/include/asm/posix_types.h
new file mode 100644
index 0000000..2446d23
--- /dev/null
+++ b/nios2/include/asm/posix_types.h
@@ -0,0 +1,77 @@
+/*
+ *  arch/arm/include/asm/posix_types.h
+ *
+ *  Copyright (C) 1996-1998 Russell King.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ *  Changelog:
+ *   27-06-1996	RMK	Created
+ */
+#ifndef __ARCH_ARM_POSIX_TYPES_H
+#define __ARCH_ARM_POSIX_TYPES_H
+
+/*
+ * This file is generally used by user-level software, so you need to
+ * be a little careful about namespace pollution etc.  Also, we cannot
+ * assume GCC is being used.
+ */
+
+typedef unsigned long		__kernel_ino_t;
+typedef unsigned short		__kernel_mode_t;
+typedef unsigned short		__kernel_nlink_t;
+typedef long			__kernel_off_t;
+typedef int			__kernel_pid_t;
+typedef unsigned short		__kernel_ipc_pid_t;
+typedef unsigned short		__kernel_uid_t;
+typedef unsigned short		__kernel_gid_t;
+typedef unsigned int		__kernel_size_t;
+typedef int			__kernel_ssize_t;
+typedef int			__kernel_ptrdiff_t;
+typedef long			__kernel_time_t;
+typedef long			__kernel_suseconds_t;
+typedef long			__kernel_clock_t;
+typedef int			__kernel_timer_t;
+typedef int			__kernel_clockid_t;
+typedef int			__kernel_daddr_t;
+typedef char *			__kernel_caddr_t;
+typedef unsigned short		__kernel_uid16_t;
+typedef unsigned short		__kernel_gid16_t;
+typedef unsigned int		__kernel_uid32_t;
+typedef unsigned int		__kernel_gid32_t;
+
+typedef unsigned short		__kernel_old_uid_t;
+typedef unsigned short		__kernel_old_gid_t;
+typedef unsigned short		__kernel_old_dev_t;
+
+#ifdef __GNUC__
+typedef long long		__kernel_loff_t;
+#endif
+
+typedef struct {
+	int	val[2];
+} __kernel_fsid_t;
+
+#if defined(__KERNEL__)
+
+#undef	__FD_SET
+#define __FD_SET(fd, fdsetp) \
+		(((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] |= (1<<((fd) & 31)))
+
+#undef	__FD_CLR
+#define __FD_CLR(fd, fdsetp) \
+		(((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] &= ~(1<<((fd) & 31)))
+
+#undef	__FD_ISSET
+#define __FD_ISSET(fd, fdsetp) \
+		((((fd_set *)(fdsetp))->fds_bits[(fd) >> 5] & (1<<((fd) & 31))) != 0)
+
+#undef	__FD_ZERO
+#define __FD_ZERO(fdsetp) \
+		(memset (fdsetp, 0, sizeof (*(fd_set *)(fdsetp))))
+
+#endif
+
+#endif
diff --git a/nios2/include/asm/ptrace.h b/nios2/include/asm/ptrace.h
new file mode 100644
index 0000000..5430880
--- /dev/null
+++ b/nios2/include/asm/ptrace.h
@@ -0,0 +1,33 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __ASM_NIOS2_PTRACE_H_
+#define __ASM_NIOS2_PTRACE_H_
+
+struct pt_regs {
+	unsigned reg[32];
+	unsigned status;
+};
+
+
+#endif /* __ASM_NIOS2_PTRACE_H_ */
diff --git a/nios2/include/asm/sections.h b/nios2/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/nios2/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/nios2/include/asm/segment.h b/nios2/include/asm/segment.h
new file mode 100644
index 0000000..50d94fb
--- /dev/null
+++ b/nios2/include/asm/segment.h
@@ -0,0 +1,6 @@
+#ifndef _ASM_NIOS2_SEGMENT_H
+#define _ASM_NIOS2_SEGMENT_H
+
+/* Only here because we have some old header files that expect it.. */
+
+#endif /* _ASM_NIOS2_SEGMENT_H */
diff --git a/nios2/include/asm/spaces.h b/nios2/include/asm/spaces.h
new file mode 100644
index 0000000..fdc21f5
--- /dev/null
+++ b/nios2/include/asm/spaces.h
@@ -0,0 +1,32 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994 - 1999, 2000, 03, 04 Ralf Baechle
+ * Copyright (C) 2000, 2002  Maciej W. Rozycki
+ * Copyright (C) 1990, 1999, 2000 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_NIOS2_GENERIC_SPACES_H
+#define _ASM_NIOS2_GENERIC_SPACES_H
+
+#if 0
+
+#include <asm/nios.h>
+
+/*
+ * This handles the memory map.
+ * We handle pages at KSEG0 for kernels with 32 bit address space.
+ */
+#define PAGE_OFFSET		(KERNEL_REGION_BASE + DDR2_TOP_BASE)
+
+/*
+ * Memory above this physical address will be considered highmem.
+ */
+#ifndef HIGHMEM_START
+#define HIGHMEM_START		0x20000000UL
+#endif
+
+#endif
+
+#endif /* _ASM_NIOS2_GENERIC_SPACES_H */
diff --git a/nios2/include/asm/string.h b/nios2/include/asm/string.h
new file mode 100644
index 0000000..39e78a6
--- /dev/null
+++ b/nios2/include/asm/string.h
@@ -0,0 +1,47 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#ifndef __ASM_NIOS2_STRING_H_
+#define __ASM_NIOS2_STRING_H_
+/*
+#undef __HAVE_ARCH_STRRCHR
+extern char * strrchr(const char * s, int c);
+
+#undef __HAVE_ARCH_STRCHR
+extern char * strchr(const char * s, int c);
+*/
+#undef __HAVE_ARCH_MEMCPY
+extern void * memcpy(void *, const void *, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMMOVE
+extern void * memmove(void *, const void *, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMCHR
+extern void * memchr(const void *, int, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMSET
+extern void * memset(void *, int, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMZERO
+extern void memzero(void *ptr, __kernel_size_t n);
+
+#endif /* __ASM_NIOS2_STRING_H_ */
diff --git a/nios2/include/asm/swab.h b/nios2/include/asm/swab.h
new file mode 100644
index 0000000..63fd695
--- /dev/null
+++ b/nios2/include/asm/swab.h
@@ -0,0 +1,4 @@
+#ifndef _NIOS2_SWAB_H
+#define _NIOS2_SWAB_H
+
+#endif				/* _NIOS2_SWAB_H */
diff --git a/nios2/include/asm/system.h b/nios2/include/asm/system.h
new file mode 100644
index 0000000..086d92b
--- /dev/null
+++ b/nios2/include/asm/system.h
@@ -0,0 +1,64 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#ifndef __ASM_NIOS2_SYSTEM_H_
+#define __ASM_NIOS2_SYSTEM_H_
+
+#define local_irq_enable() __asm__ __volatile__ (  \
+	"rdctl	r8, status\n"			   \
+	"ori	r8, r8, 1\n"			   \
+	"wrctl	status, r8\n"			   \
+	: : : "r8")
+
+#define local_irq_disable() __asm__ __volatile__ ( \
+	"rdctl	r8, status\n"			   \
+	"andi	r8, r8, 0xfffe\n"		   \
+	"wrctl	status, r8\n"			   \
+	: : : "r8")
+
+#define local_save_flags(x) __asm__ __volatile__ (	\
+	"rdctl	r8, status\n"				\
+	"mov	%0, r8\n"				\
+	: "=r" (x) : : "r8", "memory")
+
+#define local_irq_restore(x) __asm__ __volatile__ (	\
+	"mov	r8, %0\n"				\
+	"wrctl	status, r8\n"				\
+	: : "r" (x) : "r8", "memory")
+
+/* For spinlocks etc */
+#define local_irq_save(x) do { local_save_flags(x); local_irq_disable(); } \
+	while (0)
+
+#define	irqs_disabled()					\
+({							\
+	unsigned long flags;				\
+	local_save_flags(flags);			\
+	((flags & NIOS2_STATUS_PIE_MSK) == 0x0);	\
+})
+
+/* indirect call to go beyond 256MB limitation of toolchain */
+#define nios2_callr(addr) __asm__ __volatile__ (	\
+	"callr	%0"					\
+	: : "r" (addr))
+
+#endif /* __ASM_NIOS2_SYSTEM_H */
diff --git a/nios2/include/asm/types.h b/nios2/include/asm/types.h
new file mode 100644
index 0000000..bd61ab8
--- /dev/null
+++ b/nios2/include/asm/types.h
@@ -0,0 +1,31 @@
+#ifndef __ASM_ARM_TYPES_H
+#define __ASM_ARM_TYPES_H
+
+#include <asm/int-ll64.h>
+
+#ifndef __ASSEMBLY__
+
+typedef unsigned short umode_t;
+
+#endif /* __ASSEMBLY__ */
+
+/*
+ * These aren't exported outside the kernel to avoid name space clashes
+ */
+#ifdef __KERNEL__
+
+#define BITS_PER_LONG 32
+
+#ifndef __ASSEMBLY__
+
+/* Dma addresses are 32-bits wide.  */
+
+typedef u32 dma_addr_t;
+typedef u32 dma64_addr_t;
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif
+
diff --git a/nios2/include/asm/user.h b/nios2/include/asm/user.h
new file mode 100644
index 0000000..61586f5
--- /dev/null
+++ b/nios2/include/asm/user.h
@@ -0,0 +1,136 @@
+#ifndef _ASM_NIOS2_USER_H
+#define _ASM_NIOS2_USER_H
+
+/*--------------------------------------------------------------------
+ *
+ * include/asm-nios2/user.h
+ *
+ * Derived from M68knommu
+ *
+ * Copyright (C) 2004   Microtronix Datacom Ltd
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ *
+ * Jan/20/2004		dgt	    NiosII
+ *
+ ---------------------------------------------------------------------*/
+
+
+#include <asm/page.h>
+
+/* Core file format: The core file is written in such a way that gdb
+   can understand it and provide useful information to the user (under
+   linux we use the 'trad-core' bfd).  There are quite a number of
+   obstacles to being able to view the contents of the floating point
+   registers, and until these are solved you will not be able to view the
+   contents of them.  Actually, you can read in the core file and look at
+   the contents of the user struct to find out what the floating point
+   registers contain.
+   The actual file contents are as follows:
+   UPAGE: 1 page consisting of a user struct that tells gdb what is present
+   in the file.  Directly after this is a copy of the task_struct, which
+   is currently not used by gdb, but it may come in useful at some point.
+   All of the registers are stored as part of the upage.  The upage should
+   always be only one page.
+   DATA: The data area is stored.  We use current->end_text to
+   current->brk to pick up all of the user variables, plus any memory
+   that may have been malloced.  No attempt is made to determine if a page
+   is demand-zero or if a page is totally unused, we just cover the entire
+   range.  All of the addresses are rounded in such a way that an integral
+   number of pages is written.
+   STACK: We need the stack information in order to get a meaningful
+   backtrace.  We need to write the data from (esp) to
+   current->start_stack, so we round each of these off in order to be able
+   to write an integer number of pages.
+   The minimum core file size is 3 pages, or 12288 bytes.
+*/
+
+struct user_m68kfp_struct {
+	unsigned long  fpregs[8*3];	/* fp0-fp7 registers */
+	unsigned long  fpcntl[3];	/* fp control regs */
+};
+
+/* This is needs more work, probably should look like gdb useage */
+struct user_regs_struct {
+	unsigned long  r8;		/* r8-r15 Caller-saved GP registers */
+	unsigned long  r9;
+	unsigned long  r10;
+	unsigned long  r11;
+	unsigned long  r12;
+	unsigned long  r13;
+	unsigned long  r14;
+	unsigned long  r15;
+	unsigned long  r1;		/* Assembler temporary */
+	unsigned long  r2;		/* Retval LS 32bits */
+	unsigned long  r3;		/* Retval MS 32bits */
+	unsigned long  r4;		/* r4-r7 Register arguments */
+	unsigned long  r5;
+	unsigned long  r6;
+	unsigned long  r7;
+	unsigned long  orig_r2;		/* Copy of r2 ?? */
+	unsigned long  ra;		/* Return address */
+	unsigned long  fp;		/* Frame pointer */
+	unsigned long  sp;		/* Stack pointer */
+	unsigned long  gp;		/* Global pointer */
+	unsigned long  estatus;
+	unsigned long  ea;		/* Exception return address (pc) */
+	unsigned long  orig_r7;
+
+	unsigned long  r16;		/* r16-r23 Callee-saved GP registers */
+	unsigned long  r17;
+	unsigned long  r18;
+	unsigned long  r19;
+	unsigned long  r20;
+	unsigned long  r21;
+	unsigned long  r22;
+	unsigned long  r23;
+	unsigned long  sw_fp;
+	unsigned long  sw_gp;
+	unsigned long  sw_ra;
+};
+
+	
+/* When the kernel dumps core, it starts by dumping the user struct -
+   this will be used by gdb to figure out where the data and stack segments
+   are within the file, and what virtual addresses to use. */
+struct user{
+/* We start with the registers, to mimic the way that "memory" is returned
+   from the ptrace(3,...) function.  */
+  struct user_regs_struct regs;	/* Where the registers are actually stored */
+/* ptrace does not yet supply these.  Someday.... */
+  int u_fpvalid;		/* True if math co-processor being used. */
+                                /* for this mess. Not yet used. */
+  struct user_m68kfp_struct m68kfp; /* Math Co-processor registers. */
+/* The rest of this junk is to help gdb figure out what goes where */
+  unsigned long int u_tsize;	/* Text segment size (pages). */
+  unsigned long int u_dsize;	/* Data segment size (pages). */
+  unsigned long int u_ssize;	/* Stack segment size (pages). */
+  unsigned long start_code;     /* Starting virtual address of text. */
+  unsigned long start_stack;	/* Starting virtual address of stack area.
+				   This is actually the bottom of the stack,
+				   the top of the stack is always found in the
+				   esp register.  */
+  long int signal;     		/* Signal that caused the core dump. */
+  int reserved;			/* No longer used */
+  unsigned long u_ar0;
+				/* Used by gdb to help find the values for */
+				/* the registers. */
+  struct user_m68kfp_struct* u_fpstate;	/* Math Co-processor pointer. */
+  unsigned long magic;		/* To uniquely identify a core file */
+  char u_comm[32];		/* User command that was responsible */
+};
+#define NBPG PAGE_SIZE
+#define UPAGES 1
+#define HOST_TEXT_START_ADDR (u.start_code)
+#define HOST_STACK_END_ADDR (u.start_stack + u.u_ssize * NBPG)
+
+#endif  /* _ASM_NIOS2_USER_H */
diff --git a/nios2/lib/Makefile b/nios2/lib/Makefile
new file mode 100644
index 0000000..328ca01
--- /dev/null
+++ b/nios2/lib/Makefile
@@ -0,0 +1,6 @@
+obj-y += board.o
+obj-y += libgcc.o
+obj-y += clock.o
+obj-y += cache.o
+obj-$(CONFIG_EARLY_PRINTF) += early_printf.o
+
diff --git a/nios2/lib/board.c b/nios2/lib/board.c
new file mode 100644
index 0000000..53aa9ef
--- /dev/null
+++ b/nios2/lib/board.c
@@ -0,0 +1,47 @@
+/*
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <init.h>
+#include <mem_malloc.h>
+#include <asm-generic/memory_layout.h>
+#include <cache.h>
+
+int altera_mem_malloc_init(void)
+{
+
+	mem_malloc_init((void *)(NIOS_SOPC_TEXT_BASE - MALLOC_SIZE),
+	                (void *)(NIOS_SOPC_TEXT_BASE));
+	
+	return 0;
+}
+
+core_initcall(altera_mem_malloc_init);
+
+void arch_shutdown(void)
+{
+#ifdef CONFIG_USE_IRQ
+	disable_interrupts();
+#endif
+}
+
diff --git a/nios2/lib/cache.S b/nios2/lib/cache.S
new file mode 100644
index 0000000..b7eff0c
--- /dev/null
+++ b/nios2/lib/cache.S
@@ -0,0 +1,74 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+
+	.text
+
+	.global flush_dcache
+
+flush_dcache:
+	add     r5, r5, r4
+	movhi   r8, %hi(DCACHE_LINE_SIZE)
+	ori     r8, r8, %lo(DCACHE_LINE_SIZE)
+0:	flushd  0(r4)
+	add     r4, r4, r8
+	bltu    r4, r5, 0b
+	ret
+
+
+	.global flush_icache
+
+flush_icache:
+	add     r5, r5, r4
+	movhi   r8, %hi(ICACHE_LINE_SIZE)
+	ori     r8, r8, %lo(ICACHE_LINE_SIZE)
+1:	flushi  r4
+	add     r4, r4, r8
+	bltu    r4, r5, 1b
+	ret
+
+	.global flush_cache
+
+flush_cache:
+	add     r5, r5, r4
+	mov     r9, r4
+	mov     r10, r5
+
+	movhi   r8, %hi(DCACHE_LINE_SIZE)
+	ori     r8, r8, %lo(DCACHE_LINE_SIZE)
+0:	flushd  0(r4)
+	add     r4, r4, r8
+	bltu    r4, r5, 0b
+
+	mov     r4, r9
+	mov     r5, r10
+	movhi   r8, %hi(ICACHE_LINE_SIZE)
+	ori     r8, r8, %lo(ICACHE_LINE_SIZE)
+1:	flushi  r4
+	add     r4, r4, r8
+	bltu    r4, r5, 1b
+
+	sync
+	flushp
+	ret
diff --git a/nios2/lib/clock.c b/nios2/lib/clock.c
new file mode 100644
index 0000000..e27df0e
--- /dev/null
+++ b/nios2/lib/clock.c
@@ -0,0 +1,61 @@
+/*
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+ 
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+#include <asm/nios2-io.h>
+
+static nios_timer_t *timer = (nios_timer_t *) NIOS_SOPC_TIMER_BASE;
+
+static uint64_t nios_clocksource_read(void)
+{
+	uint64_t value;
+	
+	writew(0x5555, &timer->snapl);       /* Dummy value*/
+	value = (uint64_t)((readw(&timer->snaph) << 16) + readw(&timer->snapl));
+	
+	return ~value;
+}
+
+static struct clocksource cs = {
+	.read	= nios_clocksource_read,
+	.mask	= 0xffffffff,
+	.shift	= 12,
+};
+
+static int clocksource_init (void)
+{
+	writew(0, &timer->control);
+	writew(0xFFFF, &timer->periodl);
+	writew(0xFFFF, &timer->periodh);
+	writew(NIOS_TIMER_CONT | NIOS_TIMER_START, &timer->control);
+
+	cs.mult = clocksource_hz2mult(NIOS_SOPC_TIMER_FREQ, cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
+
diff --git a/nios2/lib/early_printf.c b/nios2/lib/early_printf.c
new file mode 100644
index 0000000..1bd140c
--- /dev/null
+++ b/nios2/lib/early_printf.c
@@ -0,0 +1,58 @@
+/*
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <stdio.h>
+#include <common.h>
+#include <asm/nios2-io.h>
+
+void early_putc( char ch )
+{
+	static nios_uart_t *uart = (nios_uart_t *) NIOS_SOPC_UART_BASE;
+
+	while((readl (&uart->status) & NIOS_UART_TRDY) == 0);
+	writel((unsigned char)ch, &uart->txdata);
+
+}
+
+void early_puts(const char *s)
+{
+	while (*s != 0) {
+		early_putc (*s++);
+	}
+}
+
+int early_printf(const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[50];
+
+	va_start(args, fmt);
+
+	i = vsprintf(printbuffer, fmt, args);
+	va_end(args);
+
+	early_puts(printbuffer);
+	
+	return 0;
+}
+
diff --git a/nios2/lib/libgcc.c b/nios2/lib/libgcc.c
new file mode 100644
index 0000000..74e3aea
--- /dev/null
+++ b/nios2/lib/libgcc.c
@@ -0,0 +1,605 @@
+/*
+ * This file is part of GNU CC.
+ *
+ * GNU CC is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published
+ * by the Free Software Foundation; either version 2, or (at your
+ * option) any later version.
+ *
+ * GNU CC is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public
+ * License along with GNU CC; see the file COPYING.  If not, write
+ * to the Free Software Foundation, 59 Temple Place - Suite 330,
+ * Boston, MA 02111-1307, USA.
+ */
+
+typedef unsigned int UWtype;
+typedef unsigned int UHWtype;
+typedef unsigned long long UDWtype;
+#define W_TYPE_SIZE 32
+
+typedef unsigned char UQItype;
+typedef long SItype;
+typedef unsigned long USItype;
+typedef long long DItype;
+typedef unsigned long long DSItype;
+
+#include "longlong.h"
+
+
+typedef int word_type;
+typedef long Wtype;
+typedef long long DWtype;
+
+struct DWstruct { Wtype low, high;};
+
+typedef union
+{
+  struct DWstruct s;
+  DWtype ll;
+} DWunion;
+
+#define BITS_PER_UNIT 8
+
+UDWtype
+__udivmoddi4 (UDWtype n, UDWtype d, UDWtype *rp);
+
+const UQItype __clz_tab[256] =
+{
+  0,1,2,2,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
+  6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
+  7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
+  7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
+  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,
+  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,
+  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,
+  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8
+};
+
+
+DWtype
+__ashldi3 (DWtype u, word_type b)
+{
+
+  const DWunion uu = {.ll = u};
+  const word_type bm = (sizeof (Wtype) * BITS_PER_UNIT) - b;
+  DWunion w;  
+  UWtype carries;
+  
+  if (b == 0)
+    return u;
+ 
+  if (bm <= 0)
+    {
+      w.s.low = 0;
+      w.s.high = (UWtype) uu.s.low << -bm;
+    }
+  else
+    {
+      carries = (UWtype) uu.s.low >> bm;
+
+      w.s.low = (UWtype) uu.s.low << b;
+      w.s.high = ((UWtype) uu.s.high << b) | carries;
+    }
+
+  return w.ll;
+}
+
+DWtype
+__ashrdi3 (DWtype u, word_type b)
+{
+
+  const DWunion uu = {.ll = u};
+  const word_type bm = (sizeof (Wtype) * BITS_PER_UNIT) - b;
+  DWunion w;
+  UWtype carries;
+  
+  if (b == 0)
+    return u;
+
+  if (bm <= 0)
+    {
+      /* w.s.high = 1..1 or 0..0 */
+      w.s.high = uu.s.high >> (sizeof (Wtype) * BITS_PER_UNIT - 1);
+      w.s.low = uu.s.high >> -bm;
+    }
+  else
+    {
+      carries = (UWtype) uu.s.high << bm;
+
+      w.s.high = uu.s.high >> b;
+      w.s.low = ((UWtype) uu.s.low >> b) | carries;
+    }
+
+  return w.ll;
+}
+
+DWtype
+__lshrdi3 (DWtype u, word_type b)
+{
+
+  const DWunion uu = {.ll = u};
+  const word_type bm = (sizeof (Wtype) * BITS_PER_UNIT) - b;
+  DWunion w;
+  UWtype carries;
+  
+  if (b == 0)
+    return u;
+
+  if (bm <= 0)
+    {
+      w.s.high = 0;
+      w.s.low = (UWtype) uu.s.high >> -bm;
+    }
+  else
+    {
+      carries = (UWtype) uu.s.high << bm;
+
+      w.s.high = (UWtype) uu.s.high >> b;
+      w.s.low = ((UWtype) uu.s.low >> b) | carries;
+    }
+
+  return w.ll;
+}
+
+word_type
+__cmpdi2 (DWtype a, DWtype b)
+{
+  const DWunion au = {.ll = a};
+  const DWunion bu = {.ll = b};
+
+  if (au.s.high < bu.s.high)
+    return 0;
+  else if (au.s.high > bu.s.high)
+    return 2;
+  if ((UWtype) au.s.low < (UWtype) bu.s.low)
+    return 0;
+  else if ((UWtype) au.s.low > (UWtype) bu.s.low)
+    return 2;
+  return 1;
+}
+
+UDWtype
+__udivmoddi4 (UDWtype n, UDWtype d, UDWtype *rp)
+{
+  const DWunion nn = {.ll = n};
+  const DWunion dd = {.ll = d};
+
+  DWunion rr;
+  UWtype d0, d1, n0, n1, n2;
+  UWtype q0, q1;
+  UWtype b, bm;
+  
+  DWunion ww;
+  
+  d0 = dd.s.low;
+  d1 = dd.s.high;
+  n0 = nn.s.low;
+  n1 = nn.s.high;
+
+
+  
+#if !UDIV_NEEDS_NORMALIZATION
+  if (d1 == 0)
+    {
+      if (d0 > n1)
+	{
+	  /* 0q = nn / 0D */
+
+	  udiv_qrnnd (q0, n0, n1, n0, d0);
+	  q1 = 0;
+
+	  /* Remainder in n0.  */
+	}
+      else
+	{
+	  /* qq = NN / 0d */
+
+	  if (d0 == 0)
+	    d0 = 1 / d0;	/* Divide intentionally by zero.  */
+
+	  udiv_qrnnd (q1, n1, 0, n1, d0);
+	  udiv_qrnnd (q0, n0, n1, n0, d0);
+
+	  /* Remainder in n0.  */
+	}
+
+      if (rp != 0)
+	{
+	  rr.s.low = n0;
+	  rr.s.high = 0;
+	  *rp = rr.ll;
+	}
+    }
+
+#else /* UDIV_NEEDS_NORMALIZATION */
+
+  if (d1 == 0)
+    {
+      if (d0 > n1)
+	{
+	  /* 0q = nn / 0D */
+
+	  count_leading_zeros (bm, d0);
+
+	  if (bm != 0)
+	    {
+	      /* Normalize, i.e. make the most significant bit of the
+		 denominator set.  */
+
+	      d0 = d0 << bm;
+	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
+	      n0 = n0 << bm;
+	    }
+
+	  udiv_qrnnd (q0, n0, n1, n0, d0);
+	  q1 = 0;
+
+	  /* Remainder in n0 >> bm.  */
+	}
+      else
+	{
+	  /* qq = NN / 0d */
+
+	  if (d0 == 0)
+	    d0 = 1 / d0;	/* Divide intentionally by zero.  */
+
+	  count_leading_zeros (bm, d0);
+
+	  if (bm == 0)
+	    {
+	      /* From (n1 >= d0) /\ (the most significant bit of d0 is set),
+		 conclude (the most significant bit of n1 is set) /\ (the
+		 leading quotient digit q1 = 1).
+
+		 This special case is necessary, not an optimization.
+		 (Shifts counts of W_TYPE_SIZE are undefined.)  */
+
+	      n1 -= d0;
+	      q1 = 1;
+	    }
+	  else
+	    {
+	      /* Normalize.  */
+
+	      b = W_TYPE_SIZE - bm;
+
+	      d0 = d0 << bm;
+	      n2 = n1 >> b;
+	      n1 = (n1 << bm) | (n0 >> b);
+	      n0 = n0 << bm;
+
+	      udiv_qrnnd (q1, n1, n2, n1, d0);
+	    }
+
+	  /* n1 != d0...  */
+
+	  udiv_qrnnd (q0, n0, n1, n0, d0);
+
+	  /* Remainder in n0 >> bm.  */
+	}
+
+      if (rp != 0)
+	{
+	  rr.s.low = n0 >> bm;
+	  rr.s.high = 0;
+	  *rp = rr.ll;
+	}
+    }
+#endif /* UDIV_NEEDS_NORMALIZATION */
+
+  else
+    {
+      if (d1 > n1)
+	{
+	  /* 00 = nn / DD */
+
+	  q0 = 0;
+	  q1 = 0;
+
+	  /* Remainder in n1n0.  */
+	  if (rp != 0)
+	    {
+	      rr.s.low = n0;
+	      rr.s.high = n1;
+	      *rp = rr.ll;
+	    }
+	}
+      else
+	{
+	  /* 0q = NN / dd */
+
+	  count_leading_zeros (bm, d1);
+	  if (bm == 0)
+	    {
+	      /* From (n1 >= d1) /\ (the most significant bit of d1 is set),
+		 conclude (the most significant bit of n1 is set) /\ (the
+		 quotient digit q0 = 0 or 1).
+
+		 This special case is necessary, not an optimization.  */
+
+	      /* The condition on the next line takes advantage of that
+		 n1 >= d1 (true due to program flow).  */
+	      if (n1 > d1 || n0 >= d0)
+		{
+		  q0 = 1;
+		  sub_ddmmss (n1, n0, n1, n0, d1, d0);
+		}
+	      else
+		q0 = 0;
+
+	      q1 = 0;
+
+	      if (rp != 0)
+		{
+		  rr.s.low = n0;
+		  rr.s.high = n1;
+		  *rp = rr.ll;
+		}
+	    }
+	  else
+	    {
+	      UWtype m1, m0;
+	      /* Normalize.  */
+
+	      b = W_TYPE_SIZE - bm;
+
+	      d1 = (d1 << bm) | (d0 >> b);
+	      d0 = d0 << bm;
+	      n2 = n1 >> b;
+	      n1 = (n1 << bm) | (n0 >> b);
+	      n0 = n0 << bm;
+
+	      udiv_qrnnd (q0, n1, n2, n1, d1);
+	      umul_ppmm (m1, m0, q0, d0);
+
+	      if (m1 > n1 || (m1 == n1 && m0 > n0))
+		{
+		  q0--;
+		  sub_ddmmss (m1, m0, m1, m0, d1, d0);
+		}
+
+	      q1 = 0;
+
+	      /* Remainder in (n1n0 - m1m0) >> bm.  */
+	      if (rp != 0)
+		{
+		  sub_ddmmss (n1, n0, n1, n0, m1, m0);
+		  rr.s.low = (n1 << b) | (n0 >> bm);
+		  rr.s.high = n1 >> bm;
+		  *rp = rr.ll;
+		}
+	    }
+	}
+    }
+
+  ww.s.low = q0;
+  ww.s.high = q1;
+
+  return ww.ll;
+}
+
+DWtype
+__divdi3 (DWtype u, DWtype v)
+{
+  word_type c = 0;
+  DWunion uu = {.ll = u};
+  DWunion vv = {.ll = v};
+  DWtype w;
+
+  if (uu.s.high < 0)
+    c = ~c,
+    uu.ll = -uu.ll;
+  if (vv.s.high < 0)
+    c = ~c,
+    vv.ll = -vv.ll;
+
+  w = __udivmoddi4 (uu.ll, vv.ll, (UDWtype *) 0);
+  if (c)
+    w = -w;
+
+  return w;
+}
+
+DWtype
+__negdi2 (DWtype u)
+{
+  const DWunion uu = {.ll = u};
+  const DWunion w = { {.low = -uu.s.low,
+		       .high = -uu.s.high - ((UWtype) -uu.s.low > 0) } };
+
+  return w.ll;
+}
+
+
+DWtype
+__muldi3 (DWtype u, DWtype v)
+{
+  const DWunion uu = {.ll = u};
+  const DWunion vv = {.ll = v};
+  DWunion  w = {.ll = __umulsidi3 (uu.s.low, vv.s.low)};
+
+  w.s.high += ((UWtype) uu.s.low * (UWtype) vv.s.high
+  + (UWtype) uu.s.high * (UWtype) vv.s.low);
+
+  return w.ll;
+}
+
+DWtype
+__moddi3 (DWtype u, DWtype v)
+{
+  word_type c = 0;
+  DWunion uu = {.ll = u};
+  DWunion vv = {.ll = v};
+  DWtype w;
+
+  if (uu.s.high < 0)
+    c = ~c,
+    uu.ll = -uu.ll;
+  if (vv.s.high < 0)
+    vv.ll = -vv.ll;
+
+  (void) __udivmoddi4 (uu.ll, vv.ll, (UDWtype*)&w);
+  if (c)
+    w = -w;
+
+  return w;
+}
+
+word_type
+__ucmpdi2 (DWtype a, DWtype b)
+{
+  const DWunion au = {.ll = a};
+  const DWunion bu = {.ll = b};
+
+  if ((UWtype) au.s.high < (UWtype) bu.s.high)
+    return 0;
+  else if ((UWtype) au.s.high > (UWtype) bu.s.high)
+    return 2;
+  if ((UWtype) au.s.low < (UWtype) bu.s.low)
+    return 0;
+  else if ((UWtype) au.s.low > (UWtype) bu.s.low)
+    return 2;
+  return 1;
+}
+
+
+UDWtype
+__udivdi3 (UDWtype n, UDWtype d)
+{
+  return __udivmoddi4 (n, d, (UDWtype *) 0);
+}
+
+UDWtype
+__umoddi3 (UDWtype u, UDWtype v)
+{
+  UDWtype w;
+  (void) __udivmoddi4 (u, v, &w);
+
+  return w;
+}
+
+static USItype
+udivmodsi4(USItype num, USItype den, word_type modwanted)
+{
+  USItype bit = 1;
+  USItype res = 0;
+
+  while (den < num && bit && !(den & (1L<<31)))
+    {
+      den <<=1;
+      bit <<=1;
+    }
+  while (bit)
+    {
+      if (num >= den)
+	{
+	  num -= den;
+	  res |= bit;
+	}
+      bit >>=1;
+      den >>=1;
+    }
+  if (modwanted) return num;
+  return res;
+}
+
+SItype
+__divsi3 (SItype a, SItype b)
+{
+  word_type neg = 0;
+  SItype res;
+
+  if (a < 0)
+    {
+      a = -a;
+      neg = !neg;
+    }
+
+  if (b < 0)
+    {
+      b = -b;
+      neg = !neg;
+    }
+
+  res = udivmodsi4 (a, b, 0);
+
+  if (neg)
+    res = -res;
+
+  return res;
+}
+
+
+SItype
+__udivsi3 (SItype a, SItype b)
+{
+  return udivmodsi4 (a, b, 0);
+}
+
+
+SItype
+__modsi3 (SItype a, SItype b)
+{
+  word_type neg = 0;
+  SItype res;
+
+  if (a < 0)
+    {
+      a = -a;
+      neg = 1;
+    }
+
+  if (b < 0)
+    b = -b;
+
+  res = udivmodsi4 (a, b, 1);
+
+  if (neg)
+    res = -res;
+
+  return res;
+}
+
+SItype
+__mulsi3 (SItype a, SItype b)
+{
+  SItype res = 0;
+  USItype cnt = a;
+
+  while (cnt)
+    {
+      if (cnt & 1)
+        {
+	  res += b;
+	}
+      b <<= 1;
+      cnt >>= 1;
+    }
+
+  return res;
+}
+
+SItype
+__umodsi3 (SItype a, SItype b)
+
+{
+  return udivmodsi4 (a, b, 1);
+}
+
+int
+__gcc_bcmp (const unsigned char *s1, const unsigned char *s2, unsigned long size)
+{
+  while (size > 0)
+    {
+      const unsigned char c1 = *s1++, c2 = *s2++;
+      if (c1 != c2)
+	return c1 - c2;
+      size--;
+    }
+  return 0;
+}
diff --git a/nios2/lib/longlong.h b/nios2/lib/longlong.h
new file mode 100644
index 0000000..392f7e7
--- /dev/null
+++ b/nios2/lib/longlong.h
@@ -0,0 +1,263 @@
+/* longlong.h -- definitions for mixed size 32/64 bit arithmetic.
+   Copyright (C) 1991, 1992, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2004,
+   2005  Free Software Foundation, Inc.
+
+   This definition file is free software; you can redistribute it
+   and/or modify it under the terms of the GNU General Public
+   License as published by the Free Software Foundation; either
+   version 2, or (at your option) any later version.
+
+   This definition file is distributed in the hope that it will be
+   useful, but WITHOUT ANY WARRANTY; without even the implied
+   warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
+   See the GNU General Public License for more details.
+
+   You should have received a copy of the GNU General Public License
+   along with this program; if not, write to the Free Software
+   Foundation, Inc., 51 Franklin Street, Fifth Floor,
+   Boston, MA 02110-1301, USA.  */
+
+/* You have to define the following before including this file:
+
+   UWtype -- An unsigned type, default type for operations (typically a "word")
+   UHWtype -- An unsigned type, at least half the size of UWtype.
+   UDWtype -- An unsigned type, at least twice as large a UWtype
+   W_TYPE_SIZE -- size in bits of UWtype
+
+   UQItype -- Unsigned 8 bit type.
+   SItype, USItype -- Signed and unsigned 32 bit types.
+   DItype, UDItype -- Signed and unsigned 64 bit types.
+
+   On a 32 bit machine UWtype should typically be USItype;
+   on a 64 bit machine, UWtype should typically be UDItype.  */
+
+#define __BITS4 (W_TYPE_SIZE / 4)
+#define __ll_B ((UWtype) 1 << (W_TYPE_SIZE / 2))
+#define __ll_lowpart(t) ((UWtype) (t) & (__ll_B - 1))
+#define __ll_highpart(t) ((UWtype) (t) >> (W_TYPE_SIZE / 2))
+
+#ifndef W_TYPE_SIZE
+#define W_TYPE_SIZE	32
+#define UWtype		USItype
+#define UHWtype		USItype
+#define UDWtype		UDItype
+#endif
+
+extern const UQItype __clz_tab[256];
+
+/* Define auxiliary asm macros.
+
+   1) umul_ppmm(high_prod, low_prod, multiplier, multiplicand) multiplies two
+   UWtype integers MULTIPLIER and MULTIPLICAND, and generates a two UWtype
+   word product in HIGH_PROD and LOW_PROD.
+
+   2) __umulsidi3(a,b) multiplies two UWtype integers A and B, and returns a
+   UDWtype product.  This is just a variant of umul_ppmm.
+
+   3) udiv_qrnnd(quotient, remainder, high_numerator, low_numerator,
+   denominator) divides a UDWtype, composed by the UWtype integers
+   HIGH_NUMERATOR and LOW_NUMERATOR, by DENOMINATOR and places the quotient
+   in QUOTIENT and the remainder in REMAINDER.  HIGH_NUMERATOR must be less
+   than DENOMINATOR for correct operation.  If, in addition, the most
+   significant bit of DENOMINATOR must be 1, then the pre-processor symbol
+   UDIV_NEEDS_NORMALIZATION is defined to 1.
+
+   4) sdiv_qrnnd(quotient, remainder, high_numerator, low_numerator,
+   denominator).  Like udiv_qrnnd but the numbers are signed.  The quotient
+   is rounded towards 0.
+
+   5) count_leading_zeros(count, x) counts the number of zero-bits from the
+   msb to the first nonzero bit in the UWtype X.  This is the number of
+   steps X needs to be shifted left to set the msb.  Undefined for X == 0,
+   unless the symbol COUNT_LEADING_ZEROS_0 is defined to some value.
+
+   6) count_trailing_zeros(count, x) like count_leading_zeros, but counts
+   from the least significant end.
+
+   7) add_ssaaaa(high_sum, low_sum, high_addend_1, low_addend_1,
+   high_addend_2, low_addend_2) adds two UWtype integers, composed by
+   HIGH_ADDEND_1 and LOW_ADDEND_1, and HIGH_ADDEND_2 and LOW_ADDEND_2
+   respectively.  The result is placed in HIGH_SUM and LOW_SUM.  Overflow
+   (i.e. carry out) is not stored anywhere, and is lost.
+
+   8) sub_ddmmss(high_difference, low_difference, high_minuend, low_minuend,
+   high_subtrahend, low_subtrahend) subtracts two two-word UWtype integers,
+   composed by HIGH_MINUEND_1 and LOW_MINUEND_1, and HIGH_SUBTRAHEND_2 and
+   LOW_SUBTRAHEND_2 respectively.  The result is placed in HIGH_DIFFERENCE
+   and LOW_DIFFERENCE.  Overflow (i.e. carry out) is not stored anywhere,
+   and is lost.
+
+   If any of these macros are left undefined for a particular CPU,
+   C macros are used.  */
+
+/* The CPUs come in alphabetical order below.
+
+   Please add support for more CPUs here, or improve the current support
+   for the CPUs below!
+   (E.g. WE32100, IBM360.)  */
+
+/* Snipped per CPU support */
+
+/* If this machine has no inline assembler, use C macros.  */
+
+#if !defined (add_ssaaaa)
+#define add_ssaaaa(sh, sl, ah, al, bh, bl) \
+  do {									\
+    UWtype __x;								\
+    __x = (al) + (bl);							\
+    (sh) = (ah) + (bh) + (__x < (al));					\
+    (sl) = __x;								\
+  } while (0)
+#endif
+
+#if !defined (sub_ddmmss)
+#define sub_ddmmss(sh, sl, ah, al, bh, bl) \
+  do {									\
+    UWtype __x;								\
+    __x = (al) - (bl);							\
+    (sh) = (ah) - (bh) - (__x > (al));					\
+    (sl) = __x;								\
+  } while (0)
+#endif
+
+/* If we lack umul_ppmm but have smul_ppmm, define umul_ppmm in terms of
+   smul_ppmm.  */
+#if !defined (umul_ppmm) && defined (smul_ppmm)
+#define umul_ppmm(w1, w0, u, v)						\
+  do {									\
+    UWtype __w1;							\
+    UWtype __xm0 = (u), __xm1 = (v);					\
+    smul_ppmm (__w1, w0, __xm0, __xm1);					\
+    (w1) = __w1 + (-(__xm0 >> (W_TYPE_SIZE - 1)) & __xm1)		\
+		+ (-(__xm1 >> (W_TYPE_SIZE - 1)) & __xm0);		\
+  } while (0)
+#endif
+
+/* If we still don't have umul_ppmm, define it using plain C.  */
+#if !defined (umul_ppmm)
+#define umul_ppmm(w1, w0, u, v)						\
+  do {									\
+    UWtype __x0, __x1, __x2, __x3;					\
+    UHWtype __ul, __vl, __uh, __vh;					\
+									\
+    __ul = __ll_lowpart (u);						\
+    __uh = __ll_highpart (u);						\
+    __vl = __ll_lowpart (v);						\
+    __vh = __ll_highpart (v);						\
+									\
+    __x0 = (UWtype) __ul * __vl;					\
+    __x1 = (UWtype) __ul * __vh;					\
+    __x2 = (UWtype) __uh * __vl;					\
+    __x3 = (UWtype) __uh * __vh;					\
+									\
+    __x1 += __ll_highpart (__x0);/* this can't give carry */		\
+    __x1 += __x2;		/* but this indeed can */		\
+    if (__x1 < __x2)		/* did we get it? */			\
+      __x3 += __ll_B;		/* yes, add it in the proper pos.  */	\
+									\
+    (w1) = __x3 + __ll_highpart (__x1);					\
+    (w0) = __ll_lowpart (__x1) * __ll_B + __ll_lowpart (__x0);		\
+  } while (0)
+#endif
+
+#if !defined (__umulsidi3)
+#define __umulsidi3(u, v) \
+  ({DWunion __w;							\
+    umul_ppmm (__w.s.high, __w.s.low, u, v);				\
+    __w.ll; })
+#endif
+
+/* Define this unconditionally, so it can be used for debugging.  */
+#define __udiv_qrnnd_c(q, r, n1, n0, d) \
+  do {									\
+    UWtype __d1, __d0, __q1, __q0;					\
+    UWtype __r1, __r0, __m;						\
+    __d1 = __ll_highpart (d);						\
+    __d0 = __ll_lowpart (d);						\
+									\
+    __r1 = (n1) % __d1;							\
+    __q1 = (n1) / __d1;							\
+    __m = (UWtype) __q1 * __d0;						\
+    __r1 = __r1 * __ll_B | __ll_highpart (n0);				\
+    if (__r1 < __m)							\
+      {									\
+	__q1--, __r1 += (d);						\
+	if (__r1 >= (d)) /* i.e. we didn't get carry when adding to __r1 */\
+	  if (__r1 < __m)						\
+	    __q1--, __r1 += (d);					\
+      }									\
+    __r1 -= __m;							\
+									\
+    __r0 = __r1 % __d1;							\
+    __q0 = __r1 / __d1;							\
+    __m = (UWtype) __q0 * __d0;						\
+    __r0 = __r0 * __ll_B | __ll_lowpart (n0);				\
+    if (__r0 < __m)							\
+      {									\
+	__q0--, __r0 += (d);						\
+	if (__r0 >= (d))						\
+	  if (__r0 < __m)						\
+	    __q0--, __r0 += (d);					\
+      }									\
+    __r0 -= __m;							\
+									\
+    (q) = (UWtype) __q1 * __ll_B | __q0;				\
+    (r) = __r0;								\
+  } while (0)
+
+/* If the processor has no udiv_qrnnd but sdiv_qrnnd, go through
+   __udiv_w_sdiv (defined in libgcc or elsewhere).  */
+#if !defined (udiv_qrnnd) && defined (sdiv_qrnnd)
+#define udiv_qrnnd(q, r, nh, nl, d) \
+  do {									\
+    USItype __r;							\
+    (q) = __udiv_w_sdiv (&__r, nh, nl, d);				\
+    (r) = __r;								\
+  } while (0)
+#endif
+
+/* If udiv_qrnnd was not defined for this processor, use __udiv_qrnnd_c.  */
+#if !defined (udiv_qrnnd)
+#define UDIV_NEEDS_NORMALIZATION 1
+#define udiv_qrnnd __udiv_qrnnd_c
+#endif
+
+#if !defined (count_leading_zeros)
+#define count_leading_zeros(count, x) \
+  do {									\
+    UWtype __xr = (x);							\
+    UWtype __a;								\
+									\
+    if (W_TYPE_SIZE <= 32)						\
+      {									\
+	__a = __xr < ((UWtype)1<<2*__BITS4)				\
+	  ? (__xr < ((UWtype)1<<__BITS4) ? 0 : __BITS4)			\
+	  : (__xr < ((UWtype)1<<3*__BITS4) ?  2*__BITS4 : 3*__BITS4);	\
+      }									\
+    else								\
+      {									\
+	for (__a = W_TYPE_SIZE - 8; __a > 0; __a -= 8)			\
+	  if (((__xr >> __a) & 0xff) != 0)				\
+	    break;							\
+      }									\
+									\
+    (count) = W_TYPE_SIZE - (__clz_tab[__xr >> __a] + __a);		\
+  } while (0)
+#define COUNT_LEADING_ZEROS_0 W_TYPE_SIZE
+#endif
+
+#if !defined (count_trailing_zeros)
+/* Define count_trailing_zeros using count_leading_zeros.  The latter might be
+   defined in asm, but if it is not, the C version above is good enough.  */
+#define count_trailing_zeros(count, x) \
+  do {									\
+    UWtype __ctz_x = (x);						\
+    UWtype __ctz_c;							\
+    count_leading_zeros (__ctz_c, __ctz_x & -__ctz_x);			\
+    (count) = W_TYPE_SIZE - 1 - __ctz_c;				\
+  } while (0)
+#endif
+
+#ifndef UDIV_NEEDS_NORMALIZATION
+#define UDIV_NEEDS_NORMALIZATION 0
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
