Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZu-0004fG-Lz
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:48 +0100
Message-Id: <1328788438-19717-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] mci core: replace discrete ios values with struct ios
To: barebox@lists.infradead.org

As we'll need more arguments to set_ios over time put them
in a struct mci_ios like the kernel does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel_mci.c  |   18 ++++++++++--------
 drivers/mci/imx-esdhc.c  |   16 ++++++++++++----
 drivers/mci/imx.c        |   18 ++++++++++++------
 drivers/mci/mci-core.c   |   14 +++++++++-----
 drivers/mci/mci_spi.c    |    2 +-
 drivers/mci/mxs.c        |   14 ++++++++------
 drivers/mci/omap_hsmmc.c |   19 ++++++++++---------
 drivers/mci/pxamci.c     |   19 +++++++++++++------
 drivers/mci/s3c.c        |   15 ++++++++-------
 include/mci.h            |   32 +++++++++++++++++++++++++++++++-
 10 files changed, 114 insertions(+), 53 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 3c37747..e0272b9 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -352,29 +352,31 @@ static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 
 /** change host interface settings */
 static void mci_set_ios(struct mci_host *mci, struct device_d *mci_dev,
-			unsigned bus_width, unsigned clock)
+			struct mci_ios *ios)
 {
 	struct atmel_mci_host *host = to_mci_host(mci);
 
 	dev_dbg(host->hw_dev, "atmel_mci_set_ios: bus_width=%d clk=%d\n",
-		bus_width, clock);
+		ios->bus_width, ios->clock);
 
-	switch (bus_width) {
-	case 4:
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_4:
 		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_4BIT);
 		break;
-	case 8:
+	case MMC_BUS_WIDTH_8:
 		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_8BIT);
 		break;
-	default:
+	case MMC_BUS_WIDTH_1:
 		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_1BIT);
 		break;
+	default:
+		return;
 	}
 	atmel_mci_writel(host, AT91_MCI_SDCR, atmel_mci_readl(host, AT91_MCI_SDCR)
 		| host->slot_b);
 
-	if (clock) {
-		atmel_set_clk_rate(host, clock);
+	if (ios->clock) {
+		atmel_set_clk_rate(host, ios->clock);
 		atmel_mci_writel(host, AT91_MCI_CR, AT91_MCI_MCIEN
 		);
 	} else {
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index fe55697..f1e876b 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -376,21 +376,29 @@ void set_sysctl(struct mci_host *mci, u32 clock)
 }
 
 static void esdhc_set_ios(struct mci_host *mci, struct device_d *dev,
-		unsigned bus_width, unsigned clock)
+		struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	struct fsl_esdhc *regs = host->regs;
 
 	/* Set the clock speed */
-	set_sysctl(mci, clock);
+	set_sysctl(mci, ios->clock);
 
 	/* Set the bus width */
 	esdhc_clrbits32(&regs->proctl, PROCTL_DTW_4 | PROCTL_DTW_8);
 
-	if (bus_width == 4)
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_4:
 		esdhc_setbits32(&regs->proctl, PROCTL_DTW_4);
-	else if (bus_width == 8)
+		break;
+	case MMC_BUS_WIDTH_8:
 		esdhc_setbits32(&regs->proctl, PROCTL_DTW_8);
+		break;
+	case MMC_BUS_WIDTH_1:
+		break;
+	default:
+		return;
+	}
 
 }
 
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 50c98e1..2ce34bb 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -442,23 +442,29 @@ static void mxcmci_set_clk_rate(struct mxcmci_host *host, unsigned int clk_ios)
 }
 
 static void mxcmci_set_ios(struct mci_host *mci, struct device_d *dev,
-		unsigned bus_width, unsigned clock)
+		struct mci_ios *ios)
 {
 	struct mxcmci_host *host = to_mxcmci(mci);
 
-	if (bus_width == 4)
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_4:
 		host->cmdat |= CMD_DAT_CONT_BUS_WIDTH_4;
-	else
+		break;
+	case MMC_BUS_WIDTH_1:
 		host->cmdat &= ~CMD_DAT_CONT_BUS_WIDTH_4;
+		break;
+	default:
+		return;
+	}
 
-	if (clock) {
-		mxcmci_set_clk_rate(host, clock);
+	if (ios->clock) {
+		mxcmci_set_clk_rate(host, ios->clock);
 		writew(STR_STP_CLK_START_CLK, &host->base->str_stp_clk);
 	} else {
 		writew(STR_STP_CLK_STOP_CLK, &host->base->str_stp_clk);
 	}
 
-	host->clock = clock;
+	host->clock = ios->clock;
 }
 
 static int mxcmci_init(struct mci_host *mci, struct device_d *dev)
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8951c07..18ccc9c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -591,8 +591,12 @@ retry_scr:
 static void mci_set_ios(struct device_d *mci_dev)
 {
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_ios ios;
 
-	host->set_ios(host, mci_dev, host->bus_width, host->clock);
+	ios.bus_width = host->bus_width;
+	ios.clock = host->clock;
+
+	host->set_ios(host, mci_dev, &ios);
 }
 
 /**
@@ -907,7 +911,7 @@ static int mci_startup(struct device_d *mci_dev)
 				/* TODO continue with 1 bit? */
 				return err;
 			}
