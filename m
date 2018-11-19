Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfBb-0004ze-Lo
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:52 +0100
Message-Id: <20181119084454.17599-11-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] spi: omap: make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/omap3_spi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index f63039718f..beea772aa9 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -67,7 +67,7 @@ static void spi_reset(struct spi_master *master)
 	writel(OMAP3_MCSPI_WAKEUPENABLE_WKEN, regs + OMAP3_MCSPI_WAKEUPENABLE);
 }
 
-int spi_claim_bus(struct spi_device *spi)
+static int spi_claim_bus(struct spi_device *spi)
 {
 	struct spi_master *master = spi->master;
 	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
@@ -144,7 +144,7 @@ int spi_claim_bus(struct spi_device *spi)
 	return 0;
 }
 
-int omap3_spi_write(struct spi_device *spi, unsigned int len, const u8 *txp,
+static int omap3_spi_write(struct spi_device *spi, unsigned int len, const u8 *txp,
 		    unsigned long flags)
 {
 	struct spi_master *master = spi->master;
@@ -198,7 +198,7 @@ int omap3_spi_write(struct spi_device *spi, unsigned int len, const u8 *txp,
 	return 0;
 }
 
-int omap3_spi_read(struct spi_device *spi, unsigned int len, u8 *rxp,
+static int omap3_spi_read(struct spi_device *spi, unsigned int len, u8 *rxp,
 		   unsigned long flags)
 {
 	struct spi_master *master = spi->master;
@@ -245,7 +245,7 @@ int omap3_spi_read(struct spi_device *spi, unsigned int len, u8 *rxp,
 	return 0;
 }
 
-int spi_xfer(struct spi_device *spi, struct spi_transfer *t, unsigned long flags)
+static int spi_xfer(struct spi_device *spi, struct spi_transfer *t, unsigned long flags)
 {
 	struct spi_master *master = spi->master;
 	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
