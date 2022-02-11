Delivery-date: Fri, 11 Feb 2022 11:04:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISmi-00CiwP-93
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 11:04:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISmf-0003E9-5n
	for lore@pengutronix.de; Fri, 11 Feb 2022 11:04:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/l589ouzQYPhLmh/jySNO3d2rpLq/XsQECWLebjiFIQ=; b=Zwzma30Y3GBEhA
	HtnXZ1V5Vs7h5cy1raHDUgDZRxy/uC3+8x7C6GsJ74HwvY5E8SSEDe253LNRG6mry1SSYYrdSquHv
	B4lJP7svp/HaGdmIM+/JcmWN41NfIs8SRbnLLNP4i+uhoeULKVleFX1ya29Fl3cnoO+DeahtCJLDU
	I6iJY1oNfC3/jmoJcWml2Si2Zht8fwyG637BfuShtpFkM2oxpkfgMpccDZzUnOh7KNRUSJl+ID6qe
	szO80n9ya/j+eTAPoC2jfD+WNc57R7+MrM/ii0g5clWNRayEEkNsFs8uUKnfxDDjOUYwGP2RPhFPk
	71a4i1mZNWpJyctRgqtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nISlK-006WDD-1M; Fri, 11 Feb 2022 10:02:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nISlD-006WCV-88
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 10:02:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rcz@pengutronix.de>)
 id 1nISl9-00031v-Sz; Fri, 11 Feb 2022 11:02:35 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <rcz@pengutronix.de>)
 id 1nISl9-00FtmK-T4; Fri, 11 Feb 2022 11:02:35 +0100
Received: from rcz by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <rcz@pengutronix.de>)
 id 1nISl8-00A3IG-CQ; Fri, 11 Feb 2022 11:02:34 +0100
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 11 Feb 2022 11:02:25 +0100
Message-Id: <20220211100224.2395887-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_020239_674371_35E89773 
X-CRM114-Status: GOOD (  24.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3] ARM: imx: add support for TQMa6UL SoM on MBa6ulxl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for a TQMA6UL2L SoM on top of a MBa6ulxl baseboard. The
imxcfg header is for the LGA variant, the downstream U-Boot has an ifdef
for another "standard" variant, however this is not included here since
I don't have hardware to test.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
v2->v3:
- replace explicit pinmux with comment

v1->v2:
- split up barebox and kernel dts
- fixed DEBUG_LL
- removed mmc0/1 alias switch
- add environment handling
- add MAC handling
- add default update handler

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/tqma6ulx/Makefile             |   2 +
 arch/arm/boards/tqma6ulx/board.c              |  43 +++
 .../flash-header-imx6ul-tqma6ulx.imxcfg       | 102 ++++++
 arch/arm/boards/tqma6ulx/lowlevel.c           |  55 +++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx6ul-mba6ulx.dts               |  70 ++++
 arch/arm/dts/imx6ul-mba6ulx.dtsi              | 333 ++++++++++++++++++
 arch/arm/dts/imx6ul-tqma6ulx.dtsi             |  80 +++++
 arch/arm/dts/tqma6ul-common.dtsi              | 191 ++++++++++
 arch/arm/dts/tqma6ulx-common.dtsi             |  28 ++
 arch/arm/mach-imx/Kconfig                     |   5 +
 images/Makefile.imx                           |   2 +
 13 files changed, 913 insertions(+)
 create mode 100644 arch/arm/boards/tqma6ulx/Makefile
 create mode 100644 arch/arm/boards/tqma6ulx/board.c
 create mode 100644 arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
 create mode 100644 arch/arm/boards/tqma6ulx/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ul-mba6ulx.dtsi
 create mode 100644 arch/arm/dts/imx6ul-tqma6ulx.dtsi
 create mode 100644 arch/arm/dts/tqma6ul-common.dtsi
 create mode 100644 arch/arm/dts/tqma6ulx-common.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 6fe1b59914..c8eebf0674 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -150,6 +150,7 @@ obj-$(CONFIG_MACH_KINDLE_MX50)			+= kindle-mx50/
 obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20)		+= toradex-colibri-t20/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
