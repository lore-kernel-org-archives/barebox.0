Delivery-date: Thu, 05 Jun 2025 14:45:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yf-0040zc-14
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yd-0005wC-Cf
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u39MsMW0pMSARyQ5NBLk3eMT+sIWPzMCZG/C/AUrtJA=; b=hmRbPZjK6TBnBkBNkNSGkYi35J
	Dmhbz7NX7VJITGFBm2ND3ZVbUgG+X6Cp0AVFxmQ5P3CsMbG+zm3IiSlGXlJJdsHbY3+6i8wVn9/q4
	dxjrkQhm0awhkEq0PGt/sziNrVPbsnoNRYhlTJ3wbuNDq/1Eu3oIamMDCzpmnJA4o9dKQ371whiQB
	24dMft8SQVUT+TQT4kxc+GvWMhR81vGEv6hyn9ojH76C5isc+CtXHeyg5PqGq68pQcwV2p0CVRiz1
	6kfHR6a/S7ZG1sIukSh0qp4PAJ2G+LDRMxKJ3UhPvPMEyUU4OILb2waSnmQnZ8vTlEy2xWPF5A/D5
	69bOWcOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9y0-0000000FVNA-36bi;
	Thu, 05 Jun 2025 12:45:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3V-0l9X
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vT-0003Mz-18; Thu, 05 Jun 2025 14:42:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgP-1v;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1S;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-3-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=22279;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=k+/HhXHwW0rWv6hWC60Gr7QekuLZcISuy7lVsvQ8Oi0=;
 b=Pvc7G87zC2KR+VF+U5UvvhneXEkXSVcdzv1WGKFItMe9FBoTjLoWbjk5M8Ge5NCmJCfdydYD2
 r+p8wSZsSa8CYWiH7cisHEF9eFgMyyywVpDiSI3bJkU6QXM8apHTPRX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_544040_2F2F75C0 
X-CRM114-Status: GOOD (  23.53  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/33] ARM: K3: prepare support for other SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This does several preparations for merging code supporting other K3
SoCs:

- Several functions that we prefixed with am625_ are common to am62x_ as
  suggested by similar U-Boot code, so rename these functions accordingly
- Move am625 boot source detection from common.c to am62x.c
- Add a Kconfig symbol MACH_AM62X to be selected from the board Kconfig
  variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/am625-sk/board.c      |   2 +-
 arch/arm/boards/am625-sk/lowlevel.c   |   2 +-
 arch/arm/boards/beagleplay/lowlevel.c |   2 +-
 arch/arm/mach-k3/Kconfig              |   5 +
 arch/arm/mach-k3/Makefile             |   1 +
 arch/arm/mach-k3/am62x.c              | 256 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-k3/common.c             | 255 ---------------------------------
 arch/arm/mach-k3/ddrss.c              |  12 +-
 include/mach/k3/common.h              |   8 +-
 9 files changed, 275 insertions(+), 268 deletions(-)

