Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnp-00005j-Ff
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:11 +0100
Message-Id: <20200217124623.14520-31-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 30/42] ARM: i.MX7: Add and use function for early UART clock
 setup
To: Barebox List <barebox@lists.infradead.org>

The i.MX7 boards have the same code for setting up the UART clock. Add a
common helper function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c |  9 +--------
 arch/arm/boards/zii-imx7d-dev/lowlevel.c         |  9 +--------
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h   | 12 ++++++++++++
 3 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index 995bf6cca9..8db46ca696 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -15,14 +15,7 @@ extern char __dtb_imx7d_sdb_start[];
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
-
-	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
-	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
-	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
-	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
+	imx7_early_setup_uart_clock();
 
 	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
 
diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 83fb646fd6..7579a2a8a0 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -23,14 +23,7 @@ extern char __dtb_z_imx7d_zii_rmu2_start[];
 
 static inline void setup_uart(void)
 {
-	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
-
-	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART2));
-	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART2_CLK_ROOT__OSC_24M,
-	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART2_CLK_ROOT));
-	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART2));
+	imx7_early_setup_uart_clock();
 
 	imx7_setup_pad(MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
 
diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index b78adf9f1c..de6eb1bbd1 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -33,4 +33,16 @@
 #define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX7_CCM_CCGR_SETTINGn(n, 0b10)
 #define IMX7_CCM_CCGR_SETTINGn_NEEDED(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b11)
 
+static inline void imx7_early_setup_uart_clock(void)
+{
+	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
+
+	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
+	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
+	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
+	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
+}
+
 #endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
