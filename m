Delivery-date: Fri, 13 Dec 2024 15:07:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM6KX-007c0k-1I
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 15:07:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM6KW-0007b0-Fa
	for lore@pengutronix.de; Fri, 13 Dec 2024 15:07:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hqk74kjGFMK12+LVeeLmArPgA0xg2GjauQLH2q5ST6Y=; b=KpoNt9duGbDSrqhkJybPrFW4w0
	BAoI8dikyZVqXFnFf3T/KwtZqfiJF+h8HzKim9ZEgx/Hr0epmxLQRADxWfTro2ROAinPJ/0WMgd52
	vrzmsnbHWltKMYhj9WdxM3IjjpTVqZYg32Rbgr2KY2nfOccDcKZ75AdwKGnus7bjV140s/q8C73Gt
	JikVSRApsD2dhBwA6iKSXCHWIa/NDejCfU/J/YsHfz5aK2bOQ+lUF8fcRib9ueO2iqY1QD/BWE9ES
	uRY6Bc3sAGwB8HLDdkvj8Q/nxOE2x3vpSWyD66mHqwAm2HoT5E7LX4hPwT7UYM7lz8MNWdckLOBxi
	2oazNGyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6K2-00000003x4Z-17Cl;
	Fri, 13 Dec 2024 14:07:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6Jz-00000003x3n-31Ho
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 14:07:13 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tM6Jy-0007Sf-IS; Fri, 13 Dec 2024 15:07:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 13 Dec 2024 15:06:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-toradex-colibri-imx6-v1-1-afb618cbf25b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAII/XGcC/x3MQQqAIBBA0avErBtIi6SuEi3MphoojTFCiO6et
 HyL/x+IJEwR+uIBoZsjB5+hygLcZv1KyHM26Eo3SqsaryB2poQu7DwJIx+pRWPJTJ0ybact5PQ
 UWjj922F83w+0Ao/QZgAAAA==
X-Change-ID: 20241213-toradex-colibri-imx6-7ae7b917692a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=20092; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=KVbGb1zTLOGvQbMxfj3PPyWsDh8zE/i7fM17Jy/JMY0=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkiPse9b+OxDp2htqs3uy90vN+5r6NqgdnPeTBG9gFki5
 kY5OZnfOkpZGMQ4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABPR3MPI0Hcz32Oj4q+ExJX8
 TYHrQ0/vnzzxY8nCW1Hf381R2H1IX53hv8PL3C+r3reEN11uUnpzuvlzXBf7//xZOyWKTv7Zdun
 xHAYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_060712_076652_13D959B0 