diff --git a/arch/arm/boards/am625-sk/board.c b/arch/arm/boards/am625-sk/board.c
index c716f30e693d6555436c63f9cb83f79235ac83d3..d2fca2dae12d1c8ac250f51f462876b58697ff6d 100644
--- a/arch/arm/boards/am625-sk/board.c
+++ b/arch/arm/boards/am625-sk/board.c
@@ -9,7 +9,7 @@
 
 static int am625_sk_probe(struct device *dev)
 {
-	am625_enable_32k_crystal();
+	am62x_enable_32k_crystal();
 
 	k3_bbu_emmc_register("emmc", "/dev/mmc0", BBU_HANDLER_FLAG_DEFAULT);
 
diff --git a/arch/arm/boards/am625-sk/lowlevel.c b/arch/arm/boards/am625-sk/lowlevel.c
index 10da8731caa208edf7b77e21972110bada3cd949..b1b4c5153d4633b614232049376c804197684c9d 100644
--- a/arch/arm/boards/am625-sk/lowlevel.c
+++ b/arch/arm/boards/am625-sk/lowlevel.c
@@ -19,7 +19,7 @@ static noinline void am625_sk_continue(void)
 	unsigned long membase = 0x80000000, memsize;
 	extern char __dtb_z_k3_am625_sk_start[];
 
-	memsize = am625_sdram_size();
+	memsize = am62x_sdram_size();
 
 	pr_info("Detected DRAM size: %ldMiB\n", memsize >> 20);
 
diff --git a/arch/arm/boards/beagleplay/lowlevel.c b/arch/arm/boards/beagleplay/lowlevel.c
index 94300175680dc217808516a3a3620e3d8604bb56..eec6f586fffc44d05045d221bccc1147fe288209 100644
--- a/arch/arm/boards/beagleplay/lowlevel.c
+++ b/arch/arm/boards/beagleplay/lowlevel.c
@@ -19,7 +19,7 @@ static noinline void beagleplay_continue(void)
 	unsigned long membase = 0x80000000, memsize;
 	extern char __dtb_k3_am625_beagleplay_start[];
 
-	memsize = am625_sdram_size();
+	memsize = am62x_sdram_size();
 
 	barebox_arm_entry(membase, memsize, __dtb_k3_am625_beagleplay_start);
 }
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 3dcdb20186b6a7530446da32b94c77952bbad3aa..1c236ef7648869ff3605bfb379298f0e6e6f3305 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -3,6 +3,9 @@
 menu "K3 boards"
         depends on ARCH_K3
 
+config MACH_AM62X
+	bool
+
 config MACH_K3_CORTEX_R5
 	bool
 	select CPU_V7
@@ -30,11 +33,13 @@ config MACH_K3_CORTEX_A
 
 config MACH_AM625_SK
 	bool "TI AM625 SK"
+	select MACH_AM62X
 	help
 	  Say Y here if you are using a TI AM625 SK board
 
 config MACH_BEAGLEPLAY
 	bool "BeagleBoard BeaglePlay"
+	select MACH_AM62X
 	help
 	  Say Y here if you are using a TI AM62x based BeaglePlay board
 
diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index b1dfb66d740b0b26bdaecc7d70f8c9fbe62e1091..b81088007426a1e2a43d84a0d09b49525370c4bf 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -1,4 +1,5 @@
 obj-y += common.o
+obj-$(CONFIG_MACH_AM62X) += am62x.o
 obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
 obj-pbl-y += ddrss.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-k3/am62x.c b/arch/arm/mach-k3/am62x.c
