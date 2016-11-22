Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c99c8-0000tb-09
 for barebox@lists.infradead.org; Tue, 22 Nov 2016 11:51:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Nov 2016 12:51:29 +0100
Message-Id: <20161122115129.30021-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] spi: i.MX: reset controller on init
To: Barebox List <barebox@lists.infradead.org>
Cc: uol@pengutronix.de

In rare cases the controller is does not work right after probe. When
this happens the registers show that the TXFIFO contains words, but
the transfer is never started. We observed that on some boards which
boot from SPI NOR. The xload SPI code leaves the controller enabled,
so the SPI controller is enabled during probe(). Disabling it before
usage (and thus resetting it) helps. We haven't found out why exactly
this happens.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 806ca67..876699a 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -348,6 +348,13 @@ static u32 imx_xchg_single(struct spi_device *spi, u32 tx_val)
 	return imx_spi_maybe_reverse_bits(spi, rx_val);
 }
 
+static void cspi_2_3_init(struct imx_spi *imx)
+{
+	void __iomem *base = imx->regs;
+
+	writel(0, base + CSPI_2_3_CTRL);
+}
+
 static void imx_spi_do_transfer(struct spi_device *spi)
 {
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
@@ -519,6 +526,7 @@ static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 	.chipselect = cspi_2_3_chipselect,
 	.do_transfer = cspi_2_3_do_transfer,
 	.xchg_single = cspi_2_3_xchg_single,
+	.init = cspi_2_3_init,
 };
 
 static int imx_spi_dt_probe(struct imx_spi *imx)
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
