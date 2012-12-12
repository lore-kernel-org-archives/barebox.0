Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisd1-00054u-ML
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:10:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:49 +0100
Message-Id: <1355342991-549-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
References: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/10] ARM i.MX31 pcm037: add more iomux pins
To: barebox@lists.infradead.org

Use imx_iomux_setup_multiple_pins to setup the pinmux and add more
pins.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |   46 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 68a6c8d..cd911b7 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -202,13 +202,49 @@ static int imx31_devices_init(void)
 
 device_initcall(imx31_devices_init);
 
+static unsigned int pcm037_iomux[] = {
+	/* UART1 */
+	MX31_PIN_RXD1__RXD1,
+	MX31_PIN_TXD1__TXD1,
+	MX31_PIN_CTS1__CTS1,
+	MX31_PIN_RTS1__RTS1,
+	/* I2C */
+	MX31_PIN_CSPI2_MOSI__SCL,
+	MX31_PIN_CSPI2_MISO__SDA,
+	MX31_PIN_CSPI2_SS2__I2C3_SDA,
+	MX31_PIN_CSPI2_SCLK__I2C3_SCL,
+	/* SDHC1 */
+	MX31_PIN_SD1_DATA3__SD1_DATA3,
+	MX31_PIN_SD1_DATA2__SD1_DATA2,
+	MX31_PIN_SD1_DATA1__SD1_DATA1,
+	MX31_PIN_SD1_DATA0__SD1_DATA0,
+	MX31_PIN_SD1_CLK__SD1_CLK,
+	MX31_PIN_SD1_CMD__SD1_CMD,
+	IOMUX_MODE(MX31_PIN_SCK6, IOMUX_CONFIG_GPIO), /* card detect */
+	IOMUX_MODE(MX31_PIN_SFS6, IOMUX_CONFIG_GPIO), /* write protect */
+	/* SPI1 */
+	MX31_PIN_CSPI1_MOSI__MOSI,
+	MX31_PIN_CSPI1_MISO__MISO,
+	MX31_PIN_CSPI1_SCLK__SCLK,
+	MX31_PIN_CSPI1_SPI_RDY__SPI_RDY,
+	MX31_PIN_CSPI1_SS0__SS0,
+	MX31_PIN_CSPI1_SS1__SS1,
+	MX31_PIN_CSPI1_SS2__SS2,
+	/* UART2 */
+	MX31_PIN_TXD2__TXD2,
+	MX31_PIN_RXD2__RXD2,
+	MX31_PIN_CTS2__CTS2,
+	MX31_PIN_RTS2__RTS2,
+	/* UART3 */
+	MX31_PIN_CSPI3_MOSI__RXD3,
+	MX31_PIN_CSPI3_MISO__TXD3,
+	MX31_PIN_CSPI3_SCLK__RTS3,
+	MX31_PIN_CSPI3_SPI_RDY__CTS3,
+};
+
 static int imx31_console_init(void)
 {
-	/* init gpios for serial port */
-	imx_iomux_mode(MX31_PIN_RXD1__RXD1);
-	imx_iomux_mode(MX31_PIN_TXD1__TXD1);
-	imx_iomux_mode(MX31_PIN_CTS1__CTS1);
-	imx_iomux_mode(MX31_PIN_RTS1__RTS1);
+	imx_iomux_setup_multiple_pins(pcm037_iomux, ARRAY_SIZE(pcm037_iomux));
 
 	imx31_add_uart0();
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
