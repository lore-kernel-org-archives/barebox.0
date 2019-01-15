Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjHWW-0007RK-VK
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 05:44:31 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 15 Jan 2019 06:44:05 +0100
Message-Id: <a7992bfa5f3d5ff18e81a38d8744ddbfbefe254c.1547530950.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.cea99e013da63859278229c6e1566362a1800ff4.1547530950.git-series.r.czerwinski@pengutronix.de>
References: <cover.cea99e013da63859278229c6e1566362a1800ff4.1547530950.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v6 5/9] serial_ns16550: add raspberry pi compatible and init
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add the compatible for the Raspberry Pi AUX UART and an init function which
enables it via the aux register and configures the correct shift value.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 8ddcfdb..ccd082e 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -253,6 +253,23 @@ static void ns16550_jz_init_port(struct console_device *cdev)
 	ns16550_serial_init_port(cdev);
 }
 
+#define BCM2836_AUX_CLOCK_ENB 0x3f215004 /* BCM2835 AUX Clock enable register */
+#define BCM2836_AUX_CLOCK_EN_UART BIT(0) /* Bit 0 enables the Miniuart */
+
+static void rpi_init_port(struct console_device *cdev)
+{
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+
+	writeb(BCM2836_AUX_CLOCK_EN_UART, BCM2836_AUX_CLOCK_ENB);
+	priv->plat.shift = 2;
+	/*
+	 * We double the clock rate since the 16550 will divide by 16
+	 * (instead of 8 required by the BCM2835 peripheral manual)
+	 */
+	priv->plat.clock = priv->plat.clock*2;
+	ns16550_serial_init_port(cdev);
+}
+
 /*********** Exposed Functions **********************************/
 
 /**
@@ -353,6 +370,11 @@ static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
 	.linux_console_name = "ttyS",
 };
 
+static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
+	.init_port = rpi_init_port,
+	.linux_console_name = "ttyS",
+};
+
 static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 {
 	struct resource *iores;
@@ -528,6 +550,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = &jz_drvdata,
 	},
 #endif
+#if IS_ENABLED(CONFIG_MACH_RPI_COMMON)
+	{
+		.compatible = "brcm,bcm2835-aux-uart",
+		.data = &rpi_drvdata,
+	},
+#endif
 	{
 		/* sentinel */
 	},
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