X-CRM114-Status: GOOD (  15.68  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: Add support for todarex colibri imx6 on iris
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch adds support for the toradex colibri imx6 on the carrier
board toradex iris. Both imx6dl and imx6s variants are supported but
only the imx6dl was available for testing.

Tested was:
 - UART console
 - Boot via USB loader
 - Boot via eMMC
 - Ethernet/tftp/nfs

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/toradex-colibri-imx6/Makefile      |   4 +
 arch/arm/boards/toradex-colibri-imx6/board.c       |  46 +++++++
 .../flash-header-colibri-imx6dl.imxcfg             | 144 ++++++++++++++++++++
 .../flash-header-colibri-imx6s.imxcfg              | 145 +++++++++++++++++++++
 arch/arm/boards/toradex-colibri-imx6/lowlevel.c    |  60 +++++++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/configs/multi_v7_defconfig                |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6dl-colibri-iris.dts               |  37 ++++++
 arch/arm/mach-imx/Kconfig                          |   5 +
 images/Makefile.imx                                |   3 +
 12 files changed, 448 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 67d91616f623be9eddd370485707eeb25d3ebe40..593774d1d80c074899ce2d15b2064c00087c4d2f 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -34,6 +34,7 @@ obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook/
 obj-$(CONFIG_MACH_EMBEDSKY_E9)			+= embedsky-e9/
 obj-$(CONFIG_MACH_EMBEST_MARSBOARD)		+= embest-marsboard/
 obj-$(CONFIG_MACH_EMBEST_RIOTBOARD)		+= embest-riotboard/
+obj-$(CONFIG_MACH_TORADEX_COLIBRI_IMX6)		+= toradex-colibri-imx6/
 obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
 obj-y						+= freescale-mx51-babbage/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
diff --git a/arch/arm/boards/toradex-colibri-imx6/Makefile b/arch/arm/boards/toradex-colibri-imx6/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..da63d2625f7a36f45f32a07d601fb48afd19c978
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-imx6/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/toradex-colibri-imx6/board.c b/arch/arm/boards/toradex-colibri-imx6/board.c
new file mode 100644
index 0000000000000000000000000000000000000000..fc433edce517c82f7c5a48a6eb5edfcc0ca007ef
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-imx6/board.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <asm/armlinux.h>
+#include <common.h>
+#include <environment.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+
+static void eth_init(void)
+{
+        void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
+        uint32_t val;
+
+        val = readl(iomux + IOMUXC_GPR1);
+        val |= IMX6Q_GPR1_ENET_CLK_SEL_ANATOP;
+        writel(val, iomux + IOMUXC_GPR1);
+}
+
+static int colibri_imx6_probe(struct device *dev)
+{
+	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc0",
+			BBU_HANDLER_FLAG_DEFAULT);
+	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1", 0);
+
+	barebox_set_hostname("colibri-imx6");
+
+	eth_init();
+
+	return 0;
+}
+
+static const struct of_device_id colibri_imx6_match[] = {
+	{ .compatible = "toradex,colibri_imx6dl"},
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(colibri_imx6_match);
+
+static struct driver colibri_imx6_board_driver = {
+	.name = "board-colibri-imx6",
+	.probe = colibri_imx6_probe,
+	.of_compatible = DRV_OF_COMPAT(colibri_imx6_match),
+};
+device_platform_driver(colibri_imx6_board_driver);
diff --git a/arch/arm/boards/toradex-colibri-imx6/flash-header-colibri-imx6dl.imxcfg b/arch/arm/boards/toradex-colibri-imx6/flash-header-colibri-imx6dl.imxcfg
new file mode 100644
index 0000000000000000000000000000000000000000..d5ebaec3606864982a4b222370ee7d2f41aefb44
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-imx6/flash-header-colibri-imx6dl.imxcfg
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2010-2013 Freescale Semiconductor, Inc.
+ * Copyright (C) 2013, Boundary Devices <info@boundarydevices.com>
+ * Copyright (C) 2014-2019, Toradex AG
+ */
+
+loadaddr 0x20000000
+soc imx6
+ivtofs 0x400
+
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
+
+/* mx6dl_dcd_table */
+
+/* ddr-setup.cfg */
+
+wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS2 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS3 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS4 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS5 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS6 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
+
+wm 32 MX6_IOM_GRP_B0DS 0x00000030
+wm 32 MX6_IOM_GRP_B1DS 0x00000030
+wm 32 MX6_IOM_GRP_B2DS 0x00000030
+wm 32 MX6_IOM_GRP_B3DS 0x00000030
+wm 32 MX6_IOM_GRP_B4DS 0x00000030
+wm 32 MX6_IOM_GRP_B5DS 0x00000030
+wm 32 MX6_IOM_GRP_B6DS 0x00000030
+wm 32 MX6_IOM_GRP_B7DS 0x00000030
+wm 32 MX6_IOM_GRP_ADDDS 0x00000030
+/* 40 Ohm drive strength for cs0/1,sdba2,cke0/1,sdwe */
+wm 32 MX6_IOM_GRP_CTLDS 0x00000030
+
+wm 32 MX6_IOM_DRAM_DQM0 0x00020030
+wm 32 MX6_IOM_DRAM_DQM1 0x00020030
+wm 32 MX6_IOM_DRAM_DQM2 0x00020030
+wm 32 MX6_IOM_DRAM_DQM3 0x00020030
+wm 32 MX6_IOM_DRAM_DQM4 0x00020030
+wm 32 MX6_IOM_DRAM_DQM5 0x00020030
+wm 32 MX6_IOM_DRAM_DQM6 0x00020030
+wm 32 MX6_IOM_DRAM_DQM7 0x00020030
+
+wm 32 MX6_IOM_DRAM_CAS 0x00020030
+wm 32 MX6_IOM_DRAM_RAS 0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_0 0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_1 0x00020030
+
+wm 32 MX6_IOM_DRAM_RESET 0x00020030
+wm 32 MX6_IOM_DRAM_SDCKE0 0x00003000
+wm 32 MX6_IOM_DRAM_SDCKE1 0x00003000
+
+wm 32 MX6_IOM_DRAM_SDODT0 0x00003030
+wm 32 MX6_IOM_DRAM_SDODT1 0x00003030
+
+/* (differential input) */
+wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
+/* (differential input) */
+wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
+/* disable ddr pullups */
+wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
+wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
+/* 40 Ohm drive strength for cs0/1,sdba2,cke0/1,sdwe */
+wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
+
+/* Read data DQ Byte0-3 delay */
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
+
+/*
+ * MDMISC	mirroring	interleaved (row/bank/col)
+ */
+wm 32 MX6_MMDC_P0_MDMISC 0x000b17c0
+
+/*
+ * MDSCR	con_req
+ */
+wm 32 MX6_MMDC_P0_MDSCR 0x00008000
+
+/* 800mhz_2x64mx16.cfg */
+
+wm 32 MX6_MMDC_P0_MDPDC 0x0002002D
+wm 32 MX6_MMDC_P0_MDCFG0 0x2C305503
+wm 32 MX6_MMDC_P0_MDCFG1 0xB66D8D63
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDRWD 0x000026D2
+wm 32 MX6_MMDC_P0_MDOR 0x00301023
+wm 32 MX6_MMDC_P0_MDOTC 0x00333030
+wm 32 MX6_MMDC_P0_MDPDC 0x0002556D
+/* CS0 End: 7MSB of ((0x10000000, + 512M) -1) >> 25 */
+wm 32 MX6_MMDC_P0_MDASP 0x00000017
+/* DDR3 DATA BUS SIZE: 64BIT */
+wm 32 MX6_MMDC_P0_MDCTL 0x821A0000
+/* DDR3 DATA BUS SIZE: 32BIT */
+/* MX6_MMDC_P0_MDCTL, 0x82190000, */
+
+/* Write commands to DDR */
+/* Load Mode Registers */
+/* TODO Use Auto Self-Refresh mode (Extended Temperature)*/
+/* MX6_MMDC_P0_MDSCR, 0x04408032, */
+wm 32 MX6_MMDC_P0_MDSCR 0x04008032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x00048031
+wm 32 MX6_MMDC_P0_MDSCR 0x13208030
+/* ZQ calibration */
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P0_MDREF 0x00005800
+
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00000000
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00000000
+
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x42360232
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x021F022A
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x421E0224
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x02110218
+
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x41434344
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x4345423E
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x39383339
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x3E363930
+
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x00340039
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x002C002D
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x00120019
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x0012002D
+
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/toradex-colibri-imx6/flash-header-colibri-imx6s.imxcfg b/arch/arm/boards/toradex-colibri-imx6/flash-header-colibri-imx6s.imxcfg
new file mode 100644
index 0000000000000000000000000000000000000000..75febb0b7759b02a64522420aafdc7ee1cbd0667
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-imx6/flash-header-colibri-imx6s.imxcfg
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2010-2013 Freescale Semiconductor, Inc.
+ * Copyright (C) 2013, Boundary Devices <info@boundarydevices.com>
+ * Copyright (C) 2014-2019, Toradex AG
+ */
+
+loadaddr 0x20000000
+soc imx6
+ivtofs 0x400
+
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
+
+/* mx6s_dcd_table */
+
+/* ddr-setup.cfg */
+
+wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS2 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS3 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS4 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS5 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS6 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
+
+wm 32 MX6_IOM_GRP_B0DS 0x00000030
+wm 32 MX6_IOM_GRP_B1DS 0x00000030
+wm 32 MX6_IOM_GRP_B2DS 0x00000030
+wm 32 MX6_IOM_GRP_B3DS 0x00000030
+wm 32 MX6_IOM_GRP_B4DS 0x00000030
+wm 32 MX6_IOM_GRP_B5DS 0x00000030
+wm 32 MX6_IOM_GRP_B6DS 0x00000030
+wm 32 MX6_IOM_GRP_B7DS 0x00000030
+wm 32 MX6_IOM_GRP_ADDDS 0x00000030
+/* 40 Ohm drive strength for cs0/1,sdba2,cke0/1,sdwe */
+wm 32 MX6_IOM_GRP_CTLDS 0x00000030
+
+wm 32 MX6_IOM_DRAM_DQM0 0x00020030
+wm 32 MX6_IOM_DRAM_DQM1 0x00020030
+wm 32 MX6_IOM_DRAM_DQM2 0x00020030
+wm 32 MX6_IOM_DRAM_DQM3 0x00020030
+wm 32 MX6_IOM_DRAM_DQM4 0x00020030
+wm 32 MX6_IOM_DRAM_DQM5 0x00020030
+wm 32 MX6_IOM_DRAM_DQM6 0x00020030
+wm 32 MX6_IOM_DRAM_DQM7 0x00020030
+
+wm 32 MX6_IOM_DRAM_CAS 0x00020030
+wm 32 MX6_IOM_DRAM_RAS 0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_0 0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_1 0x00020030
+
+wm 32 MX6_IOM_DRAM_RESET 0x00020030
+wm 32 MX6_IOM_DRAM_SDCKE0 0x00003000
+wm 32 MX6_IOM_DRAM_SDCKE1 0x00003000
+
+wm 32 MX6_IOM_DRAM_SDODT0 0x00003030
+wm 32 MX6_IOM_DRAM_SDODT1 0x00003030
+
+/* (differential input) */
+wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
+/* (differential input) */
+wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
+/* disable ddr pullups */
+wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
+wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
+/* 40 Ohm drive strength for cs0/1,sdba2,cke0/1,sdwe */
+wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
+
+/* Read data DQ Byte0-3 delay */
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
+
+/*
+ * MDMISC	mirroring	interleaved (row/bank/col)
+ */
+wm 32 MX6_MMDC_P0_MDMISC 0x000b17c0
+
+/*
+ * MDSCR	con_req
+ */
+wm 32 MX6_MMDC_P0_MDSCR 0x00008000
+
+
+/* 800mhz_2x64mx16.cfg */
+
+wm 32 MX6_MMDC_P0_MDPDC 0x0002002D
+wm 32 MX6_MMDC_P0_MDCFG0 0x2C305503
+wm 32 MX6_MMDC_P0_MDCFG1 0xB66D8D63
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDRWD 0x000026D2
+wm 32 MX6_MMDC_P0_MDOR 0x00301023
+wm 32 MX6_MMDC_P0_MDOTC 0x00333030
+wm 32 MX6_MMDC_P0_MDPDC 0x0002556D
+/* CS0 End: 7MSB of ((0x10000000, + 512M) -1) >> 25 */
+wm 32 MX6_MMDC_P0_MDASP 0x00000017
+/* DDR3 DATA BUS SIZE: 64BIT */
+/* MX6_MMDC_P0_MDCTL, 0x821A0000, */
+/* DDR3 DATA BUS SIZE: 32BIT */
+wm 32 MX6_MMDC_P0_MDCTL 0x82190000
+
+/* Write commands to DDR */
+/* Load Mode Registers */
+/* TODO Use Auto Self-Refresh mode (Extended Temperature)*/
+/* MX6_MMDC_P0_MDSCR, 0x04408032, */
+wm 32 MX6_MMDC_P0_MDSCR 0x04008032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x00048031
+wm 32 MX6_MMDC_P0_MDSCR 0x13208030
+/* ZQ calibration */
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P0_MDREF 0x00005800
+
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00000000
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00000000
+
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x42360232
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x021F022A
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x421E0224
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x02110218
+
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x41434344
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x4345423E
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x39383339
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x3E363930
+
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x00340039
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x002C002D
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x00120019
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x0012002D
+
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/toradex-colibri-imx6/lowlevel.c b/arch/arm/boards/toradex-colibri-imx6/lowlevel.c
new file mode 100644
index 0000000000000000000000000000000000000000..5bb4dcd37f637f4703fa959a657fddc81dfff82e
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-imx6/lowlevel.c
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/barebox-arm.h>
+#include <debug_ll.h>
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/iomux-mx6.h>
+
+#define UART_DT_IOMUX_PAD(_mux_ctrl_ofs, _pad_ctrl_ofs, _sel_input_ofs, _mux_mode, _sel_input) \
+	IOMUX_PAD(_pad_ctrl_ofs, _mux_ctrl_ofs, _mux_mode, _sel_input_ofs, \
+		  _sel_input, MX6Q_UART_PAD_CTRL)
+
+/* We only have C defines for MX6Q_ */
+#define MX6DL_PAD_CSI0_DAT11__UART1_TX_DATA        UART_DT_IOMUX_PAD(0x050, 0x364, 0x000, 0x3, 0x0)
+
+static void setup_uart(void)
+{
+	void __iomem *uart1base = IOMEM(MX6_UART1_BASE_ADDR);
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	if (!IS_ENABLED(CONFIG_DEBUG_LL))
+		return;
+
+	imx6_uart_setup(uart1base);
+	imx_uart_set_dte(uart1base);
+
+	imx_setup_pad(iomuxbase, MX6DL_PAD_CSI0_DAT11__UART1_TX_DATA);
+
+	putc_ll('>');
+}
+
+extern char __dtb_z_imx6dl_colibri_iris_start[];
+
+ENTRY_FUNCTION(start_imx6dl_colibri_iris, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		setup_uart();
+	}
+
+	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+}
+
+ENTRY_FUNCTION(start_imx6s_colibri_iris, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		setup_uart();
+	}
+
+	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_256M, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 72833eb09fe8be4cc14f099c8785d04dc1a100e7..eaddb98319a26648f6901bfa03a0c0168ab1330b 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -20,6 +20,7 @@ CONFIG_MACH_ELTEC_HIPERCAM=y
 CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_EMBEST_MARSBOARD=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
