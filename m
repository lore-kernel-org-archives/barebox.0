Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GE-0002x7-VL
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:40 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 1A066FFA30B
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:15 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:06 +0200
Message-Id: <1311518949-6990-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 09/12] mci: switch to "struct resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci-core.c   |    4 +-
 drivers/mci/mxs.c        |    4 +-
 drivers/mci/omap_hsmmc.c |    2 +-
 drivers/mci/s3c.c        |  105 ++++++++++++++++++++++++++--------------------
 4 files changed, 64 insertions(+), 51 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 1c16cf1..0611ce6 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1231,8 +1231,8 @@ static int mci_card_probe(struct device_d *mci_dev)
 	p->priv = mci_dev;
 
 	strcpy(disk_dev->name, "disk");
-	disk_dev->size = mci->capacity;
-	disk_dev->map_base = 0;
+	disk_dev->resource[0].size = mci->capacity;
+	disk_dev->resource[0].start = 0;
 	disk_dev->platform_data = p;
 
 	register_device(disk_dev);
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index c6ae1cb..a477620 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -702,7 +702,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	host->send_cmd = mxs_mci_request,
 	host->set_ios = mxs_mci_set_ios,
 	host->init = mxs_mci_initialize,
-	mxs_mci->regs = (void *)hw_dev->map_base;
+	mxs_mci->regs = dev_request_mem_region(dev, 0);
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
@@ -713,7 +713,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 #endif
 #ifdef CONFIG_ARCH_IMX28
 	/* one dedicated clock per unit */
