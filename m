Delivery-date: Thu, 05 Jun 2025 14:45:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yb-0040y8-2M
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yZ-0005ok-3Y
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZtIeQdk8Gq19fjdmBLI/qoAYqhrGIuu93BmcJpcK6z4=; b=EHvFoCq/c8WT+f0200BA49nalE
	E41nj4g86VxRSPOJxBcPzXfnCyuIxiOCEIE16svve1U0reQdo6Tu+DbhpEgMkm5LS91KSKdjj1hJ8
	dygzgcRoKoXkxsX8wEd54GV8xirKIKtnoKBJJ8JOQQMndv9q3YWmfqR4Xx7qFfpdphw91FgP7/PU/
	a0XcKbe54MPPnm1svDD+A3aczRc403lccoa6cC3UDMl8n8uTPihXLkCEAEFxr3z7s1BgxPJ2+0i0P
	BjngGa3uUrE22r18rw3iWGplwWCJosyNNvsU0zqeSsGmGNixh2i9QdqgwRinkMoPZyZ+PWKBLYna1
	QuZaKCEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9xz-0000000FVMD-1gRa;
	Thu, 05 Jun 2025 12:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3S-0b7j
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0003Mw-V6; Thu, 05 Jun 2025 14:42:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgS-1t;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1V;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-6-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=6932;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=B+pokz5dlUhUAfOxrwTwD+RxfohZ6GFu0g0qvj3GjYI=;
 b=aB81ksP5V/XIgN7LMIMLnA/CWotzFTpa2AGHLpac5J5FJP0FrY6Jv9eBZYp9MNzlp1flBX/Js
 izB5H0rvliWD3gwayHxVsEES9gwEL2kJUtDLpkZJBsNhUY0Uy0jnkGF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_346634_0FDF7309 
X-CRM114-Status: GOOD (  19.48  )
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
Subject: [PATCH v2 06/33] ARM: K3: add am62lx base support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the MACH_AM62LX Kconfig symbol to be selected by the boards
and the AM62l bootsource detection.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig  |   3 +
 arch/arm/mach-k3/Makefile |   1 +
 arch/arm/mach-k3/am62lx.c | 155 ++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-k3/common.c |   5 +-
 include/mach/k3/common.h  |   1 +
 5 files changed, 164 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 1c236ef7648869ff3605bfb379298f0e6e6f3305..cda44807e8a1db7c2f701309948c7bd1a863d365 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -6,6 +6,9 @@ menu "K3 boards"
 config MACH_AM62X
 	bool
 
+config MACH_AM62LX
+	bool
+
 config MACH_K3_CORTEX_R5
 	bool
 	select CPU_V7
diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index b81088007426a1e2a43d84a0d09b49525370c4bf..050d12a32a6720170a007931fee8a621a0326dd2 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -1,5 +1,6 @@
 obj-y += common.o
 obj-$(CONFIG_MACH_AM62X) += am62x.o
+obj-$(CONFIG_MACH_AM62LX) += am62lx.o
 obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
 obj-pbl-y += ddrss.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
