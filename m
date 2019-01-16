Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063M-Vl
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:57 +0100
Message-Id: <20190116174559.17416-10-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/11] ARM: at91: microchip-ksz9477-evb: reintroduce board
 code for first stage
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>

From: Ahmad Fatoum <ahmad@a3f.at>

We are limited to 64K in the first stage, but we still need MMC and FAT
support, so to make place, make the device tree support optional by
providing the sama5d3's board code for NAND/MMC as an alternative.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
 arch/arm/boards/microchip-ksz9477-evb/init.c  | 143 ++++++++++++++++++
 .../configs/microchip_ksz9477_evb_defconfig   |   1 +
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/mach-at91/Kconfig                    |  11 +-
 5 files changed, 157 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/init.c

diff --git a/arch/arm/boards/microchip-ksz9477-evb/Makefile b/arch/arm/boards/microchip-ksz9477-evb/Makefile
index b08c4a93ca27..0ca5b98a9b33 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/Makefile
+++ b/arch/arm/boards/microchip-ksz9477-evb/Makefile
@@ -1 +1,4 @@
 lwl-y += lowlevel.o
+ifeq ($(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT),)
+obj-y += init.o
+endif
diff --git a/arch/arm/boards/microchip-ksz9477-evb/init.c b/arch/arm/boards/microchip-ksz9477-evb/init.c
new file mode 100644
index 000000000000..39febad84c5d
--- /dev/null
+++ b/arch/arm/boards/microchip-ksz9477-evb/init.c
@@ -0,0 +1,143 @@
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
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#endif
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
+		.size = SZ_256K + SZ_128K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "self_raw",
+		.bbname = "self0",
+	},
+	/* hole of 128 KiB */
+	{
+		.offset = SZ_512K + SZ_256K,
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "env_raw",
+		.bbname = "env0",
+	}, {
+		.offset = DEVFS_PARTITION_APPEND, /* 1 MiB */
+		.size = SZ_256K,
+		.flags = DEVFS_PARTITION_FIXED,
+		.name = "env_raw1",
+		.bbname = "env1",
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
diff --git a/arch/arm/configs/microchip_ksz9477_evb_defconfig b/arch/arm/configs/microchip_ksz9477_evb_defconfig
index e7d05bd13b46..33cf2198a696 100644
--- a/arch/arm/configs/microchip_ksz9477_evb_defconfig
+++ b/arch/arm/configs/microchip_ksz9477_evb_defconfig
@@ -59,6 +59,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
+CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c08b35a10132..ef2a1961e165 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -118,7 +118,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-ssmb-spu3.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
-pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
+pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 
 pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 98d18c8b26db..068fb139f2a7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -30,6 +30,13 @@ config MACH_AT91SAM9263EK_DT
 	  Enabled for at91sam9263ek - evaluation kit.
 	  But only if we need the device tree (bootstrap do not use DT)
 
+config MACH_MICROCHIP_KSZ9477_EVB_DT
+	def_bool y
+	depends on MACH_MICROCHIP_KSZ9477_EVB && OFDEVICE
+	help
+	  Enabled for Microchip KSZ9477 - evaluation kit.
+	  But only if we need the device tree (bootstrap do not use DT)
+
 config HAVE_AT91_SMD
 	bool
 
@@ -540,8 +547,8 @@ config MACH_AT91SAM9X5EK
 config MACH_MICROCHIP_KSZ9477_EVB
 	bool "Microchip EVB-KSZ9477 Evaluation Kit"
 	depends on ARCH_SAMA5D3
-	select OFDEVICE
-	select COMMON_CLK_OF_PROVIDER
+	select HAVE_AT91_BOOTSTRAP
+	select COMMON_CLK_OF_PROVIDER if MACH_MICROCHIP_KSZ9477_EVB_DT
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
