Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezIIz-0002e7-LF
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 08:44:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006LA-Vb
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1ezIIk-0006rd-MZ
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 09:43:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 23 Mar 2018 09:43:52 +0100
Message-Id: <20180323084352.20931-5-m.grzeschik@pengutronix.de>
In-Reply-To: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
References: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 4/4] i.MX53/TX53: add new samsung based xx30 variant
To: barebox@lists.infradead.org

Karo is deploying there latest tx53 modules with samsung instead of
nanya ram. Unfortunatly the still keep the old revision for that
modules. We add this modules as an extra xx30 samsung variant.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 .../flash-header-tx53-revxx30-samsung.imxcfg       | 177 +++++++++++++++++++++
 arch/arm/boards/karo-tx53/lowlevel.c               |   5 +
 images/Makefile.imx                                |   5 +
 3 files changed, 187 insertions(+)
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg

diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
new file mode 100644
index 0000000000..6962abd5e6
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
@@ -0,0 +1,177 @@
+loadaddr 0x71000000
+soc imx53
+dcdofs 0x400
+
+wm 32 0x53fa8004 0x00194005 /* set LDO to 1.3V */
+
+/* "AXI/DDR FREQ" fuse seems programmed to 1, so the SDRAM runs at 333 MHz */
+/* "BT_Freq" fuse seems unprogrammed and 0, so the CPU core runs at 800 MHz */
+
+/* re-program the PLL2 for the SDRAM clock prior signal calibration */
+
+wm 32 0x63F84000 0x00001232 /* MX5_PLL_DP_CTL */
+wm 32 0x63F84004 0x00000002 /* MX5_PLL_DP_CONFIG */
+wm 32 0x63F84008 0x00000081 /* MX5_PLL_DP_OP */
+wm 32 0x63F8401c 0x00000081 /* MX5_PLL_DP_HFS_OP */
+wm 32 0x63F8400c 0x00000002 /* MX5_PLL_DP_MFD */
+wm 32 0x63F84020 0x00000002 /* MX5_PLL_DP_HFS_MFD */
+wm 32 0x63F84010 0x00000001 /* MX5_PLL_DP_MFN */
+wm 32 0x63F84024 0x00000001 /* MX5_PLL_DP_HFS_MFN */
+wm 32 0x63F84000 0x00001232 /* MX5_PLL_DP_CTL */
+/* wait until PLL has locked again */
+check 32 until_all_bits_set 0x63F84000 0x00000001
+
+wm 32 0x53fa8340 0x00000011 /* GPIO_17 => RESET_OUT */
+wm 32 0x63fd800c 0x00000000 /* M4IF: MUX NFC signals on WEIM TODO */
+/* Setup clock tree */
+wm 32 0x53fd4014 0x00888944 /* CBCDR for SDRAM clock > 333 AXI_A: /1, AXI_B: /2 */
+wm 32 0x53fd4018 0x00016154 /* CBCMR SDRAM Controller uses AXI_A */
+/* peripherals */
+wm 32 0x53fd401c 0xa6a2a020 /* CSCMR1 */
+wm 32 0x53fd4020 0xb6b12f0a /* CSCMR2 */
+wm 32 0x53fd4024 0x00080b18 /* CSCDR1 */
+
+wm 32 0x53fa8724 0x00000000 /* DDR_TYPE: DDR3 */
+wm 32 0x53fa86f4 0x00000000 /* DDRMODE_CTL */
+wm 32 0x53fa8714 0x00000000 /* GRP_DDRMODE */
+wm 32 0x53fa86fc 0x00000080 /* GRP_DDRPKE */
+wm 32 0x53fa8710 0x00000000 /* GRP_DDRHYS */
+wm 32 0x53fa8708 0x00000040 /* GRP_DDRPK */
+
+wm 32 0x53fa8584 0x00300000 /* DQM0 */
+wm 32 0x53fa8594 0x00300000 /* DQM1 */
+wm 32 0x53fa8560 0x00300000 /* DQM2 */
+wm 32 0x53fa8554 0x00300000 /* DQM3 */
+
+wm 32 0x53fa857c 0x00b00040 /* SDQS0 */
+wm 32 0x53fa8590 0x00b00040 /* SDQS1 */
+wm 32 0x53fa8568 0x00b00040 /* SDQS2 */
+wm 32 0x53fa8558 0x00b00040 /* SDQS3 */
+
+wm 32 0x53fa8580 0x00300040 /* SDODT0 */
+wm 32 0x53fa8578 0x00300000 /* SDCLK0 */
+
+wm 32 0x53fa8564 0x00300040 /* SDODT1 */
+wm 32 0x53fa8570 0x00300000 /* SDCLK1 */
+
+wm 32 0x53fa858c 0x000000c0 /* SDCKE0 */
+wm 32 0x53fa855c 0x000000c0 /* SDCKE1 */
+
+wm 32 0x53fa8574 0x00300000 /* DRAM_CAS */
+wm 32 0x53fa8588 0x00300000 /* DRAM_RAS */
+
+wm 32 0x53fa86f0 0x00300000 /* GRP_ADDDS */
+wm 32 0x53fa8720 0x00300000 /* GRP_CTLDS */
+wm 32 0x53fa8718 0x00300000 /* GRP_B0DS */
+wm 32 0x53fa871c 0x00300000 /* GRP_B1DS */
+wm 32 0x53fa8728 0x00300000 /* GRP_B2DS */
+wm 32 0x53fa872c 0x00300000 /* GRP_B3DS */
+
+/* calibration defaults */
+wm 32 0x63fd904c 0x001f001f
+wm 32 0x63fd9050 0x001f001f
+wm 32 0x63fd907c 0x011e011e
+wm 32 0x63fd9080 0x011f0120
+wm 32 0x63fd9088 0x3a393d3b
+wm 32 0x63fd9090 0x3f3f3f3f
+
+wm 32 0x63fd9018 0x00000740
+wm 32 0x63fd9000 0x83190000
+wm 32 0x63fd900c 0x3f435333
+wm 32 0x63fd9010 0x926e8a63
+wm 32 0x63fd9014 0x01ff00db
+
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x00430f24
+wm 32 0x63fd9008 0x1b333030
+wm 32 0x63fd9004 0x0002006d
+
+/* use the SDRAM controller for specific accesses into the SDRAM */
+wm 32 0x63fd901c 0x00008000 /* CON_REQ -> aquire AXI bus */
+check 32 until_all_bits_set 0x63fd901c 0x00004000 /* wait for acknowledge */
+
+/* Setup SDRAM's MR0..3 at CS0 */
+wm 32 0x63fd901c 0x004080b2 /* MRS: MR2 */
+wm 32 0x63fd901c 0x000080b3 /* MRS: MR3 */
+wm 32 0x63fd901c 0x000480b1 /* MRS: MR1 */
+wm 32 0x63fd901c 0x052080b0 /* MRS: MR0 */
+
+/* no memory at CS1 */
+
+wm 32 0x63fd9020 0x0000c000 /* disable refresh during calibration */
+wm 32 0x63fd9058 0x00022222
+
+wm 32 0x63fd90d0 0x00000003 /* select default compare pattern for calibration */
+
+/* ZQ calibration */
+wm 32 0x63fd901c 0x04008010 /* precharge all */
+wm 32 0x63fd901c 0x00008040 /* MRS: ZQ calibration */
+wm 32 0x63fd9040 0x0539002b /* Force ZQ calibration */
+check 32 until_all_bits_clear 0x63fd9040 0x00010000 /* wait until ZQ calibration is done */
+
+/* DQS calibration */
+wm 32 0x63fd901c 0x04008010 /* precharge all */
+wm 32 0x63fd901c 0x000480b3 /* MRS: select MPR */
+wm 32 0x63fd907c 0x90000000 /* reset RD fifo and start DQS calib. */
+
+check 32 until_all_bits_clear 0x63fd907c 0x90000000 /* wait until DQS calibration is done */
+wm 32 0x63fd901c 0x000080b3 /* MRS: select normal data path */
+
+/* WR DL calibration */
+wm 32 0x63fd901c 0x00008000
+wm 32 0x63fd901c 0x04008010 /* precharge all */
+wm 32 0x63fd901c 0x000480b3 /* MRS: select MPR */
+wm 32 0x63fd90a4 0x00000010 /* start WR DL calibration */
+
+check 32 until_all_bits_clear 0x63fd90a4 0x00000010 /* wait until WR DL calibration is done */
+wm 32 0x63fd901c 0x000080b3 /* MRS: select normal data path */
+
+/* RD DL calibration */
+wm 32 0x63fd901c 0x04008010 /* precharge all */
+wm 32 0x63fd901c 0x000480b3 /* MRS: select MPR */
+wm 32 0x63fd90a0 0x00000010 /* start WR DL calibration */
+
+check 32 until_all_bits_clear 0x63fd90a0 0x00000010 /* wait until RD DL calibration is done */
+wm 32 0x63fd901c 0x000080b3 /* MRS: select normal data path */
+
+wm 32 0x63fd9020 0x00001800 /* refresh interval: 4 cycles every 64kHz period */
+wm 32 0x63fd9004 0x0002556d
+
+/* DDR calibration done */
+wm 32 0x63fd901c 0x00000000
+
+/* setup NFC pads */
+
+/* MUX_SEL */
+wm 32 0x53fa819c 0x00000000 /* EIM_DA0 */
+wm 32 0x53fa81a0 0x00000000 /* EIM_DA1 */
+wm 32 0x53fa81a4 0x00000000 /* EIM_DA2 */
+wm 32 0x53fa81a8 0x00000000 /* EIM_DA3 */
+wm 32 0x53fa81ac 0x00000000 /* EIM_DA4 */
+wm 32 0x53fa81b0 0x00000000 /* EIM_DA5 */
+wm 32 0x53fa81b4 0x00000000 /* EIM_DA6 */
+wm 32 0x53fa81b8 0x00000000 /* EIM_DA7 */
+wm 32 0x53fa81dc 0x00000000 /* WE_B */
+wm 32 0x53fa81e0 0x00000000 /* RE_B */
+wm 32 0x53fa8228 0x00000000 /* CLE */
+wm 32 0x53fa822c 0x00000000 /* ALE */
+wm 32 0x53fa8230 0x00000000 /* WP_B */
+wm 32 0x53fa8234 0x00000000 /* RB0 */
+wm 32 0x53fa8238 0x00000000 /* CS0 */
+
+/* PAD_CTL */
+wm 32 0x53fa84ec 0x000000e4 /* EIM_DA0 */
+wm 32 0x53fa84f0 0x000000e4 /* EIM_DA1 */
+wm 32 0x53fa84f4 0x000000e4 /* EIM_DA2 */
+wm 32 0x53fa84f8 0x000000e4 /* EIM_DA3 */
+wm 32 0x53fa84fc 0x000000e4 /* EIM_DA4 */
+wm 32 0x53fa8500 0x000000e4 /* EIM_DA5 */
+wm 32 0x53fa8504 0x000000e4 /* EIM_DA6 */
+wm 32 0x53fa8508 0x000000e4 /* EIM_DA7 */
+wm 32 0x53fa852c 0x00000004 /* NANDF_WE_B */
+wm 32 0x53fa8530 0x00000004 /* NANDF_RE_B */
+wm 32 0x53fa85a0 0x00000004 /* NANDF_CLE_B */
+wm 32 0x53fa85a4 0x00000004 /* NANDF_ALE_B */
+wm 32 0x53fa85a8 0x000000e4 /* NANDF_WE_B */
+wm 32 0x53fa85ac 0x000000e4 /* NANDF_RB0 */
+wm 32 0x53fa85b0 0x00000004 /* NANDF_CS0 */
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 15dba7df22..cb324b2007 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -52,6 +52,11 @@ static void __imx53_tx53_init(int is_xx30)
 	imx53_barebox_entry(fdt);
 }
 
+ENTRY_FUNCTION(start_imx53_tx53_xx30_samsung, r0, r1, r2)
+{
+	__imx53_tx53_init(1);
+}
+
 ENTRY_FUNCTION(start_imx53_tx53_xx30, r0, r1, r2)
 {
 	__imx53_tx53_init(1);
diff --git a/images/Makefile.imx b/images/Makefile.imx
index ed2774263d..ac46d51c59 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -139,6 +139,11 @@ CFG_start_imx53_mba53_1gib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-
 FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblx.imximg
 image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-1gib.img
 
+pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_xx30_samsung
+CFG_start_imx53_tx53_xx30_samsung.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
+FILE_barebox-tx53-xx30-samsung.img = start_imx53_tx53_xx30_samsung.pblx.imximg
+image-$(CONFIG_MACH_TX53) += barebox-tx53-xx30-samsung.img
+
 pblx-$(CONFIG_MACH_TX53) += start_imx53_imx53_tx53_xx30
 CFG_start_imx53_tx53_xx30.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30.imxcfg
 FILE_barebox-tx53-xx30.img = start_imx53_tx53_xx30.pblx.imximg
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
