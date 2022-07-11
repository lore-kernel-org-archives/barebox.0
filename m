Delivery-date: Mon, 11 Jul 2022 16:14:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAuBM-002eUn-Kv
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 16:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAuBK-0006Di-38
	for lore@pengutronix.de; Mon, 11 Jul 2022 16:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DABckw0+YbzK2xFPnXlRxIFKamzhuGWjidWprWqsQck=; b=zENJRjOuDTfXQiA3xkF4NN90za
	dxsn6Ghf3WbqQajbI3eCLW6EeDtklcN3wNfsmluZDlJx5AkgPHbYSU/Vp98qezc0lMkx2aOfPunh4
	0KUoNuQ6AMauGAsTCrCF5R1hu1B/RjEfgihpYUv8OJM0VpIttd3l29Hw5GWV/pAUvoh4raNdQaeNk
	zzAEu1AFfQmuqvwbSaYooV8a2XLWfBnmsYz8S3QwuQROgNMgCpIOFM3/9kgizI84M3Z3lu2DTwYUi
	sxuQFzwKPJAOQu2hfz7XISBW/tycpi2o4z421I5CocXbJBR3OKxSvwbmvYFUU9ywMvV9YrvylJcZY
	z3omHlrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAu9t-002Bic-Jl; Mon, 11 Jul 2022 14:13:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAu9m-002BfH-0y
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 14:13:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oAu9g-0005yk-Cv; Mon, 11 Jul 2022 16:12:56 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oAu9f-000KKx-MC; Mon, 11 Jul 2022 16:12:55 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oAu9e-00E17Q-Mh; Mon, 11 Jul 2022 16:12:54 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Mon, 11 Jul 2022 16:12:46 +0200
Message-Id: <20220711141246.3331160-2-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220711141246.3331160-1-j.zink@pengutronix.de>
References: <20220711141246.3331160-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_071302_406724_09F508A0 
X-CRM114-Status: GOOD (  23.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] ARM: i.MX7: add 96Boards Meerkat96 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a i.MX7D-based board with an upstream device tree.
Add the necessary boilerplate to have barebox create an image.

The memory settings are taken from U-Boot v2022.07-rc6.

System reset requires pmic driver which is not available yet in barebox.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
v1 -> v2:
 - added meerkat96 board to imx_v7_defconfig
 - added Documentation for meerkat96 board
---
 Documentation/boards/imx/meerkat96.rst        |  31 ++++++
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/meerkat96/Makefile            |   4 +
 arch/arm/boards/meerkat96/board.c             |  10 ++
 .../flash-header-mx7-meerkat96.imxcfg         | 105 ++++++++++++++++++
 arch/arm/boards/meerkat96/lowlevel.c          |  34 ++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx7d-meerkat96.dts              |  42 +++++++
 arch/arm/mach-imx/Kconfig                     |   5 +
 images/Makefile.imx                           |   5 +
 11 files changed, 239 insertions(+)
 create mode 100644 Documentation/boards/imx/meerkat96.rst
 create mode 100644 arch/arm/boards/meerkat96/Makefile
 create mode 100644 arch/arm/boards/meerkat96/board.c
 create mode 100644 arch/arm/boards/meerkat96/flash-header-mx7-meerkat96.imxcfg
 create mode 100644 arch/arm/boards/meerkat96/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-meerkat96.dts

