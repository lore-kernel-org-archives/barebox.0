Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUcwZ-0007PN-4p
 for barebox@lists.infradead.org; Wed, 16 May 2012 12:03:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 16 May 2012 16:02:55 +0400
Message-Id: <1337169776-15407-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] i.MX SPI: Setup SPI chipselect to inactive state while
 initializing device
To: barebox@lists.infradead.org

To avoid unnecessary preset initial state chipselect lines for SPI, set it to
inactive state when adding devices to the system.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/imx_spi.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3b33b66..42358f2 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -145,6 +145,10 @@ struct spi_imx_devtype_data {
 
 static int imx_spi_setup(struct spi_device *spi)
 {
+	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
+
+	imx->chipselect(spi, 0);
+
 	debug("%s mode 0x%08x bits_per_word: %d speed: %d\n",
 			__FUNCTION__, spi->mode, spi->bits_per_word,
 			spi->max_speed_hz);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
