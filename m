Delivery-date: Fri, 23 Feb 2024 14:01:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdVAt-002zhO-1B
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 14:01:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdVAs-0006P5-G3
	for lore@pengutronix.de; Fri, 23 Feb 2024 14:01:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/HZsl8b2uOFws0E09hYx4RcO+UC/jPekav2rre+piRM=; b=hgh+kyRd0XB9TigJkStosLM731
	AqOaq/mRRx4DjYb7HLIAmbS7hmmPZA4cQREL5YqN6qEqe5HU1izRg3AOe613nnA4xnHR/CfrvPo2/
	7nzjyYYPi7Hs+K317gkmDRpgDsuoV3yyiNaT02nPB7zdcwr8XCHZV6hWBFA/iJmc7uBc2210Svu+T
	f8bcLTRf2Abulm1LOjaLG10DAqjw8np4DJVf7KjN0SBnm6rvpxoWsw4Ccpfp6yTj8Me7if8zhyUo4
	NDXz0IpwG4NjlITEizgCsvbNJGUjw2Bl6vxTzUdFfp0SO3/gxyY1WWEDgsgJIle9bXB6IGYmNbxM9
	4RtVmgrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdV9Q-00000009RWD-0ruV;
	Fri, 23 Feb 2024 12:59:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdV9H-00000009RPr-1HlX
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 12:59:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdV9A-0005VU-6n; Fri, 23 Feb 2024 13:59:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdV99-002QaD-QH; Fri, 23 Feb 2024 13:59:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdV99-00C1Sc-2I;
	Fri, 23 Feb 2024 13:59:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 23 Feb 2024 13:59:22 +0100
