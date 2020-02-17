Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007r5-Ev
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:44 +0100
Message-Id: <20200217124623.14520-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/42] ARM: i.MX8M: add and use imx8mq_setup_pad()
To: Barebox List <barebox@lists.infradead.org>

We already have a mx8_setup_pad() function for early iomux setup, but it
is unused. Add a i.MX8MQ specific wrapper for the function which passes
the correct base address to mx8_setup_pad(). Let the boards use this
function. While at it rename mx8_setup_pad() to imx8_setup_pad() which
is more consistent to other i.MX specific functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    | 3 +--
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c | 3 +--
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    | 3 +--
 arch/arm/mach-imx/include/mach/iomux-mx8mq.h | 8 ++++++++
 4 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 4443c7d3b8..68464e330d 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -25,7 +25,6 @@ extern char __dtb_imx8mq_evk_start[];
 
 static void setup_uart(void)
 {
-	void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
 	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
 
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
@@ -35,7 +34,7 @@ static void setup_uart(void)
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
 
-	imx_setup_pad(iomux, IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
 	imx8_uart_setup_ll();
 
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index e327b8cdfb..4ce5c4ecde 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -28,7 +28,6 @@ extern char __dtb_imx8mq_phytec_phycore_som_start[];
 
 static void setup_uart(void)
 {
-	void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
 	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
 
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
@@ -38,7 +37,7 @@ static void setup_uart(void)
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
 
-	imx_setup_pad(iomux, IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
 	imx8_uart_setup_ll();
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index a328699142..63f87eede0 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -27,7 +27,6 @@
 
 static void setup_uart(void)
 {
-	void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
 	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
 
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
@@ -37,7 +36,7 @@ static void setup_uart(void)
 	writel(CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
 
-	imx_setup_pad(iomux, IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
 	imx8_uart_setup_ll();
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mq.h b/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
index 5c94731ea7..d397e975c0 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
@@ -9,6 +9,7 @@
 
 #include <mach/iomux-v3.h>
 #include <mach/iomux-mx8m.h>
+#include <mach/imx8mq-regs.h>
 
 enum {
 	IMX8MQ_PAD_GPIO1_IO00__GPIO1_IO0			= IOMUX_PAD(0x0290, 0x0028, 0, 0x0000, 0, 0),
@@ -622,4 +623,11 @@ enum {
 	IMX8MQ_PAD_UART4_TXD__GPIO5_IO29			= IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
 };
 
+static inline void imx8mq_setup_pad(iomux_v3_cfg_t pad)
+{
+	void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
+
+	imx8m_setup_pad(iomux, pad);
+}
+
 #endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
