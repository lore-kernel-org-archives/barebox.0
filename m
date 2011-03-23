Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q2VHJ-0002Ji-25
	for barebox@lists.infradead.org; Wed, 23 Mar 2011 21:07:43 +0000
Received: by mail-fx0-f49.google.com with SMTP id 16so8898070fxm.36
	for <barebox@lists.infradead.org>; Wed, 23 Mar 2011 14:07:40 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Wed, 23 Mar 2011 22:07:44 +0100
Message-Id: <1300914464-2316-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1300914464-2316-1-git-send-email-franck.jullien@gmail.com>
References: <1300914464-2316-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] Add a generic board template for the Nios2 arch
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

---
 arch/nios2/boards/generic/Makefile    |    1 +
 arch/nios2/boards/generic/config.h    |   63 +++++
 arch/nios2/boards/generic/env/config  |   16 ++
 arch/nios2/boards/generic/generic.c   |   74 ++++++
 arch/nios2/boards/generic/nios_sopc.h |  406 +++++++++++++++++++++++++++++++++
 5 files changed, 560 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/boards/generic/Makefile
 create mode 100644 arch/nios2/boards/generic/config.h
 create mode 100644 arch/nios2/boards/generic/env/config
 create mode 100644 arch/nios2/boards/generic/generic.c
 create mode 100644 arch/nios2/boards/generic/nios_sopc.h

