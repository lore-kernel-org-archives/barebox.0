Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYMni-0003AH-24
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 20:09:46 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BEA45FF9427
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 21:20:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 21:07:21 +0100
Message-Id: <1352837241-16777-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352837241-16777-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121113200248.GG25679@game.jcrosoft.org>
 <1352837241-16777-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] mci_spi: add clock frequency change support
To: barebox@lists.infradead.org

setup the spi master correctly

provide f_min and f_max

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci_spi.c |   29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 08939be..679a0e1 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -318,7 +318,15 @@ static void mmc_spi_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct mmc_spi_host	*host = to_spi_host(mci);
 
-	spi_setup(host->spi);
+	if (host->spi->max_speed_hz != ios->clock && ios->clock != 0) {
+		int		status;
+
+		host->spi->max_speed_hz = ios->clock;
+		status = spi_setup(host->spi);
+		dev_dbg(&host->spi->dev,
+			"mmc_spi:  clock to %d Hz, %d\n",
+			host->spi->max_speed_hz, status);
+	}
 }
 
 static int mmc_spi_init(struct mci_host *mci, struct device_d *mci_dev)
@@ -384,6 +392,25 @@ static int spi_mci_probe(struct device_d *dev)
 		spi->mode = SPI_MODE_0;
 	spi->bits_per_word = 8;
 
+	status = spi_setup(spi);
+	if (status < 0) {
+		dev_dbg(&spi->dev, "needs SPI mode %02x, %d KHz; %d\n",
+				spi->mode, spi->max_speed_hz / 1000,
+				status);
+		return status;
+	}
+
+	/* SPI doesn't need the lowspeed device identification thing for
+	 * MMC or SD cards, since it never comes up in open drain mode.
+	 * That's good; some SPI masters can't handle very low speeds!
+	 *
+	 * However, low speed SDIO cards need not handle over 400 KHz;
+	 * that's the only reason not to use a few MHz for f_min (until
+	 * the upper layer reads the target frequency from the CSD).
+	 */
+	host->mci.f_min = 400000;
+	host->mci.f_max = spi->max_speed_hz;
+
 	host->dev = dev;
 	host->spi = spi;
 	dev->priv = host;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
