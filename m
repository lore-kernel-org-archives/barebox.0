Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdny4-0006Du-IK
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:25 +0000
Received: by lamp12 with SMTP id p12so57503508lam.0
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:45 +0300
Message-Id: <1442791433-10892-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 02/10] MIPS: ar933x: pbl: add pbl_ar9331_ddr2_config macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h | 20 ++++++
 arch/mips/mach-ath79/include/mach/pbl_macros.h  | 89 +++++++++++++++++++++++++
 2 files changed, 109 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index 5082502..6f1bf8e 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -23,6 +23,8 @@
 
 #define AR71XX_APB_BASE		0x18000000
 
+#define AR71XX_DDR_CTRL_BASE	(AR71XX_APB_BASE + 0x00000000)
+#define AR71XX_DDR_CTRL_SIZE	0x100
 #define AR71XX_PLL_BASE		(AR71XX_APB_BASE + 0x00050000)
 #define AR71XX_PLL_SIZE		0x100
 #define AR71XX_RESET_BASE	(AR71XX_APB_BASE + 0x00060000)
@@ -32,6 +34,24 @@
 #define AR933X_UART_SIZE	0x14
 
 /*
+ * DDR_CTRL block
+ */
+#define AR933X_DDR_CONFIG		0x00
+#define AR933X_DDR_CONFIG2		0x04
+#define AR933X_DDR_MODE			0x08
+#define AR933X_DDR_EXT_MODE		0x0c
+#define AR933X_DDR_CTRL			0x10
+#define AR933X_DDR_REFRESH		0x14
+#define AR933X_DDR_RD_DATA		0x18
+#define AR933X_DDR_TAP_CTRL0		0x1c
+#define AR933X_DDR_TAP_CTRL1		0x20
+#define AR933X_DDR_TAP_CTRL1		0x20
+
+#define AR933X_DDR_DDR_DDR2_CONFIG	0x8c
+#define AR933X_DDR_DDR_EMR2		0x90
+#define AR933X_DDR_DDR_EMR3		0x94
+
+/*
  * PLL block
  */
 #define AR933X_PLL_CPU_CONFIG_REG	0x00
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 1fc6eb5..f0e0174 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -40,4 +40,93 @@
 	.set	pop
 .endm
 
+#define DDR_BASE		(KSEG1 | AR71XX_DDR_CTRL_BASE)
+#define DDR_CONFIG		(DDR_BASE | AR933X_DDR_CONFIG)
+#define DDR_CONFIG2		(DDR_BASE | AR933X_DDR_CONFIG2)
+#define DDR_MODE		(DDR_BASE | AR933X_DDR_MODE)
+#define DDR_EXT_MODE		(DDR_BASE | AR933X_DDR_EXT_MODE)
+
+#define DDR_CTRL		(DDR_BASE | AR933X_DDR_CTRL)
+/* Forces an EMR3S (Extended Mode Register 3 Set) update cycle */
+#define DDR_CTRL_EMR3		BIT(5)
+/* Forces an EMR2S (Extended Mode Register 2 Set) update cycle */
+#define DDR_CTRL_EMR2		BIT(4)
+#define DDR_CTRL_PREA		BIT(3) /* Forces a PRECHARGE ALL cycle */
+#define DDR_CTRL_REF		BIT(2) /* Forces an AUTO REFRESH cycle */
+/* Forces an EMRS (Extended Mode Register 2 Set) update cycle */
+#define DDR_CTRL_EMRS		BIT(1)
+/* Forces a MRS (Mode Register Set) update cycle */
+#define DDR_CTRL_MRS		BIT(0)
+
+#define DDR_REFRESH		(DDR_BASE | AR933X_DDR_REFRESH)
+#define DDR_RD_DATA		(DDR_BASE | AR933X_DDR_RD_DATA)
+#define DDR_TAP_CTRL0		(DDR_BASE | AR933X_DDR_TAP_CTRL0)
+#define DDR_TAP_CTRL1		(DDR_BASE | AR933X_DDR_TAP_CTRL1)
+
+#define DDR_DDR2_CONFIG		(DDR_BASE | AR933X_DDR_DDR_DDR2_CONFIG)
+#define DDR_EMR2		(DDR_BASE | AR933X_DDR_DDR_EMR2)
+#define DDR_EMR3		(DDR_BASE | AR933X_DDR_DDR_EMR3)
+
+.macro	pbl_ar9331_ddr2_config
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel	0x7fbc8cd0, DDR_CONFIG
+	pbl_reg_writel	0x9dd0e6a8, DDR_CONFIG2
+
+	/* Enable DDR2 */
+	pbl_reg_writel	0x00000a59, DDR_DDR2_CONFIG
+	pbl_reg_writel	DDR_CTRL_PREA, DDR_CTRL
+
+	/* Disable High Temperature Self-Refresh Rate */
+	pbl_reg_writel	0x00000000, DDR_EMR2
+	pbl_reg_writel	DDR_CTRL_EMR2, DDR_CTRL
+
+	pbl_reg_writel	0x00000000, DDR_EMR3
+	pbl_reg_writel	DDR_CTRL_EMR3, DDR_CTRL
+
+	/* Enable DLL */
+	pbl_reg_writel	0x00000000, DDR_EXT_MODE
+	pbl_reg_writel	DDR_CTRL_EMRS, DDR_CTRL
+
+	/* Reset DLL */
+	pbl_reg_writel	0x00000100, DDR_MODE
+	pbl_reg_writel	DDR_CTRL_MRS, DDR_CTRL
+
+	pbl_reg_writel	DDR_CTRL_PREA, DDR_CTRL
+	pbl_reg_writel	DDR_CTRL_REF, DDR_CTRL
+	pbl_reg_writel	DDR_CTRL_REF, DDR_CTRL
+
+	/* Write recovery (WR) 6 clock, CAS Latency 3, Burst Length 8 */
+	pbl_reg_writel	0x00000a33, DDR_MODE
+	pbl_reg_writel	DDR_CTRL_MRS, DDR_CTRL
+
+	/*
+	 * DDR_EXT_MODE[9:7] = 0x7: (OCD Calibration defaults)
+	 * DDR_EXT_MODE[1] = 1: Reduced Drive Strength
+	 * DDR_EXT_MODE[0] = 0: Enable DLL
+	 */
+	pbl_reg_writel	0x00000382, DDR_EXT_MODE
+	pbl_reg_writel	DDR_CTRL_EMRS, DDR_CTRL
+
+	/*
+	 * DDR_EXT_MODE[9:7] = 0x0: (OCD exit)
+	 * DDR_EXT_MODE[1] = 1: Reduced Drive Strength
+	 * DDR_EXT_MODE[0] = 0: Enable DLL
+	 */
+	pbl_reg_writel	0x00000402, DDR_EXT_MODE
+	pbl_reg_writel	DDR_CTRL_EMRS, DDR_CTRL
+
+	/* Refresh control. Bit 14 is enable. Bits <13:0> Refresh time */
+	pbl_reg_writel	0x00004186, DDR_REFRESH
+	/* DQS 0 Tap Control (needs tuning) */
+	pbl_reg_writel	0x00000008, DDR_TAP_CTRL0
+	/* DQS 1 Tap Control (needs tuning) */
+	pbl_reg_writel	0x00000009, DDR_TAP_CTRL1
+	/* For 16-bit DDR */
+	pbl_reg_writel	0x000000ff, DDR_RD_DATA
+
+	.set	pop
+.endm
+
 #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
