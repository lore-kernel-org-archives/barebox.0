Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-000860-CJ
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:44:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:53 +0100
Message-Id: <1298886235-1769-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] mci mxs: make the mci_host a member of mxs_mci_host
To: barebox@lists.infradead.org

This allows for more type safety. passing a struct device_d
internally in the driver is not a good idea. Also, this
patch adds a void __iomem *regs to mxs_mci_host. dev->map_base
should not be used for register accesses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c |  196 ++++++++++++++++++++++++++--------------------------
 1 files changed, 98 insertions(+), 98 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index bc177f5..7f8f3f8 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -166,6 +166,8 @@
 #endif
 
 struct mxs_mci_host {
+	struct mci_host	host;
+	void __iomem	*regs;
 	unsigned	clock;	/* current clock speed in Hz ("0" if disabled) */
 	unsigned	index;
 #ifdef CONFIG_MCI_INFO
@@ -175,16 +177,16 @@ struct mxs_mci_host {
 	int		bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
 };
 
+#define to_mxs_mci(mxs) container_of(mxs, struct mxs_mci_host, host)
+
 /**
  * Get the SSP clock rate
  * @param hw_dev Host interface device instance
  * @return Unit's clock in [Hz]
  */
-static unsigned mxs_mci_get_unit_clock(struct device_d *hw_dev)
+static unsigned mxs_mci_get_unit_clock(struct mxs_mci_host *mxs_mci)
 {
-	struct mxs_mci_host *host_data = GET_HOST_DATA(hw_dev);
-
-	return imx_get_sspclk(host_data->index);
+	return imx_get_sspclk(mxs_mci->index);
 }
 
 /**
@@ -193,7 +195,7 @@ static unsigned mxs_mci_get_unit_clock(struct device_d *hw_dev)
  * @param cmd Command description
  * @return Response bytes count, -EINVAL for unsupported response types
  */
-static int mxs_mci_get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
+static int mxs_mci_get_cards_response(struct mxs_mci_host *mxs_mci, struct mci_cmd *cmd)
 {
 	switch (cmd->resp_type) {
 	case MMC_RSP_NONE:
@@ -202,14 +204,14 @@ static int mxs_mci_get_cards_response(struct device_d *hw_dev, struct mci_cmd *c
 	case MMC_RSP_R1:
 	case MMC_RSP_R1b:
 	case MMC_RSP_R3:
-		cmd->response[0] = readl(hw_dev->map_base + HW_SSP_SDRESP0);
+		cmd->response[0] = readl(mxs_mci->regs + HW_SSP_SDRESP0);
 		return 1;
 
 	case MMC_RSP_R2:
-		cmd->response[3] = readl(hw_dev->map_base + HW_SSP_SDRESP0);
-		cmd->response[2] = readl(hw_dev->map_base + HW_SSP_SDRESP1);
-		cmd->response[1] = readl(hw_dev->map_base + HW_SSP_SDRESP2);
-		cmd->response[0] = readl(hw_dev->map_base + HW_SSP_SDRESP3);
+		cmd->response[3] = readl(mxs_mci->regs + HW_SSP_SDRESP0);
+		cmd->response[2] = readl(mxs_mci->regs + HW_SSP_SDRESP1);
+		cmd->response[1] = readl(mxs_mci->regs + HW_SSP_SDRESP2);
+		cmd->response[0] = readl(mxs_mci->regs + HW_SSP_SDRESP3);
 		return 4;
 	}
 
@@ -222,10 +224,10 @@ static int mxs_mci_get_cards_response(struct device_d *hw_dev, struct mci_cmd *c
  *
  * Can also stop the clock to save power
  */
-static void mxs_mci_finish_request(struct device_d *hw_dev)
+static void mxs_mci_finish_request(struct mxs_mci_host *mxs_mci)
 {
 	/* stop the engines (normaly already done) */
-	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 8);
+	writel(SSP_CTRL0_RUN, mxs_mci->regs + HW_SSP_CTRL0 + 8);
 }
 
 /**
@@ -260,13 +262,13 @@ static int mxs_mci_get_cmd_error(unsigned status)
  * @param hw_dev Host interface device instance
  * @param to Timeout value in MCI card's bus clocks
  */
-static void mxs_mci_setup_timeout(struct device_d *hw_dev, unsigned to)
+static void mxs_mci_setup_timeout(struct mxs_mci_host *mxs_mci, unsigned to)
 {
 	uint32_t reg;
 
-	reg = readl(hw_dev->map_base + HW_SSP_TIMING) & ~SSP_TIMING_TIMEOUT_MASK;
+	reg = readl(mxs_mci->regs + HW_SSP_TIMING) & ~SSP_TIMING_TIMEOUT_MASK;
 	reg |= SSP_TIMING_TIMEOUT(to);
-	writel(reg, hw_dev->map_base + HW_SSP_TIMING);
+	writel(reg, mxs_mci->regs + HW_SSP_TIMING);
 }
 
 /**
@@ -280,7 +282,7 @@ static void mxs_mci_setup_timeout(struct device_d *hw_dev, unsigned to)
  * may fail whith high clock speeds. If you receive -EIO errors you can try
  * again with reduced clock speeds.
  */
-static int mxs_mci_read_data(struct device_d *hw_dev, void *buffer, unsigned length)
+static int mxs_mci_read_data(struct mxs_mci_host *mxs_mci, void *buffer, unsigned length)
 {
 	uint32_t *p = buffer;
 
@@ -291,10 +293,10 @@ static int mxs_mci_read_data(struct device_d *hw_dev, void *buffer, unsigned len
 	}
 
 	while ((length != 0) &&
-		((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
+		((readl(mxs_mci->regs + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
 		/* TODO sort out FIFO overflows and emit -EOI for this case */
-		if ((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_FIFO_EMPTY) == 0) {
-			*p = readl(hw_dev->map_base + HW_SSP_DATA);
+		if ((readl(mxs_mci->regs + HW_SSP_STATUS) & SSP_STATUS_FIFO_EMPTY) == 0) {
+			*p = readl(mxs_mci->regs + HW_SSP_DATA);
 			p++;
 			length -= 4;
 		}
@@ -318,7 +320,7 @@ static int mxs_mci_read_data(struct device_d *hw_dev, void *buffer, unsigned len
  * may fail with high clock speeds. If you receive -EIO errors you can try
  * again with reduced clock speeds.
  */
-static int mxs_mci_write_data(struct device_d *hw_dev, const void *buffer, unsigned length)
+static int mxs_mci_write_data(struct mxs_mci_host *mxs_mci, const void *buffer, unsigned length)
 {
 	const uint32_t *p = buffer;
 
@@ -329,10 +331,10 @@ static int mxs_mci_write_data(struct device_d *hw_dev, const void *buffer, unsig
 	}
 
 	while ((length != 0) &&
-		((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
+		((readl(mxs_mci->regs + HW_SSP_STATUS) & SSP_STATUS_ERROR) == 0)) {
 		/* TODO sort out FIFO overflows and emit -EOI for this case */
-		if ((readl(hw_dev->map_base + HW_SSP_STATUS) & SSP_STATUS_FIFO_FULL) == 0) {
-			writel(*p, hw_dev->map_base + HW_SSP_DATA);
+		if ((readl(mxs_mci->regs + HW_SSP_STATUS) & SSP_STATUS_FIFO_FULL) == 0) {
+			writel(*p, mxs_mci->regs + HW_SSP_DATA);
 			p++;
 			length -= 4;
 		}
@@ -349,7 +351,7 @@ static int mxs_mci_write_data(struct device_d *hw_dev, const void *buffer, unsig
  * @param data Data transfer description (might be NULL)
  * @return 0 on success
  */
-static int mxs_mci_transfer_data(struct device_d *hw_dev, struct mci_data *data)
+static int mxs_mci_transfer_data(struct mxs_mci_host *mxs_mci, struct mci_data *data)
 {
 	unsigned length;
 
@@ -377,13 +379,13 @@ static int mxs_mci_transfer_data(struct device_d *hw_dev, struct mci_data *data)
 	 *
 	 * Start the transaction right now
 	 */
-	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 4);
+	writel(SSP_CTRL0_RUN, mxs_mci->regs + HW_SSP_CTRL0 + 4);
 
 	if (data != NULL) {
 		if (data->flags & MMC_DATA_READ)
-			return mxs_mci_read_data(hw_dev, data->dest, length);
+			return mxs_mci_read_data(mxs_mci, data->dest, length);
 		else
-			return mxs_mci_write_data(hw_dev, data->src, length);
+			return mxs_mci_write_data(mxs_mci, data->src, length);
 	}
 
 	return 0;
@@ -428,33 +430,33 @@ static uint32_t mxs_mci_prepare_transfer_setup(unsigned cmd_flags, unsigned data
  * - "broadcast commands with response (BCR)"
  * - "addressed command (AC)" with response, but without data
  */
-static int mxs_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
+static int mxs_mci_std_cmds(struct mxs_mci_host *mxs_mci, struct mci_cmd *cmd)
 {
 	/* setup command and transfer parameters */
 	writel(mxs_mci_prepare_transfer_setup(cmd->resp_type, 0) |
-		SSP_CTRL0_ENABLE, hw_dev->map_base + HW_SSP_CTRL0);
+		SSP_CTRL0_ENABLE, mxs_mci->regs + HW_SSP_CTRL0);
 
 	/* prepare the command, when no response is expected add a few trailing clocks */
 	writel(SSP_CMD0_CMD(cmd->cmdidx) |
 		(cmd->resp_type & MMC_RSP_PRESENT ? 0 : SSP_CMD0_APPEND_8CYC),
-		hw_dev->map_base + HW_SSP_CMD0);
+		mxs_mci->regs + HW_SSP_CMD0);
 
 	/* prepare command's arguments */
-	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
+	writel(cmd->cmdarg, mxs_mci->regs + HW_SSP_CMD1);
 
-	mxs_mci_setup_timeout(hw_dev, 0xffff);
+	mxs_mci_setup_timeout(mxs_mci, 0xffff);
 
 	/* start the transfer */
-	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 4);
+	writel(SSP_CTRL0_RUN, mxs_mci->regs + HW_SSP_CTRL0 + 4);
 
 	/* wait until finished */
-	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
+	while (readl(mxs_mci->regs + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
 		;
 
 	if (cmd->resp_type & MMC_RSP_PRESENT)
-		mxs_mci_get_cards_response(hw_dev, cmd);
+		mxs_mci_get_cards_response(mxs_mci, cmd);
 
-	return mxs_mci_get_cmd_error(readl(hw_dev->map_base + HW_SSP_STATUS));
+	return mxs_mci_get_cmd_error(readl(mxs_mci->regs + HW_SSP_STATUS));
 }
 
 /**
@@ -464,10 +466,9 @@ static int mxs_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
  * @param data The data information (buffer, direction aso.) May be NULL
  * @return 0 on success
  */
-static int mxs_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
+static int mxs_mci_adtc(struct mxs_mci_host *mxs_mci, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
-	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
 	uint32_t xfer_cnt, log2blocksize, block_cnt;
 	int err;
 
@@ -483,52 +484,52 @@ static int mxs_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	/* setup command and transfer parameters */
 #ifdef CONFIG_ARCH_IMX23
 	writel(mxs_mci_prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
-		SSP_CTRL0_BUS_WIDTH(host_data->bus_width) |
+		SSP_CTRL0_BUS_WIDTH(mxs_mci->bus_width) |
 		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
 		SSP_CTRL0_ENABLE |
 		SSP_CTRL0_XFER_COUNT(xfer_cnt), /* byte count to be transfered */
-		hw_dev->map_base + HW_SSP_CTRL0);
+		mxs_mci->regs + HW_SSP_CTRL0);
 
 	/* prepare the command and the transfered data count */
 	writel(SSP_CMD0_CMD(cmd->cmdidx) |
 		SSP_CMD0_BLOCK_SIZE(log2blocksize) |
 		SSP_CMD0_BLOCK_COUNT(block_cnt) |
 		(cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ? SSP_CMD0_APPEND_8CYC : 0),
-		hw_dev->map_base + HW_SSP_CMD0);
+		mxs_mci->regs + HW_SSP_CMD0);
 #endif
 #ifdef CONFIG_ARCH_IMX28
 	writel(mxs_mci_prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
-		SSP_CTRL0_BUS_WIDTH(host_data->bus_width) |
+		SSP_CTRL0_BUS_WIDTH(mxs_mci->bus_width) |
 		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
 		SSP_CTRL0_ENABLE,
-		hw_dev->map_base + HW_SSP_CTRL0);
-	writel(xfer_cnt, hw_dev->map_base + HW_SSP_XFER_COUNT);
+		mxs_mci->regs + HW_SSP_CTRL0);
+	writel(xfer_cnt, mxs_mci->regs + HW_SSP_XFER_COUNT);
 
 	/* prepare the command and the transfered data count */
 	writel(SSP_CMD0_CMD(cmd->cmdidx) |
 		(cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ? SSP_CMD0_APPEND_8CYC : 0),
-		hw_dev->map_base + HW_SSP_CMD0);
+		mxs_mci->regs + HW_SSP_CMD0);
 	writel(SSP_BLOCK_SIZE(log2blocksize) |
 		SSP_BLOCK_COUNT(block_cnt),
-		hw_dev->map_base + HW_SSP_BLOCK_SIZE);
+		mxs_mci->regs + HW_SSP_BLOCK_SIZE);
 #endif
 
 	/* prepare command's arguments */
-	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
+	writel(cmd->cmdarg, mxs_mci->regs + HW_SSP_CMD1);
 
-	mxs_mci_setup_timeout(hw_dev, 0xffff);
+	mxs_mci_setup_timeout(mxs_mci, 0xffff);
 
-	err = mxs_mci_transfer_data(hw_dev, data);
+	err = mxs_mci_transfer_data(mxs_mci, data);
 	if (err != 0) {
 		pr_debug(" Transfering data failed\n");
 		return err;
 	}
 
 	/* wait until finished */
-	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
+	while (readl(mxs_mci->regs + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
 		;
 
-	mxs_mci_get_cards_response(hw_dev, cmd);
+	mxs_mci_get_cards_response(mxs_mci, cmd);
 
 	return 0;
 }
@@ -554,7 +555,7 @@ static int mxs_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
  * @note Up to "SSP unit DIV" the outer world must care. This routine only
  * handles the "SSP DIV".
  */
-static unsigned mxs_mci_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
+static unsigned mxs_mci_setup_clock_speed(struct mxs_mci_host *mxs_mci, unsigned nc)
 {
 	unsigned ssp, div, rate, reg;
 
@@ -563,7 +564,7 @@ static unsigned mxs_mci_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	ssp = mxs_mci_get_unit_clock(hw_dev);
+	ssp = mxs_mci_get_unit_clock(mxs_mci);
 
 	for (div = 2; div < 255; div += 2) {
 		rate = DIV_ROUND_CLOSEST(DIV_ROUND_CLOSEST(ssp, nc), div);
@@ -575,9 +576,9 @@ static unsigned mxs_mci_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	reg = readl(hw_dev->map_base + HW_SSP_TIMING) & SSP_TIMING_TIMEOUT_MASK;
+	reg = readl(mxs_mci->regs + HW_SSP_TIMING) & SSP_TIMING_TIMEOUT_MASK;
 	reg |= SSP_TIMING_CLOCK_DIVIDE(div) | SSP_TIMING_CLOCK_RATE(rate - 1);
-	writel(reg, hw_dev->map_base + HW_SSP_TIMING);
+	writel(reg, mxs_mci->regs + HW_SSP_TIMING);
 
 	return ssp / div / rate;
 }
@@ -588,10 +589,10 @@ static unsigned mxs_mci_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
  *
  * This will reset everything in all registers of this unit! (FIXME)
  */
-static void mxs_mci_reset(struct device_d *hw_dev)
+static void mxs_mci_reset(struct mxs_mci_host *mxs_mci)
 {
-	writel(SSP_CTRL0_SFTRST, hw_dev->map_base + HW_SSP_CTRL0 + 8);
-	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_SFTRST)
+	writel(SSP_CTRL0_SFTRST, mxs_mci->regs + HW_SSP_CTRL0 + 8);
+	while (readl(mxs_mci->regs + HW_SSP_CTRL0) & SSP_CTRL0_SFTRST)
 		;
 }
 
@@ -605,24 +606,23 @@ static void mxs_mci_reset(struct device_d *hw_dev)
  */
 static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
 {
-	struct device_d *hw_dev = host->hw_dev;
-	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 
 	/* enable the clock to this unit to be able to reset it */
-	writel(SSP_CTRL0_CLKGATE, hw_dev->map_base + HW_SSP_CTRL0 + 8);
+	writel(SSP_CTRL0_CLKGATE, mxs_mci->regs + HW_SSP_CTRL0 + 8);
 
 	/* reset the unit */
-	mxs_mci_reset(hw_dev);
+	mxs_mci_reset(mxs_mci);
 
 	/* restore the last settings */
-	host->clock = host_data->clock = mxs_mci_setup_clock_speed(hw_dev, host->clock);
-	mxs_mci_setup_timeout(hw_dev, 0xffff);
+	host->clock = mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, host->clock);
+	mxs_mci_setup_timeout(mxs_mci, 0xffff);
 	writel(SSP_CTRL0_IGNORE_CRC |
-		SSP_CTRL0_BUS_WIDTH(host_data->bus_width),
-		hw_dev->map_base + HW_SSP_CTRL0);
+		SSP_CTRL0_BUS_WIDTH(mxs_mci->bus_width),
+		mxs_mci->regs + HW_SSP_CTRL0);
 	writel(SSP_CTRL1_POLARITY |
 		SSP_CTRL1_SSP_MODE(3) |
-		SSP_CTRL1_WORD_LENGTH(7), hw_dev->map_base + HW_SSP_CTRL1);
+		SSP_CTRL1_WORD_LENGTH(7), mxs_mci->regs + HW_SSP_CTRL1);
 
 	return 0;
 }
@@ -637,15 +637,15 @@ static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
 static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
-	struct device_d *hw_dev = host->hw_dev;
+	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 	int rc;
 
 	if ((cmd->resp_type == 0) || (data == NULL))
-		rc = mxs_mci_std_cmds(hw_dev, cmd);
+		rc = mxs_mci_std_cmds(mxs_mci, cmd);
 	else
-		rc = mxs_mci_adtc(hw_dev, cmd, data);	/* with response and data */
+		rc = mxs_mci_adtc(mxs_mci, cmd, data);	/* with response and data */
 
-	mxs_mci_finish_request(hw_dev);	/* TODO */
+	mxs_mci_finish_request(mxs_mci);	/* TODO */
 	return rc;
 }
 
@@ -661,25 +661,24 @@ static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd,
 static void mxs_mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
 			unsigned bus_width, unsigned clock)
 {
-	struct device_d *hw_dev = host->hw_dev;
-	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 
 	switch (bus_width) {
 	case 8:
-		host_data->bus_width = 2;
+		mxs_mci->bus_width = 2;
 		host->bus_width = 8;	/* 8 bit is possible */
 		break;
 	case 4:
-		host_data->bus_width = 1;
+		mxs_mci->bus_width = 1;
 		host->bus_width = 4;	/* 4 bit is possible */
 		break;
 	default:
-		host_data->bus_width = 0;
+		mxs_mci->bus_width = 0;
 		host->bus_width = 1;	/* 1 bit is possible */
 		break;
 	}
 
-	host->clock = host_data->clock = mxs_mci_setup_clock_speed(hw_dev, clock);
+	host->clock = mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, clock);
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n", host->bus_width,
 			host->clock);
 }
@@ -691,13 +690,13 @@ const unsigned char bus_width[3] = { 1, 4, 8 };
 
 static void mxs_mci_info(struct device_d *hw_dev)
 {
-	struct mxs_mci_host *host_data = GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *mxs_mci = GET_HOST_DATA(hw_dev);
 
 	printf(" Interface\n");
-	printf("  Min. bus clock: %u Hz\n", host_data->f_min);
-	printf("  Max. bus clock: %u Hz\n", host_data->f_max);
-	printf("  Current bus clock: %u Hz\n", host_data->clock);
-	printf("  Bus width: %u bit\n", bus_width[host_data->bus_width]);
+	printf("  Min. bus clock: %u Hz\n", mxs_mci->f_min);
+	printf("  Max. bus clock: %u Hz\n", mxs_mci->f_max);
+	printf("  Current bus clock: %u Hz\n", mxs_mci->clock);
+	printf("  Bus width: %u bit\n", bus_width[mxs_mci->bus_width]);
 	printf("\n");
 }
 #endif
@@ -705,7 +704,7 @@ static void mxs_mci_info(struct device_d *hw_dev)
 static int mxs_mci_probe(struct device_d *hw_dev)
 {
 	struct mxs_mci_platform_data *pd = hw_dev->platform_data;
-	struct mxs_mci_host *host_data;
+	struct mxs_mci_host *mxs_mci;
 	struct mci_host *host;
 
 	if (hw_dev->platform_data == NULL) {
@@ -713,62 +712,63 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 		return -EINVAL;
 	}
 
-	host = xzalloc(sizeof(struct mxs_mci_host) + sizeof(struct mci_host));
-	host_data = (struct mxs_mci_host*)&host[1];
+	mxs_mci = xzalloc(sizeof(*mxs_mci));
+	host = &mxs_mci->host;
 
-	hw_dev->priv = host_data;
+	hw_dev->priv = mxs_mci;
 	host->hw_dev = hw_dev;
 	host->send_cmd = mxs_mci_request,
 	host->set_ios = mxs_mci_set_ios,
 	host->init = mxs_mci_initialize,
+	mxs_mci->regs = (void *)hw_dev->map_base;
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
 	host->host_caps = pd->caps;
 
 #ifdef CONFIG_ARCH_IMX23
-	host_data->index = 0;	/* there is only one clock for all */
+	mxs_mci->index = 0;	/* there is only one clock for all */
 #endif
 #ifdef CONFIG_ARCH_IMX28
 	/* one dedicated clock per unit */
 	switch (hw_dev->map_base) {
 	case IMX_SSP0_BASE:
-		host_data->index = 0;
+		mxs_mci->index = 0;
 		break;
 	case IMX_SSP1_BASE:
-		host_data->index = 1;
+		mxs_mci->index = 1;
 		break;
 	case IMX_SSP2_BASE:
-		host_data->index = 2;
+		mxs_mci->index = 2;
 		break;
 	case IMX_SSP3_BASE:
-		host_data->index = 3;
+		mxs_mci->index = 3;
 		break;
 	default:
-		pr_debug("Unknown SSP unit at address 0x%08x\n", hw_dev->map_base);
+		pr_debug("Unknown SSP unit at address 0x%08x\n", mxs_mci->regs);
 		return 0;
 	}
 #endif
 	if (pd->f_min == 0) {
-		host->f_min = mxs_mci_get_unit_clock(hw_dev) / 254 / 256;
+		host->f_min = mxs_mci_get_unit_clock(mxs_mci) / 254 / 256;
 		pr_debug("Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
 		pr_debug("Min. frequency is %u Hz, could be %u Hz\n",
-			host->f_min, mxs_mci_get_unit_clock(hw_dev) / 254 / 256);
+			host->f_min, mxs_mci_get_unit_clock(mxs_mci) / 254 / 256);
 	}
 	if (pd->f_max == 0) {
-		host->f_max = mxs_mci_get_unit_clock(hw_dev) / 2 / 1;
+		host->f_max = mxs_mci_get_unit_clock(mxs_mci) / 2 / 1;
 		pr_debug("Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
 		pr_debug("Max. frequency is %u Hz, could be %u Hz\n",
-			host->f_max, mxs_mci_get_unit_clock(hw_dev) / 2 / 1);
+			host->f_max, mxs_mci_get_unit_clock(mxs_mci) / 2 / 1);
 	}
 
 #ifdef CONFIG_MCI_INFO
-	host_data->f_min = host->f_min;
-	host_data->f_max = host->f_max;
+	mxs_mci->f_min = host->f_min;
+	mxs_mci->f_max = host->f_max;
 #endif
 
 	return mci_register(host);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
