Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZq-00079f-OX
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:52 +0100
Message-Id: <1328788438-19717-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/15] mci: remove unused device argument from set_ios
To: barebox@lists.infradead.org

This argmuent is unused in all drivers, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel_mci.c  |    3 +--
 drivers/mci/imx-esdhc.c  |    3 +--
 drivers/mci/imx.c        |    3 +--
 drivers/mci/mci-core.c   |    2 +-
 drivers/mci/mci_spi.c    |    3 +--
 drivers/mci/mxs.c        |    3 +--
 drivers/mci/omap_hsmmc.c |    3 +--
 drivers/mci/pxamci.c     |    3 +--
 drivers/mci/s3c.c        |    4 +---
 include/mci.h            |    2 +-
 10 files changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index e0272b9..6e74990 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -351,8 +351,7 @@ static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 }
 
 /** change host interface settings */
-static void mci_set_ios(struct mci_host *mci, struct device_d *mci_dev,
-			struct mci_ios *ios)
+static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct atmel_mci_host *host = to_mci_host(mci);
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index f1e876b..2123a8b 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -375,8 +375,7 @@ void set_sysctl(struct mci_host *mci, u32 clock)
 	esdhc_setbits32(&regs->sysctl, clk);
 }
 
-static void esdhc_set_ios(struct mci_host *mci, struct device_d *dev,
-		struct mci_ios *ios)
+static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	struct fsl_esdhc *regs = host->regs;
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 2ce34bb..0e4fa66 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -441,8 +441,7 @@ static void mxcmci_set_clk_rate(struct mxcmci_host *host, unsigned int clk_ios)
 	writew((prescaler << 4) | divider, &host->base->clk_rate);
 }
 
-static void mxcmci_set_ios(struct mci_host *mci, struct device_d *dev,
-		struct mci_ios *ios)
+static void mxcmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct mxcmci_host *host = to_mxcmci(mci);
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 18ccc9c..e0e70dd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -596,7 +596,7 @@ static void mci_set_ios(struct device_d *mci_dev)
 	ios.bus_width = host->bus_width;
 	ios.clock = host->clock;
 
-	host->set_ios(host, mci_dev, &ios);
+	host->set_ios(host, &ios);
 }
 
 /**
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 0f94dab..a659ebb 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -329,8 +329,7 @@ return  0;
 
 }
 
-static void mmc_spi_set_ios(struct mci_host *mci, struct device_d *mci_dev,
-			struct mci_ios *ios)
+static void mmc_spi_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct mmc_spi_host	*host = to_spi_host(mci);
 
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 4b944fd..eaef41b 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -640,8 +640,7 @@ static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd,
  *
  * Drivers currently realized values are stored in MCI's platformdata
  */
-static void mxs_mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
-			struct mci_ios *ios)
+static void mxs_mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 {
 	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index e629fba..e0b245b 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -510,8 +510,7 @@ static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	return 0;
 }
 
-static void mmc_set_ios(struct mci_host *mci, struct device_d *dev,
-		struct mci_ios *ios)
+static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
 	struct hsmmc *mmc_base = hsmmc->base;
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index a22bdba..239b46a 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -273,8 +273,7 @@ static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	return ret;
 }
 
-static void pxamci_set_ios(struct mci_host *mci, struct device_d *dev,
-			   struct mci_ios *ios)
+static void pxamci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct pxamci_host *host = to_pxamci(mci);
 	unsigned int clk_in = pxa_get_mmcclk();
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 6648d6f..e7646c9 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -665,12 +665,10 @@ static int mci_request(struct mci_host *host, struct mci_cmd *cmd,
 /**
  * Setup the bus width and IO speed
  * @param host MCI host
- * @param mci_dev MCI device instance
  * @param bus_width New bus width value (1, 4 or 8)
  * @param clock New clock in Hz (can be '0' to disable the clock)
  */
-static void mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
-			struct mci_ios *ios)
+static void mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 {
 	struct s3c_mci_host *host_data = to_s3c_host(host);
 	uint32_t reg;
diff --git a/include/mci.h b/include/mci.h
index 3473aaa..9215e39 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -260,7 +260,7 @@ struct mci_host {
 	/** init the host interface */
 	int (*init)(struct mci_host*, struct device_d*);
 	/** change host interface settings */
-	void (*set_ios)(struct mci_host*, struct device_d*, struct mci_ios *);
+	void (*set_ios)(struct mci_host*, struct mci_ios *);
 	/** handle a command */
 	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
 };
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