-			mci_set_bus_width(mci_dev, 4);
+			mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_4);
 		}
 		/* if possible, speed up the transfer */
 		if (mci->card_caps & MMC_MODE_HS)
@@ -924,7 +928,7 @@ static int mci_startup(struct device_d *mci_dev)
 				pr_debug("Changing MMC bus width failed: %d\n", err);
 				return err;
 			}
-			mci_set_bus_width(mci_dev, 4);
+			mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_4);
 		} else if (mci->card_caps & MMC_MODE_8BIT) {
 			pr_debug("Set MMC bus width to 8 bit\n");
 			/* Set the card to use 8 bit*/
@@ -934,7 +938,7 @@ static int mci_startup(struct device_d *mci_dev)
 				pr_debug("Changing MMC bus width failed: %d\n", err);
 				return err;
 			}
-			mci_set_bus_width(mci_dev, 8);
+			mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_8);
 		}
 		/* if possible, speed up the transfer */
 		if (mci->card_caps & MMC_MODE_HS) {
@@ -1243,7 +1247,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 		return rc;
 	}
 
-	mci_set_bus_width(mci_dev, 1);
+	mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_1);
 	mci_set_clock(mci_dev, 1);	/* set the lowest available clock */
 
 	/* reset the card */
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 54b2a91..0f94dab 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -330,7 +330,7 @@ return  0;
 }
 
 static void mmc_spi_set_ios(struct mci_host *mci, struct device_d *mci_dev,
-			unsigned bus_width, unsigned clock)
+			struct mci_ios *ios)
 {
 	struct mmc_spi_host	*host = to_spi_host(mci);
 
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index a60e706..4b944fd 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -641,26 +641,28 @@ static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd,
  * Drivers currently realized values are stored in MCI's platformdata
  */
 static void mxs_mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
-			unsigned bus_width, unsigned clock)
+			struct mci_ios *ios)
 {
 	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 
-	switch (bus_width) {
-	case 8:
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_8:
 		mxs_mci->bus_width = 2;
 		host->bus_width = 8;	/* 8 bit is possible */
 		break;
-	case 4:
+	case MMC_BUS_WIDTH_4:
 		mxs_mci->bus_width = 1;
 		host->bus_width = 4;	/* 4 bit is possible */
 		break;
-	default:
+	case MMC_BUS_WIDTH_1:
 		mxs_mci->bus_width = 0;
 		host->bus_width = 1;	/* 1 bit is possible */
 		break;
+	default:
+		return;
 	}
 
-	mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, clock);
+	mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, ios->clock);
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n", host->bus_width,
 			mxs_mci->clock);
 }
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index e671bbe..e629fba 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -511,7 +511,7 @@ static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 }
 
 static void mmc_set_ios(struct mci_host *mci, struct device_d *dev,
-		unsigned bus_width, unsigned clock)
+		struct mci_ios *ios)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
 	struct hsmmc *mmc_base = hsmmc->base;
@@ -519,33 +519,34 @@ static void mmc_set_ios(struct mci_host *mci, struct device_d *dev,
 	uint64_t start;
 
 	/* configue bus width */
-	switch (bus_width) {
-	case 8:
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_8:
 		writel(readl(&mmc_base->con) | DTW_8_BITMODE,
 			&mmc_base->con);
 		break;
 
-	case 4:
+	case MMC_BUS_WIDTH_4:
 		writel(readl(&mmc_base->con) & ~DTW_8_BITMODE,
 			&mmc_base->con);
 		writel(readl(&mmc_base->hctl) | DTW_4_BITMODE,
 			&mmc_base->hctl);
 		break;
 
-	case 1:
-	default:
+	case MMC_BUS_WIDTH_1:
 		writel(readl(&mmc_base->con) & ~DTW_8_BITMODE,
 			&mmc_base->con);
 		writel(readl(&mmc_base->hctl) & ~DTW_4_BITMODE,
 			&mmc_base->hctl);
 		break;
+	default:
+		return;
 	}
 
 	/* configure clock with 96Mhz system clock.
 	 */
-	if (clock != 0) {
-		dsor = (MMC_CLOCK_REFERENCE * 1000000 / clock);
-		if ((MMC_CLOCK_REFERENCE * 1000000) / dsor > clock)
+	if (ios->clock != 0) {
+		dsor = (MMC_CLOCK_REFERENCE * 1000000 / ios->clock);
+		if ((MMC_CLOCK_REFERENCE * 1000000) / dsor > ios->clock)
 			dsor++;
 	}
 
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 75b61f0..a22bdba 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -274,15 +274,15 @@ static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd,
 }
 
 static void pxamci_set_ios(struct mci_host *mci, struct device_d *dev,
-			   unsigned bus_width, unsigned clock)
+			   struct mci_ios *ios)
 {
 	struct pxamci_host *host = to_pxamci(mci);
 	unsigned int clk_in = pxa_get_mmcclk();
 	int fact;
 
-	mci_dbg("bus_width=%d, clock=%u\n", bus_width, clock);
-	if (clock)
-		fact = min_t(int, clk_in / clock, 1 << 6);
+	mci_dbg("bus_width=%d, clock=%u\n", ios->bus_width, ios->clock);
+	if (ios->clock)
+		fact = min_t(int, clk_in / ios->clock, 1 << 6);
 	else
 		fact = 1 << 6;
 	fact = max_t(int, fact, 1);
@@ -294,10 +294,17 @@ static void pxamci_set_ios(struct mci_host *mci, struct device_d *dev,
 	/* to handle (19.5MHz, 26MHz) */
 	host->clkrt = fls(fact) - 1;
 
-	if (bus_width == 4)
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_4:
 		host->cmdat |= CMDAT_SD_4DAT;
-	else
+		break;
+	case MMC_BUS_WIDTH_1:
 		host->cmdat &= ~CMDAT_SD_4DAT;
+		break;
+	default:
+		return;
+	}
+
 	host->cmdat |= CMDAT_INIT;
 
 	clk_enable();
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 7babab4..9d46b09 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -687,29 +687,30 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
  * @param clock New clock in Hz (can be '0' to disable the clock)
  */
 static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
-			unsigned bus_width, unsigned clock)
+			struct mci_ios *ios)
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
 	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	uint32_t reg;
 
