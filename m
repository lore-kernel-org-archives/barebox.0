Delivery-date: Wed, 04 Mar 2026 12:01:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyx-007xSc-2b
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyx-0005x2-G8
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/9uyD6l8WiaWxmhJhmBDxVyt9NYO8U0VmnUJZ8k4eE=; b=EnmO5v7OBlIgLF
	S/2yB5ITV4MYGN9+spBmdDVwROTJkaz9NnWfp+hGiu+cyQdaUCVgJeqnzrYSlah3OQS+/pIsAwELq
	U8AK/+ty7N5RIAKcDbdy0KmMOYG9AsWfNDqaaq36QGX1/YGsiutxftKAWz/+trNeeO7/7uvgNXGQ0
	dsjnU82QNEmbxzgUaUvNuzzSa88Gr4EaGxH0IVmuX0zmitQ5X6X288sJTO5Za7Hloq103+CuNigzi
	NP6VMsKWtzTEkhccMkKZlg2EVuOBhc6P0yn2B5YYMCiCoraL4pjLAAZVyrX+LXnYBxK8OBzXeyE2m
	E1nbYsKnQ6w8V3y3v51w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyM-0000000H25q-3XKx;
	Wed, 04 Mar 2026 11:00:58 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyJ-0000000H1zz-3tBE
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=s/9uyD6l8WiaWxmhJhmBDxVyt9NYO8U0VmnUJZ8k4eE=;
	b=CsUpMAQB/6McKEq1pcO+8gO0HIfxjvAWolgnfX5+Y3obGiddXjfMbA+lIBlU49MSFFR1cN1BUeQBI
	 r1UH4t1XOgWvGzbNQ26r7OczVS6H0Ku3uE99BVt9Guvc2Ve3htjshjgrtzwv8mcOyoG2d3W2ntxgTL
	 Mcovx21ABEuQssmeACcoI6/cEl1Kb3t/x2Jke/B6Y57l3BNuBt9Dth94f4aYHxl2YIg55T10wjlTOB
	 mAYLu95VjvZyI95vxr4/+OBa75pEoR0UYX1WYslWHOLF9Jfp/WuF3d/CiVzzmqI5PF7r10ej02GrlG
	 BnYBNyjha1ro+zVHzV4lexwOLaZOehw==
X-MSG-ID: 64fe7228-17b9-11f1-bcce-00505681446f
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:05 +0100
Message-ID: <20260304110013.495725-2-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030056_126767_67E45A2E 
X-CRM114-Status: GOOD (  19.62  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: boards: Rename protonic-mecsbc to protonic-rk356x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A more generic name which allows us to add more boards in the future.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 Documentation/boards/rk35xx.rst               |  2 +-
 arch/arm/boards/Makefile                      |  2 +-
 .../Makefile                                  |  0
 .../board.c                                   | 70 +++++++++----------
 .../lowlevel.c                                |  0
 arch/arm/configs/rockchip_v8_defconfig        |  2 +-
 arch/arm/dts/Makefile                         |  2 +-
 arch/arm/mach-rockchip/Kconfig                |  6 +-
 images/Makefile.rockchip                      |  2 +-
 9 files changed, 43 insertions(+), 43 deletions(-)
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/Makefile (100%)
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/board.c (61%)
 rename arch/arm/boards/{protonic-mecsbc => protonic-rk356x}/lowlevel.c (100%)

diff --git a/Documentation/boards/rk35xx.rst b/Documentation/boards/rk35xx.rst
index 0a016909f0..fe74e10870 100644
--- a/Documentation/boards/rk35xx.rst
+++ b/Documentation/boards/rk35xx.rst
@@ -15,7 +15,7 @@ Supported Boards
 - Radxa ROCK5 (RK3588)
 - Radxa CM3 (RK3566) IO Board
 - QNAP TS-433 NAS
-- Protonic MECSBC
+- Protonic RK356x
 - Protonic PRTPUK
 
 .. toctree::
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 0b090d43fd..4806ef2ccf 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -94,8 +94,8 @@ obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
 obj-$(CONFIG_MACH_POLYHEX_DEBIX)		+= polyhex-debix/
 obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
 obj-$(CONFIG_MACH_PROTONIC_IMX8M)		+= protonic-imx8m/
-obj-$(CONFIG_MACH_PROTONIC_MECSBC)		+= protonic-mecsbc/
 obj-$(CONFIG_MACH_PROTONIC_PRTPUK)		+= protonic-prtpuk/
+obj-$(CONFIG_MACH_PROTONIC_RK356X)		+= protonic-rk356x/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP13)		+= protonic-stm32mp13/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
diff --git a/arch/arm/boards/protonic-mecsbc/Makefile b/arch/arm/boards/protonic-rk356x/Makefile
similarity index 100%
rename from arch/arm/boards/protonic-mecsbc/Makefile
rename to arch/arm/boards/protonic-rk356x/Makefile
diff --git a/arch/arm/boards/protonic-mecsbc/board.c b/arch/arm/boards/protonic-rk356x/board.c
similarity index 61%
rename from arch/arm/boards/protonic-mecsbc/board.c
rename to arch/arm/boards/protonic-rk356x/board.c
index 56f7ca393a..51d08b6705 100644
--- a/arch/arm/boards/protonic-mecsbc/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#define pr_fmt(fmt) "MECSBC: " fmt
+#define pr_fmt(fmt) "Protonic RK356x: " fmt
 
 #include <bootsource.h>
 #include <common.h>
