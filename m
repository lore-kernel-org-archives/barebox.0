Delivery-date: Mon, 27 Nov 2023 22:50:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7jUb-00BOWj-27
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 22:50:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7jUb-0003Ha-3H
	for lore@pengutronix.de; Mon, 27 Nov 2023 22:50:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6fRyI33YWI5rbpXM6q0ArIM/3/4V/eyz4jBE/Tay/+k=; b=HE1+R5K2Hh6vdk6WhNJUPYfzbo
	wzsvhSsRIka59y/FxeVKjle48qVCmQ5i/NLssN6kS6rnsaT4uBzNUVRbSVKMJP0ipecn98pIA/ESL
	gWaZhyqiDMYaNUSUOpkpgWuYhGHoNjYoEjSh4EES7yJs5gRhylOcyWdKB0gJXO81XwqjrsvnxkunF
	JfedRH8Zd/wTK99QT1dq+XsOHh1u6u6JqN8P7iPEwCdO14yPvZIl8+rpgKkH+fhyf4bltoNq9mwFC
	S01E7axWM2wQsIMmVWAjkVFm/YAlGvVL118HXWbW6SG7Ea98c7HGJsqISkQfXfTamOXPp43/8kFAM
	TRjh5hYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jSy-003Ws1-15;
	Mon, 27 Nov 2023 21:48:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jSq-003Wqk-2D
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 21:48:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-0002qU-Vw; Mon, 27 Nov 2023 22:48:22 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-00C1vm-JJ; Mon, 27 Nov 2023 22:48:21 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-00Fk6b-1n;
	Mon, 27 Nov 2023 22:48:21 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 27 Nov 2023 22:48:18 +0100
