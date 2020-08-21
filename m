Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8ymH-0002vP-LG
 for barebox@lists.infradead.org; Fri, 21 Aug 2020 04:35:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Aug 2020 06:35:35 +0200
Message-Id: <20200821043535.10152-2-s.hauer@pengutronix.de>
In-Reply-To: <20200821043535.10152-1-s.hauer@pengutronix.de>
References: <20200821043535.10152-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX8M boards: always set up UART
To: Barebox List <barebox@lists.infradead.org>

Quoting Lucas on b96cc34f91 ("ARM: nxp-imx8mm-evk: always set up UART"):

| When the TF-A is configured to have some output on the UART it does not
| set up the UART on its own, but just expects a pre-existing configuration.
| If Barebox did not set up the UART in the !DEBUG_LL case, TF-A will just
| hang without any user accessible debug output, which is a very non-obvious
| failure, so better be safe and always set up the UART in case TF-A wants
| to use it.

This patch adopts this for all i.MX8M boards and makes the early UART
setup consistent across all of them. We also add pbl_set_putc() to
enable regular PBL console messages. For the i.MX8MM-EVK the unnecessary
call to imx8m_uart_setup_ll() is dropped; we already configured the
UART in imx8m_uart_setup(), no need to do that again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c    | 10 +++++-----
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c    |  6 +++++-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    |  5 ++++-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c |  6 +++++-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    |  5 ++++-
 5 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 96b78d2c66..2297dc01e7 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -28,16 +28,16 @@ extern char __dtb_imx8mm_evk_start[];
 
 static void setup_uart(void)
 {
+	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
+
 	imx8m_early_setup_uart_clock();
 
 	imx8mm_setup_pad(IMX8MM_PAD_UART2_TXD_UART2_TX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
 
-	imx8m_uart_setup((void *)MX8M_UART2_BASE_ADDR);
+	pbl_set_putc(imx_uart_putc, uart);
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		imx8m_uart_setup_ll();
-		putc_ll('>');
-	}
+	putc_ll('>');
 }
 
 static void pmic_reg_write(void *i2c, int reg, uint8_t val)
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 5df1ed0780..c193640865 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -34,11 +34,15 @@ extern char __dtb_imx8mp_evk_start[];
 
 static void setup_uart(void)
 {
+	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
+
 	imx8m_early_setup_uart_clock();
 
 	imx8mp_setup_pad(MX8MP_PAD_UART2_TXD__UART2_DCE_TX | UART_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_UART2_RXD__UART2_DCE_RX | UART_PAD_CTRL);
-	imx8m_uart_setup_ll();
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 39358afad1..9d16b7e32a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -26,11 +26,14 @@ extern char __dtb_imx8mq_evk_start[];
 
 static void setup_uart(void)
 {
+	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
+
 	imx8m_early_setup_uart_clock();
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
 
-	imx8m_uart_setup_ll();
+	pbl_set_putc(imx_uart_putc, uart);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index f5b9b6c008..ea6ff58cae 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -29,11 +29,15 @@ extern char __dtb_imx8mq_phytec_phycore_som_start[];
 
 static void setup_uart(void)
 {
+	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
+
 	imx8m_early_setup_uart_clock();
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
-	imx8m_uart_setup_ll();
+	imx8m_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 6400833809..80d2e4c997 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -28,11 +28,14 @@
 
 static void setup_uart(void)
 {
+	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
+
 	imx8m_early_setup_uart_clock();
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
+	imx8m_uart_setup(uart);
 
-	imx8m_uart_setup_ll();
+	pbl_set_putc(imx_uart_putc, uart);
 
 	putc_ll('>');
 }
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
