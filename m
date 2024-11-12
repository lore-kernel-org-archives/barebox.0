Delivery-date: Tue, 12 Nov 2024 10:02:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAmml-000wyq-1L
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:02:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAmmk-0003T4-LU
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:02:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cgOqk31M5Pw6PPzC5QzVo7fTUaylYohzND55v2dAvBI=; b=0Ta8QlOrY/Ls1KRY7KtDQX1YjH
	M3hx0RzFUO6mCS+2VQJkH/JWY2FooRSsvDm4/kji89TAdr6PB7EeDsd3gGAVyqXKv9HfA9coJczLY
	2AMUXD+NMOWRx8uU4dleXGexdMnMip6T1EF6IU7vKqBmo7Xqhxtb/jERbcCkl9GspsZkmv+1yV+AM
	QNaNXCYkoY9uFakRT0/VWq2Ygak+5814rMoH1xuRo3Sj5DoiBjDAyFx47QC/2RVIU3RGGFKadgPe1
	QUYmXgXV8rDhAZGfuEwP/RstIWodshMEy7ZKHyRc7lGImWeCX5GT93lvn6FYBiNNfKQUno15E4x8M
	4CjWXhpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmmE-00000002jyN-2NKj;
	Tue, 12 Nov 2024 09:01:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmlx-00000002js4-1rhY
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:01:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmlv-00034O-WC; Tue, 12 Nov 2024 10:01:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmlv-000NjB-2a;
	Tue, 12 Nov 2024 10:01:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmlv-00ETgk-2E;
	Tue, 12 Nov 2024 10:01:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Nov 2024 10:01:14 +0100