new file mode 100644
index 0000000000000000000000000000000000000000..57f8efd74bb5e6607f18ee9cd825d057e238150d
--- /dev/null
+++ b/arch/arm/mach-k3/am62x.c
@@ -0,0 +1,256 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <io.h>
+#include <of.h>
+#include <stdio.h>
+#include <pm_domain.h>
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <bootsource.h>
+#include <mach/k3/common.h>
+
+/* Primary BootMode devices */
+#define BOOT_DEVICE_RAM                 0x00
+#define BOOT_DEVICE_OSPI                0x01
+#define BOOT_DEVICE_QSPI                0x02
+#define BOOT_DEVICE_SPI                 0x03
+#define BOOT_DEVICE_ETHERNET_RGMII      0x04
+#define BOOT_DEVICE_ETHERNET_RMII       0x05
+#define BOOT_DEVICE_I2C                 0x06
+#define BOOT_DEVICE_UART                0x07
+#define BOOT_DEVICE_MMC                 0x08
+#define BOOT_DEVICE_EMMC                0x09
+
+#define BOOT_DEVICE_USB                 0x0A
+#define BOOT_DEVICE_GPMC_NAND           0x0B
+#define BOOT_DEVICE_GPMC_NOR            0x0C
+#define BOOT_DEVICE_XSPI                0x0E
+#define BOOT_DEVICE_NOBOOT              0x0F
+
+/* Backup BootMode devices */
+#define BACKUP_BOOT_DEVICE_USB          0x01
+#define BACKUP_BOOT_DEVICE_UART         0x03
+#define BACKUP_BOOT_DEVICE_ETHERNET     0x04
+#define BACKUP_BOOT_DEVICE_MMC          0x05
+#define BACKUP_BOOT_DEVICE_SPI          0x06
+#define BACKUP_BOOT_DEVICE_I2C          0x07
+
+#define K3_PRIMARY_BOOTMODE             0x0
+
+#define MAIN_DEVSTAT_BACKUP_BOOTMODE		GENMASK(12, 10)
+#define MAIN_DEVSTAT_BACKUP_BOOTMODE_CFG	BIT(13)
+#define MAIN_DEVSTAT_BACKUP_USB_MODE		BIT(0)
+
+static void am62x_get_backup_bootsource(u32 devstat, enum bootsource *src, int *instance)
+{
+	u32 bkup_bootmode = FIELD_GET(MAIN_DEVSTAT_BACKUP_BOOTMODE, devstat);
+	u32 bkup_bootmode_cfg = FIELD_GET(MAIN_DEVSTAT_BACKUP_BOOTMODE_CFG, devstat);
+
+	*src = BOOTSOURCE_UNKNOWN;
+
+	switch (bkup_bootmode) {
+	case BACKUP_BOOT_DEVICE_UART:
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	case BACKUP_BOOT_DEVICE_ETHERNET:
+		*src = BOOTSOURCE_NET;
+		return;
+	case BACKUP_BOOT_DEVICE_MMC:
+		if (bkup_bootmode_cfg) {
+			*src = BOOTSOURCE_MMC;
+			*instance = 1;
+		} else {
+			*src = BOOTSOURCE_MMC;
+			*instance = 0;
+		}
+		return;
+	case BACKUP_BOOT_DEVICE_SPI:
+		*src = BOOTSOURCE_SPI;
+		return;
+	case BACKUP_BOOT_DEVICE_I2C:
+		*src = BOOTSOURCE_I2C;
+		return;
+	case BACKUP_BOOT_DEVICE_USB:
+		if (bkup_bootmode_cfg & MAIN_DEVSTAT_BACKUP_USB_MODE)
+			*src = BOOTSOURCE_USB;
+		else
+			*src = BOOTSOURCE_SERIAL;
+		return;
+	};
+}
+
+#define MAIN_DEVSTAT_PRIMARY_BOOTMODE		GENMASK(6, 3)
+#define MAIN_DEVSTAT_PRIMARY_BOOTMODE_CFG	GENMASK(9, 7)
+#define MAIN_DEVSTAT_PRIMARY_USB_MODE		BIT(1)
+#define MAIN_DEVSTAT_PRIMARY_MMC_PORT		BIT(2)
+
+static void am62x_get_primary_bootsource(u32 devstat, enum bootsource *src, int *instance)
+{
+	u32 bootmode = FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat);
+	u32 bootmode_cfg = FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE_CFG, devstat);
+
+	switch (bootmode) {
+	case BOOT_DEVICE_OSPI:
+	case BOOT_DEVICE_QSPI:
+	case BOOT_DEVICE_XSPI:
+	case BOOT_DEVICE_SPI:
+		*src = BOOTSOURCE_SPI;
+		return;
+	case BOOT_DEVICE_ETHERNET_RGMII:
+	case BOOT_DEVICE_ETHERNET_RMII:
+		*src = BOOTSOURCE_NET;
+		return;
+	case BOOT_DEVICE_EMMC:
+		*src = BOOTSOURCE_MMC;
+		*instance = 0;
+		return;
+	case BOOT_DEVICE_MMC:
+		if (bootmode_cfg & MAIN_DEVSTAT_PRIMARY_MMC_PORT) {
+			*src = BOOTSOURCE_MMC;
+			*instance = 1;
+		} else {
+			*src = BOOTSOURCE_MMC;
+			*instance = 0;
+		}
+		return;
+	case BOOT_DEVICE_USB:
+		if (bootmode_cfg & MAIN_DEVSTAT_PRIMARY_USB_MODE)
+			*src = BOOTSOURCE_USB;
+		else
+			*src = BOOTSOURCE_SERIAL;
+		return;
+	case BOOT_DEVICE_NOBOOT:
+		*src = BOOTSOURCE_UNKNOWN;
+		return;
+	}
+}
+
+#define AM625_BOOT_PARAM_TABLE_INDEX_OCRAM		IOMEM(0x43c3f290)
+
+#define AM625_WKUP_CTRL_MMR0_BASE		IOMEM(0x43000000)
+#define AM625_CTRLMMR_MAIN_DEVSTAT		(AM625_WKUP_CTRL_MMR0_BASE + 0x30)
+
+void am62x_get_bootsource(enum bootsource *src, int *instance)
+{
+	u32 bootmode = readl(AM625_BOOT_PARAM_TABLE_INDEX_OCRAM);
+	u32 devstat;
+
+	devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
+
+	if (bootmode == K3_PRIMARY_BOOTMODE)
+		am62x_get_primary_bootsource(devstat, src, instance);
+	else
+		am62x_get_backup_bootsource(devstat, src, instance);
+}
+
+bool k3_boot_is_emmc(void)
+{
+	u32 bootmode = readl(AM625_BOOT_PARAM_TABLE_INDEX_OCRAM);
+	u32 devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
+
+	if (bootmode != K3_PRIMARY_BOOTMODE)
+		return false;
+	if (FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat) != BOOT_DEVICE_EMMC)
+		return false;
+
+	return true;
+}
+
+static void of_delete_node_path(struct device_node *root, const char *path)
+{
+	struct device_node *np;
+
+	np = of_find_node_by_path_from(root, path);
+	of_delete_node(np);
+}
+
+#define MCU_CTRL_MMR0_BASE			0x04500000
+#define MCU_CTRL_LFXOSC_CTRL			(MCU_CTRL_MMR0_BASE + 0x8038)
+#define MCU_CTRL_LFXOSC_32K_DISABLE_VAL		BIT(7)
+#define MCU_CTRL_DEVICE_CLKOUT_LFOSC_SELECT_VAL	(0x3)
+#define MCU_CTRL_DEVICE_CLKOUT_32K_CTRL		(MCU_CTRL_MMR0_BASE + 0x8058)
+
+void am62x_enable_32k_crystal(void)
+{
+	u32 val;
+
+	/* Enable 32k crystal */
+	val = readl(MCU_CTRL_LFXOSC_CTRL);
+	val &= ~(MCU_CTRL_LFXOSC_32K_DISABLE_VAL);
+	writel(val, MCU_CTRL_LFXOSC_CTRL);
+
+	/* select 32k clock from LFOSC0 */
+	writel(MCU_CTRL_DEVICE_CLKOUT_LFOSC_SELECT_VAL,
+	       MCU_CTRL_DEVICE_CLKOUT_32K_CTRL);
+}
+
+#define CTRLMMR_WKUP_JTAG_DEVICE_ID	(AM625_WKUP_CTRL_MMR0_BASE + 0x18)
+
+#define JTAG_DEV_CORE_NR		GENMASK(21, 19)
+#define JTAG_DEV_GPU			BIT(18)
+#define JTAG_DEV_FEATURES		GENMASK(17, 13)
+#define JTAG_DEV_FEATURE_NO_PRU		0x4
+
+static int am62x_of_fixup(struct device_node *root, void *unused)
+{
+	u32 full_devid = readl(CTRLMMR_WKUP_JTAG_DEVICE_ID);
+	u32 feature_mask = FIELD_GET(JTAG_DEV_FEATURES, full_devid);
+	int num_cores = FIELD_GET(JTAG_DEV_CORE_NR, full_devid);
+	bool has_gpu = full_devid & JTAG_DEV_GPU;
+	bool has_pru = !(feature_mask & JTAG_DEV_FEATURE_NO_PRU);
+	char path[32];
+	int i;
+
+        for (i = num_cores; i < 4; i++) {
+		snprintf(path, sizeof(path), "/cpus/cpu@%d", i);
+		of_delete_node_path(root, path);
+
+		snprintf(path, sizeof(path), "/cpus/cpu-map/cluster0/core%d", i);
+		of_delete_node_path(root, path);
+
+		snprintf(path, sizeof(path), "/bus@f0000/watchdog@e0%d0000", i);
+		of_delete_node_path(root, path);
+	}
+
+        if (!has_gpu) {
+		of_delete_node_path(root, "/bus@f0000/gpu@fd00000");
+		of_delete_node_path(root, "/bus@f0000/watchdog@e0f0000");
+	}
+
+	if (!has_pru)
+		of_delete_node_path(root, "/bus@f0000/pruss@30040000");
+
+	return 0;
+}
+
+#define CTRLMMR_MCU_RST_CTRL	IOMEM(0x04518170)
+#define RST_CTRL_ESM_ERROR_RST_EN_Z_MASK BIT(17)
+
+static void am62x_enable_mcu_esm_reset(void)
+{
+	/* activate reset of main by ESMO */
+	u32 stat = readl(CTRLMMR_MCU_RST_CTRL);
+	stat &= ~RST_CTRL_ESM_ERROR_RST_EN_Z_MASK;
+	writel(stat, CTRLMMR_MCU_RST_CTRL);
+}
+
+static int am62x_init(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = 0;
+
+	if (!of_machine_is_compatible("ti,am625"))
+		return 0;
+
+	am62x_get_bootsource(&src, &instance);
+	bootsource_set(src, instance);
+	am62x_register_dram();
+
+	genpd_activate();
+
+	of_register_fixup(am62x_of_fixup, NULL);
+
+	am62x_enable_mcu_esm_reset();
+
+	return 0;
+}
+postcore_initcall(am62x_init);
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index a324e2d5f60d9dc813f4e117b1eeb1551586cf91..7299355eecef1c38e0d53a8feda60d233d74e2cd 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -12,8 +12,6 @@
 #include <command.h>
 #include <getopt.h>
 #include <libfile.h>
