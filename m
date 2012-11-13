Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYMni-0003AG-1t
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 20:09:39 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id AF8A0FF9421
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 21:20:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 21:07:20 +0100
Message-Id: <1352837241-16777-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] mci_spi: add sanity check
To: barebox@lists.infradead.org

as in linux

SD/MMC support only mode 0 or 3 (if 0 not supported by the spi master)
so if the mode is not 3 force 0

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci_spi.c |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index cb5e0bb..08939be 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -366,6 +366,7 @@ static int spi_mci_probe(struct device_d *dev)
 	struct spi_device	*spi = (struct spi_device *)dev->type_data;
 	struct mmc_spi_host	*host;
 	void			*ones;
+	int			status;
 
 	host = xzalloc(sizeof(*host));
 	host->mci.send_cmd = mmc_spi_request;
@@ -373,6 +374,16 @@ static int spi_mci_probe(struct device_d *dev)
 	host->mci.init = mmc_spi_init;
 	host->mci.hw_dev = dev;
 
+	/* MMC and SD specs only seem to care that sampling is on the
+	 * rising edge ... meaning SPI modes 0 or 3.  So either SPI mode
+	 * should be legit.  We'll use mode 0 since the steady state is 0,
+	 * which is appropriate for hotplugging, unless the platform data
+	 * specify mode 3 (if hardware is not compatible to mode 0).
+	 */
+	if (spi->mode != SPI_MODE_3)
+		spi->mode = SPI_MODE_0;
+	spi->bits_per_word = 8;
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