Message-Id: <20241112090114.3450323-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_010117_505926_1296F413 
X-CRM114-Status: GOOD (  17.88  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: add bootsource detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625.dtsi |   8 ++
 arch/arm/mach-k3/common.c  | 161 +++++++++++++++++++++++++++++++++++++
 include/mach/k3/common.h   |   6 ++
 3 files changed, 175 insertions(+)
 create mode 100644 include/mach/k3/common.h

diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
index 2b2d3e1b4d..7d49198aa2 100644
--- a/arch/arm/dts/k3-am625.dtsi
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -1,4 +1,12 @@
 
+/ {
+	chosen {
+		barebox,bootsource-mmc0 = &sdhci0;
+		barebox,bootsource-mmc1 = &sdhci1;
+		barebox,bootsource-mmc2 = &sdhci2;
+	};
+};
+
 &phy_gmii_sel {
 	compatible = "ti,am654-phy-gmii-sel", "syscon";
 };
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 7c2375d3ec..0da6f76ae4 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -1,8 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <of.h>
+#include <io.h>
 #include <deep-probe.h>
 #include <init.h>
 #include <pm_domain.h>
+#include <bootsource.h>
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <mach/k3/common.h>
 
 static const struct of_device_id k3_of_match[] = {
 	{
@@ -12,11 +17,167 @@ static const struct of_device_id k3_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(k3_of_match);
 
+/* Primary BootMode devices */
+#define BOOT_DEVICE_RAM                 0x00
+#define BOOT_DEVICE_OSPI                0x01
+#define BOOT_DEVICE_QSPI                0x02
+#define BOOT_DEVICE_SPI                 0x03
+#define BOOT_DEVICE_CPGMAC              0x04
+#define BOOT_DEVICE_ETHERNET_RGMII      0x04
+#define BOOT_DEVICE_ETHERNET_RMII       0x05
+#define BOOT_DEVICE_I2C                 0x06
+#define BOOT_DEVICE_UART                0x07
+#define BOOT_DEVICE_MMC                 0x08
+#define BOOT_DEVICE_EMMC                0x09
+
+#define BOOT_DEVICE_USB                 0x2A
+#define BOOT_DEVICE_DFU                 0x0A
+#define BOOT_DEVICE_GPMC_NAND           0x0B
+#define BOOT_DEVICE_GPMC_NOR            0x0C
+#define BOOT_DEVICE_XSPI                0x0E
+#define BOOT_DEVICE_NOBOOT              0x0F
+
+/* Backup BootMode devices */
+#define BACKUP_BOOT_DEVICE_DFU          0x01
+#define BACKUP_BOOT_DEVICE_UART         0x03
+#define BACKUP_BOOT_DEVICE_ETHERNET     0x04
+#define BACKUP_BOOT_DEVICE_MMC          0x05
+#define BACKUP_BOOT_DEVICE_SPI          0x06
+#define BACKUP_BOOT_DEVICE_I2C          0x07
+#define BACKUP_BOOT_DEVICE_USB          0x09
+
+#define K3_PRIMARY_BOOTMODE             0x0
+
+#define MAIN_DEVSTAT_BACKUP_BOOTMODE		GENMASK(12, 10)
+#define MAIN_DEVSTAT_BACKUP_BOOTMODE_CFG	BIT(13)
+#define MAIN_DEVSTAT_BACKUP_USB_MODE		BIT(0)
+
+static void k3_get_backup_bootsource(u32 devstat, enum bootsource *src, int *instance)
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
+	case BACKUP_BOOT_DEVICE_USB:
+		*src = BOOTSOURCE_USB;
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
+	case BACKUP_BOOT_DEVICE_DFU:
+		if (bkup_bootmode_cfg & MAIN_DEVSTAT_BACKUP_USB_MODE)
+			*src = BOOTSOURCE_USB;
+		else
+			*src = BOOT_DEVICE_DFU;
+		return;
+	};
+}
+
+#define MAIN_DEVSTAT_PRIMARY_BOOTMODE		GENMASK(6, 3)
+#define MAIN_DEVSTAT_PRIMARY_BOOTMODE_CFG	GENMASK(9, 7)
+#define MAIN_DEVSTAT_PRIMARY_USB_MODE		BIT(1)
+#define MAIN_DEVSTAT_PRIMARY_MMC_PORT		BIT(2)
+
+static void k3_get_primary_bootsource(u32 devstat, enum bootsource *src, int *instance)
+{
+	u32 bootmode = FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat);
+	u32 bootmode_cfg = FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE_CFG, devstat);
+
+	switch (bootmode) {
+	case BOOT_DEVICE_OSPI:
+		fallthrough;
+	case BOOT_DEVICE_QSPI:
+		fallthrough;
+	case BOOT_DEVICE_XSPI:
+		fallthrough;
+	case BOOT_DEVICE_SPI:
+		*src = BOOTSOURCE_SPI;
+		return;
+	case BOOT_DEVICE_ETHERNET_RGMII:
+		fallthrough;
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
+	case BOOT_DEVICE_DFU:
+		if (bootmode_cfg & MAIN_DEVSTAT_PRIMARY_USB_MODE)
+			*src = BOOTSOURCE_USB;
+		else
+			*src = BOOT_DEVICE_DFU;
+		return;
+	case BOOT_DEVICE_NOBOOT:
+		*src = BOOTSOURCE_UNKNOWN;
+		return;
+	}
+}
+
+#define K3_BOOT_PARAM_TABLE_INDEX_OCRAM		0x7000F290
+
+static void k3_get_bootsource(u32 devstat, enum bootsource *src, int *instance)
+{
+	u32 bootmode = *(u32 *)(K3_BOOT_PARAM_TABLE_INDEX_OCRAM);
+
+	if (bootmode == K3_PRIMARY_BOOTMODE)
+		k3_get_primary_bootsource(devstat, src, instance);
+	else
+		k3_get_backup_bootsource(devstat, src, instance);
+}
+
+#define AM625_WKUP_CTRL_MMR0_BASE		0x43000000
+#define AM625_CTRLMMR_MAIN_DEVSTAT		(AM625_WKUP_CTRL_MMR0_BASE + 0x30)
+
+void am625_get_bootsource(enum bootsource *src, int *instance)
+{
+	u32 devstat;
+
+	devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
+
+	k3_get_bootsource(devstat, src, instance);
+}
+
 static int am625_init(void)
 {
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = 0;
+
 	if (!of_machine_is_compatible("ti,am625"))
 		return 0;
 
+	am625_get_bootsource(&src, &instance);
+	bootsource_set(src, instance);
+
 	genpd_activate();
 
 	return 0;
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
new file mode 100644
index 0000000000..448ec1343c
--- /dev/null
+++ b/include/mach/k3/common.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_K3_COMMON_H
+#define __MACH_K3_COMMON_H
+
+void am625_get_bootsource(enum bootsource *src, int *instance);
+
+#endif /* __MACH_K3_COMMON_H */
-- 
2.39.5