+obj-$(CONFIG_MACH_TQMA6UL)			+= tqma6ulx/
 obj-$(CONFIG_MACH_TQMA6X)			+= tqma6x/
 obj-$(CONFIG_MACH_TURRIS_OMNIA)			+= turris-omnia/
 obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
diff --git a/arch/arm/boards/tqma6ulx/Makefile b/arch/arm/boards/tqma6ulx/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/tqma6ulx/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
new file mode 100644
index 0000000000..06b5e1322c
--- /dev/null
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2021 Rouven Czerwinski, Pengutronix
+ */
+
+#include <common.h>
+#include <bootsource.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/bbu.h>
+#include <of.h>
+#include <string.h>
+
+static int mba6ulx_probe(struct device_d *dev)
+{
+	int flags;
+
+	/* the bootloader is stored in one of the two boot partitions */
+	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc0.barebox", flags);
+
+	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc1", flags);
+
+	if (bootsource_get_instance() == 0)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	return 0;
+}
+
+static const struct of_device_id mba6ulx_of_match[] = {
+	{ .compatible = "tq,mba6ulx" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d mba6ulx_board_driver = {
+	.name = "board-mba6ulx",
+	.probe = mba6ulx_probe,
+	.of_compatible = mba6ulx_of_match,
+};
+device_platform_driver(mba6ulx_board_driver);
diff --git a/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg b/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
new file mode 100644
index 0000000000..4f71136149
--- /dev/null
+++ b/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
@@ -0,0 +1,102 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+loadaddr 0x80000000
+soc imx6
+ivtofs 0x400
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+/* This flash header contains support for the LGA Variant */
+/*
+ * =====================================================================
+ * IOMUX
+ * =====================================================================
+ */
+/* DDR IO TYPE: */
+wm 32 0x020E04B4 0x000C0000	/* IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE */
+wm 32 0x020E04AC 0x00000000	/* IOMUXC_SW_PAD_CTL_GRP_DDRPKE */
+/* CLOCK: */
+wm 32 0x020E027C 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCLK0_P */
+/* Control: */
+wm 32 0x020E0250 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_CAS */
+wm 32 0x020E024C 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_RAS */
+wm 32 0x020E0490 0x00000030	/* IOMUXC_SW_PAD_CTL_GRP_ADDDS */
+wm 32 0x020E0288 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_RESET */
+wm 32 0x020E0270 0x00000000	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_SDBA2 - DSE can be configured using Group Control Register: IOMUXC_SW_PAD_CTL_GRP_CTLDS */
+wm 32 0x020E0260 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_ODT0 */
+wm 32 0x020E0264 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_ODT1 */
+wm 32 0x020E04A0 0x00000030	/* IOMUXC_SW_PAD_CTL_GRP_CTLDS */
+/* Data Strobes: */
+wm 32 0x020E0494 0x00020000	/* IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL */
+wm 32 0x020E0280 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0_P */
+wm 32 0x020E0284 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1_P */
+/* Data: */
+wm 32 0x020E04B0 0x00020000	/* IOMUXC_SW_PAD_CTL_GRP_DDRMODE */
+wm 32 0x020E0498 0x00000030	/* IOMUXC_SW_PAD_CTL_GRP_B0DS */
+wm 32 0x020E04A4 0x00000030	/* IOMUXC_SW_PAD_CTL_GRP_B1DS */
+wm 32 0x020E0244 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0 */
+wm 32 0x020E0248 0x00000030	/* IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM1 */
+/*
+ * =====================================================================
+ * DDR Controller Registers
+ * =====================================================================
+ */
+wm 32 0x021B001C 0x00008000	/* MMDC_MDSCR - MMDC Core Special Command Register */
+/*
+ * ======================================================
+ * Calibrations:
+ * ======================================================
+ */
+wm 32 0x021B0800 0xA1390003	/* DDR_PHY_P0_MPZQHWCTRL , enable both one-time & periodic HW ZQ calibration. */
+
+wm 32 0x021B080C 0x00130003	/* MMDC_MPWLDECTRL0 */
+wm 32 0x021B083C 0x41540154	/* MMDC_MPDGCTRL0 */
+wm 32 0x021B0848 0x40405050	/* MMDC_MPRDDLCTL */
+wm 32 0x021B0850 0x40404E4C	/* MMDC_MPWRDLCTL */
+wm 32 0x021B081C 0x33333333	/* MMDC_MPRDDQBY0DL */
+wm 32 0x021B0820 0x33333333	/* MMDC_MPRDDQBY1DL */
+wm 32 0x021B082C 0xf3333333	/* MMDC_MPWRDQBY0DL */
+wm 32 0x021B0830 0xf3333333	/* MMDC_MPWRDQBY1DL */
+wm 32 0x021B08C0 0x00921012	/* MMDC_MPDCCR */
+
+/* Complete calibration by forced measurement: */
+wm 32 0x021B08b8 0x00000800	/* DDR_PHY_P0_MPMUR0, frc_msr */
+
+/*
+ * =====================================================================
+ * MMDC init:
+ * =====================================================================
+ */
+wm 32 0x021B0004 0x0002002D	/* MMDC0_MDPDC */
+wm 32 0x021B0008 0x00333030	/* MMDC0_MDOTC */
+wm 32 0x021B000C 0x676B52F3	/* MMDC0_MDCFG0 */
+wm 32 0x021B0010 0xB66D8B63	/* MMDC0_MDCFG1 */
+wm 32 0x021B0014 0x01FF00DB	/* MMDC0_MDCFG2 */
+wm 32 0x021B0018 0x00201740	/* MMDC0_MDMISC */
+/* TODO: set configuration request again, also done by NXP */
+wm 32 0x021B001C 0x00008000	/* MMDC_MDSCR */
+wm 32 0x021B002C 0x000026D2	/* MMDC0_MDRWD; recommend to maintain the default values */
+wm 32 0x021B0030 0x006B1023	/* MMDC0_MDOR */
+wm 32 0x021B0040 0x00000047	/* CS0_END */
+wm 32 0x021B0000 0x83180000	/* MMDC0_MDCTL */
+/* Mode register writes for CS0 */
+wm 32 0x021B001C 0x02008032	/* MMDC0_MDSCR, MR2 write, CS0 */
+wm 32 0x021B001C 0x00008033	/* MMDC0_MDSCR, MR3 write, CS0 */
+wm 32 0x021B001C 0x00048031	/* MMDC0_MDSCR, MR1 write, CS0 */
+wm 32 0x021B001C 0x15208030	/* MMDC0_MDSCR, MR0 write, CS0 */
+wm 32 0x021B001C 0x04008040	/* MMDC0_MDSCR, ZQ calibration command sent to device on CS0 */
+/* Mode register writes for CS1, not used / needed */
+/* final DDR setup, before operation start: */
+wm 32 0x021B0020 0x00000800	/* MMDC0_MDREF */
+wm 32 0x021B0818 0x00000227	/* DDR_PHY_P0_MPODTCTRL */
+wm 32 0x021B0004 0x0002552D	/* MMDC0_MDPDC now SDCTL power down enabled */
+wm 32 0x021B0404 0x00011006	/* MMDC0_MAPSR ADOPT power down enabled */
+wm 32 0x021B001C 0x00000000	/* MMDC0_MDSCR, clear this register (especially the configuration bit as initialization is complete) */
+
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
new file mode 100644
index 0000000000..db77d1f532
--- /dev/null
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2019 Rouven Czerwinski, Pengutronix
+ */
+
+#include <common.h>
+#include <debug_ll.h>
+#include <firmware.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
+#include <mach/iomux-mx6ul.h>
+#include <asm/cache.h>
+
+extern char __dtb_z_imx6ul_mba6ulx_start[];
+
+static void setup_uart(void)
+{
+	imx6_ungate_all_peripherals();
+
+	/*
+	 * Default pad configuration on this board, no explicit config needed
+	 */
+	imx6_uart_setup((void *)MX6_UART1_BASE_ADDR);
+	pbl_set_putc(imx_uart_putc, (void *)MX6_UART1_BASE_ADDR);
+
+	pr_debug("\n");
+
+}
+
+static void noinline start_mba6ulx(void)
+{
+	setup_uart();
+
+	imx6ul_barebox_entry(__dtb_z_imx6ul_mba6ulx_start);
+}
+
+ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
+{
+
+	imx6ul_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		imx6_uart_setup_ll();
+		putc_ll('>');
+	}
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	start_mba6ulx();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8ae8244bfe..8cca17ba57 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -139,6 +139,7 @@ lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 lwl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
+lwl-$(CONFIG_MACH_TQMA6UL) += imx6ul-mba6ulx.dtb.o
 lwl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 lwl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
 lwl-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
diff --git a/arch/arm/dts/imx6ul-mba6ulx.dts b/arch/arm/dts/imx6ul-mba6ulx.dts
new file mode 100644
index 0000000000..e2ed694ff9
--- /dev/null
+++ b/arch/arm/dts/imx6ul-mba6ulx.dts
@@ -0,0 +1,70 @@
+
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2021 Pengutronix e.K.
+ * Author: Rouven Czerwinski
+ */
+
+/dts-v1/;
+
+#include "imx6ul-mba6ulx.dtsi"
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+	};
+};
+
+&usdhc2 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		environment_emmc: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+};
+
+&usdhc1 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		environment_sd: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
+};
+
+/* include the FIT public key for verifying on demand */
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
diff --git a/arch/arm/dts/imx6ul-mba6ulx.dtsi b/arch/arm/dts/imx6ul-mba6ulx.dtsi
new file mode 100644
index 0000000000..da73248084
--- /dev/null
+++ b/arch/arm/dts/imx6ul-mba6ulx.dtsi
@@ -0,0 +1,333 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2016 TQ Systems GmbH
+ * Author: Marco Felsch
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include "imx6ul-tqma6ulx.dtsi"
+
+/ {
+	model = "TQ TQMa6ULx SoM on MBa6ULx";
+	compatible = "tq,mba6ulx", "tq,imx6ul-tqma6ul2l", "fsl,imx6ul";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	reg_mba6ul_3v3: regulator-mba6ul-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "supply-mba6ul-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_mba6ul_5v0: regulator-mba6ul-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "supply-mba6ul-5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	reg_otg2vbus_5v0: regulator-otg2-vbus-5v0 {
+		compatible = "regulator-fixed";
+		gpio = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-name = "otg2-vbus-supply-5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_mba6ul_5v0>;
+	};
+
+	reg_otg1vbus_5v0: regulator-otg1-vbus-5v0 {
+		compatible = "regulator-fixed";
+		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-name = "otg1-vbus-supply-5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_mba6ul_5v0>;
+	};
+
+	reg_fec_3v3: regulator-fec-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "fec-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&reg_mba6ul_3v3>;
+	};
+
+	reg_mpcie: regulator-mpcie-1v5 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		regulator-name = "mpcie-1v5";
+		/* gpio = <&gpio1 3 GPIO_ACTIVE_HIGH>; */
+		enable-active-high;
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		vin-supply = <&reg_mba6ul_3v3>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	phy-supply = <&reg_fec_3v3>;
+	phy-reset-gpios = <&gpio3 9 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <26>;
+	status = "okay";
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy1>;
+	phy-supply = <&reg_fec_3v3>;
+	phy-reset-gpios = <&gpio3 10 GPIO_ACTIVE_HIGH>;
+	phy-reset-duration = <26>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			max-speed = <100>;
+			reg = <0>;
+			/* ToDo: check if following 2 lines are required */
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			clock-names = "rmii-ref";
+		};
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			max-speed = <100>;
+			reg = <1>;
+			/* ToDo: check if following 2 lines are required */
+			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
+			clock-names = "rmii-ref";
+		};
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	expander_io: gpio-expander@20 {
+		compatible = "nxp,pca9554";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
+
+	expander_in: gpio-expander@21 {
+		compatible = "nxp,pca9554";
+		reg = <0x21>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_expander_irq>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
+
+	expander_out: gpio-expander@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
+
+
+	/* NXP SE97BTP with temperature sensor + eeprom */
+	jc42_1b: eeprom-temperature-sensor@1b {
+		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		reg = <0x1b>;
+		status = "okay";
+	};
+
+	se97_53: eeprom-temperature-sensor@53 {
+		compatible = "nxp,spd";
+		reg = <0x53>;
+		pagesize = <16>;
+		status = "okay";
+	};
+
+};
+
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA00__I2C3_SDA	0x4001b8b0
+			MX6UL_PAD_LCD_DATA01__I2C3_SCL	0x4001b8b0
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b0a8
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b0a0
+			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b0a0
+			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b0a8
+			/* mdio */
+			MX6UL_PAD_GPIO1_IO07__ENET2_MDC		0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO	0x1b0b0
+		>;
+	};
+
+	pinctrl_expander_irq: expanderirqgrp {
+		fsl,pins = <
+			MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_usb_otg1: usbotg1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x00017059
+			MX6UL_PAD_GPIO1_IO01__USB_OTG1_OC	0x0001b0b0
+			/* PWR */
+			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x0001b099
+		>;
+	};
+
+	pinctrl_usb_otg2: usbotg2grp {
+		fsl,pins = <
+			/* reset */
+			MX6UL_PAD_LCD_DATA16__GPIO3_IO21	0x0001b099
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x00017059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x00017059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x00017059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x00017059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x00017059
+			/* CD */
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19		0x0001b099
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x000170b9
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x000170b9
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x000170b9
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x000170b9
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x000170b9
+			/* CD */
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19		0x0001b099
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x00017069
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x000170f9
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x000170f9
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x000170f9
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x000170f9
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x000170f9
+			/* CD */
+			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19		0x0001b099
+		>;
+	};
+
+	pinctrl_wdog1: wdog1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO08__WDOG1_WDOG_B	0x0001b099
+		>;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+/* otg-port */
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_otg1>;
+	vbus-supply = <&reg_otg1vbus_5v0>;
+	dr_mode = "otg";
+	status = "okay";
+};
+
+/* 7-port usb hub */
+/* id, pwr, oc pins not connected */
+&usbotg2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_otg2>;
+	disable-over-current;
+	vbus-supply = <&reg_otg2vbus_5v0>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	bus-width = <4>;
+	vmmc-supply = <&reg_mba6ul_3v3>;
+	vqmmc-supply = <&reg_vccsd>;
+	no-1-8-v;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog1>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6ul-tqma6ulx.dtsi b/arch/arm/dts/imx6ul-tqma6ulx.dtsi
new file mode 100644
index 0000000000..77112e1974
--- /dev/null
+++ b/arch/arm/dts/imx6ul-tqma6ulx.dtsi
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018 TQ Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+#include <arm/imx6ul.dtsi>
+#include "tqma6ul-common.dtsi"
+#include "tqma6ulx-common.dtsi"
+
+/ {
+	model = "TQMa6ULx SOM";
+};
+
+&cpu0 {
+	cooling-min-level = <0>;
+	cooling-max-level = <3>;
+	#cooling-cells = <2>;
+};
+
+&iomuxc {
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x00017051
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x00017051
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x00017051
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x00017051
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x00017051
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x00017051
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x00017051
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x00017051
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x00017051
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017051
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp_100mhz {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170e1
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x000170f1
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x000170f1
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x000170f1
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x000170f1
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x000170f1
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x000170f1
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x000170f1
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x000170f1
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x000170f1
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp_200mhz {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170f1
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x000170e1
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x000170e1
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x000170e1
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x000170e1
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x000170e1
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x000170e1
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x000170e1
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x000170e1
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x000170e1
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+};
+
+&usdhc2 {
+	fsl,tuning-step= <6>;
+	max-frequency = <99000000>;
+	assigned-clocks = <&clks IMX6UL_CLK_USDHC2_SEL>, <&clks IMX6UL_CLK_USDHC2>;
+	assigned-clock-parents = <&clks IMX6UL_CLK_PLL2_PFD2>;
+	assigned-clock-rates = <0>, <198000000>;
+};
diff --git a/arch/arm/dts/tqma6ul-common.dtsi b/arch/arm/dts/tqma6ul-common.dtsi
new file mode 100644
index 0000000000..92b295891c
--- /dev/null
+++ b/arch/arm/dts/tqma6ul-common.dtsi
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018 TQ Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+&cpu0 {
+	arm-supply = <&reg_arm>;
+	soc-supply = <&reg_soc>;
+};
+
+&i2c4 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+
+	pfuze3000: pmic@8 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+
+		regulators {
+			reg_sw1a: sw1a {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-ramp-delay = <6250>;
+				/* not used */
+			};
+
+			reg_sw1b_core: sw1b {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			reg_sw2: sw2 {
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+
+			reg_sw3_ddr: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1650000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_swbst: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				/* not used */
+			};
+
+			reg_snvs_3v0: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vccsd: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_v33_3v3: v33 {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vldo1_3v3: vldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				/* not used */
+			};
+
+			reg_vldo2: vldo2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-boot-on;
+				/* not used */
+			};
+
+			reg_vldo3: vldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				/* not used */
+			};
+
+			reg_vldo4: vldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-fixed;
+				regulator-always-on;
+			};
+		};
+	};
+
+	jc42_1a: eeprom-temperature-sensor@1a {
+		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		reg = <0x1a>;
+		status = "okay";
+	};
+
+	m24c64_50: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+		pagesize = <32>;
+		status = "okay";
+	};
+
+	m24c02_52: eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <16>;
+		status = "okay";
+	};
+
+	rtc1: rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+		status = "okay";
+	};
+};
+
+&iomuxc {
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_TX_DATA__I2C4_SCL	0x4001b8b0
+			MX6UL_PAD_UART2_RX_DATA__I2C4_SDA	0x4001b8b0
+		>;
+	};
+
+	/*
+	 * currently not used, potentially dangerous if used on
+	 * baseboard
+	 */
+	pinctrl_pmic: pmic {
+		fsl,pins = <
+			/* PMIC irq */
+			MX6UL_PAD_CSI_DATA03__GPIO4_IO24	0x1b099
+		>;
+	};
+};
+
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi>;
+	status = "okay";
+
+	flash0: spinor@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <33000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <0>;
+	};
+};
+
+&snvs_rtc {
+	status = "disabled";
+};
+
+/* eMMC */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz" , "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+
+	bus-width = <8>;
+	disable-wp;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
diff --git a/arch/arm/dts/tqma6ulx-common.dtsi b/arch/arm/dts/tqma6ulx-common.dtsi
new file mode 100644
index 0000000000..3e398d25ad
--- /dev/null
+++ b/arch/arm/dts/tqma6ulx-common.dtsi
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018 TQ Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+&iomuxc {
+	pinctrl_qspi: qspigrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK      0x70b9
+			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00 0x70b9
+			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01   0x70b9
+			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02   0x70b9
+			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03     0x70b9
+			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B      0x70a1
+		>;
+	};
+};
+
+&reg_sw2 {
+	regulator-always-on;
+};
+
+/* eMMC */
+&usdhc2 {
+	vmmc-supply = <&reg_sw2>;
+	vqmmc-supply = <&reg_vldo4>;
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 454f7328d8..6b962dcf7e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -391,6 +391,11 @@ config MACH_TQMA6X
 	bool "TQ tqma6x on mba6x"
 	select ARCH_IMX6
 
+config MACH_TQMA6UL
+	bool "TQ tqma6ul on mba6ulx"
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_TX6X
 	bool "Karo TX6x"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 1dffab989e..18cabbf041 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -180,6 +180,8 @@ $(call build_imx_habv4img, CONFIG_MACH_TQMA6X, start_imx6dl_mba6x, tqma6x/flash-
 
 $(call build_imx_habv4img, CONFIG_MACH_TQMA6X, start_imx6q_mba6x, tqma6x/flash-header-tqma6q, tq-tqma6q-mba6x)
 
+$(call build_imx_habv4img, CONFIG_MACH_TQMA6UL, start_imx6ul_mba6ulx, tqma6ulx/flash-header-imx6ul-tqma6ulx, tq-tqma6ul-mba6ulx)
+
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_4gib, phytec-som-imx6/flash-header-phytec-pfla02-4gib, phytec-pbab01-4gib)
 
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_pbab01_2gib, phytec-som-imx6/flash-header-phytec-pfla02-2gib, phytec-pbab01-2gib)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