-	switch (hw_dev->map_base) {
+	switch (hw_dev->resource[0].start) {
 	case IMX_SSP0_BASE:
 		mxs_mci->index = 0;
 		break;
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 0799297..f47f190 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -558,7 +558,7 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.init = mmc_init_setup;
 	hsmmc->mci.host_caps = MMC_MODE_4BIT | MMC_MODE_HS_52MHz | MMC_MODE_HS;
 
-	hsmmc->base = (struct hsmmc *)dev->map_base;
+	hsmmc->base = dev_request_mem_region(dev, 0);
 
 	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 9810683..c621445 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -153,6 +153,7 @@
 #define SDIDATA 0x40
 
 struct s3c_mci_host {
+	void __iomem	*base;
 	int		bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
 	unsigned	clock;	/* current clock in Hz */
 	unsigned	data_size;	/* data transfer in bytes */
@@ -211,6 +212,7 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 {
 	unsigned clock;
 	uint32_t mci_psc;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	if (nc == 0)
 		return 0;
@@ -224,7 +226,7 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		pr_warning("SD/MMC clock might be too high!\n");
 	}
 
-	writel(mci_psc - 1, hw_dev->map_base + SDIPRE);
+	writel(mci_psc - 1, host_data->base + SDIPRE);
 
 	return clock / mci_psc;
 }
@@ -237,10 +239,12 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
  */
 static void s3c_mci_reset(struct device_d *hw_dev)
 {
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
+
 	/* reset the hardware */
-	writel(SDICON_SDRESET, hw_dev->map_base + SDICON);
+	writel(SDICON_SDRESET, host_data->base + SDICON);
 	/* wait until reset it finished */
-	while (readl(hw_dev->map_base + SDICON) & SDICON_SDRESET)
+	while (readl(host_data->base + SDICON) & SDICON_SDRESET)
 		;
 }
 
@@ -257,9 +261,9 @@ static int s3c_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
 
 	/* restore last settings */
 	host_data->clock = s3c_setup_clock_speed(hw_dev, host_data->clock);
-	writel(0x007FFFFF, hw_dev->map_base + SDITIMER);
-	writel(SDICON_MMCCLOCK, hw_dev->map_base + SDICON);
-	writel(512, hw_dev->map_base + SDIBSIZE);
+	writel(0x007FFFFF, host_data->base + SDITIMER);
+	writel(SDICON_MMCCLOCK, host_data->base + SDICON);
+	writel(512, host_data->base + SDIBSIZE);
 
 	return 0;
 }
@@ -335,11 +339,12 @@ static uint32_t s3c_prepare_data_setup(struct device_d *hw_dev, unsigned data_fl
 static int s3c_terminate_transfer(struct device_d *hw_dev)
 {
 	unsigned stoptries = 3;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
-	while (readl(hw_dev->map_base + SDIDSTA) & (SDIDSTA_TXDATAON | SDIDSTA_RXDATAON)) {
+	while (readl(host_data->base + SDIDSTA) & (SDIDSTA_TXDATAON | SDIDSTA_RXDATAON)) {
 		pr_debug("Transfer still in progress.\n");
 
-		writel(SDIDCON_STOP, hw_dev->map_base + SDIDCON);
+		writel(SDIDCON_STOP, host_data->base + SDIDCON);
 		s3c_mci_initialize(hw_dev, NULL);
 
 		if ((stoptries--) == 0) {
@@ -360,12 +365,13 @@ static int s3c_terminate_transfer(struct device_d *hw_dev)
 static int s3c_prepare_data_transfer(struct device_d *hw_dev, struct mci_data *data)
 {
 	uint32_t reg;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
-	writel(data->blocksize, hw_dev->map_base + SDIBSIZE);
+	writel(data->blocksize, host_data->base + SDIBSIZE);
 	reg = s3c_prepare_data_setup(hw_dev, data->flags);
 	reg |= data->blocks & SDIDCON_BLKNUM;
-	writel(reg, hw_dev->map_base + SDIDCON);
-	writel(0x007FFFFF, hw_dev->map_base + SDITIMER);
+	writel(reg, host_data->base + SDIDCON);
+	writel(0x007FFFFF, host_data->base + SDITIMER);
 
 	return 0;
 }
@@ -382,34 +388,35 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
 {
 	uint32_t reg, t1;
 	int rc;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
-	writel(0x007FFFFF, hw_dev->map_base + SDITIMER);
+	writel(0x007FFFFF, host_data->base + SDITIMER);
 
 	/* setup argument */
-	writel(cmd->cmdarg, hw_dev->map_base + SDICMDARG);
+	writel(cmd->cmdarg, host_data->base + SDICMDARG);
 
 	/* setup command and transfer characteristic */
 	reg = s3c_prepare_command_setup(cmd->resp_type, data != NULL ? data->flags : 0);
 	reg |= cmd->cmdidx & SDICMDCON_INDEX;
 
 	/* run the command right now */
-	writel(reg | SDICMDCON_CMDSTART, hw_dev->map_base + SDICMDCON);
-	t1 = readl(hw_dev->map_base + SDICMDSTAT);
+	writel(reg | SDICMDCON_CMDSTART, host_data->base + SDICMDCON);
+	t1 = readl(host_data->base + SDICMDSTAT);
 	/* wait until command is done */
 	while (1) {
-		reg = readl(hw_dev->map_base + SDICMDSTAT);
+		reg = readl(host_data->base + SDICMDSTAT);
 		/* done? */
 		if (cmd->resp_type & MMC_RSP_PRESENT) {
 			if (reg & SDICMDSTAT_RSPFIN) {
 				writel(SDICMDSTAT_RSPFIN,
-					hw_dev->map_base + SDICMDSTAT);
+					host_data->base + SDICMDSTAT);
 				rc = 0;
 				break;
 			}
 		} else {
 			if (reg & SDICMDSTAT_CMDSENT) {
 					writel(SDICMDSTAT_CMDSENT,
-						hw_dev->map_base + SDICMDSTAT);
+						host_data->base + SDICMDSTAT);
 					rc = 0;
 					break;
 			}
@@ -417,17 +424,17 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
 		/* timeout? */
 		if (reg & SDICMDSTAT_CMDTIMEOUT) {
 			writel(SDICMDSTAT_CMDTIMEOUT,
-				hw_dev->map_base + SDICMDSTAT);
+				host_data->base + SDICMDSTAT);
 			rc = -ETIMEDOUT;
 			break;
 		}
 	}
 
 	if ((rc == 0) && (cmd->resp_type & MMC_RSP_PRESENT)) {
-		cmd->response[0] = readl(hw_dev->map_base + SDIRSP0);
-		cmd->response[1] = readl(hw_dev->map_base + SDIRSP1);
-		cmd->response[2] = readl(hw_dev->map_base + SDIRSP2);
-		cmd->response[3] = readl(hw_dev->map_base + SDIRSP3);
+		cmd->response[0] = readl(host_data->base + SDIRSP0);
+		cmd->response[1] = readl(host_data->base + SDIRSP1);
+		cmd->response[2] = readl(host_data->base + SDIRSP2);
+		cmd->response[3] = readl(host_data->base + SDIRSP3);
 	}
 	/* do not disable the clock! */
 	return rc;
@@ -443,14 +450,15 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
 static int s3c_prepare_engine(struct device_d *hw_dev)
 {
 	int rc;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	rc = s3c_terminate_transfer(hw_dev);
 	if (rc != 0)
 		return rc;
 
-	writel(-1, hw_dev->map_base + SDICMDSTAT);
-	writel(-1, hw_dev->map_base + SDIDSTA);
-	writel(-1, hw_dev->map_base + SDIFSTA);
+	writel(-1, host_data->base + SDICMDSTAT);
+	writel(-1, host_data->base + SDIDSTA);
+	writel(-1, host_data->base + SDIFSTA);
 
 	return 0;
 }
@@ -487,6 +495,7 @@ static int s3c_mci_read_block(struct device_d *hw_dev, struct mci_data *data)
 {
 	uint32_t *p;
 	unsigned cnt, data_size;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 #define READ_REASON_TO_FAIL (SDIDSTA_CRCFAIL | SDIDSTA_RXCRCFAIL | SDIDSTA_DATATIMEOUT)
 
@@ -496,23 +505,23 @@ static int s3c_mci_read_block(struct device_d *hw_dev, struct mci_data *data)
 	while (data_size > 0) {
 
 		/* serious error? */
-		if (readl(hw_dev->map_base + SDIDSTA) & READ_REASON_TO_FAIL) {
+		if (readl(host_data->base + SDIDSTA) & READ_REASON_TO_FAIL) {
 			pr_err("Failed while reading data\n");
 			return -EIO;
 		}
 
 		/* now check the FIFO status */
-		if (readl(hw_dev->map_base + SDIFSTA) & SDIFSTA_FIFOFAIL) {
+		if (readl(host_data->base + SDIFSTA) & SDIFSTA_FIFOFAIL) {
 			pr_err("Data loss due to FIFO overflow when reading\n");
 			return -EIO;
 		}
 
 		/* we only want to read full words */
-		cnt = (readl(hw_dev->map_base + SDIFSTA) & SDIFSTA_COUNTMASK) >> 2;
+		cnt = (readl(host_data->base + SDIFSTA) & SDIFSTA_COUNTMASK) >> 2;
 
 		/* read one chunk of data from the FIFO */
 		while (cnt--) {
-			*p = readl(hw_dev->map_base + SDIDATA);
+			*p = readl(host_data->base + SDIDATA);
 			p++;
 			if (data_size >= 4)
 				data_size -= 4;
@@ -542,6 +551,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	const uint32_t *p = (const uint32_t*)data->src;
 	unsigned cnt, data_size;
 	uint32_t reg;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 #define WRITE_REASON_TO_FAIL (SDIDSTA_CRCFAIL | SDIDSTA_DATATIMEOUT)
 
@@ -553,7 +563,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	 */
 	cnt = 16;
 	while (cnt--) {
-		writel(*p, hw_dev->map_base + SDIDATA);
+		writel(*p, host_data->base + SDIDATA);
 		p++;
 		if (data_size >= 4)
 			data_size -= 4;
@@ -566,7 +576,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	/* data is now in place and waits for transmitt. Start the command right now */
 	s3c_send_command(hw_dev, cmd, data);
 
-	if ((reg = readl(hw_dev->map_base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
+	if ((reg = readl(host_data->base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
 		pr_err("Command fails immediatly due to FIFO underrun when writing %08X\n",
 			reg);
 		return -EIO;
@@ -574,24 +584,24 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 
 	while (data_size > 0) {
 
-		if (readl(hw_dev->map_base + SDIDSTA) & WRITE_REASON_TO_FAIL) {
+		if (readl(host_data->base + SDIDSTA) & WRITE_REASON_TO_FAIL) {
 			pr_err("Failed writing data\n");
 			return -EIO;
 		}
 
 		/* now check the FIFO status */
-		if ((reg = readl(hw_dev->map_base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
+		if ((reg = readl(host_data->base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
 			pr_err("Data loss due to FIFO underrun when writing %08X\n",
 					reg);
 			return -EIO;
 		}
 
 		/* we only want to write full words */
-		cnt = 16 - (((readl(hw_dev->map_base + SDIFSTA) & SDIFSTA_COUNTMASK) + 3) >> 2);
+		cnt = 16 - (((readl(host_data->base + SDIFSTA) & SDIFSTA_COUNTMASK) + 3) >> 2);
 
 		/* fill the FIFO if it has free entries */
 		while (cnt--) {
-			writel(*p, hw_dev->map_base + SDIDATA);
+			writel(*p, host_data->base + SDIDATA);
 			p++;
 			if (data_size >= 4)
 				data_size -= 4;
@@ -616,6 +626,7 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
 	int rc;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	rc = s3c_prepare_engine(hw_dev);
 	if (rc != 0)
@@ -629,7 +640,7 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 		s3c_send_command(hw_dev, cmd, data);
 		rc = s3c_mci_read_block(hw_dev, data);
 		if (rc == 0) {
-			while (!(readl(hw_dev->map_base + SDIDSTA) & SDIDSTA_XFERFINISH))
+			while (!(readl(host_data->base + SDIDSTA) & SDIDSTA_XFERFINISH))
 				;
 		} else
 			s3c_terminate_transfer(hw_dev);
@@ -638,12 +649,12 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	if (data->flags & MMC_DATA_WRITE) {
 		rc = s3c_mci_write_block(hw_dev, cmd, data);
 		if (rc == 0) {
-			while (!(readl(hw_dev->map_base + SDIDSTA) & SDIDSTA_XFERFINISH))
+			while (!(readl(host_data->base + SDIDSTA) & SDIDSTA_XFERFINISH))
 				;
 		} else
 			s3c_terminate_transfer(hw_dev);
 	}
-	writel(0, hw_dev->map_base + SDIDCON);
+	writel(0, host_data->base + SDIDCON);
 
 	return rc;
 }
@@ -674,11 +685,12 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
+	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 	int rc;
 
 	/* enable clock */
-	writel(readl(hw_dev->map_base + SDICON) | SDICON_CLKEN,
-		hw_dev->map_base + SDICON);
+	writel(readl(host_data->base + SDICON) | SDICON_CLKEN,
+		host_data->base + SDICON);
 
 	if ((cmd->resp_type == 0) || (data == NULL))
 		rc = s3c_mci_std_cmds(hw_dev, cmd);
@@ -688,8 +700,8 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 	s3c_finish_request(hw_dev);
 
 	/* disable clock */
-	writel(readl(hw_dev->map_base + SDICON) & ~SDICON_CLKEN,
-		hw_dev->map_base + SDICON);
+	writel(readl(host_data->base + SDICON) & ~SDICON_CLKEN,
+		host_data->base + SDICON);
 	return rc;
 }
 
@@ -720,7 +732,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 		break;
 	}
 
-	reg = readl(hw_dev->map_base + SDICON);
+	reg = readl(host_data->base + SDICON);
 	if (clock) {
 		/* setup the IO clock frequency and enable it */
 		host->clock = host_data->clock = s3c_setup_clock_speed(hw_dev, clock);
@@ -729,7 +741,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 		reg &= ~SDICON_CLKEN;	/* disable the clock */
 		host->clock = host_data->clock = 0;
 	}
-	writel(reg, hw_dev->map_base + SDICON);
+	writel(reg, host_data->base + SDICON);
 
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n",
 		host->bus_width, host->clock);
@@ -783,6 +795,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	}
 
 	hw_dev->priv = &host_data;
+	host_data.base = dev_request_mem_region(hw_dev, 0);
 	mci_pdata.hw_dev = hw_dev;
 
 	/* feed forward the platform specific values */
@@ -795,7 +808,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	 * Start the clock to let the engine and the card finishes its startup
 	 */
 	host_data.clock = s3c_setup_clock_speed(hw_dev, mci_pdata.f_min);
-	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, hw_dev->map_base + SDICON);
+	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, host_data.base + SDICON);
 
 	return mci_register(&mci_pdata);
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