@@ -13,17 +13,17 @@
 #include <aiodev.h>
 #include <globalvar.h>
 
-struct mecsbc_model {
+struct prt_rk356x_model {
 	const char *name;
 	const char *shortname;
 };
 
-struct mecsbc_priv {
+struct prt_rk356x_priv {
 	int hw_id;
 	int hw_rev;
 };
 
-static struct mecsbc_priv mecsbc_data;
+static struct prt_rk356x_priv prt_priv;
 
 static int saradc_get_value(const char *chan)
 {
@@ -38,56 +38,56 @@ static int saradc_get_value(const char *chan)
 	return voltage;
 }
 
-static int mecsbc_get_vin_mv(void)
+static int prt_rk356x_get_vin_mv(void)
 {
 	return saradc_get_value("aiodev0.in_value2_mV") * 22;
 }
 
-static bool mecsbc_get_usb_boot(void)
+static bool prt_rk356x_get_usb_boot(void)
 {
 	return saradc_get_value("aiodev0.in_value0_mV") < 74;
 }
 
-static int mecsbc_adc_id_values[] = {
+static int prt_rk356x_adc_id_values[] = {
 	1800, 1662, 1521, 1354, 1214, 1059, 900, 742, 335, 589, 278, 137, 0
 };
 
-static int mecsbc_get_adc_id(const char *chan)
+static int prt_rk356x_get_adc_id(const char *chan)
 {
 	int val;
 	unsigned int t;
 
 	val = saradc_get_value(chan) + 74;
 
-	for (t = 0; t < ARRAY_SIZE(mecsbc_adc_id_values); t++) {
-		if (val > mecsbc_adc_id_values[t])
+	for (t = 0; t < ARRAY_SIZE(prt_rk356x_adc_id_values); t++) {
+		if (val > prt_rk356x_adc_id_values[t])
 			return t;
 	}
 
 	return t;
 }
 
-static void mecsbc_process_adc(struct device *dev)
+static void prt_rk356x_process_adc(struct device *dev)
 {
-	mecsbc_data.hw_id = mecsbc_get_adc_id("aiodev0.in_value1_mV");
-	mecsbc_data.hw_rev = mecsbc_get_adc_id("aiodev0.in_value3_mV");
+	prt_priv.hw_id = prt_rk356x_get_adc_id("aiodev0.in_value1_mV");
+	prt_priv.hw_rev = prt_rk356x_get_adc_id("aiodev0.in_value3_mV");
 
-	dev_add_param_uint32_ro(dev, "boardrev", &mecsbc_data.hw_rev, "%u");
-	dev_add_param_uint32_ro(dev, "boardid", &mecsbc_data.hw_id, "%u");
+	dev_add_param_uint32_ro(dev, "boardrev", &prt_priv.hw_rev, "%u");
+	dev_add_param_uint32_ro(dev, "boardid", &prt_priv.hw_id, "%u");
 
 	/* Check if we need to enable the USB gadget instead of booting */
-	if (mecsbc_get_usb_boot()) {
+	if (prt_rk356x_get_usb_boot()) {
 		globalvar_add_simple("boot.default", "net");
 		globalvar_add_simple("usbgadget.acm", "1");
 		globalvar_add_simple("usbgadget.autostart", "1");
 		globalvar_add_simple("system.partitions", "/dev/mmc0(mmc0)");
-		pr_info("MECSBC: Enter USB recovery\n");
+		pr_info("Enter USB recovery\n");
 	} else {
 		globalvar_add_simple("boot.default", "bootchooser");
 	}
 
-	pr_info("Board id: %d, revision %d\n", mecsbc_data.hw_id, mecsbc_data.hw_rev);
-	pr_info("VIN = %d V\n", mecsbc_get_vin_mv() / 1000);
+	pr_info("Board id: %d, revision %d\n", prt_priv.hw_id, prt_priv.hw_rev);
+	pr_info("VIN = %d V\n", prt_rk356x_get_vin_mv() / 1000);
 }
 
 static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
@@ -108,31 +108,31 @@ static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
-static int mecsbc_of_fixup_hwrev(struct device *dev)
+static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 {
 	const char *compat;
 	char *buf;
 
 	compat = of_device_get_match_compatible(dev);
 
-	buf = xasprintf("%s-m%u-r%u", compat, mecsbc_data.hw_id,
-			mecsbc_data.hw_rev);
+	buf = xasprintf("%s-m%u-r%u", compat, prt_priv.hw_id,
+			prt_priv.hw_rev);
 	barebox_set_of_machine_compatible(buf);
 
 	free(buf);
 
-	if (mecsbc_data.hw_id == 0 && mecsbc_data.hw_rev == 0)
+	if (prt_priv.hw_id == 0 && prt_priv.hw_rev == 0)
 		of_register_fixup(mecsbc_sd_of_fixup, dev);
 
 	return 0;
 }
 
-static int mecsbc_probe(struct device *dev)
+static int prt_rk356x_probe(struct device *dev)
 {
 	int ret = 0;
 	enum bootsource bootsource = bootsource_get();
 	int instance = bootsource_get_instance();
-	const struct mecsbc_model *model;
+	const struct prt_rk356x_model *model;
 	struct device_node *np;
 
 	np = of_find_node_by_name_address(NULL, "saradc@fe720000");
@@ -151,18 +151,18 @@ static int mecsbc_probe(struct device *dev)
 	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
 	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
-	mecsbc_process_adc(dev);
-	mecsbc_of_fixup_hwrev(dev);
+	prt_rk356x_process_adc(dev);
+	prt_rk356x_of_fixup_hwrev(dev);
 
 	return ret;
 }
 
-static const struct mecsbc_model mecsbc = {
+static const struct prt_rk356x_model mecsbc = {
 	.name = "Protonic MECSBC board",
 	.shortname = "mecsbc",
 };
 
-static const struct of_device_id mecsbc_of_match[] = {
+static const struct of_device_id prt_rk356x_of_match[] = {
 	{
 		.compatible = "prt,mecsbc",
 		.data = &mecsbc,
@@ -170,11 +170,11 @@ static const struct of_device_id mecsbc_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver mecsbc_board_driver = {
-	.name = "board-mecsbc",
-	.probe = mecsbc_probe,
-	.of_compatible = mecsbc_of_match,
+static struct driver prt_rk356x_board_driver = {
+	.name = "board-protonic-rk356x",
+	.probe = prt_rk356x_probe,
+	.of_compatible = prt_rk356x_of_match,
 };
-coredevice_platform_driver(mecsbc_board_driver);
+coredevice_platform_driver(prt_rk356x_board_driver);
 
-BAREBOX_DEEP_PROBE_ENABLE(mecsbc_of_match);
+BAREBOX_DEEP_PROBE_ENABLE(prt_rk356x_of_match);
diff --git a/arch/arm/boards/protonic-mecsbc/lowlevel.c b/arch/arm/boards/protonic-rk356x/lowlevel.c
similarity index 100%
rename from arch/arm/boards/protonic-mecsbc/lowlevel.c
rename to arch/arm/boards/protonic-rk356x/lowlevel.c
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index b8fc83b842..e0df655ea0 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -5,7 +5,7 @@ CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
-CONFIG_MACH_PROTONIC_MECSBC=y
+CONFIG_MACH_PROTONIC_RK356X=y
 CONFIG_MACH_PROTONIC_PRTPUK=y
 CONFIG_MACH_QNAP_TSX33=y
 CONFIG_MACH_RADXA_ROCK3=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7a846e878b..ed018dbf7a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -119,8 +119,8 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
 lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += \
 	imx8mm-prt8mm.dtb.o \
 	imx8mp-prt8ml.dtb.o
-lwl-$(CONFIG_MACH_PROTONIC_MECSBC) += rk3568-mecsbc.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_PRTPUK) += rk3576-prtpuk.dtb.o
+lwl-$(CONFIG_MACH_PROTONIC_RK356X) += rk3568-mecsbc.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1a.dtb.o \
 	stm32mp151-prtt1c.dtb.o \
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index c1c96c545e..30945b9e09 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -109,11 +109,11 @@ config MACH_PINE64_QUARTZ64
 	help
 	  Say Y here if you are using a Pine64 Quartz64
 
-config MACH_PROTONIC_MECSBC
+config MACH_PROTONIC_RK356X
 	select ARCH_RK3568
-	bool "Protonic MECSBC"
+	bool "Protonic RK356x"
 	help
-	  Say Y here if you are using a Protonic MECSBC
+	  Say Y here if you are using a Protonic board with a RK356x cpu
 
 config MACH_PROTONIC_PRTPUK
 	select ARCH_RK3576
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 7651f88d62..585341587d 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -44,7 +44,7 @@ $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pr
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pine64-pinetab2/sdram-init.bin, pinetab2-v0)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
-$(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
+$(call build_rockchip_image, CONFIG_MACH_PROTONIC_RK356X, start_mecsbc, protonic-rk356x/rk3568-sdram-init.bin, mecsbc)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_PRTPUK, start_prtpuk, protonic-prtpuk/sdram-init.bin, prtpuk)
 $(call build_rockchip_image, CONFIG_MACH_QNAP_TSX33, start_rk3568_qnap_ts433, qnap-tsx33/sdram-init.bin, qnap-ts433)
 $(call build_rockchip_image, CONFIG_MACH_QNAP_TSX33, start_rk3568_qnap_ts433eu, qnap-tsx33/sdram-init.bin, qnap-ts433-eu)
-- 
2.43.0



