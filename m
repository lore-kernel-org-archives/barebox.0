Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1V-0005QF-C9
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:41 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:22 +0200
Message-Id: <20190401101822.7392-15-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v3 14/15] ARM: at91: microchip-ksz9477: provide board code
 fallback
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

The newly added device tree based first stage fails to load the second
stage from MMC, which might be in relation to a preceding atmel_mci
"command/data timeout" message.

Due to this and because it's not clear yet how viable it's to use the device
tree for the size-constrained first stage anyway, make CONFIG_OFDEVICE
configurable and provide a legacy board code based fallback whenever it's
unselected. The resulting image is 48K big with PBL_CONSOLE compared to
72K for the device tree based version without PBL_CONSOLE.

If barebox can be shrunk further and the device tree support in the
first stage was fixed, this commit could be reverted for full device
tree goodness.

The board code is a stripped down version of the sama5d3_xplained board's.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
 arch/arm/boards/microchip-ksz9477-evb/board.c | 127 ++++++++++++++++++
 .../boards/microchip-ksz9477-evb/lowlevel.c   |   3 +-
 ...rochip_ksz9477_evb_bootstrap_mmc_defconfig |  24 ++++
 arch/arm/mach-at91/Kconfig                    |  14 +-
 5 files changed, 167 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/board.c
 create mode 100644 arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig

diff --git a/arch/arm/boards/microchip-ksz9477-evb/Makefile b/arch/arm/boards/microchip-ksz9477-evb/Makefile
index b08c4a93ca27..8d0379a3f59f 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/Makefile
+++ b/arch/arm/boards/microchip-ksz9477-evb/Makefile
@@ -1 +1,4 @@
 lwl-y += lowlevel.o
+ifeq ($(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT),)
+obj-y += board.o
+endif
diff --git a/arch/arm/boards/microchip-ksz9477-evb/board.c b/arch/arm/boards/microchip-ksz9477-evb/board.c
new file mode 100644
index 000000000000..455b9aca3ab0
--- /dev/null
+++ b/arch/arm/boards/microchip-ksz9477-evb/board.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2014 Bo Shen <voice.shen@gmail.com>
+ */
+
+#include <init.h>
+#include <mach/board.h>
+#include <mach/iomux.h>
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= -EINVAL,
+	.enable_pin	= -EINVAL,
+	.ecc_mode	= NAND_ECC_HW,
+	.has_pmecc	= 1,
+	.pmecc_sector_size = 512,
+	.pmecc_corr_cap = 4,
+	.bus_width_16	= 1,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
+	.ncs_read_setup		= 1,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 1,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 5,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 5,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 8,
+	.write_cycle		= 8,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 3,
+
+	.tclr			= 3,
+	.tadl			= 10,
+	.tar			= 3,
+	.ocms			= 0,
+	.trr			= 4,
+	.twb			= 5,
+	.rbnsel			= 3,
+	.nfsel			= 1
+};
+
+static void ek_add_device_nand(void)
+{
+	struct clk *clk = clk_get(NULL, "smc_clk");
+
+	clk_enable(clk);
+
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+#else
+static void ek_add_device_nand(void) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+/*
+ * MCI (SD/MMC)
+ */
+static struct atmel_mci_platform_data mci0_data = {
+	.bus_width	= 8,
+	.detect_pin	= AT91_PIN_PE0,
+	.wp_pin		= -EINVAL,
+};
+
+static void ek_add_device_mci(void)
+{
+	/* MMC0 */
+	at91_add_device_mci(0, &mci0_data);
+}
+#else
+static void ek_add_device_mci(void) {}
+#endif
+
+static int sama5d3_xplained_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(sama5d3_xplained_mem_init);
+
+static const struct devfs_partition sama5d3_xplained_nand0_partitions[] = {
+	{
+		.offset = 0x00000,
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "at91bootstrap_raw",
+		.bbname = "at91bootstrap",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND, /* 256 KiB */
+		.size = SZ_1M,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "self_raw",
+		.bbname = "self0",
+	}, {
+		/* sentinel */
+	}
+};
+
+static int sama5d3_xplained_devices_init(void)
+{
+	ek_add_device_nand();
+	ek_add_device_mci();
+
+	devfs_create_partitions("nand0", sama5d3_xplained_nand0_partitions);
+
+	return 0;
+}
+device_initcall(sama5d3_xplained_devices_init);
diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index cf44021bdfb7..bf9a4aed6183 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -195,7 +195,8 @@ static noinline void board_init(void)
 
 	sama5d3_ddramc_init();
 
-	fdt = __dtb_z_at91_microchip_ksz9477_evb_boot_bin_start + get_runtime_offset();
+	if (IS_ENABLED(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT))
+		fdt = __dtb_z_at91_microchip_ksz9477_evb_boot_bin_start + get_runtime_offset();
 
 	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
 }
diff --git a/arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig b/arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig
new file mode 100644
index 000000000000..8af85bc10613
--- /dev/null
+++ b/arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig
@@ -0,0 +1,24 @@
+CONFIG_ARCH_SAMA5D3=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
+CONFIG_AT91_BOOTSTRAP=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="BOOT.BIN:"
+CONFIG_SHELL_NONE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_SIMPLE=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_DEFAULT_LOGLEVEL=6
+CONFIG_DEBUG_LL=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_ATMEL=y
+CONFIG_MFD_SYSCON=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index e72e37c2bf9e..827b05a23496 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -18,6 +18,15 @@ config MACH_AT91SAM9263EK_DT
 	  Enabled for at91sam9263ek - evaluation kit.
 	  But only if we need the device tree (bootstrap do not use DT)
 
+config MACH_MICROCHIP_KSZ9477_EVB_DT
+	def_bool y
+	depends on MACH_MICROCHIP_KSZ9477_EVB && OFDEVICE
+	select ARM_USE_COMPRESSED_DTB
+	help
+	  Enabled for Microchip KSZ9477 - evaluation kit.
+	  But only if we need the device tree (bootstrap doesn't yet work with
+	  DT)
+
 config HAVE_AT91_SMD
 	bool
 
@@ -546,9 +555,8 @@ config MACH_AT91SAM9X5EK
 config MACH_MICROCHIP_KSZ9477_EVB
 	bool "Microchip EVB-KSZ9477 Evaluation Kit"
 	depends on ARCH_SAMA5D3
-	select OFDEVICE
-	select COMMON_CLK_OF_PROVIDER
-	select ARM_USE_COMPRESSED_DTB
+	select OFDEVICE if !AT91_LOAD_BAREBOX_SRAM
+	select COMMON_CLK_OF_PROVIDER if OFDEVICE
 	select HAVE_AT91_BOOTSTRAP
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
