Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4Kl-000748-Ub
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:51:12 +0000
Received: by mail-la0-f41.google.com with SMTP id gl10so4556347lab.28
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 00:50:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:50:39 +0400
Message-Id: <1396857039-17837-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] spi: altera_spi: fix altera_spi_setup() return error codes
To: barebox@lists.infradead.org

Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/spi/altera_spi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 8803d9e..983b877 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -34,18 +34,18 @@ static int altera_spi_setup(struct spi_device *spi)
 	if (spi->bits_per_word != altera_spi->databits) {
 		dev_err(master->dev, " master doesn't support %d bits per word requested by %s\n",
 			spi->bits_per_word, spi_dev.name);
-		return -1;
+		return -EINVAL;
 	}
 
 	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != altera_spi->mode) {
 		dev_err(master->dev, " master doesn't support SPI_MODE%d requested by %s\n",
 			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
-		return -1;
+		return -EINVAL;
 	}
 
 	if (spi->max_speed_hz < altera_spi->speed) {
 		dev_err(master->dev, " frequency is too high for %s\n", spi_dev.name);
-		return -1;
+		return -EINVAL;
 	}
 
 	altera_spi_cs_inactive(spi);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
