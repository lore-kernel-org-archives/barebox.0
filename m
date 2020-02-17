Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fng-0008PF-Er
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:12 +0100
Message-Id: <20200217124623.14520-32-s.hauer@pengutronix.de>
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
Subject: [PATCH 31/42] ARM: i.MX8M: Add and use function for early UART clock
 setup
To: Barebox List <barebox@lists.infradead.org>

The i.MX8M boards all have the same code for setting up the UART clock.
Add a common helper for it. In the helper just setup the clocks for all
UARTs as it's not worth it to have separate functions for each UART.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |  9 +------
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  |  9 +------
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     |  9 +------
 arch/arm/mach-imx/imx8m.c                     | 26 +++++++++++++++++++
 .../mach-imx/include/mach/imx8m-ccm-regs.h    |  1 +
 5 files changed, 30 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index ac97023631..ebf6203f3a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -25,14 +25,7 @@ extern char __dtb_imx8mq_evk_start[];
 
 static void setup_uart(void)
 {
-	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
-
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_CLR(IMX8M_CCM_CCGR_UART1));
-	writel(IMX8M_CCM_TARGET_ROOTn_ENABLE | IMX8M_UART1_CLK_ROOT__25M_REF_CLK,
-	       ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_UART1_CLK_ROOT));
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_UART1));
+	imx8m_early_setup_uart_clock();
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 08287a135f..9a48c1dded 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -28,14 +28,7 @@ extern char __dtb_imx8mq_phytec_phycore_som_start[];
 
 static void setup_uart(void)
 {
-	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
-
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_CLR(IMX8M_CCM_CCGR_UART1));
-	writel(IMX8M_CCM_TARGET_ROOTn_ENABLE | IMX8M_UART1_CLK_ROOT__25M_REF_CLK,
-	       ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_UART1_CLK_ROOT));
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_UART1));
+	imx8m_early_setup_uart_clock();
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index bc966589c3..c1ec827184 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -27,14 +27,7 @@
 
 static void setup_uart(void)
 {
-	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
-
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_CLR(IMX8M_CCM_CCGR_UART1));
-	writel(IMX8M_CCM_TARGET_ROOTn_ENABLE | IMX8M_UART1_CLK_ROOT__25M_REF_CLK,
-	       ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_UART1_CLK_ROOT));
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_UART1));
+	imx8m_early_setup_uart_clock();
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 596c4140b3..d044531520 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -133,3 +133,29 @@ static int imx8mq_report_hdmi_firmware(void)
 	return 0;
 }
 console_initcall(imx8mq_report_hdmi_firmware);
+
+void imx8m_early_setup_uart_clock(void)
+{
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_UART1);
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_UART2);
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_UART3);
+	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_UART4);
+
+        imx8m_clock_set_target_val(IMX8M_UART1_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_UART1_CLK_ROOT__25M_REF_CLK);
+        imx8m_clock_set_target_val(IMX8M_UART2_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_UART1_CLK_ROOT__25M_REF_CLK);
+        imx8m_clock_set_target_val(IMX8M_UART3_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_UART1_CLK_ROOT__25M_REF_CLK);
+        imx8m_clock_set_target_val(IMX8M_UART4_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_UART1_CLK_ROOT__25M_REF_CLK);
+
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_UART1);
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_UART2);
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_UART3);
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_UART4);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index ff207b80f9..70a7e4af9d 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -48,6 +48,7 @@
 #define IMX8M_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX8M_CCM_CCGR_SETTINGn(n, 0b10)
 #define IMX8M_CCM_CCGR_SETTINGn_NEEDED(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b11)
 
+void imx8m_early_setup_uart_clock(void);
 void imx8m_clock_set_target_val(int clock_id, u32 val);
 void imx8m_ccgr_clock_enable(int index);
 void imx8m_ccgr_clock_disable(int index);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