Message-Id: <20231127214818.3751722-3-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127214818.3751722-1-rhi@pengutronix.de>
References: <20231127214818.3751722-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_134825_055850_43BEC862 
X-CRM114-Status: GOOD (  21.69  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: dts: add support for and Gossen Metrawatt e143_01
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The e143_01 is based on the Variscite VAR-SOM-MX7. Re-use the kernel
device tree, add environment and state partitions, and a barebox-update
handler for the eMMC.

The DDR setup has been ported from the vendor U-Boot:
<https://github.com/varigit/uboot-imx/blob/imx_v2017.03_4.9.11_1.0.0_ga_var01/board/variscite/mx7dvar_som/imximage.cfg>

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/variscite-som-mx7/Makefile    |   4 +
 arch/arm/boards/variscite-som-mx7/board.c     |  25 ++++
 .../variscite-som-mx7/flash-header.imxcfg     | 100 +++++++++++++++
 arch/arm/boards/variscite-som-mx7/lowlevel.c  |  44 +++++++
 arch/arm/configs/imx_v7_defconfig             |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx7d-gome-e143_01.dts           | 119 ++++++++++++++++++
 arch/arm/dts/imx7d-var-som-mx7.dtsi           |   6 +
 arch/arm/mach-imx/Kconfig                     |   8 ++
 images/Makefile.imx                           |   5 +
 11 files changed, 314 insertions(+)
 create mode 100644 arch/arm/boards/variscite-som-mx7/Makefile
 create mode 100644 arch/arm/boards/variscite-som-mx7/board.c
 create mode 100644 arch/arm/boards/variscite-som-mx7/flash-header.imxcfg
 create mode 100644 arch/arm/boards/variscite-som-mx7/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-gome-e143_01.dts
 create mode 100644 arch/arm/dts/imx7d-var-som-mx7.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index bdac1e69ee60..37174eb14bcb 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -171,6 +171,7 @@ obj-$(CONFIG_MACH_VIRT2REAL)			+= virt2real/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
 obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
+obj-$(CONFIG_MACH_VARISCITE_SOM_MX7)		+= variscite-som-mx7/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_WEBASTO_CCBV2)		+= webasto-ccbv2/
diff --git a/arch/arm/boards/variscite-som-mx7/Makefile b/arch/arm/boards/variscite-som-mx7/Makefile
new file mode 100644
index 000000000000..5b7f460c6daf
--- /dev/null
+++ b/arch/arm/boards/variscite-som-mx7/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-FileCopyrightText: 2022 Roland Hieber, Pengutronix <rhi@pengutronix.de>
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/variscite-som-mx7/board.c b/arch/arm/boards/variscite-som-mx7/board.c
new file mode 100644
index 000000000000..005228d107af
--- /dev/null
+++ b/arch/arm/boards/variscite-som-mx7/board.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2022 Roland Hieber, Pengutronix <rhi@pengutronix.de>
+
+#include <common.h>
+#include <deep-probe.h>
+#include <mach/imx/bbu.h>
+
+static int var_som_mx7_probe(struct device_d *dev)
+{
+	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HANDLER_FLAG_DEFAULT);
+	return 0;
+}
+
+static const struct of_device_id var_som_mx7_of_match[] = {
+	{ .compatible = "variscite,var-som-mx7" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(var_som_mx7_of_match);
+
+static struct driver_d var_som_mx7_board_driver = {
+	.name = "board-var-som-mx7",
+	.probe = var_som_mx7_probe,
+	.of_compatible = DRV_OF_COMPAT(var_som_mx7_of_match),
+};
+postcore_platform_driver(var_som_mx7_board_driver);
diff --git a/arch/arm/boards/variscite-som-mx7/flash-header.imxcfg b/arch/arm/boards/variscite-som-mx7/flash-header.imxcfg
new file mode 100644
index 000000000000..a8ed640cb2c2
--- /dev/null
+++ b/arch/arm/boards/variscite-som-mx7/flash-header.imxcfg
@@ -0,0 +1,100 @@
+/*
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ * SPDX-FileCopyrightText: 2014-2016 Freescale Semiconductor, Inc.
+ * SPDX-FileCopyrightText: 2016 Variscite Ltd.
+ * SPDX-FileCopyrightText: 2022 Gossen Metrawatt GmbH
+ * SPDX-FileCopyrightText: 2022 Roland Hieber, Pengutronix <rhi@pengutronix.de>
+ */
+
+soc imx7
+loadaddr 0x80000000
+ivtofs 0x400
+
+#include <mach/imx/imx7-ddr-regs.h>
+
+/*
+ * Device Configuration Data (DCD)
+ *
+ * Each entry must have the format:
+ * Addr-type           Address        Value
+ *
+ * where:
+ *      Addr-type register length (1,2 or 4 bytes)
+ *      Address   absolute address of the register
+ *      value     value to be stored in the register
+ */
+
+/* Change DDR freq. to 400Mhz */
+wm 32 0x30360070 0x00703021
+wm 32 0x30360090 0x00000000
+wm 32 0x30360070 0x00603021
+check 32 until_all_bits_set 0x30360070 0x80000000
+wm 32 0x30389880 0x00000001
+
+
+wm 32 0x30340004 0x4F400005    /* Enable OCRAM EPDC */
+/* Clear then set bit30 to ensure exit from DDR retention */
+wm 32 0x30360388 0x40000000
+wm 32 0x30360384 0x40000000
+
+wm 32 0x30391000 0x00000002    /* deassert presetn */
+
+/* ddrc */
+wm 32 0x307a0000 0x01040001    /* mstr */
+wm 32 0x307a01a0 0x80400003    /* dfiupd0 */
+wm 32 0x307a01a4 0x00100020    /* dfiupd1 */
+wm 32 0x307a01a8 0x80100004    /* dfiupd2 */
+wm 32 0x307a0064 0x00400046    /* rfshtmg */
+wm 32 0x307a0490 0x00000001    /* pctrl_0 */
+wm 32 0x307a00d0 0x00020083    /* init0 */
+wm 32 0x307a00d4 0x00690000    /* init1 */
+wm 32 0x307a00dc 0x09300004    /* init3 */
+wm 32 0x307a00e0 0x04080000    /* init4 */
+wm 32 0x307a00e4 0x00100004    /* init5 */
+wm 32 0x307a00f4 0x0000033f    /* rankctl */
+wm 32 0x307a0100 0x09081109    /* dramtmg0 */
+wm 32 0x307a0104 0x0007020d    /* dramtmg1 */
+wm 32 0x307a0108 0x03040407    /* dramtmg2 */
+wm 32 0x307a010c 0x00002006    /* dramtmg3 */
+wm 32 0x307a0110 0x04020205    /* dramtmg4 */
+wm 32 0x307a0114 0x03030202    /* dramtmg5 */
+wm 32 0x307a0120 0x00000803    /* dramtmg8 */
+wm 32 0x307a0180 0x00800020    /* zqctl0 */
+wm 32 0x307a0190 0x02098204    /* dfitmg0 */
+wm 32 0x307a0194 0x00030303    /* dfitmg1 */
+wm 32 0x307a0200 0x00000016    /* addrmap0 */
+wm 32 0x307a0204 0x00080808    /* addrmap1 */
+wm 32 0x307a0210 0x00000f0f    /* addrmap4 */
+wm 32 0x307a0214 0x07070707    /* addrmap5 */
+wm 32 0x307a0218 0x0F070707    /* addrmap6 */
+wm 32 0x307a0240 0x06000604    /* odtcfg */
+wm 32 0x307a0244 0x00000001    /* odtmap */
+
+wm 32 0x30391000 0x00000000    /* deassert presetn */
+
+/* ddr_phy */
+wm 32 0x30790000 0x17420f40    /* phy_con0 */
+wm 32 0x30790004 0x10210100    /* phy_con1 */
+wm 32 0x30790010 0x00060807    /* phy_con4 */
+wm 32 0x307900b0 0x1010007e    /* mdll_con0 */
+wm 32 0x3079009c 0x00000d6e    /* drvds_con0 */
+wm 32 0x30790020 0x08080808    /* offset_rd_con0 */
+wm 32 0x30790030 0x08080808    /* offset_wr_con0 */
+wm 32 0x30790050 0x01000010    /* cmd_sdll_con0 (OFFSETD_CON0) */
+wm 32 0x30790050 0x00000010    /* cmd_sdll_con0 (OFFSETD_CON0) */
+wm 32 0x307900c0 0x0e407304    /* zq_con0 */
+wm 32 0x307900c0 0x0e447304    /* zq_con0 */
+wm 32 0x307900c0 0x0e447306    /* zq_con0 */
+
+check 32 until_all_bits_set 0x307900c4 0x1
+
+wm 32 0x307900c0 0x0e447304    /* zq_con0 */
+wm 32 0x307900c0 0x0e407304    /* zq_con0 */
+
+
+wm 32 0x30384130 0x00000000    /* Disable Clock */
+wm 32 0x30340020 0x00000178    /* IOMUX_GRP_GRP8 - Start input to PHY */
+wm 32 0x30384130 0x00000002    /* Enable Clock */
+wm 32 0x30790018 0x0000000f    /* ddr_phy lp_con0 */
+
+check 32 until_all_bits_set 0x307a0004 0x1
diff --git a/arch/arm/boards/variscite-som-mx7/lowlevel.c b/arch/arm/boards/variscite-som-mx7/lowlevel.c
new file mode 100644
index 000000000000..ef67fc3b5a84
--- /dev/null
+++ b/arch/arm/boards/variscite-som-mx7/lowlevel.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2022 Roland Hieber, Pengutronix <rhi@pengutronix.de>
+
+#include <io.h>
+#include <common.h>
+#include <console.h>
+#include <debug_ll.h>
+
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+#include <linux/sizes.h>
+
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/iomux-mx7.h>
+#include <mach/imx/imx7-ccm-regs.h>
+
+static inline void setup_uart(void)
+{
+	imx7_early_setup_uart_clock(1);
+
+	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
+
+	imx7_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_gome_e143_01, 0, r0, r1, r2)
+{
+	extern char __dtb_imx7d_gome_e143_01_start[];
+
+	imx7_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	imx7d_barebox_entry(__dtb_imx7d_gome_e143_01_start + get_runtime_offset());
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 3af6526376c5..debbe5fd7578 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -40,6 +40,7 @@ CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
 CONFIG_MACH_TECHNEXION_WANDBOARD=y
 CONFIG_MACH_TQMA6X=y
 CONFIG_MACH_VARISCITE_MX6=y
+CONFIG_MACH_VARISCITE_SOM_MX7=y
 CONFIG_MACH_WEBASTO_CCBV2=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_ZII_RDU2=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e9512a30c812..cf3901c05024 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -168,6 +168,7 @@ lwl-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
 lwl-$(CONFIG_MACH_UDOO_NEO) += imx6sx-udoo-neo-full.dtb.o
 lwl-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 lwl-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
+lwl-$(CONFIG_MACH_VARISCITE_SOM_MX7) += imx7d-gome-e143_01.dtb.o
 lwl-$(CONFIG_MACH_VERSATILEPB) += versatile-pb.dtb.o
 lwl-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca9.dtb.o
 lwl-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
diff --git a/arch/arm/dts/imx7d-gome-e143_01.dts b/arch/arm/dts/imx7d-gome-e143_01.dts
new file mode 100644
index 000000000000..ea118ddc76f7
--- /dev/null
+++ b/arch/arm/dts/imx7d-gome-e143_01.dts
@@ -0,0 +1,119 @@
+/*
+ * SPDX-License-Identifier: GPL-2.0-only
+ * SPDX-FileCopyrightText: 2022 Roland Hieber, Pengutronix
+ */
+
+/dts-v1/;
+
+#include "imx7d-gome-e143_01.kernel.dts"
+
+/ {
+	compatible = "gome,e143_01", "variscite,var-som-mx7", "fsl,imx7d";
+
+	aliases {
+		state = &state;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &emmc_env;
+		};
+	};
+
+	state: state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		magic = <0x1929603f>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&emmc_state>;
+		backend-stridesize = <0x80>;
+		backend-storage-type = "direct";
+
+		bootstate: bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <10>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+};
+
+&usdhc3 {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "fixed-partitions";
+
+		/** original storage layout:
+		offset     size  label
+		000000000  512   MBR
+		000000200  512   (empty)
+		000000400  68k   SPL
+		000011400  800k  u-boot
+		0000E0000  3.2M  u-boot-env (only first 8k are used)
+		000400000  2.9G  rootfs1
+		0BA400000  2.9G  rootfs2
+		174400000  1.5G  data
+		1D2000000        (end)
+
+		Keep the original layout for now for possible fallback to u-boot
+		later; put the storage for barebox-env and barebox-state
+		somewhere where it doesn't conflict with u-boot.
+		*/
+
+		emmc_state: partition@200000 {
+			label = "barebox-state";
+			reg = <0x200000 0x100000>;
+		};
+
+		emmc_env: partition@300000 {
+			label = "barebox-environment";
+			reg = <0x300000 0x100000>;
+		};
+	};
+};
+
+&{/leds2/led_netz_rt} {
+	barebox,default-trigger = "default-on";
+};
diff --git a/arch/arm/dts/imx7d-var-som-mx7.dtsi b/arch/arm/dts/imx7d-var-som-mx7.dtsi
new file mode 100644
index 000000000000..029f874e8908
--- /dev/null
+++ b/arch/arm/dts/imx7d-var-som-mx7.dtsi
@@ -0,0 +1,6 @@
+/*
+ * SPDX-License-Identifier: GPL-2.0-only
+ * SPDX-FileCopyrightText: 2023 Roland Hieber, Pengutronix <rhi@pengutronix.de>
+ */
+#include "imx7d-var-som-mx7.kernel.dtsi"
+#include "imx7d-ddrc.dtsi"
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6a7d90e2c853..cf196f40740d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -526,6 +526,14 @@ config MACH_PHYTEC_PHYCORE_IMX7
 	bool "Phytec phyCORE i.MX7"
 	select ARCH_IMX7
 
+config MACH_VARISCITE_SOM_MX7
+	bool "Variscite VAR-SOM-MX7"
+	select ARCH_IMX7
+	select ARM_USE_COMPRESSED_DTB
+	help
+	  Support for boards that use a Variscite SOM-MX7, like:
+	  - Gossen Metrawatt e143_01
+
 config MACH_ZII_IMX7D_DEV
 	bool "ZII i.MX7D based devices"
 	select ARCH_IMX7
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 8b6958872ab7..ab0f429b2ed7 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -444,6 +444,11 @@ CFG_start_kamstrup_mx7_concentrator.pblb.imximg = $(board)/kamstrup-mx7-concentr
 FILE_barebox-kamstrup-mx7-concentrator.img = start_kamstrup_mx7_concentrator.pblb.imximg
 image-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += barebox-kamstrup-mx7-concentrator.img
 
+pblb-$(CONFIG_MACH_VARISCITE_SOM_MX7) += start_gome_e143_01
+CFG_start_gome_e143_01.pblb.imximg = $(board)/variscite-som-mx7/flash-header.imxcfg
+FILE_barebox-gome-e143_01.img = start_gome_e143_01.pblb.imximg
+image-$(CONFIG_MACH_VARISCITE_SOM_MX7) += barebox-gome-e143_01.img
+
 # ----------------------- i.MX8mm based boards --------------------------
 $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MM_EVK, start_nxp_imx8mm_evk, nxp-imx8mm-evk/flash-header-imx8mm-evk, nxp-imx8mm-evk)
 
-- 
2.39.2