diff --git a/Documentation/boards/imx/meerkat96.rst b/Documentation/boards/imx/meerkat96.rst
new file mode 100644
index 000000000..3cdb1beaf
--- /dev/null
+++ b/Documentation/boards/imx/meerkat96.rst
@@ -0,0 +1,31 @@
+Meerkat 96
+==========
+
+The Meerkat96 is a single board computer based on an i.MX7D SoC by NXP, featuring a dual core ARM Cortex-A7 at 1 GHz and a Cortex-M4 at 266MHz and 512 MB DRAM. For further details on the board's features check the manufacturers page at https://www.96boards.org/product/imx7-96
+
+Serial console
+--------------
+
+UART6 of the i.MX7D is broken out to Pinheader J3, on the Silkscreen the Pins are labeled with B (Ground), W (UART 6 TX) and G (UART 6 RX). If you use the UART-To-Serial-Converter provided with the board, you can just connect the Black jumper to B, the White to W and the Green to G. The UART uses 3.3V levels. 
+
+Building Barebox                                                        
+----------------                                                        
+                                                                        
+To build Barebox for ZII i.MX7 based boards do the following:           
+                                                                        
+.. code-block:: sh                                                      
+           
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> mrproper   
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> imx_v7_defconfig
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix>
+
+Bringup
+-------
+
+flash the resulting barebox-meerkat96.img to an sdcard at address 0. Make sure the pmic is set to power-on state by setting the dipswitch SW3 on the boards bottom side to 1-1 (i.e. all switches on, which is the factory default).
+
+Schematics
+----------
+
+Schematics are available at https://github.com/96boards/documentation/blob/master/consumer/imx7-96/hardware-docs/files/iMX7-96-schematics.pdf
+
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 3ccde26f1..96f81a32d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -52,6 +52,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
+obj-$(CONFIG_MACH_MEERKAT96)			+= meerkat96/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
diff --git a/arch/arm/boards/meerkat96/Makefile b/arch/arm/boards/meerkat96/Makefile
new file mode 100644
index 000000000..567871818
--- /dev/null
+++ b/arch/arm/boards/meerkat96/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/meerkat96/board.c b/arch/arm/boards/meerkat96/board.c
new file mode 100644
index 000000000..49e9c06f7
--- /dev/null
+++ b/arch/arm/boards/meerkat96/board.c
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <of.h>
+#include <deep-probe.h>
+
+static const struct of_device_id meerkat96_match[] = {
+	{ .compatible = "novtech,imx7d-meerkat96" },
+	{ /* Sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(meerkat96_match);
diff --git a/arch/arm/boards/meerkat96/flash-header-mx7-meerkat96.imxcfg b/arch/arm/boards/meerkat96/flash-header-mx7-meerkat96.imxcfg
new file mode 100644
index 000000000..a49b81617
--- /dev/null
+++ b/arch/arm/boards/meerkat96/flash-header-mx7-meerkat96.imxcfg
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2014 Freescale Semiconductor, Inc.
+ */
+
+soc imx7
+loadaddr 0x80000000
+ivtofs 0x400
+
+/*
+ * Device Configuration Data (DCD)
+ *
+ * Each entry must have the format:
+ * Addr-type           Address        Value
+ *
+ * where:
+ *	Addr-type register length (1,2 or 4 bytes)
+ *	Address	  absolute address of the register
+ *	value	  value to be stored in the register
+ */
+
+/* Enable OCRAM EPDC */
+wm 32 0x30340004 0x4F400005
+
+/* =============================================================================
+ * DDR Controller Registers
+ * =============================================================================
+ * Memory type:           DDR3
+ * Manufacturer:          ISSI
+ * Device Part Number:    IS43TR16256AL-125KBL
+ * Clock Freq.:           533MHz
+ * Density per CS in Gb:  4
+ * Chip Selects used:     1
+ * Number of Banks:       8
+ * Row address:          15
+ * Column address:       10
+ * Data bus width:       16
+ * ROW-BANK interleave:  ENABLED
+ * =============================================================================
+ */
+
+wm 32 0x30391000 0x00000002    // deassert presetn
+wm 32 0x307A0000 0x01041001    // DDRC_MSTR
+wm 32 0x307A0064 0x00400046    // DDRC_RFSHTMG
+wm 32 0x307a0490 0x00000001    // DDRC_PCTRL_0
+wm 32 0x307A00D4 0x00690000    // DDRC_INIT1
+wm 32 0x307A00D0 0x00020083    // DDRC_INIT0
+wm 32 0x307A00DC 0x09300004    // DDRC_INIT3
+wm 32 0x307A00E0 0x04080000    // DDRC_INIT4
+wm 32 0x307A00E4 0x00100004    // DDRC_INIT5
+wm 32 0x307A00F4 0x0000033F    // DDRC_RANKCTL
+wm 32 0x307A0100 0x090B1109    // DDRC_DRAMTMG0
+wm 32 0x307A0104 0x0007020D    // DDRC_DRAMTMG1
+wm 32 0x307A0108 0x03040407    // DDRC_DRAMTMG2
+wm 32 0x307A010C 0x00002006    // DDRC_DRAMTMG3
+wm 32 0x307A0110 0x04020205    // DDRC_DRAMTMG4
+wm 32 0x307A0114 0x03030202    // DDRC_DRAMTMG5
+wm 32 0x307A0120 0x00000803    // DDRC_DRAMTMG8
+wm 32 0x307A0180 0x00800020    // DDRC_ZQCTL0
+wm 32 0x307A0190 0x02098204    // DDRC_DFITMG0
+wm 32 0x307A0194 0x00030303    // DDRC_DFITMG1
+wm 32 0x307A01A0 0x80400003    // DDRC_DFIUPD0
+wm 32 0x307A01A4 0x00100020    // DDRC_DFIUPD1
+wm 32 0x307A01A8 0x80100004    // DDRC_DFIUPD2
+wm 32 0x307A0200 0x00000015    // DDRC_ADDRMAP0
+wm 32 0x307A0204 0x00070707    // DDRC_ADDRMAP1
+wm 32 0x307A0210 0x00000F0F    // DDRC_ADDRMAP4
+wm 32 0x307A0214 0x06060606    // DDRC_ADDRMAP5
+wm 32 0x307A0218 0x0F060606    // DDRC_ADDRMAP6
+wm 32 0x307A0240 0x06000604    // DDRC_ODTCFG
+wm 32 0x307A0244 0x00000001    // DDRC_ODTMAP
+
+
+/* =============================================================================
+ * PHY Control Register
+ * =============================================================================
+ */
+
+wm 32 0x30391000 0x00000000    // deassert presetn
+wm 32 0x30790000 0x17420F40    // DDR_PHY_PHY_CON0
+wm 32 0x30790004 0x10210100    // DDR_PHY_PHY_CON1
+wm 32 0x30790010 0x00060807    // DDR_PHY_PHY_CON4
+wm 32 0x307900B0 0x1010007E    // DDR_PHY_MDLL_CON0
+wm 32 0x3079009C 0x00000D6E    // DDR_PHY_DRVDS_CON0
+wm 32 0x30790030 0x08080808    // DDR_PHY_OFFSET_WR_CON0
+wm 32 0x30790020 0x08080808    // DDR_PHY_OFFSET_RD_CON0
+wm 32 0x30790050 0x01000010    // DDR_PHY_OFFSETD_CON0
+wm 32 0x30790050 0x00000010    // DDR_PHY_OFFSETD_CON0
+wm 32 0x30790018 0x0000000F    // DDR_PHY_LP_CON0
+wm 32 0x307900C0 0x0E407304    // DDR_PHY_ZQ_CON0 - Start Manual ZQ
+wm 32 0x307900C0 0x0E447304
+wm 32 0x307900C0 0x0E447306
+wm 32 0x307900C0 0x0E447304    // <= NOTE: Depending on JTAG device used, may need ~ 7 us pause at this point.
+wm 32 0x307900C0 0x0E407304    // DDR_PHY_ZQ_CON0 - End Manual ZQ
+
+
+/* =============================================================================
+ * Final Initialization start sequence
+ * =============================================================================
+ */
+
+wm 32 0x30384130 0x00000000    // Disable Clock
+wm 32 0x30340020 0x00000178    // IOMUX_GRP_GRP8 - Start input to PHY
+wm 32 0x30384130 0x00000002    // Enable Clock
+/* <= NOTE: Depending on JTAG device used, may need ~ 250 us pause at this point. */
diff --git a/arch/arm/boards/meerkat96/lowlevel.c b/arch/arm/boards/meerkat96/lowlevel.c
new file mode 100644
index 000000000..1c9baeacf
--- /dev/null
+++ b/arch/arm/boards/meerkat96/lowlevel.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <debug_ll.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <mach/debug_ll.h>
+#include <mach/iomux-mx7.h>
+#include <mach/imx7-ccm-regs.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/cache.h>
+extern char __dtb_z_imx7d_meerkat96_start[];
+
+static void setup_uart(void)
+{
+	imx7_early_setup_uart_clock();
+	imx7_setup_pad(MX7D_PAD_SD1_WP__UART6_DCE_TX);
+	imx7_uart_setup_ll();
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_imx7d_meerkat96, 0, r0, r1, r2)
+{
+	void *fdt;
+
+	imx7_cpu_lowlevel_init();
+
+	setup_uart();
+
+	fdt = __dtb_z_imx7d_meerkat96_start + get_runtime_offset();
+
+	barebox_arm_entry(0x80000000, SZ_512M, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 8ae515ae7..df2304eae 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -38,6 +38,7 @@ CONFIG_MACH_CM_FX6=y
 CONFIG_MACH_ADVANTECH_ROM_742X=y
 CONFIG_MACH_WARP7=y
 CONFIG_MACH_AC_SXB=y
+CONFIG_MACH_MEERKAT96=y
 CONFIG_MACH_VF610_TWR=y
 CONFIG_MACH_ZII_RDU1=y
 CONFIG_MACH_ZII_RDU2=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0c7e43e22..8cd994cf0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -26,6 +26,7 @@ lwl-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
 lwl-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
+lwl-$(CONFIG_MACH_MEERKAT96) += imx7d-meerkat96.dtb.o
 lwl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 lwl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 lwl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
diff --git a/arch/arm/dts/imx7d-meerkat96.dts b/arch/arm/dts/imx7d-meerkat96.dts
new file mode 100644
index 000000000..f9d18f355
--- /dev/null
+++ b/arch/arm/dts/imx7d-meerkat96.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+#include <arm/imx7d-meerkat96.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &bareboxenv;
+		};
+	};
+};
+
+&usdhc1 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	barebox@0 {
+		label = "barebox";
+		reg = <0x0 0x180000>;
+	};
+
+	bareboxenv: bareboxenv@180000 {
+		label = "bareboxenv";
+		reg = <0x180000 0x80000>;
+	};
+};
+
+/* FIXME: barebox serial is broken when barebox applies requested reparenting */
+&uart1 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart3  {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart6 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9ff549ac8..c10b09a12 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -485,6 +485,11 @@ config MACH_AC_SXB
 	select MCI_IMX_ESDHC_PBL
 	select ARM_USE_COMPRESSED_DTB
 
+config MACH_MEERKAT96
+	bool "96Boards: i.MX7 Meerkat96"
+	select ARCH_IMX7
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
 	select ARCH_VF610
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 62549ab75..a19e0ff1c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -418,6 +418,11 @@ CFG_start_zii_imx7d_dev.pblb.imximg = $(board)/zii-imx7d-dev/flash-header-zii-im
 FILE_barebox-zii-imx7d-dev.img = start_zii_imx7d_dev.pblb.imximg
 image-$(CONFIG_MACH_ZII_IMX7D_DEV) += barebox-zii-imx7d-dev.img
 
+pblb-$(CONFIG_MACH_MEERKAT96) += start_imx7d_meerkat96
+CFG_start_imx7d_meerkat96.pblb.imximg = $(board)/meerkat96/flash-header-mx7-meerkat96.imxcfg
+FILE_barebox-meerkat96.img = start_imx7d_meerkat96.pblb.imximg
+image-$(CONFIG_MACH_MEERKAT96) += barebox-meerkat96.img
+
 pblb-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += start_kamstrup_mx7_concentrator
 CFG_start_kamstrup_mx7_concentrator.pblb.imximg = $(board)/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
 FILE_barebox-kamstrup-mx7-concentrator.img = start_kamstrup_mx7_concentrator.pblb.imximg
-- 
2.30.2