Message-Id: <20240223125922.2865359-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_045931_570505_416BD934 
X-CRM114-Status: GOOD (  28.09  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX6: TQMa6ulx: add OP-TEE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds OP-TEE support for the TQMa6ulx board. The OP-TEE binary is
loaded from PBL. Later on in barebox proper the OP-TEE provided overlay
node is applied to the barebox live tree for barebox to probe OP-TEE and
also to reserve the memory used by OP-TEE. The overlay is also
registered as a fixup to be applied on the Linux device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/board.c              | 64 ++++++++++++++++---
 .../flash-header-imx6ul-tqma6ulx.imxcfg       |  3 +
 arch/arm/boards/tqma6ulx/lowlevel.c           | 26 +++++++-
 arch/arm/boards/tqma6ulx/tqma6ulx.h           | 14 ++++
 firmware/Kconfig                              |  5 ++
 firmware/Makefile                             |  1 +
 6 files changed, 102 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/boards/tqma6ulx/tqma6ulx.h

diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index 378cadc018..312bb9f585 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -12,6 +12,61 @@
 #include <of.h>
 #include <string.h>
 #include <linux/clk.h>
+#include <asm/optee.h>
+#include <asm-generic/memory_layout.h>
+
+#include "tqma6ulx.h"
+
+static const struct of_device_id mba6ulx_of_match[] = {
+	{ .compatible = "tq,imx6ul-tqma6ul2l" },
+	{ .compatible = "tq,imx6ul-tqma6ul2" },
+	{ .compatible = "tq,imx6ull-tqma6ull2" },
+	{ .compatible = "tq,imx6ull-tqma6ull2l" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, mba6ulx_of_match);
+
+#ifdef CONFIG_FIRMWARE_TQMA6UL_OPTEE
+
+static int mba6ulx_optee_fixup(void)
+{
+	struct device_node *overlay;
+	struct fdt_header *fdt;
+	struct device_node *root = of_get_root_node();
+	int ret;
+
+	if (!of_match_node(mba6ulx_of_match, root))
+		return 0;
+
+	fdt = (void*)OPTEE_OVERLAY_LOCATION;
+	overlay = of_unflatten_dtb(fdt, INT_MAX);
+
+	if (IS_ERR(overlay))
+		return PTR_ERR(overlay);
+
+	/* register the overlay for fixing up the kernel device tree */
+	ret = of_register_overlay(overlay);
+	if (ret) {
+		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	/*
+	 * Apply the overlay to the live tree to enable OP-TEE support
+	 * for barebox and to reserve the SDRAM regions occupied by
+	 * OP-TEE
+	 */
+	of_overlay_apply_tree(root, overlay);
+
+	return 0;
+err:
+	of_delete_node(overlay);
+
+	return ret;
+}
+postcore_initcall(mba6ulx_optee_fixup);
+
+#endif
 
 static int mba6ulx_probe(struct device *dev)
 {
@@ -39,15 +94,6 @@ static int mba6ulx_probe(struct device *dev)
 	return 0;
 }
 
-static const struct of_device_id mba6ulx_of_match[] = {
-	{ .compatible = "tq,imx6ul-tqma6ul2l" },
-	{ .compatible = "tq,imx6ul-tqma6ul2" },
-	{ .compatible = "tq,imx6ull-tqma6ull2" },
-	{ .compatible = "tq,imx6ull-tqma6ull2l" },
-	{ /* sentinel */ },
-};
-MODULE_DEVICE_TABLE(of, mba6ulx_of_match);
-
 static struct driver mba6ulx_board_driver = {
 	.name = "board-mba6ulx",
 	.probe = mba6ulx_probe,
diff --git a/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg b/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
index 9c9fb33743..ac4b853ced 100644
--- a/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
+++ b/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
@@ -99,4 +99,7 @@ wm 32 0x021B0004 0x0002552D	/* MMDC0_MDPDC now SDCTL power down enabled */
 wm 32 0x021B0404 0x00011006	/* MMDC0_MAPSR ADOPT power down enabled */
 wm 32 0x021B001C 0x00000000	/* MMDC0_MDSCR, clear this register (especially the configuration bit as initialization is complete) */
 
+/* Disable TZASC bypass */
+wm 32 0x020E4024 0x00000001
+
 #include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index 909bdc532e..5fd997d2ec 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -15,6 +15,9 @@
 #include <asm/cache.h>
 #include <pbl/i2c.h>
 #include <boards/tq/tq_eeprom.h>
+#include <tee/optee.h>
+
+#include "tqma6ulx.h"
 
 extern char __dtb_z_imx6ul_tqma6ul2_mba6ulx_start[];
 extern char __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start[];
@@ -63,14 +66,33 @@ static void *read_eeprom(void)
 	return fdt;
 }
 
-static void noinline start_mba6ulx(void)
+static void noinline start_mba6ulx(u32 r0)
 {
 	void *fdt;
+	int tee_size;
+	void *tee;
 
 	setup_uart();
 
 	fdt = read_eeprom();
 
+	/* Enable normal/secure r/w for TZC380 region0 */
+	writel(0xf0000000, 0x021D0108);
+
+	/*
+	 * Chainloading barebox will pass a device tree within the RAM in r0,
+	 * skip OP-TEE early loading in this case
+	 */
+	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
+	    !(r0 > MX6_MMDC_P0_BASE_ADDR &&
+	      r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
+		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
+
+		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
+
+		start_optee_early(NULL, tee);
+	}
+
 	imx6ul_barebox_entry(fdt);
 }
 
@@ -90,5 +112,5 @@ ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_mba6ulx();
+	start_mba6ulx(r0);
 }
diff --git a/arch/arm/boards/tqma6ulx/tqma6ulx.h b/arch/arm/boards/tqma6ulx/tqma6ulx.h
new file mode 100644
index 0000000000..843ad00d31
--- /dev/null
+++ b/arch/arm/boards/tqma6ulx/tqma6ulx.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * tqma6ulx.h - common defines between OP-TEE and barebox
+ *
+ * Copyright (c) 2019 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
+ *
+ */
+#ifndef __TQMA6ULX_H_
+#define __TQMA6ULX_H_
+
+/* MX6UL_MMDC_PORT0_BASE_ADDR + SZ_64M */
+#define OPTEE_OVERLAY_LOCATION 0x84000000
+
+#endif // __TQMA6ULX_H_
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 9d4be855f9..d2b1a5db03 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -85,6 +85,11 @@ config FIRMWARE_IMX93_OPTEE
 	  CONFIG_EXTRA_FIRMWARE_DIR/mx93a1-ahab-container.img. You can obtain it from
 	  https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-ele-imx-0.1.0.bin
 
+config FIRMWARE_TQMA6UL_OPTEE
+	bool
+	depends on MACH_TQMA6UL && PBL_OPTEE
+	default y
+
 config FIRMWARE_CCBV2_OPTEE
 	bool
 	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
diff --git a/firmware/Makefile b/firmware/Makefile
index 1409d7a804..83ce77f510 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -35,6 +35,7 @@ firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
 fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
 
 pbl-firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
+pbl-firmware-$(CONFIG_FIRMWARE_TQMA6UL_OPTEE) += mba6ul_optee.bin
 
 # Create $(fwdir) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
-- 
2.39.2