diff --git a/arch/nios2/boards/generic/Makefile b/arch/nios2/boards/generic/Makefile
new file mode 100644
index 0000000..d8a3d7f
--- /dev/null
+++ b/arch/nios2/boards/generic/Makefile
@@ -0,0 +1 @@
+obj-y += generic.o
diff --git a/arch/nios2/boards/generic/config.h b/arch/nios2/boards/generic/config.h
new file mode 100644
index 0000000..4bca902
--- /dev/null
+++ b/arch/nios2/boards/generic/config.h
@@ -0,0 +1,63 @@
+#ifndef _GENERIC_NAMES_H_
+#define _GENERIC_NAMES_H_
+
+#include "nios_sopc.h"
+
+#ifndef MMU_PRESENT
+#define IO_REGION_BASE                  0x80000000
+#define KERNEL_REGION_BASE              0x00000000
+#endif
+
+/*Name of the RAM memory in your SOPC project */
+#define NIOS_SOPC_MEMORY_BASE           (KERNEL_REGION_BASE | DDR_SDRAM_BASE)
+#define NIOS_SOPC_MEMORY_SIZE           DDR_SDRAM_SPAN
+
+/*Name of the timer in your SOPC project */
+#define NIOS_SOPC_TIMER_BASE            (IO_REGION_BASE | SYS_CLK_TIMER_BASE)
+#define NIOS_SOPC_TIMER_FREQ            SYS_CLK_TIMER_FREQ
+
+/*Name of TSE and SGDMA in your SOPC project */
+#define NIOS_SOPC_SGDMA_RX_BASE         (IO_REGION_BASE | SGDMA_RX_BASE)
+#define NIOS_SOPC_SGDMA_TX_BASE         (IO_REGION_BASE | SGDMA_TX_BASE)
+#define NIOS_SOPC_TSE_BASE              (IO_REGION_BASE | TSE_BASE)
+#define NIOS_SOPC_TSE_DESC_MEM_BASE     (IO_REGION_BASE | DESCRIPTOR_MEMORY_BASE)
+
+/*Name of the UART in your SOPC project */
+#define NIOS_SOPC_UART_BASE             (IO_REGION_BASE | UART_BASE)
+
+/*Name of the JTAG UART in your SOPC project */
+#define NIOS_SOPC_JTAG_UART_BASE        (IO_REGION_BASE | JTAG_UART_BASE)
+
+/*Name of the CFI flash in your SOPC project */
+#define NIOS_SOPC_FLASH_BASE            (IO_REGION_BASE | CFI_FLASH_BASE)
+#define NIOS_SOPC_FLASH_SIZE            CFI_FLASH_SPAN
+
+/*Name of the EPCS flash controller in your SOPC project */
+
+#define NIOS_SOPC_EPCS_BASE             (IO_REGION_BASE | (EPCS_FLASH_CONTROLLER_BASE + EPCS_FLASH_CONTROLLER_REGISTER_OFFSET))
+
+/* PHY MDIO Address */
+#define NIOS_SOPC_PHY_ADDR              1
+
+/* We reserve 256K for barebox */
+#define BAREBOX_RESERVED_SIZE           0x80000
+
+/* Barebox will be at top of main memory */
+#define NIOS_SOPC_TEXT_BASE             (NIOS_SOPC_MEMORY_BASE + NIOS_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
+
+/*
+* TEXT_BASE is defined here because STACK_BASE definition
+*  in include/asm-generic/memory_layout.h uses this name
+*/
+
+#define TEXT_BASE                       NIOS_SOPC_TEXT_BASE
+
+/* Board banner */
+
+#define BOARD_BANNER "\
+\033[44;1m***********************************************\e[0m\n\
+\033[44;1m*             Altera generic board            *\e[0m\n\
+\033[44;1m***********************************************\e[0m\
+\e[0m\n\n"
+
+#endif
diff --git a/arch/nios2/boards/generic/env/config b/arch/nios2/boards/generic/env/config
new file mode 100644
index 0000000..df7d09e
--- /dev/null
+++ b/arch/nios2/boards/generic/env/config
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+# can be either 'net' or 'flash'
+kernel=flash
+root=flash
+
+# use 'dhcp' todo dhcp in barebox and in kernel
+ip=none
+
+autoboot_timeout=3
+
+nor_parts="256k(barebox),128k(env),4M(kernel),-(rootfs)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;33mbarebox@\e[1;32mgeneric:\w\e[0m "
+
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
new file mode 100644
index 0000000..99c855d
--- /dev/null
+++ b/arch/nios2/boards/generic/generic.c
@@ -0,0 +1,74 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <partition.h>
+#include <fs.h>
+
+static struct device_d cfi_dev = {
+	.id       = -1,
+	.name     = "cfi_flash",
+	.map_base = NIOS_SOPC_FLASH_BASE,
+	.size     = NIOS_SOPC_FLASH_SIZE,
+};
+
+static struct device_d mac_dev = {
+	.id       = -1,
+	.name     = "altera_tse",
+	.map_base = NIOS_SOPC_TSE_BASE,
+	.size     = 0x00000400,
+};
+
+static struct memory_platform_data ram_pdata = {
+	.name  = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d ram_dev = {
+	.id            = -1,
+	.name          = "mem",
+	.map_base      = NIOS_SOPC_MEMORY_BASE,
+	.size          = NIOS_SOPC_MEMORY_SIZE,
+	.platform_data = &ram_pdata,
+};
+
+static struct device_d altera_serial_device = {
+	.id       = -1,
+	.name     = "altera_serial",
+	.map_base = NIOS_SOPC_UART_BASE,
+};
+
+/*
+static struct device_d epcs_flash_device = {
+	.id       = -1,
+	.name     = "epcs_flash",
+	.map_base = NIOS_SOPC_EPCS_BASE,
+};
+*/
+
+static int comBoard_devices_init(void)
+{
+	register_device(&cfi_dev);
+	register_device(&ram_dev);
+	register_device(&mac_dev);
+	/*register_device(&epcs_flash_device);*/
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	protect_file("/dev/env0", 1);
+
+	return 0;
+}
+
+device_initcall(comBoard_devices_init);
+
+
+static int altera_console_init(void)
+{
+	register_device(&altera_serial_device);
+
+	return 0;
+}
+
+console_initcall(altera_console_init);
+
diff --git a/arch/nios2/boards/generic/nios_sopc.h b/arch/nios2/boards/generic/nios_sopc.h
new file mode 100644
index 0000000..5ee3642
--- /dev/null
+++ b/arch/nios2/boards/generic/nios_sopc.h
@@ -0,0 +1,406 @@
+#ifndef _ALTERA_NIOSLINUX_H_
+#define _ALTERA_NIOSLINUX_H_
+
+/*
+ * This file was automatically generated by the swinfo2header utility.
+ *
+ * Created from SOPC Builder system 'NiosLinux' in
+ * file 'NiosLinux.sopcinfo'.
+ */
+
+/*
+ * This file contains macros for module 'LINUX_CPU' and devices
+ * connected to the following masters:
+ *   instruction_master
+ *   tightly_coupled_instruction_master_0
+ *   data_master
+ *   tightly_coupled_data_master_0
+ *
+ * Do not include this header file and another header file created for a
+ * different module or master group at the same time.
+ * Doing so may result in duplicate macro names.
+ * Instead, use the system header file which has macros with unique names.
+ */
+
+/*
+ * Macros for module 'LINUX_CPU', class 'altera_nios2'.
+ * The macros have no prefix.
+ */
+#define CPU_IMPLEMENTATION "fast"
+#define BIG_ENDIAN 0
+#define CPU_FREQ 50000000
+#define ICACHE_LINE_SIZE 32
+#define ICACHE_LINE_SIZE_LOG2 5
+#define ICACHE_SIZE 8192
+#define DCACHE_LINE_SIZE 32
+#define DCACHE_LINE_SIZE_LOG2 5
+#define DCACHE_SIZE 8192
+#define INITDA_SUPPORTED
+#define FLUSHDA_SUPPORTED
+#define HAS_JMPI_INSTRUCTION
+#define MMU_PRESENT
+#define KERNEL_REGION_BASE 0xc0000000
+#define IO_REGION_BASE 0xe0000000
+#define KERNEL_MMU_REGION_BASE 0x80000000
+#define USER_REGION_BASE 0x0
+#define PROCESS_ID_NUM_BITS 8
+#define TLB_NUM_WAYS 16
+#define TLB_NUM_WAYS_LOG2 4
+#define TLB_PTR_SZ 8
+#define TLB_NUM_ENTRIES 256
+#define FAST_TLB_MISS_EXCEPTION_ADDR 0xc4201000
+#define EXCEPTION_ADDR 0xc0000020
+#define RESET_ADDR 0xc30e0000
+#define BREAK_ADDR 0xc4203820
+#define HAS_DEBUG_STUB
+#define HAS_DEBUG_CORE 1
+#define HAS_ILLEGAL_INSTRUCTION_EXCEPTION
+#define HAS_ILLEGAL_MEMORY_ACCESS_EXCEPTION
+#define HAS_EXTRA_EXCEPTION_INFO
+#define CPU_ID_SIZE 1
+#define CPU_ID_VALUE 0x0
+#define HARDWARE_DIVIDE_PRESENT 0
+#define HARDWARE_MULTIPLY_PRESENT 1
+#define HARDWARE_MULX_PRESENT 0
+#define INST_ADDR_WIDTH 27
+#define DATA_ADDR_WIDTH 27
+#define NUM_OF_SHADOW_REG_SETS 0
+
+/*
+ * Macros for device 'DDR_SDRAM', class 'altmemddr'
+ * The macros are prefixed with 'DDR_SDRAM_'.
+ * The prefix is the slave descriptor.
+ */
+#define DDR_SDRAM_COMPONENT_TYPE altmemddr
+#define DDR_SDRAM_COMPONENT_NAME DDR_SDRAM
+#define DDR_SDRAM_BASE 0x0
+#define DDR_SDRAM_SPAN 33554432
+#define DDR_SDRAM_END 0x1ffffff
+#define DDR_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
+#define DDR_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define DDR_SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+
+/*
+ * Macros for device 'CFI_FLASH', class 'altera_avalon_cfi_flash'
+ * The macros are prefixed with 'CFI_FLASH_'.
+ * The prefix is the slave descriptor.
+ */
+#define CFI_FLASH_COMPONENT_TYPE altera_avalon_cfi_flash
+#define CFI_FLASH_COMPONENT_NAME CFI_FLASH
+#define CFI_FLASH_BASE 0x3000000
+#define CFI_FLASH_SPAN 16777216
+#define CFI_FLASH_END 0x3ffffff
+#define CFI_FLASH_SETUP_VALUE 25
+#define CFI_FLASH_WAIT_VALUE 100
+#define CFI_FLASH_HOLD_VALUE 20
+#define CFI_FLASH_TIMING_UNITS "ns"
+#define CFI_FLASH_SIZE 16777216
+#define CFI_FLASH_MEMORY_INFO_MEM_INIT_DATA_WIDTH 16
+#define CFI_FLASH_MEMORY_INFO_HAS_BYTE_LANE 1
+#define CFI_FLASH_MEMORY_INFO_IS_FLASH 1
+#define CFI_FLASH_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define CFI_FLASH_MEMORY_INFO_GENERATE_FLASH 1
+#define CFI_FLASH_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+#define CFI_FLASH_MEMORY_INFO_FLASH_INSTALL_DIR APP_DIR
+
+/*
+ * Macros for device 'SSRAM', class 'altera_avalon_cy7c1380_ssram'
+ * The macros are prefixed with 'SSRAM_'.
+ * The prefix is the slave descriptor.
+ */
+#define SSRAM_COMPONENT_TYPE altera_avalon_cy7c1380_ssram
+#define SSRAM_COMPONENT_NAME SSRAM
+#define SSRAM_BASE 0x4100000
+#define SSRAM_SPAN 1048576
+#define SSRAM_END 0x41fffff
+#define SSRAM_SRAM_MEMORY_SIZE 1
+#define SSRAM_SRAM_MEMORY_UNITS 1048576
+#define SSRAM_SSRAM_DATA_WIDTH 32
+#define SSRAM_SSRAM_READ_LATENCY 2
+#define SSRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
+#define SSRAM_MEMORY_INFO_HAS_BYTE_LANE 1
+#define SSRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define SSRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+
+/*
+ * Macros for device 'TLB', class 'altera_avalon_onchip_memory2'
+ * The macros are prefixed with 'TLB_'.
+ * The prefix is the slave descriptor.
+ */
+#define TLB_COMPONENT_TYPE altera_avalon_onchip_memory2
+#define TLB_COMPONENT_NAME TLB
+#define TLB_BASE 0x4201000
+#define TLB_SPAN 4096
+#define TLB_END 0x4201fff
+#define TLB_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
+#define TLB_INIT_CONTENTS_FILE "TLB"
+#define TLB_NON_DEFAULT_INIT_FILE_ENABLED 0
+#define TLB_GUI_RAM_BLOCK_TYPE "Automatic"
+#define TLB_WRITABLE 1
+#define TLB_DUAL_PORT 1
+#define TLB_SIZE_VALUE 4096
+#define TLB_SIZE_MULTIPLE 1
+#define TLB_CONTENTS_INFO ""
+#define TLB_RAM_BLOCK_TYPE "Auto"
+#define TLB_INIT_MEM_CONTENT 1
+#define TLB_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
+#define TLB_INSTANCE_ID "NONE"
+#define TLB_READ_DURING_WRITE_MODE "DONT_CARE"
+#define TLB_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
+#define TLB_MEMORY_INFO_HAS_BYTE_LANE 0
+#define TLB_MEMORY_INFO_GENERATE_HEX 1
+#define TLB_MEMORY_INFO_HEX_INSTALL_DIR QPF_DIR
+#define TLB_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define TLB_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+
+/*
+ * Macros for device 'DESCRIPTOR_MEMORY', class 'altera_avalon_onchip_memory2'
+ * The macros are prefixed with 'DESCRIPTOR_MEMORY_'.
+ * The prefix is the slave descriptor.
+ */
+#define DESCRIPTOR_MEMORY_COMPONENT_TYPE altera_avalon_onchip_memory2
+#define DESCRIPTOR_MEMORY_COMPONENT_NAME DESCRIPTOR_MEMORY
+#define DESCRIPTOR_MEMORY_BASE 0x4202000
+#define DESCRIPTOR_MEMORY_SPAN 4096
+#define DESCRIPTOR_MEMORY_END 0x4202fff
+#define DESCRIPTOR_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
+#define DESCRIPTOR_MEMORY_INIT_CONTENTS_FILE "DESCRIPTOR_MEMORY"
+#define DESCRIPTOR_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
+#define DESCRIPTOR_MEMORY_GUI_RAM_BLOCK_TYPE "Automatic"
+#define DESCRIPTOR_MEMORY_WRITABLE 1
+#define DESCRIPTOR_MEMORY_DUAL_PORT 0
+#define DESCRIPTOR_MEMORY_SIZE_VALUE 4096
+#define DESCRIPTOR_MEMORY_SIZE_MULTIPLE 1
+#define DESCRIPTOR_MEMORY_CONTENTS_INFO ""
+#define DESCRIPTOR_MEMORY_RAM_BLOCK_TYPE "Auto"
+#define DESCRIPTOR_MEMORY_INIT_MEM_CONTENT 1
+#define DESCRIPTOR_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
+#define DESCRIPTOR_MEMORY_INSTANCE_ID "NONE"
+#define DESCRIPTOR_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
+#define DESCRIPTOR_MEMORY_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
+#define DESCRIPTOR_MEMORY_MEMORY_INFO_HAS_BYTE_LANE 0
+#define DESCRIPTOR_MEMORY_MEMORY_INFO_GENERATE_HEX 1
+#define DESCRIPTOR_MEMORY_MEMORY_INFO_HEX_INSTALL_DIR QPF_DIR
+#define DESCRIPTOR_MEMORY_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define DESCRIPTOR_MEMORY_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+
+/*
+ * Macros for device 'TSE', class 'triple_speed_ethernet'
+ * The macros are prefixed with 'TSE_'.
+ * The prefix is the slave descriptor.
+ */
+#define TSE_COMPONENT_TYPE triple_speed_ethernet
+#define TSE_COMPONENT_NAME TSE
+#define TSE_BASE 0x4204000
+#define TSE_SPAN 1024
+#define TSE_END 0x42043ff
+#define TSE_TRANSMIT "SGDMA_TX"
+#define TSE_RECEIVE "SGDMA_RX"
+#define TSE_TRANSMIT_FIFO_DEPTH 2048
+#define TSE_RECEIVE_FIFO_DEPTH 2048
+#define TSE_FIFO_WIDTH 32
+#define TSE_ENABLE_MACLITE 1
+#define TSE_MACLITE_GIGE 0
+#define TSE_USE_MDIO 1
+#define TSE_NUMBER_OF_CHANNEL 1
+#define TSE_NUMBER_OF_MAC_MDIO_SHARED 1
+#define TSE_IS_MULTICHANNEL_MAC 0
+#define TSE_MDIO_SHARED 0
+#define TSE_REGISTER_SHARED 0
+#define TSE_PCS 0
+#define TSE_PCS_SGMII 0
+#define TSE_PCS_ID 0
+
+/*
+ * Macros for device 'SGDMA_TX', class 'altera_avalon_sgdma'
+ * The macros are prefixed with 'SGDMA_TX_'.
+ * The prefix is the slave descriptor.
+ */
+#define SGDMA_TX_COMPONENT_TYPE altera_avalon_sgdma
+#define SGDMA_TX_COMPONENT_NAME SGDMA_TX
+#define SGDMA_TX_BASE 0x4204400
+#define SGDMA_TX_SPAN 64
+#define SGDMA_TX_END 0x420443f
+#define SGDMA_TX_IRQ 0
+#define SGDMA_TX_READ_BLOCK_DATA_WIDTH 32
+#define SGDMA_TX_WRITE_BLOCK_DATA_WIDTH 32
+#define SGDMA_TX_STREAM_DATA_WIDTH 32
+#define SGDMA_TX_ADDRESS_WIDTH 32
+#define SGDMA_TX_HAS_READ_BLOCK 1
+#define SGDMA_TX_HAS_WRITE_BLOCK 0
+#define SGDMA_TX_READ_BURSTCOUNT_WIDTH 4
+#define SGDMA_TX_WRITE_BURSTCOUNT_WIDTH 4
+#define SGDMA_TX_BURST_TRANSFER 0
+#define SGDMA_TX_ALWAYS_DO_MAX_BURST 1
+#define SGDMA_TX_DESCRIPTOR_READ_BURST 0
+#define SGDMA_TX_UNALIGNED_TRANSFER 0
+#define SGDMA_TX_CONTROL_SLAVE_DATA_WIDTH 32
+#define SGDMA_TX_CONTROL_SLAVE_ADDRESS_WIDTH 4
+#define SGDMA_TX_DESC_DATA_WIDTH 32
+#define SGDMA_TX_CHAIN_WRITEBACK_DATA_WIDTH 32
+#define SGDMA_TX_STATUS_TOKEN_DATA_WIDTH 24
+#define SGDMA_TX_BYTES_TO_TRANSFER_DATA_WIDTH 16
+#define SGDMA_TX_BURST_DATA_WIDTH 8
+#define SGDMA_TX_CONTROL_DATA_WIDTH 8
+#define SGDMA_TX_ATLANTIC_CHANNEL_DATA_WIDTH 4
+#define SGDMA_TX_COMMAND_FIFO_DATA_WIDTH 104
+#define SGDMA_TX_SYMBOLS_PER_BEAT 4
+#define SGDMA_TX_IN_ERROR_WIDTH 0
+#define SGDMA_TX_OUT_ERROR_WIDTH 1
+
+/*
+ * Macros for device 'DDR_SDRAM', class 'altmemddr'
+ * Path to the device is from the master group 'SGDMA_TX_m_read'.
+ * The macros are prefixed with 'SGDMA_TX_M_READ_DDR_SDRAM_'.
+ * The prefix is the master group descriptor and the slave descriptor.
+ */
+#define SGDMA_TX_M_READ_DDR_SDRAM_COMPONENT_TYPE altmemddr
+#define SGDMA_TX_M_READ_DDR_SDRAM_COMPONENT_NAME DDR_SDRAM
+#define SGDMA_TX_M_READ_DDR_SDRAM_BASE 0x0
+#define SGDMA_TX_M_READ_DDR_SDRAM_SPAN 33554432
+#define SGDMA_TX_M_READ_DDR_SDRAM_END 0x1ffffff
+#define SGDMA_TX_M_READ_DDR_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
+#define SGDMA_TX_M_READ_DDR_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define SGDMA_TX_M_READ_DDR_SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+
+/*
+ * Macros for device 'SGDMA_RX', class 'altera_avalon_sgdma'
+ * The macros are prefixed with 'SGDMA_RX_'.
+ * The prefix is the slave descriptor.
+ */
+#define SGDMA_RX_COMPONENT_TYPE altera_avalon_sgdma
+#define SGDMA_RX_COMPONENT_NAME SGDMA_RX
+#define SGDMA_RX_BASE 0x4204440
+#define SGDMA_RX_SPAN 64
+#define SGDMA_RX_END 0x420447f
+#define SGDMA_RX_IRQ 3
+#define SGDMA_RX_READ_BLOCK_DATA_WIDTH 32
+#define SGDMA_RX_WRITE_BLOCK_DATA_WIDTH 32
+#define SGDMA_RX_STREAM_DATA_WIDTH 32
+#define SGDMA_RX_ADDRESS_WIDTH 32
+#define SGDMA_RX_HAS_READ_BLOCK 0
+#define SGDMA_RX_HAS_WRITE_BLOCK 1
+#define SGDMA_RX_READ_BURSTCOUNT_WIDTH 4
+#define SGDMA_RX_WRITE_BURSTCOUNT_WIDTH 4
+#define SGDMA_RX_BURST_TRANSFER 0
+#define SGDMA_RX_ALWAYS_DO_MAX_BURST 1
+#define SGDMA_RX_DESCRIPTOR_READ_BURST 0
+#define SGDMA_RX_UNALIGNED_TRANSFER 0
+#define SGDMA_RX_CONTROL_SLAVE_DATA_WIDTH 32
+#define SGDMA_RX_CONTROL_SLAVE_ADDRESS_WIDTH 4
+#define SGDMA_RX_DESC_DATA_WIDTH 32
+#define SGDMA_RX_CHAIN_WRITEBACK_DATA_WIDTH 32
+#define SGDMA_RX_STATUS_TOKEN_DATA_WIDTH 24
+#define SGDMA_RX_BYTES_TO_TRANSFER_DATA_WIDTH 16
+#define SGDMA_RX_BURST_DATA_WIDTH 8
+#define SGDMA_RX_CONTROL_DATA_WIDTH 8
+#define SGDMA_RX_ATLANTIC_CHANNEL_DATA_WIDTH 4
+#define SGDMA_RX_COMMAND_FIFO_DATA_WIDTH 104
+#define SGDMA_RX_SYMBOLS_PER_BEAT 4
+#define SGDMA_RX_IN_ERROR_WIDTH 6
+#define SGDMA_RX_OUT_ERROR_WIDTH 0
+
+/*
+ * Macros for device 'DDR_SDRAM', class 'altmemddr'
+ * Path to the device is from the master group 'SGDMA_RX_m_write'.
+ * The macros are prefixed with 'SGDMA_RX_M_WRITE_DDR_SDRAM_'.
+ * The prefix is the master group descriptor and the slave descriptor.
+ */
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_COMPONENT_TYPE altmemddr
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_COMPONENT_NAME DDR_SDRAM
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_BASE 0x0
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_SPAN 33554432
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_END 0x1ffffff
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 32
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
+#define SGDMA_RX_M_WRITE_DDR_SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
+
+/*
+ * Macros for device 'UART', class 'altera_avalon_uart'
+ * The macros are prefixed with 'UART_'.
+ * The prefix is the slave descriptor.
+ */
+#define UART_COMPONENT_TYPE altera_avalon_uart
+#define UART_COMPONENT_NAME UART
+#define UART_BASE 0x4204480
+#define UART_SPAN 32
+#define UART_END 0x420449f
+#define UART_IRQ 1
+#define UART_BAUD 9600
+#define UART_DATA_BITS 8
+#define UART_FIXED_BAUD 0
+#define UART_PARITY 'N'
+#define UART_STOP_BITS 1
+#define UART_SYNC_REG_DEPTH 2
+#define UART_USE_CTS_RTS 0
+#define UART_USE_EOP_REGISTER 0
+#define UART_SIM_TRUE_BAUD 0
+#define UART_SIM_CHAR_STREAM ""
+#define UART_FREQ 50000000
+
+/*
+ * Macros for device 'SYS_CLK_TIMER', class 'altera_avalon_timer'
+ * The macros are prefixed with 'SYS_CLK_TIMER_'.
+ * The prefix is the slave descriptor.
+ */
+#define SYS_CLK_TIMER_COMPONENT_TYPE altera_avalon_timer
+#define SYS_CLK_TIMER_COMPONENT_NAME SYS_CLK_TIMER
+#define SYS_CLK_TIMER_BASE 0x42044a0
+#define SYS_CLK_TIMER_SPAN 32
+#define SYS_CLK_TIMER_END 0x42044bf
+#define SYS_CLK_TIMER_IRQ 2
+#define SYS_CLK_TIMER_ALWAYS_RUN 0
+#define SYS_CLK_TIMER_FIXED_PERIOD 0
+#define SYS_CLK_TIMER_SNAPSHOT 1
+#define SYS_CLK_TIMER_PERIOD 1
+#define SYS_CLK_TIMER_PERIOD_UNITS "ms"
+#define SYS_CLK_TIMER_RESET_OUTPUT 0
+#define SYS_CLK_TIMER_TIMEOUT_PULSE_OUTPUT 0
+#define SYS_CLK_TIMER_FREQ 50000000
+#define SYS_CLK_TIMER_LOAD_VALUE 49999ULL
+#define SYS_CLK_TIMER_COUNTER_SIZE 32
+#define SYS_CLK_TIMER_MULT 0.0010
+#define SYS_CLK_TIMER_TICKS_PER_SEC 1000
+
+/*
+ * Macros for device 'LED_STATUS', class 'altera_avalon_pio'
+ * The macros are prefixed with 'LED_STATUS_'.
+ * The prefix is the slave descriptor.
+ */
+#define LED_STATUS_COMPONENT_TYPE altera_avalon_pio
+#define LED_STATUS_COMPONENT_NAME LED_STATUS
+#define LED_STATUS_BASE 0x42044c0
+#define LED_STATUS_SPAN 16
+#define LED_STATUS_END 0x42044cf
+#define LED_STATUS_DO_TEST_BENCH_WIRING 0
+#define LED_STATUS_DRIVEN_SIM_VALUE 0x0
+#define LED_STATUS_HAS_TRI 0
+#define LED_STATUS_HAS_OUT 1
+#define LED_STATUS_HAS_IN 0
+#define LED_STATUS_CAPTURE 0
+#define LED_STATUS_BIT_CLEARING_EDGE_REGISTER 0
+#define LED_STATUS_BIT_MODIFYING_OUTPUT_REGISTER 0
+#define LED_STATUS_DATA_WIDTH 2
+#define LED_STATUS_RESET_VALUE 0x3
+#define LED_STATUS_EDGE_TYPE "NONE"
+#define LED_STATUS_IRQ_TYPE "NONE"
+#define LED_STATUS_FREQ 50000000
+
+/*
+ * Macros for device 'JTAG_UART', class 'altera_avalon_jtag_uart'
+ * The macros are prefixed with 'JTAG_UART_'.
+ * The prefix is the slave descriptor.
+ */
+#define JTAG_UART_COMPONENT_TYPE altera_avalon_jtag_uart
+#define JTAG_UART_COMPONENT_NAME JTAG_UART
+#define JTAG_UART_BASE 0x42044d0
+#define JTAG_UART_SPAN 8
+#define JTAG_UART_END 0x42044d7
+#define JTAG_UART_IRQ 4
+#define JTAG_UART_WRITE_DEPTH 64
+#define JTAG_UART_READ_DEPTH 64
+#define JTAG_UART_WRITE_THRESHOLD 8
+#define JTAG_UART_READ_THRESHOLD 8
+
+
+#endif /* _ALTERA_NIOSLINUX_H_ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
