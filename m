Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069L-Mh
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:30 +0200
Message-Id: <1313397992-3065-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] mci: parent fixups
To: barebox@lists.infradead.org

Make the mci host a child of the hardware device and the disk
a child of the mci host.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel_mci.c  |    1 +
 drivers/mci/imx-esdhc.c  |    1 +
 drivers/mci/imx.c        |    1 +
 drivers/mci/mci-core.c   |    5 ++++-
 drivers/mci/omap_hsmmc.c |    1 +
 5 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index b4489dd..47e3924 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -449,6 +449,7 @@ static int mci_probe(struct device_d *hw_dev)
 	host->mci.send_cmd = mci_request;
 	host->mci.set_ios = mci_set_ios;
 	host->mci.init = mci_reset;
+	host->mci.hw_dev = dev;
 
 	host->mci.host_caps = pd->host_caps;
 	if (pd->bus_width >= 4)
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index e20b3b7..358f0dc 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -485,6 +485,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.set_ios = esdhc_set_ios;
 	host->mci.init = esdhc_init;
 	host->mci.host_caps = MMC_MODE_4BIT;
+	host->mci.hw_dev = dev;
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 1f96e96..905c251 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -492,6 +492,7 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.set_ios = mxcmci_set_ios;
 	host->mci.init = mxcmci_init;
 	host->mci.host_caps = MMC_MODE_4BIT;
+	host->mci.hw_dev = dev;
 
 	host->base = dev_request_mem_region(dev, 0);
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6a29619..681de0a 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1177,6 +1177,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct ata_interface *p;
 	int rc;
+	struct device_d *dev;
 
 	/* start with a host interface reset */
 	rc = (host->init)(host, mci_dev);
@@ -1228,7 +1229,8 @@ static int mci_card_probe(struct device_d *mci_dev)
 	p->read = mci_sd_read;
 	p->priv = mci_dev;
 
-	add_generic_device("disk", -1, NULL, 0, mci->capacity, IORESOURCE_MEM, p);
+	dev = add_generic_device("disk", -1, NULL, 0, mci->capacity, IORESOURCE_MEM, p);
+	dev_add_child(&host->dev, dev);
 
 	pr_debug("SD Card successfully added\n");
 
@@ -1363,6 +1365,7 @@ int mci_register(struct mci_host *host)
 
 	strcpy(mci_dev->name, mci_driver.name);
 	mci_dev->platform_data = (void*)host;
+	dev_add_child(host->hw_dev, mci_dev);
 
 	return register_device(mci_dev);
 }
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index f47f190..5fdf445 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -557,6 +557,7 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.set_ios = mmc_set_ios;
 	hsmmc->mci.init = mmc_init_setup;
 	hsmmc->mci.host_caps = MMC_MODE_4BIT | MMC_MODE_HS_52MHz | MMC_MODE_HS;
+	hsmmc->mci.hw_dev = dev;
 
 	hsmmc->base = dev_request_mem_region(dev, 0);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