-	switch (bus_width) {
-	case 8:		/* no 8 bit support, fall back to 4 bit */
-	case 4:
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_4:
 		host_data->bus_width = 1;
 		host->bus_width = 4;	/* 4 bit is possible */
 		break;
-	default:
+	case MMC_BUS_WIDTH_1:
 		host_data->bus_width = 0;
 		host->bus_width = 1;	/* 1 bit is possible */
 		break;
+	default:
+		return;
 	}
 
 	reg = readl(host_data->base + SDICON);
-	if (clock) {
+	if (ios->clock) {
 		/* setup the IO clock frequency and enable it */
-		host->clock = host_data->clock = s3c_setup_clock_speed(hw_dev, clock);
+		host->clock = host_data->clock = s3c_setup_clock_speed(hw_dev, ios->clock);
 		reg |= SDICON_CLKEN;	/* enable the clock */
 	} else {
 		reg &= ~SDICON_CLKEN;	/* disable the clock */
diff --git a/include/mci.h b/include/mci.h
index 6d8468c..3473aaa 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -168,6 +168,8 @@
 #define EXT_CSD_BUS_WIDTH_1	0	/* Card is in 1 bit mode */
 #define EXT_CSD_BUS_WIDTH_4	1	/* Card is in 4 bit mode */
 #define EXT_CSD_BUS_WIDTH_8	2	/* Card is in 8 bit mode */
+#define EXT_CSD_DDR_BUS_WIDTH_4	5	/* Card is in 4 bit DDR mode */
+#define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
 
 #define R1_ILLEGAL_COMMAND		(1 << 22)
 #define R1_APP_CMD			(1 << 5)
@@ -217,6 +219,34 @@ struct mci_data {
 	unsigned blocksize;	/**< block size in bytes (mostly 512) */
 };
 
+struct mci_ios {
+	unsigned int	clock;			/* clock rate */
+
+	unsigned char	bus_width;		/* data bus width */
+
+#define MMC_BUS_WIDTH_1		0
+#define MMC_BUS_WIDTH_4		2
+#define MMC_BUS_WIDTH_8		3
+
+	unsigned char	timing;			/* timing specification used */
+
+#define MMC_TIMING_LEGACY	0
+#define MMC_TIMING_MMC_HS	1
+#define MMC_TIMING_SD_HS	2
+#define MMC_TIMING_UHS_SDR12	MMC_TIMING_LEGACY
+#define MMC_TIMING_UHS_SDR25	MMC_TIMING_SD_HS
+#define MMC_TIMING_UHS_SDR50	3
+#define MMC_TIMING_UHS_SDR104	4
+#define MMC_TIMING_UHS_DDR50	5
+#define MMC_TIMING_MMC_HS200	6
+
+#define MMC_SDR_MODE		0
+#define MMC_1_2V_DDR_MODE	1
+#define MMC_1_8V_DDR_MODE	2
+#define MMC_1_2V_SDR_MODE	3
+#define MMC_1_8V_SDR_MODE	4
+};
+
 /** host information */
 struct mci_host {
 	struct device_d *hw_dev;	/**< the host MCI hardware device */
@@ -230,7 +260,7 @@ struct mci_host {
 	/** init the host interface */
 	int (*init)(struct mci_host*, struct device_d*);
 	/** change host interface settings */
-	void (*set_ios)(struct mci_host*, struct device_d*, unsigned, unsigned);
+	void (*set_ios)(struct mci_host*, struct device_d*, struct mci_ios *);
 	/** handle a command */
 	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
 };
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