diff --git a/arch/arm/mach-k3/am62lx.c b/arch/arm/mach-k3/am62lx.c
new file mode 100644
index 0000000000000000000000000000000000000000..38a88ea7cf95be110a4125807630db10d402534e
--- /dev/null
+++ b/arch/arm/mach-k3/am62lx.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <io.h>
+#include <of.h>
+#include <init.h>
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <pm_domain.h>
+#include <bootsource.h>
+#include <mach/k3/common.h>
+
+/* Primary BootMode devices */
+#define BOOT_DEVICE_SPI_NAND		0x00
+#define BOOT_DEVICE_RAM			0xFF
+#define BOOT_DEVICE_OSPI		0x01
+#define BOOT_DEVICE_QSPI		0x02
+#define BOOT_DEVICE_SPI			0x03
+#define BOOT_DEVICE_UART		0x07
+#define BOOT_DEVICE_MMC			0x08
+#define BOOT_DEVICE_EMMC		0x09
+#define BOOT_DEVICE_USB			0x0A
+#define BOOT_DEVICE_DFU			0x0A
+#define BOOT_DEVICE_GPMC_NAND		0x0B
+#define BOOT_DEVICE_XSPI_FAST		0x0D
+#define BOOT_DEVICE_XSPI		0x0E
+#define BOOT_DEVICE_NOBOOT		0x0F
+
+/* U-Boot used aliases */
+#define BOOT_DEVICE_SPINAND		0x10
+#define BOOT_DEVICE_MMC2		BOOT_DEVICE_MMC
+#define BOOT_DEVICE_MMC1		BOOT_DEVICE_EMMC
+/* Invalid Choices for the AM62Lx */
+#define BOOT_DEVICE_MMC2_2		0x1F
+#define BOOT_DEVICE_ETHERNET		0x1F
+
+/* Backup BootMode devices */
+#define BACKUP_BOOT_DEVICE_USB		0x01
+#define BACKUP_BOOT_DEVICE_DFU		0x01
+#define BACKUP_BOOT_DEVICE_UART		0x03
+#define BACKUP_BOOT_DEVICE_MMC		0x05
+#define BACKUP_BOOT_DEVICE_SPI		0x06
+
+#define K3_PRIMARY_BOOTMODE		0x0
+
+#define MAIN_DEVSTAT_BACKUP_BOOTMODE		GENMASK(12, 10)
+#define MAIN_DEVSTAT_BACKUP_BOOTMODE_CFG	BIT(13)
+#define MAIN_DEVSTAT_BACKUP_USB_MODE		BIT(0)
+
+static void am62lx_get_backup_bootsource(u32 devstat, enum bootsource *src, int *instance)
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
+static void am62lx_get_primary_bootsource(u32 devstat, enum bootsource *src, int *instance)
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
+#define AM62LX_BOOT_PARAM_TABLE_INDEX_OCRAM		IOMEM(0x70816e70)
+
+#define AM62LX_WKUP_CTRL_MMR0_BASE		IOMEM(0x43010000)
+#define AM62LX_CTRLMMR_MAIN_DEVSTAT		(AM62LX_WKUP_CTRL_MMR0_BASE + 0x30)
+
+void am62lx_get_bootsource(enum bootsource *src, int *instance)
+{
+	u32 bootmode = readl(AM62LX_BOOT_PARAM_TABLE_INDEX_OCRAM);
+	u32 devstat;
+
+	devstat = readl(AM62LX_CTRLMMR_MAIN_DEVSTAT);
+
+	if (bootmode == K3_PRIMARY_BOOTMODE)
+		am62lx_get_primary_bootsource(devstat, src, instance);
+	else
+		am62lx_get_backup_bootsource(devstat, src, instance);
+}
+
+static int am62lx_init(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = 0;
+
+	if (!of_machine_is_compatible("ti,am62l3"))
+		return 0;
+
+	am62lx_get_bootsource(&src, &instance);
+	bootsource_set(src, instance);
+
+	genpd_activate();
+
+	return 0;
+}
+postcore_initcall(am62lx_init);
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 7299355eecef1c38e0d53a8feda60d233d74e2cd..aafd22453b9c8393e75fad07a21712a5af6674ef 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -20,8 +20,11 @@
 static const struct of_device_id k3_of_match[] = {
 	{
 		.compatible = "ti,am625",
+	}, {
+		.compatible = "ti,am62l3",
+	}, {
+		/* sentinel */
 	},
-	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(k3_of_match);
 
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index d14b8b9cb891dd23dcc3a6277e79aa9f639f412a..5ce129f88cc8522954670d0ae34dda76445fcb75 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -9,6 +9,7 @@
         UUID_INIT(0x9e8c2017, 0x8b94, 0x4e2b, 0xa7, 0xb3, 0xa0, 0xf8, 0x8e, 0xab, 0xb8, 0xae)
 
 void am62x_get_bootsource(enum bootsource *src, int *instance);
+void am62lx_get_bootsource(enum bootsource *src, int *instance);
 bool k3_boot_is_emmc(void);
 u64 am62x_sdram_size(void);
 void am62x_register_dram(void);

-- 
2.39.5



