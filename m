Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoCdp-0006kv-Bv
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:41:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1FB72A004B7
 for <barebox@lists.infradead.org>; Tue, 11 Nov 2014 15:41:44 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 11 Nov 2014 15:40:58 +0100
Message-Id: <1415716859-19077-3-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
References: <1415716859-19077-1-git-send-email-c.hemp@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] imx6: add support for phyBOARD-ALCORE
To: barebox@lists.infradead.org

Add support for phyBOARD-ALCORE which use a phyFLEX-i.MX6 (pfla02) module.
        - i.MX6 Quad with 1GB RAM on two banks

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c | 16 +++++++++++
 arch/arm/dts/Makefile                          |  2 +-
 arch/arm/dts/imx6q-phytec-phyboard-alcore.dts  | 38 ++++++++++++++++++++++++++
 images/Makefile.imx                            |  5 ++++
 4 files changed, 60 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/imx6q-phytec-phyboard-alcore.dts

diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 84014d7..58aab0f 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -57,6 +57,7 @@ static inline void setup_uart(void)
 extern char __dtb_imx6q_phytec_pbab01_start[];
 extern char __dtb_imx6dl_phytec_pbab01_start[];
 extern char __dtb_imx6s_phytec_pbab01_start[];
+extern char __dtb_imx6q_phytec_phyboard_alcore_start[];
 
 BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
 BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
@@ -135,3 +136,18 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
+
+ENTRY_FUNCTION(start_phytec_phyboard_alcore_1gib, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	IMD_USED(phyflex_mx6_memsize_1G);
+
+	fdt = __dtb_imx6q_phytec_phyboard_alcore_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d8160fe..c6806bc 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -28,7 +28,7 @@ pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PFLA03) += am335x-phytec-phyflex.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcore.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcore.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcore.dts
new file mode 100644
index 0000000..f5b0715
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-phyboard-alcore.dts
@@ -0,0 +1,38 @@
+/*
+ * Copyright 2014 Christian Hemp <c.hemp@phytec.de>, PHYTEC Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx6q-phytec-pfla02.dtsi"
+
+/ {
+	model = "Phytec phyBOARD ALCORE";
+	compatible = "phytec,imx6q-pbab02", "phytec,imx6q-pfla02", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+};
+
+&ethphy {
+	max-speed = <100>;
+};
+
+&fec {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usdhc3 {
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 23a3d66..d75c14e 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -115,6 +115,11 @@ CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-
 FILE_barebox-phytec-pbab01s-512mb.img = start_phytec_pbab01s_512mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01s-512mb.img
 
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_phyboard_alcore_1gib
+CFG_start_phytec_phyboard_alcore_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+FILE_barebox-phytec-phyboard-alcore-1gib.img = start_phytec_phyboard_alcore_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-phyboard-alcore-1gib.img
+
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
 FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