-#include <pm_domain.h>
-#include <bootsource.h>
 #include <linux/bits.h>
 #include <linux/bitfield.h>
 #include <mach/k3/common.h>
@@ -27,259 +25,6 @@ static const struct of_device_id k3_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(k3_of_match);
 
-/* Primary BootMode devices */
-#define BOOT_DEVICE_RAM                 0x00
-#define BOOT_DEVICE_OSPI                0x01
-#define BOOT_DEVICE_QSPI                0x02
-#define BOOT_DEVICE_SPI                 0x03
-#define BOOT_DEVICE_ETHERNET_RGMII      0x04
-#define BOOT_DEVICE_ETHERNET_RMII       0x05
-#define BOOT_DEVICE_I2C                 0x06
-#define BOOT_DEVICE_UART                0x07
-#define BOOT_DEVICE_MMC                 0x08
-#define BOOT_DEVICE_EMMC                0x09
-
-#define BOOT_DEVICE_USB                 0x0A
-#define BOOT_DEVICE_GPMC_NAND           0x0B
-#define BOOT_DEVICE_GPMC_NOR            0x0C
-#define BOOT_DEVICE_XSPI                0x0E
-#define BOOT_DEVICE_NOBOOT              0x0F
-
-/* Backup BootMode devices */
-#define BACKUP_BOOT_DEVICE_USB          0x01
-#define BACKUP_BOOT_DEVICE_UART         0x03
-#define BACKUP_BOOT_DEVICE_ETHERNET     0x04
-#define BACKUP_BOOT_DEVICE_MMC          0x05
-#define BACKUP_BOOT_DEVICE_SPI          0x06
-#define BACKUP_BOOT_DEVICE_I2C          0x07
-
-#define K3_PRIMARY_BOOTMODE             0x0
-
-#define MAIN_DEVSTAT_BACKUP_BOOTMODE		GENMASK(12, 10)
-#define MAIN_DEVSTAT_BACKUP_BOOTMODE_CFG	BIT(13)
-#define MAIN_DEVSTAT_BACKUP_USB_MODE		BIT(0)
-
-static void k3_get_backup_bootsource(u32 devstat, enum bootsource *src, int *instance)
-{
-	u32 bkup_bootmode = FIELD_GET(MAIN_DEVSTAT_BACKUP_BOOTMODE, devstat);
-	u32 bkup_bootmode_cfg = FIELD_GET(MAIN_DEVSTAT_BACKUP_BOOTMODE_CFG, devstat);
-
-	*src = BOOTSOURCE_UNKNOWN;
-
-	switch (bkup_bootmode) {
-	case BACKUP_BOOT_DEVICE_UART:
-		*src = BOOTSOURCE_SERIAL;
-		return;
-	case BACKUP_BOOT_DEVICE_ETHERNET:
-		*src = BOOTSOURCE_NET;
-		return;
-	case BACKUP_BOOT_DEVICE_MMC:
-		if (bkup_bootmode_cfg) {
-			*src = BOOTSOURCE_MMC;
-			*instance = 1;
-		} else {
-			*src = BOOTSOURCE_MMC;
-			*instance = 0;
-		}
-		return;
-	case BACKUP_BOOT_DEVICE_SPI:
-		*src = BOOTSOURCE_SPI;
-		return;
-	case BACKUP_BOOT_DEVICE_I2C:
-		*src = BOOTSOURCE_I2C;
-		return;
-	case BACKUP_BOOT_DEVICE_USB:
-		if (bkup_bootmode_cfg & MAIN_DEVSTAT_BACKUP_USB_MODE)
-			*src = BOOTSOURCE_USB;
-		else
-			*src = BOOTSOURCE_SERIAL;
-		return;
-	};
-}
-
-#define MAIN_DEVSTAT_PRIMARY_BOOTMODE		GENMASK(6, 3)
-#define MAIN_DEVSTAT_PRIMARY_BOOTMODE_CFG	GENMASK(9, 7)
-#define MAIN_DEVSTAT_PRIMARY_USB_MODE		BIT(1)
-#define MAIN_DEVSTAT_PRIMARY_MMC_PORT		BIT(2)
-
-static void k3_get_primary_bootsource(u32 devstat, enum bootsource *src, int *instance)
-{
-	u32 bootmode = FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat);
-	u32 bootmode_cfg = FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE_CFG, devstat);
-
-	switch (bootmode) {
-	case BOOT_DEVICE_OSPI:
-	case BOOT_DEVICE_QSPI:
-	case BOOT_DEVICE_XSPI:
-	case BOOT_DEVICE_SPI:
-		*src = BOOTSOURCE_SPI;
-		return;
-	case BOOT_DEVICE_ETHERNET_RGMII:
-	case BOOT_DEVICE_ETHERNET_RMII:
-		*src = BOOTSOURCE_NET;
-		return;
-	case BOOT_DEVICE_EMMC:
-		*src = BOOTSOURCE_MMC;
-		*instance = 0;
-		return;
-	case BOOT_DEVICE_MMC:
-		if (bootmode_cfg & MAIN_DEVSTAT_PRIMARY_MMC_PORT) {
-			*src = BOOTSOURCE_MMC;
-			*instance = 1;
-		} else {
-			*src = BOOTSOURCE_MMC;
-			*instance = 0;
-		}
-		return;
-	case BOOT_DEVICE_USB:
-		if (bootmode_cfg & MAIN_DEVSTAT_PRIMARY_USB_MODE)
-			*src = BOOTSOURCE_USB;
-		else
-			*src = BOOTSOURCE_SERIAL;
-		return;
-	case BOOT_DEVICE_NOBOOT:
-		*src = BOOTSOURCE_UNKNOWN;
-		return;
-	}
-}
-
-#define AM625_BOOT_PARAM_TABLE_INDEX_OCRAM		IOMEM(0x43c3f290)
-
-static void k3_get_bootsource(u32 devstat, enum bootsource *src, int *instance)
-{
-	u32 bootmode = readl(AM625_BOOT_PARAM_TABLE_INDEX_OCRAM);
-
-	if (bootmode == K3_PRIMARY_BOOTMODE)
-		k3_get_primary_bootsource(devstat, src, instance);
-	else
-		k3_get_backup_bootsource(devstat, src, instance);
-}
-
-#define AM625_WKUP_CTRL_MMR0_BASE		IOMEM(0x43000000)
-#define AM625_CTRLMMR_MAIN_DEVSTAT		(AM625_WKUP_CTRL_MMR0_BASE + 0x30)
-
-void am625_get_bootsource(enum bootsource *src, int *instance)
-{
-	u32 devstat;
-
-	devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
-
-	k3_get_bootsource(devstat, src, instance);
-}
-
-bool k3_boot_is_emmc(void)
-{
-	u32 bootmode = readl(AM625_BOOT_PARAM_TABLE_INDEX_OCRAM);
-	u32 devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
-
-	if (bootmode != K3_PRIMARY_BOOTMODE)
-		return false;
-	if (FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat) != BOOT_DEVICE_EMMC)
-		return false;
-
-	return true;
-}
-
-static void of_delete_node_path(struct device_node *root, const char *path)
-{
-	struct device_node *np;
-
-	np = of_find_node_by_path_from(root, path);
-	of_delete_node(np);
-}
-
-#define MCU_CTRL_MMR0_BASE			0x04500000
-#define MCU_CTRL_LFXOSC_CTRL			(MCU_CTRL_MMR0_BASE + 0x8038)
-#define MCU_CTRL_LFXOSC_32K_DISABLE_VAL		BIT(7)
-#define MCU_CTRL_DEVICE_CLKOUT_LFOSC_SELECT_VAL	(0x3)
-#define MCU_CTRL_DEVICE_CLKOUT_32K_CTRL		(MCU_CTRL_MMR0_BASE + 0x8058)
-
-void am625_enable_32k_crystal(void)
-{
-	u32 val;
-
-	/* Enable 32k crystal */
-	val = readl(MCU_CTRL_LFXOSC_CTRL);
-	val &= ~(MCU_CTRL_LFXOSC_32K_DISABLE_VAL);
-	writel(val, MCU_CTRL_LFXOSC_CTRL);
-
-	/* select 32k clock from LFOSC0 */
-	writel(MCU_CTRL_DEVICE_CLKOUT_LFOSC_SELECT_VAL,
-	       MCU_CTRL_DEVICE_CLKOUT_32K_CTRL);
-}
-
-#define CTRLMMR_WKUP_JTAG_DEVICE_ID	(AM625_WKUP_CTRL_MMR0_BASE + 0x18)
-
-#define JTAG_DEV_CORE_NR		GENMASK(21, 19)
-#define JTAG_DEV_GPU			BIT(18)
-#define JTAG_DEV_FEATURES		GENMASK(17, 13)
-#define JTAG_DEV_FEATURE_NO_PRU		0x4
-
-static int am625_of_fixup(struct device_node *root, void *unused)
-{
-	u32 full_devid = readl(CTRLMMR_WKUP_JTAG_DEVICE_ID);
-	u32 feature_mask = FIELD_GET(JTAG_DEV_FEATURES, full_devid);
-	int num_cores = FIELD_GET(JTAG_DEV_CORE_NR, full_devid);
-	bool has_gpu = full_devid & JTAG_DEV_GPU;
-	bool has_pru = !(feature_mask & JTAG_DEV_FEATURE_NO_PRU);
-	char path[32];
-	int i;
-
-        for (i = num_cores; i < 4; i++) {
-		snprintf(path, sizeof(path), "/cpus/cpu@%d", i);
-		of_delete_node_path(root, path);
-
-		snprintf(path, sizeof(path), "/cpus/cpu-map/cluster0/core%d", i);
-		of_delete_node_path(root, path);
-
-		snprintf(path, sizeof(path), "/bus@f0000/watchdog@e0%d0000", i);
-		of_delete_node_path(root, path);
-	}
-
-        if (!has_gpu) {
-		of_delete_node_path(root, "/bus@f0000/gpu@fd00000");
-		of_delete_node_path(root, "/bus@f0000/watchdog@e0f0000");
-	}
-
-	if (!has_pru)
-		of_delete_node_path(root, "/bus@f0000/pruss@30040000");
-
-	return 0;
-}
-
-#define CTRLMMR_MCU_RST_CTRL	IOMEM(0x04518170)
-#define RST_CTRL_ESM_ERROR_RST_EN_Z_MASK BIT(17)
-
-static void am625_enable_mcu_esm_reset(void)
-{
-	/* activate reset of main by ESMO */
-	u32 stat = readl(CTRLMMR_MCU_RST_CTRL);
-	stat &= ~RST_CTRL_ESM_ERROR_RST_EN_Z_MASK;
-	writel(stat, CTRLMMR_MCU_RST_CTRL);
-}
-
-static int am625_init(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = 0;
-
-	if (!of_machine_is_compatible("ti,am625"))
-		return 0;
-
-	am625_get_bootsource(&src, &instance);
-	bootsource_set(src, instance);
-	am625_register_dram();
-
-	genpd_activate();
-
-	of_register_fixup(am625_of_fixup, NULL);
-
-	am625_enable_mcu_esm_reset();
-
-	return 0;
-}
-postcore_initcall(am625_init);
-
 static int omap_env_init(void)
 {
 	char *partname, *cdevname, *envpath;
diff --git a/arch/arm/mach-k3/ddrss.c b/arch/arm/mach-k3/ddrss.c
index 797b60c2d80b06aaa26cc14c0fb886d04bc48ec0..f60c47372b2988a176b7e5a847fbc717028c8ef4 100644
--- a/arch/arm/mach-k3/ddrss.c
+++ b/arch/arm/mach-k3/ddrss.c
@@ -34,7 +34,7 @@
 #define DENALI_CTL_0_DRAM_CLASS_DDR4		0xa
 #define DENALI_CTL_0_DRAM_CLASS_LPDDR4		0xb
 
-static unsigned int am625_get_banks_count(unsigned int regval)
+static unsigned int am62x_get_banks_count(unsigned int regval)
 {
 	/*
 	 * The BANK_DIFF_x are only described in the Reference Manual as:
@@ -55,7 +55,7 @@ static unsigned int am625_get_banks_count(unsigned int regval)
 	}
 }
 
-u64 am625_sdram_size(void)
+u64 am62x_sdram_size(void)
 {
 	void __iomem *base = IOMEM(AM625_DDRSS_BASE);
 	u32 ctl3 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_3);
@@ -68,7 +68,7 @@ u64 am625_sdram_size(void)
 	if (ctl327 & BIT(0)) {
 		cols = FIELD_GET(MAX_COL, ctl3) - FIELD_GET(COL_DIFF_0, ctl317);
 		rows = FIELD_GET(MAX_ROW, ctl3) - FIELD_GET(ROW_DIFF_0, ctl317);
-		banks = am625_get_banks_count(FIELD_GET(BANK_DIFF_0, ctl316));
+		banks = am62x_get_banks_count(FIELD_GET(BANK_DIFF_0, ctl316));
 
 		size += memory_sdram_size(cols, rows, banks, 2);
 	}
@@ -76,7 +76,7 @@ u64 am625_sdram_size(void)
 	if (ctl327 & BIT(1)) {
 		cols = FIELD_GET(MAX_COL, ctl3) - FIELD_GET(COL_DIFF_1, ctl317);
 		rows = FIELD_GET(MAX_ROW, ctl3) - FIELD_GET(ROW_DIFF_1, ctl317);
-		banks = am625_get_banks_count(FIELD_GET(BANK_DIFF_1, ctl316));
+		banks = am62x_get_banks_count(FIELD_GET(BANK_DIFF_1, ctl316));
 
 		size += memory_sdram_size(cols, rows, banks, 2);
 	}
@@ -84,9 +84,9 @@ u64 am625_sdram_size(void)
 	return size;
 }
 
-void am625_register_dram(void)
+void am62x_register_dram(void)
 {
-	u64 size = am625_sdram_size();
+	u64 size = am62x_sdram_size();
 	u64 lowmem = min_t(u64, size, SZ_2G);
 
 	arm_add_mem_device("ram0", 0x80000000, lowmem);
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 94c5fba19d44a12c115604b3a22c1c6e78c61f30..d14b8b9cb891dd23dcc3a6277e79aa9f639f412a 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -8,11 +8,11 @@
 #define UUID_TI_DM_FW \
         UUID_INIT(0x9e8c2017, 0x8b94, 0x4e2b, 0xa7, 0xb3, 0xa0, 0xf8, 0x8e, 0xab, 0xb8, 0xae)
 
-void am625_get_bootsource(enum bootsource *src, int *instance);
+void am62x_get_bootsource(enum bootsource *src, int *instance);
 bool k3_boot_is_emmc(void);
-u64 am625_sdram_size(void);
-void am625_register_dram(void);
-void am625_enable_32k_crystal(void);
+u64 am62x_sdram_size(void);
+void am62x_register_dram(void);
+void am62x_enable_32k_crystal(void);
 int k3_authenticate_image(void **buf, size_t *size);
 
 #define K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE	SZ_1M

-- 
2.39.5