+CONFIG_MACH_TORADEX_COLIBRI_IMX6=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 8acbb287164bce3449a597a4037b7cc99a2fb4bd..a95342dda6262de51d69119f2a6b59ae5ebf9179 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -30,6 +30,7 @@ CONFIG_MACH_ELTEC_HIPERCAM=y
 CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_EMBEST_MARSBOARD=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
+CONFIG_MACH_TORADEX_COLIBRI_IMX6=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index fe32b812f6037f382954a84f9ab40cfc8715e367..a7be3262a45023599567ef52653510c3f31cbac2 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -161,6 +161,7 @@ lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 lwl-$(CONFIG_MACH_INNOCOMM_WB15) += imx8mm-innocomm-wb15-evk.dtb.o
 lwl-$(CONFIG_MACH_TQ_MBA8MPXL) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
+lwl-$(CONFIG_MACH_TORADEX_COLIBRI_IMX6) += imx6dl-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 lwl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 lwl-$(CONFIG_MACH_TQMA6UL) += imx6ul-tqma6ul2-mba6ulx.dtb.o \
diff --git a/arch/arm/dts/imx6dl-colibri-iris.dts b/arch/arm/dts/imx6dl-colibri-iris.dts
new file mode 100644
index 0000000000000000000000000000000000000000..0e10b34cf71c5014287491f8a40ca5323f64eaa3
--- /dev/null
+++ b/arch/arm/dts/imx6dl-colibri-iris.dts
@@ -0,0 +1,37 @@
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License version 2.
+ */
+
+#include <arm/nxp/imx/imx6dl-colibri-iris.dts>
+#include "imx6qdl.dtsi"
+
+/ {
+	chosen {
+		barebox-environment {
+			compatible = "barebox,environment";
+			device-path = &bbenv_emmc;
+		};
+	};
+};
+
+&usdhc3 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		bbenv_emmc: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0 0xe0000 0 0x20000>;
+		};
+	};
+};
+
+&clks {
+	fsl,pmic-stby-poweroff;
+};
+
+&pmic {
+	fsl,pmic-stby-poweroff;
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d1f8dc795b578fafd2bd2b4c1e59b85430668af7..ce1c5a80d568ce1076f4dd02161b589f501c7a78 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -389,6 +389,11 @@ config MACH_EMBEST_RIOTBOARD
 	select ARCH_IMX6
 	imply AT803X_PHY
 
+config MACH_TORADEX_COLIBRI_IMX6
+	bool "Toradex Colibri iMX6"
+	select ARCH_IMX6
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_SABRELITE
 	bool "Freescale i.MX6 Sabre Lite"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d0f1f156ea6c9c8ca3298970fa2c3886e9302212..c3f1bd5f05a008321944cf68659c146f8cd25ce1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -298,6 +298,9 @@ $(call build_imx_habv4img, CONFIG_MACH_EMBEST_MARSBOARD, start_imx6q_marsboard,
 
 $(call build_imx_habv4img, CONFIG_MACH_EMBEST_RIOTBOARD, start_imx6s_riotboard, embest-riotboard/flash-header-embest-riotboard, embest-imx6s-riotboard)
 
+$(call build_imx_habv4img, CONFIG_MACH_TORADEX_COLIBRI_IMX6, start_imx6dl_colibri_iris, toradex-colibri-imx6/flash-header-colibri-imx6dl, toradex-imx6dl-colibri-iris)
+$(call build_imx_habv4img, CONFIG_MACH_TORADEX_COLIBRI_IMX6,  start_imx6s_colibri_iris,  toradex-colibri-imx6/flash-header-colibri-imx6s,  toradex-imx6s-colibri-iris)
+
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycard_imx6q_1gib, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib, phytec-phycard-imx6q-1gib)
 
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycard_imx6q_1gib_1bank, phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank, phytec-phycard-imx6q-1gib-1bank)

---
base-commit: a7ae043343c89e8b75904a41174b9b4cf2df35a0
change-id: 20241213-toradex-colibri-imx6-7ae7b917692a

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



