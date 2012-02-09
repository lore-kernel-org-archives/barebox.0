Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZr-0007A5-Mr
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:51 +0100
Message-Id: <1328788438-19717-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/15] mci s3c: pass around the right pointer
To: barebox@lists.infradead.org

The s3c driver passes around a struct device_d * internally in which
it is never interested in. Instead pass around a struct s3c_mci_host
and get rid of all this ugly void * derefs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/s3c.c |  103 +++++++++++++++++++++++------------------------------
 1 files changed, 45 insertions(+), 58 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 44c682e..6648d6f 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -160,13 +160,15 @@ struct s3c_mci_host {
 	unsigned	data_size;	/* data transfer in bytes */
 };
 
+#define to_s3c_host(h)	container_of(h, struct s3c_mci_host, host)
+
 /**
  * Finish a request
  * @param hw_dev Host interface instance
  *
  * Just a little bit paranoia.
  */
-static void s3c_finish_request(struct device_d *hw_dev)
+static void s3c_finish_request(struct s3c_mci_host *host_data)
 {
 	/* TODO ensure the engines are stopped */
 }
@@ -177,11 +179,10 @@ static void s3c_finish_request(struct device_d *hw_dev)
  * @param nc New clock value in Hz (can be 0)
  * @return New clock value (may differ from 'nc')
  */
-static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
+static unsigned s3c_setup_clock_speed(struct s3c_mci_host *host_data, unsigned nc)
 {
 	unsigned clock;
 	uint32_t mci_psc;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	if (nc == 0)
 		return 0;
@@ -206,10 +207,8 @@ static unsigned s3c_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
  *
  * This will reset everything in all registers of this unit!
  */
-static void s3c_mci_reset(struct device_d *hw_dev)
+static void s3c_mci_reset(struct s3c_mci_host *host_data)
 {
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
-
 	/* reset the hardware */
 	writel(SDICON_SDRESET, host_data->base + SDICON);
 	/* wait until reset it finished */
@@ -222,14 +221,12 @@ static void s3c_mci_reset(struct device_d *hw_dev)
  * @param hw_dev Host interface instance
  * @param mci_dev MCI device instance (might be NULL)
  */
-static int s3c_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
+static int s3c_mci_initialize(struct s3c_mci_host *host_data, struct device_d *mci_dev)
 {
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
-
-	s3c_mci_reset(hw_dev);
+	s3c_mci_reset(host_data);
 
 	/* restore last settings */
-	host_data->clock = s3c_setup_clock_speed(hw_dev, host_data->clock);
+	host_data->clock = s3c_setup_clock_speed(host_data, host_data->clock);
 	writel(0x007FFFFF, host_data->base + SDITIMER);
 	writel(SDICON_MMCCLOCK, host_data->base + SDICON);
 	writel(512, host_data->base + SDIBSIZE);
@@ -276,9 +273,8 @@ static uint32_t s3c_prepare_command_setup(unsigned cmd_flags, unsigned data_flag
  * @param data_flags MCI's data flags
  * @return Register bits for this transfer
  */
-static uint32_t s3c_prepare_data_setup(struct device_d *hw_dev, unsigned data_flags)
+static uint32_t s3c_prepare_data_setup(struct s3c_mci_host *host_data, unsigned data_flags)
 {
-	struct s3c_mci_host *host_data = (struct s3c_mci_host*)GET_HOST_DATA(hw_dev);
 	uint32_t reg = SDIDCON_BLOCKMODE;	/* block mode only is supported */
 
 	if (host_data->bus_width == 1)
@@ -305,16 +301,15 @@ static uint32_t s3c_prepare_data_setup(struct device_d *hw_dev, unsigned data_fl
  * Note: Try to stop a running transfer. This should not happen, as all
  * transfers must complete in this driver. But who knows... ;-)
  */
-static int s3c_terminate_transfer(struct device_d *hw_dev)
+static int s3c_terminate_transfer(struct s3c_mci_host *host_data)
 {
 	unsigned stoptries = 3;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	while (readl(host_data->base + SDIDSTA) & (SDIDSTA_TXDATAON | SDIDSTA_RXDATAON)) {
 		pr_debug("Transfer still in progress.\n");
 
 		writel(SDIDCON_STOP, host_data->base + SDIDCON);
-		s3c_mci_initialize(hw_dev, NULL);
+		s3c_mci_initialize(host_data, NULL);
 
 		if ((stoptries--) == 0) {
 			pr_warning("Cannot stop the engine!\n");
@@ -331,13 +326,12 @@ static int s3c_terminate_transfer(struct device_d *hw_dev)
  * @param data The data information (buffer, direction aso.)
  * @return 0 on success
  */
-static int s3c_prepare_data_transfer(struct device_d *hw_dev, struct mci_data *data)
+static int s3c_prepare_data_transfer(struct s3c_mci_host *host_data, struct mci_data *data)
 {
 	uint32_t reg;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	writel(data->blocksize, host_data->base + SDIBSIZE);
-	reg = s3c_prepare_data_setup(hw_dev, data->flags);
+	reg = s3c_prepare_data_setup(host_data, data->flags);
 	reg |= data->blocks & SDIDCON_BLKNUM;
 	writel(reg, host_data->base + SDIDCON);
 	writel(0x007FFFFF, host_data->base + SDITIMER);
@@ -352,12 +346,11 @@ static int s3c_prepare_data_transfer(struct device_d *hw_dev, struct mci_data *d
  * @param data The data information (buffer, direction aso.)
  * @return 0 on success
  */
-static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
+static int s3c_send_command(struct s3c_mci_host *host_data, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
 	uint32_t reg, t1;
 	int rc;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	writel(0x007FFFFF, host_data->base + SDITIMER);
 
@@ -416,12 +409,11 @@ static int s3c_send_command(struct device_d *hw_dev, struct mci_cmd *cmd,
  *
  * FIFO clear is only necessary on 2440, but doesn't hurt on 2410
  */
-static int s3c_prepare_engine(struct device_d *hw_dev)
+static int s3c_prepare_engine(struct s3c_mci_host *host_data)
 {
 	int rc;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
-	rc = s3c_terminate_transfer(hw_dev);
+	rc = s3c_terminate_transfer(host_data);
 	if (rc != 0)
 		return rc;
 
@@ -443,15 +435,15 @@ static int s3c_prepare_engine(struct device_d *hw_dev)
  * - "broadcast commands with response (BCR)"
  * - "addressed command (AC)" with response, but without data
  */
-static int s3c_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
+static int s3c_mci_std_cmds(struct s3c_mci_host *host_data, struct mci_cmd *cmd)
 {
 	int rc;
 
-	rc = s3c_prepare_engine(hw_dev);
+	rc = s3c_prepare_engine(host_data);
 	if (rc != 0)
 		return 0;
 
-	return s3c_send_command(hw_dev, cmd, NULL);
+	return s3c_send_command(host_data, cmd, NULL);
 }
 
 /**
@@ -460,11 +452,10 @@ static int s3c_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
  * @param data The data information (buffer, direction aso.)
  * @return 0 on success
  */
-static int s3c_mci_read_block(struct device_d *hw_dev, struct mci_data *data)
+static int s3c_mci_read_block(struct s3c_mci_host *host_data, struct mci_data *data)
 {
 	uint32_t *p;
 	unsigned cnt, data_size;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 #define READ_REASON_TO_FAIL (SDIDSTA_CRCFAIL | SDIDSTA_RXCRCFAIL | SDIDSTA_DATATIMEOUT)
 
@@ -514,13 +505,12 @@ static int s3c_mci_read_block(struct device_d *hw_dev, struct mci_data *data)
  * We must ensure data in the FIFO when the command phase changes into the
  * data phase. To ensure this, the FIFO gets filled first, then the command.
  */
-static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
+static int s3c_mci_write_block(struct s3c_mci_host *host_data, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
 	const uint32_t *p = (const uint32_t*)data->src;
 	unsigned cnt, data_size;
 	uint32_t reg;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 #define WRITE_REASON_TO_FAIL (SDIDSTA_CRCFAIL | SDIDSTA_DATATIMEOUT)
 
@@ -543,7 +533,7 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
 	}
 
 	/* data is now in place and waits for transmitt. Start the command right now */
-	s3c_send_command(hw_dev, cmd, data);
+	s3c_send_command(host_data, cmd, data);
 
 	if ((reg = readl(host_data->base + SDIFSTA)) & SDIFSTA_FIFOFAIL) {
 		pr_err("Command fails immediatly due to FIFO underrun when writing %08X\n",
@@ -591,37 +581,36 @@ static int s3c_mci_write_block(struct device_d *hw_dev, struct mci_cmd *cmd,
  * @param data The data information (buffer, direction aso.)
  * @return 0 on success
 */
-static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
+static int s3c_mci_adtc(struct s3c_mci_host *host_data, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
 	int rc;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
-	rc = s3c_prepare_engine(hw_dev);
+	rc = s3c_prepare_engine(host_data);
 	if (rc != 0)
 		return rc;
 
-	rc = s3c_prepare_data_transfer(hw_dev, data);
+	rc = s3c_prepare_data_transfer(host_data, data);
 	if (rc != 0)
 		return rc;
 
 	if (data->flags & MMC_DATA_READ) {
-		s3c_send_command(hw_dev, cmd, data);
-		rc = s3c_mci_read_block(hw_dev, data);
+		s3c_send_command(host_data, cmd, data);
+		rc = s3c_mci_read_block(host_data, data);
 		if (rc == 0) {
 			while (!(readl(host_data->base + SDIDSTA) & SDIDSTA_XFERFINISH))
 				;
 		} else
-			s3c_terminate_transfer(hw_dev);
+			s3c_terminate_transfer(host_data);
 	}
 
 	if (data->flags & MMC_DATA_WRITE) {
-		rc = s3c_mci_write_block(hw_dev, cmd, data);
+		rc = s3c_mci_write_block(host_data, cmd, data);
 		if (rc == 0) {
 			while (!(readl(host_data->base + SDIDSTA) & SDIDSTA_XFERFINISH))
 				;
 		} else
-			s3c_terminate_transfer(hw_dev);
+			s3c_terminate_transfer(host_data);
 	}
 	writel(0, host_data->base + SDIDCON);
 
@@ -632,29 +621,28 @@ static int s3c_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 
 /**
  * Keep the attached MMC/SD unit in a well know state
- * @param mci_pdata MCI platform data
+ * @param host MCI host
  * @param mci_dev MCI device instance
  * @return 0 on success, negative value else
  */
-static int mci_reset(struct mci_host *mci_pdata, struct device_d *mci_dev)
+static int mci_reset(struct mci_host *host, struct device_d *mci_dev)
 {
-	struct device_d *hw_dev = mci_pdata->hw_dev;
+	struct s3c_mci_host *host_data = to_s3c_host(host);
 
-	return s3c_mci_initialize(hw_dev, mci_dev);
+	return s3c_mci_initialize(host_data, mci_dev);
 }
 
 /**
  * Process one command to the MCI card
- * @param mci_pdata MCI platform data
+ * @param host MCI host
  * @param cmd The command to process
  * @param data The data to handle in the command (can be NULL)
  * @return 0 on success, negative value else
  */
-static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
+static int mci_request(struct mci_host *host, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
-	struct device_d *hw_dev = mci_pdata->hw_dev;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
+	struct s3c_mci_host *host_data = to_s3c_host(host);
 	int rc;
 
 	/* enable clock */
@@ -662,11 +650,11 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 		host_data->base + SDICON);
 
 	if ((cmd->resp_type == 0) || (data == NULL))
-		rc = s3c_mci_std_cmds(hw_dev, cmd);
+		rc = s3c_mci_std_cmds(host_data, cmd);
 	else
-		rc = s3c_mci_adtc(hw_dev, cmd, data);	/* with response and data */
+		rc = s3c_mci_adtc(host_data, cmd, data);	/* with response and data */
 
-	s3c_finish_request(hw_dev);
+	s3c_finish_request(host_data);
 
 	/* disable clock */
 	writel(readl(host_data->base + SDICON) & ~SDICON_CLKEN,
@@ -676,16 +664,15 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 
 /**
  * Setup the bus width and IO speed
- * @param mci_pdata MCI platform data
+ * @param host MCI host
  * @param mci_dev MCI device instance
  * @param bus_width New bus width value (1, 4 or 8)
  * @param clock New clock in Hz (can be '0' to disable the clock)
  */
-static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
+static void mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
 			struct mci_ios *ios)
 {
-	struct device_d *hw_dev = mci_pdata->hw_dev;
-	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
+	struct s3c_mci_host *host_data = to_s3c_host(host);
 	uint32_t reg;
 
 	switch (ios->bus_width) {
@@ -702,7 +689,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 	reg = readl(host_data->base + SDICON);
 	if (ios->clock) {
 		/* setup the IO clock frequency and enable it */
-		host_data->clock = s3c_setup_clock_speed(hw_dev, ios->clock);
+		host_data->clock = s3c_setup_clock_speed(host_data, ios->clock);
 		reg |= SDICON_CLKEN;	/* enable the clock */
 	} else {
 		reg &= ~SDICON_CLKEN;	/* disable the clock */
@@ -770,7 +757,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	/*
 	 * Start the clock to let the engine and the card finishes its startup
 	 */
-	s3c_host->clock = s3c_setup_clock_speed(hw_dev, pd->f_min);
+	s3c_host->clock = s3c_setup_clock_speed(s3c_host, pd->f_min);
 	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, s3c_host->base + SDICON);
 
 	return mci_register(&s3c_host->host);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
