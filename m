Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSa1-0004fz-Mi
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:54 +0100
Message-Id: <1328788438-19717-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/15] mci: Use struct mci for internal argument passing
To: barebox@lists.infradead.org

The mci layer currently passes around a struct device_d for
its internal use. Apart from being confusing this drops
typesafety for no good reason. Instead, pass around a struct
mci.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |  271 +++++++++++++++++++++++-------------------------
 drivers/mci/s3c.c      |    3 +
 include/mci.h          |    7 +-
 3 files changed, 133 insertions(+), 148 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 1c0e4e7..49e1c42 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -57,16 +57,16 @@
 
 /**
  * Call the MMC/SD instance driver to run the command on the MMC/SD card
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param cmd The information about the command to run
  * @param data The data according to the command (can be NULL)
  * @return Driver's answer (0 on success)
  */
-static int mci_send_cmd(struct device_d *mci_dev, struct mci_cmd *cmd, struct mci_data *data)
+static int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 
-	return host->send_cmd(host, cmd, data);
+	return host->send_cmd(mci->host, cmd, data);
 }
 
 /**
@@ -90,12 +90,12 @@ static void mci_setup_cmd(struct mci_cmd *p, unsigned cmd, unsigned arg, unsigne
  * @param len Blocklength in bytes
  * @return Transaction status (0 on success)
  */
-static int mci_set_blocklen(struct device_d *mci_dev, unsigned len)
+static int mci_set_blocklen(struct mci *mci, unsigned len)
 {
 	struct mci_cmd cmd;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
-	return mci_send_cmd(mci_dev, &cmd, NULL);
+	return mci_send_cmd(mci, &cmd, NULL);
 }
 
 static void *sector_buf;
@@ -108,10 +108,9 @@ static void *sector_buf;
  * @param blocks Block count to write
  * @return Transaction status (0 on success)
  */
-static int mci_block_write(struct device_d *mci_dev, const void *src, int blocknum,
+static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 	int blocks)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_cmd cmd;
 	struct mci_data data;
 	const void *buf;
@@ -140,7 +139,7 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, int blockn
 	data.blocksize = mci->write_bl_len;
 	data.flags = MMC_DATA_WRITE;
 
-	ret = mci_send_cmd(mci_dev, &cmd, &data);
+	ret = mci_send_cmd(mci, &cmd, &data);
 	if (ret)
 		return ret;
 
@@ -148,7 +147,7 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, int blockn
 		mci_setup_cmd(&cmd,
 			MMC_CMD_STOP_TRANSMISSION,
 			0, MMC_RSP_R1b);
-			ret = mci_send_cmd(mci_dev, &cmd, NULL);
+			ret = mci_send_cmd(mci, &cmd, NULL);
 			if (ret)
 				return ret;
         }
@@ -158,15 +157,14 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, int blockn
 
 /**
  * Read one block of data from the card
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param dst Where to store the data read from the card
  * @param blocknum Block number to read
  * @param blocks number of blocks to read
  */
-static int mci_read_block(struct device_d *mci_dev, void *dst, int blocknum,
+static int mci_read_block(struct mci *mci, void *dst, int blocknum,
 		int blocks)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_cmd cmd;
 	struct mci_data data;
 	int ret;
@@ -187,7 +185,7 @@ static int mci_read_block(struct device_d *mci_dev, void *dst, int blocknum,
 	data.blocksize = mci->read_bl_len;
 	data.flags = MMC_DATA_READ;
 
-	ret = mci_send_cmd(mci_dev, &cmd, &data);
+	ret = mci_send_cmd(mci, &cmd, &data);
 	if (ret)
 		return ret;
 
@@ -196,17 +194,17 @@ static int mci_read_block(struct device_d *mci_dev, void *dst, int blocknum,
 			MMC_CMD_STOP_TRANSMISSION,
 			0,
 			MMC_RSP_R1b);
-			ret = mci_send_cmd(mci_dev, &cmd, NULL);
+			ret = mci_send_cmd(mci, &cmd, NULL);
 	}
 	return ret;
 }
 
 /**
  * Reset the attached MMC/SD card
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return Transaction status (0 on success)
  */
-static int mci_go_idle(struct device_d *mci_dev)
+static int mci_go_idle(struct mci *mci)
 {
 	struct mci_cmd cmd;
 	int err;
@@ -214,7 +212,7 @@ static int mci_go_idle(struct device_d *mci_dev)
 	udelay(1000);
 
 	mci_setup_cmd(&cmd, MMC_CMD_GO_IDLE_STATE, 0, MMC_RSP_NONE);
-	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd, NULL);
 
 	if (err) {
 		pr_debug("Activating IDLE state failed: %d\n", err);
@@ -228,13 +226,12 @@ static int mci_go_idle(struct device_d *mci_dev)
 
 /**
  * FIXME
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return Transaction status (0 on success)
  */
-static int sd_send_op_cond(struct device_d *mci_dev)
+static int sd_send_op_cond(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 	struct mci_cmd cmd;
 	int timeout = 1000;
 	int err;
@@ -252,7 +249,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 
 	do {
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, 0, MMC_RSP_R1);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
 			pr_debug("Preparing SD for operating conditions failed: %d\n", err);
 			return err;
@@ -261,7 +258,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND,
 			mmc_host_is_spi(host) ? 0 : (voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0)),
 			MMC_RSP_R3);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
 			pr_debug("SD operation condition set failed: %d\n", err);
 			return err;
@@ -285,7 +282,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 
 	if (mmc_host_is_spi(host)) { /* read OCR for spi */
 		mci_setup_cmd(&cmd, MMC_CMD_SPI_READ_OCR, 0, MMC_RSP_R3);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err)
 			return err;
 	}
@@ -300,24 +297,23 @@ static int sd_send_op_cond(struct device_d *mci_dev)
 
 /**
  * Setup the operation conditions to a MultiMediaCard
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return Transaction status (0 on success)
  */
-static int mmc_send_op_cond(struct device_d *mci_dev)
+static int mmc_send_op_cond(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 	struct mci_cmd cmd;
 	int timeout = 1000;
 	int err;
 
 	/* Some cards seem to need this */
-	mci_go_idle(mci_dev);
+	mci_go_idle(mci);
 
 	do {
 		mci_setup_cmd(&cmd, MMC_CMD_SEND_OP_COND, OCR_HCS |
 				host->voltages, MMC_RSP_R3);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 
 		if (err) {
 			pr_debug("Preparing MMC for operating conditions failed: %d\n", err);
@@ -343,14 +339,14 @@ static int mmc_send_op_cond(struct device_d *mci_dev)
 
 /**
  * FIXME
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param ext_csd Buffer for a 512 byte sized extended CSD
  * @return Transaction status (0 on success)
  *
  * Note: Only cards newer than Version 1.1 (Physical Layer Spec) support
  * this command
  */
-static int mci_send_ext_csd(struct device_d *mci_dev, char *ext_csd)
+static int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
@@ -363,18 +359,18 @@ static int mci_send_ext_csd(struct device_d *mci_dev, char *ext_csd)
 	data.blocksize = 512;
 	data.flags = MMC_DATA_READ;
 
-	return mci_send_cmd(mci_dev, &cmd, &data);
+	return mci_send_cmd(mci, &cmd, &data);
 }
 
 /**
  * FIXME
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param set FIXME
  * @param index FIXME
  * @param value FIXME
  * @return Transaction status (0 on success)
  */
-static int mci_switch(struct device_d *mci_dev, unsigned set, unsigned index,
+static int mci_switch(struct mci *mci, unsigned set, unsigned index,
 			unsigned value)
 {
 	struct mci_cmd cmd;
@@ -385,17 +381,16 @@ static int mci_switch(struct device_d *mci_dev, unsigned set, unsigned index,
 		(value << 8),
 		 MMC_RSP_R1b);
 
-	return mci_send_cmd(mci_dev, &cmd, NULL);
+	return mci_send_cmd(mci, &cmd, NULL);
 }
 
 /**
  * Change transfer frequency for an MMC card
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return Transaction status (0 on success)
  */
-static int mmc_change_freq(struct device_d *mci_dev)
+static int mmc_change_freq(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	char *ext_csd = sector_buf;
 	char cardtype;
 	int err;
@@ -408,7 +403,7 @@ static int mmc_change_freq(struct device_d *mci_dev)
 
 	mci->card_caps |= MMC_MODE_4BIT;
 
-	err = mci_send_ext_csd(mci_dev, ext_csd);
+	err = mci_send_ext_csd(mci, ext_csd);
 	if (err) {
 		pr_debug("Preparing for frequency setup failed: %d\n", err);
 		return err;
@@ -416,7 +411,7 @@ static int mmc_change_freq(struct device_d *mci_dev)
 
 	cardtype = ext_csd[EXT_CSD_CARD_TYPE] & EXT_CSD_CARD_TYPE_MASK;
 
-	err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
+	err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
 
 	if (err) {
 		pr_debug("MMC frequency changing failed: %d\n", err);
@@ -424,7 +419,7 @@ static int mmc_change_freq(struct device_d *mci_dev)
 	}
 
 	/* Now check to see that it worked */
-	err = mci_send_ext_csd(mci_dev, ext_csd);
+	err = mci_send_ext_csd(mci, ext_csd);
 
 	if (err) {
 		pr_debug("Verifying frequency change failed: %d\n", err);
@@ -446,14 +441,14 @@ static int mmc_change_freq(struct device_d *mci_dev)
 
 /**
  * FIXME
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param mode FIXME
  * @param group FIXME
  * @param value FIXME
  * @param resp FIXME
  * @return Transaction status (0 on success)
  */
-static int sd_switch(struct device_d *mci_dev, unsigned mode, unsigned group,
+static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
 			unsigned value, uint8_t *resp)
 {
 	struct mci_cmd cmd;
@@ -472,21 +467,20 @@ static int sd_switch(struct device_d *mci_dev, unsigned mode, unsigned group,
 	data.blocks = 1;
 	data.flags = MMC_DATA_READ;
 
-	return mci_send_cmd(mci_dev, &cmd, &data);
+	return mci_send_cmd(mci, &cmd, &data);
 }
 
 /**
  * Change transfer frequency for an SD card
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return Transaction status (0 on success)
  */
-static int sd_change_freq(struct device_d *mci_dev)
+static int sd_change_freq(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_cmd cmd;
 	struct mci_data data;
 #ifdef CONFIG_MCI_SPI
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 #endif
 	uint32_t *switch_status = sector_buf;
 	uint32_t *scr = sector_buf;
@@ -501,7 +495,7 @@ static int sd_change_freq(struct device_d *mci_dev)
 
 	/* Read the SCR to find out if this card supports higher speeds */
 	mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
-	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
 		pr_debug("Query SD card capabilities failed: %d\n", err);
 		return err;
@@ -518,7 +512,7 @@ retry_scr:
 	data.blocks = 1;
 	data.flags = MMC_DATA_READ;
 
-	err = mci_send_cmd(mci_dev, &cmd, &data);
+	err = mci_send_cmd(mci, &cmd, &data);
 	if (err) {
 		pr_debug(" Catch error (%d)", err);
 		if (timeout--) {
@@ -553,7 +547,7 @@ retry_scr:
 
 	timeout = 4;
 	while (timeout--) {
-		err = sd_switch(mci_dev, SD_SWITCH_CHECK, 0, 1,
+		err = sd_switch(mci, SD_SWITCH_CHECK, 0, 1,
 				(uint8_t*)switch_status);
 		if (err) {
 			pr_debug("Checking SD transfer switch frequency feature failed: %d\n", err);
@@ -572,7 +566,7 @@ retry_scr:
 	if (!(__be32_to_cpu(switch_status[3]) & SD_HIGHSPEED_SUPPORTED))
 		return 0;
 
-	err = sd_switch(mci_dev, SD_SWITCH_SWITCH, 0, 1, (uint8_t*)switch_status);
+	err = sd_switch(mci, SD_SWITCH_SWITCH, 0, 1, (uint8_t*)switch_status);
 	if (err) {
 		pr_debug("Switching SD transfer frequency failed: %d\n", err);
 		return err;
@@ -586,11 +580,11 @@ retry_scr:
 
 /**
  * Setup host's interface bus width and transfer frequency
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  */
-static void mci_set_ios(struct device_d *mci_dev)
+static void mci_set_ios(struct mci *mci)
 {
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 	struct mci_ios ios;
 
 	ios.bus_width = host->bus_width;
@@ -601,12 +595,12 @@ static void mci_set_ios(struct device_d *mci_dev)
 
 /**
  * Setup host's interface transfer frequency
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param clock New clock in Hz to set
  */
-static void mci_set_clock(struct device_d *mci_dev, unsigned clock)
+static void mci_set_clock(struct mci *mci, unsigned clock)
 {
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 
 	/* check against any given limits */
 	if (clock > host->f_max)
@@ -616,30 +610,29 @@ static void mci_set_clock(struct device_d *mci_dev, unsigned clock)
 		clock = host->f_min;
 
 	host->clock = clock;	/* the new target frequency */
-	mci_set_ios(mci_dev);
+	mci_set_ios(mci);
 }
 
 /**
  * Setup host's interface bus width
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @param width New interface bit width (1, 4 or 8)
  */
-static void mci_set_bus_width(struct device_d *mci_dev, unsigned width)
+static void mci_set_bus_width(struct mci *mci, unsigned width)
 {
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 
 	host->bus_width = width;	/* the new target bus width */
-	mci_set_ios(mci_dev);
+	mci_set_ios(mci);
 }
 
 /**
  * Extract card's version from its CSD
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return 0 on success
  */
-static void mci_detect_version_from_csd(struct device_d *mci_dev)
+static void mci_detect_version_from_csd(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	int version;
 	char *vstr;
 
@@ -714,13 +707,12 @@ static const unsigned char tran_speed_time[] = {
 
 /**
  * Extract max. transfer speed from the CSD
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  *
  * Encoded in bit 103:96 (103: reserved, 102:99: time, 98:96 unit)
  */
-static void mci_extract_max_tran_speed_from_csd(struct device_d *mci_dev)
+static void mci_extract_max_tran_speed_from_csd(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	unsigned unit, time;
 
 	unit = tran_speed_unit[(mci->csd[0] & 0x7)];
@@ -737,14 +729,12 @@ static void mci_extract_max_tran_speed_from_csd(struct device_d *mci_dev)
 
 /**
  * Extract max read and write block length from the CSD
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  *
  * Encoded in bit 83:80 (read) and 25:22 (write)
  */
-static void mci_extract_block_lengths_from_csd(struct device_d *mci_dev)
+static void mci_extract_block_lengths_from_csd(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-
 	mci->read_bl_len = 1 << ((mci->csd[1] >> 16) & 0xf);
 
 	if (IS_SD(mci))
@@ -758,11 +748,10 @@ static void mci_extract_block_lengths_from_csd(struct device_d *mci_dev)
 
 /**
  * Extract card's capacitiy from the CSD
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  */
-static void mci_extract_card_capacity_from_csd(struct device_d *mci_dev)
+static void mci_extract_card_capacity_from_csd(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
 	uint64_t csize, cmult;
 
 	if (mci->high_capacity) {
@@ -780,13 +769,12 @@ static void mci_extract_card_capacity_from_csd(struct device_d *mci_dev)
 
 /**
  * Scan the given host interfaces and detect connected MMC/SD cards
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return 0 on success, negative value else
  */
-static int mci_startup(struct device_d *mci_dev)
+static int mci_startup(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 	struct mci_cmd cmd;
 	int err;
 
@@ -794,7 +782,7 @@ static int mci_startup(struct device_d *mci_dev)
 	if (mmc_host_is_spi(host)) { /* enable CRC check for spi */
 
 		mci_setup_cmd(&cmd, MMC_CMD_SPI_CRC_ON_OFF, 1, MMC_RSP_R1);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 
 		if (err) {
 			pr_debug("Can't enable CRC check : %d\n", err);
@@ -807,7 +795,7 @@ static int mci_startup(struct device_d *mci_dev)
 
 	/* Put the Card in Identify Mode */
 	mci_setup_cmd(&cmd, mmc_host_is_spi(host) ? MMC_CMD_SEND_CID : MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
-	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
 		pr_debug("Can't bring card into identify mode: %d\n", err);
 		return err;
@@ -826,7 +814,7 @@ static int mci_startup(struct device_d *mci_dev)
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
 		pr_debug("Get/Set relative address\n");
 		mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
 			pr_debug("Get/Set relative address failed: %d\n", err);
 			return err;
@@ -839,7 +827,7 @@ static int mci_startup(struct device_d *mci_dev)
 	pr_debug("Get card's specific data\n");
 	/* Get the Card-Specific Data */
 	mci_setup_cmd(&cmd, MMC_CMD_SEND_CSD, mci->rca << 16, MMC_RSP_R2);
-	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
 		pr_debug("Getting card's specific data failed: %d\n", err);
 		return err;
@@ -851,10 +839,10 @@ static int mci_startup(struct device_d *mci_dev)
 	pr_debug("Card's specific data is: %08X-%08X-%08X-%08X\n",
 		mci->csd[0], mci->csd[1], mci->csd[2], mci->csd[3]);
 
-	mci_detect_version_from_csd(mci_dev);
-	mci_extract_max_tran_speed_from_csd(mci_dev);
-	mci_extract_block_lengths_from_csd(mci_dev);
-	mci_extract_card_capacity_from_csd(mci_dev);
+	mci_detect_version_from_csd(mci);
+	mci_extract_max_tran_speed_from_csd(mci);
+	mci_extract_block_lengths_from_csd(mci);
+	mci_extract_card_capacity_from_csd(mci);
 
 	/* sanitiy? */
 	if (mci->read_bl_len > SECTOR_SIZE) {
@@ -875,7 +863,7 @@ static int mci_startup(struct device_d *mci_dev)
 		pr_debug("Select the card, and put it into Transfer Mode\n");
 		/* Select the card, and put it into Transfer Mode */
 		mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
-		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
 			pr_debug("Putting in transfer mode failed: %d\n", err);
 			return err;
@@ -883,9 +871,9 @@ static int mci_startup(struct device_d *mci_dev)
 	}
 
 	if (IS_SD(mci))
-		err = sd_change_freq(mci_dev);
+		err = sd_change_freq(mci);
 	else
-		err = mmc_change_freq(mci_dev);
+		err = mmc_change_freq(mci);
 
 	if (err)
 		return err;
@@ -897,7 +885,7 @@ static int mci_startup(struct device_d *mci_dev)
 		if (mci->card_caps & MMC_MODE_4BIT) {
 			pr_debug("Prepare for bus width change\n");
 			mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
-			err = mci_send_cmd(mci_dev, &cmd, NULL);
+			err = mci_send_cmd(mci, &cmd, NULL);
 			if (err) {
 				pr_debug("Preparing SD for bus width change failed: %d\n", err);
 				return err;
@@ -905,60 +893,60 @@ static int mci_startup(struct device_d *mci_dev)
 
 			pr_debug("Set SD bus width to 4 bit\n");
 			mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
-			err = mci_send_cmd(mci_dev, &cmd, NULL);
+			err = mci_send_cmd(mci, &cmd, NULL);
 			if (err) {
 				pr_debug("Changing SD bus width failed: %d\n", err);
 				/* TODO continue with 1 bit? */
 				return err;
 			}
-			mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_4);
+			mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 		}
 		/* if possible, speed up the transfer */
 		if (mci->card_caps & MMC_MODE_HS)
-			mci_set_clock(mci_dev, 50000000);
+			mci_set_clock(mci, 50000000);
 		else
-			mci_set_clock(mci_dev, 25000000);
+			mci_set_clock(mci, 25000000);
 	} else {
 		if (mci->card_caps & MMC_MODE_4BIT) {
 			pr_debug("Set MMC bus width to 4 bit\n");
 			/* Set the card to use 4 bit*/
-			err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL,
+			err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
 					EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_4);
 			if (err) {
 				pr_debug("Changing MMC bus width failed: %d\n", err);
 				return err;
 			}
-			mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_4);
+			mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 		} else if (mci->card_caps & MMC_MODE_8BIT) {
 			pr_debug("Set MMC bus width to 8 bit\n");
 			/* Set the card to use 8 bit*/
-			err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL,
+			err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
 					EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_8);
 			if (err) {
 				pr_debug("Changing MMC bus width failed: %d\n", err);
 				return err;
 			}
-			mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_8);
+			mci_set_bus_width(mci, MMC_BUS_WIDTH_8);
 		}
 		/* if possible, speed up the transfer */
 		if (mci->card_caps & MMC_MODE_HS) {
 			if (mci->card_caps & MMC_MODE_HS_52MHz)
-				mci_set_clock(mci_dev, 52000000);
+				mci_set_clock(mci, 52000000);
 			else
-				mci_set_clock(mci_dev, 26000000);
+				mci_set_clock(mci, 26000000);
 		} else
-			mci_set_clock(mci_dev, 20000000);
+			mci_set_clock(mci, 20000000);
 	}
 
 	/* we setup the blocklength only one times for all accesses to this media  */
-	err = mci_set_blocklen(mci_dev, mci->read_bl_len);
+	err = mci_set_blocklen(mci, mci->read_bl_len);
 
 	return err;
 }
 
 /**
  * Detect a SD 2.0 card and enable its features
- * @param mci_dev MCI instance
+ * @param mci MCI instance
  * @return Transfer status (0 on success)
  *
  * By issuing the CMD8 command SDHC/SDXC cards realize that the host supports
@@ -967,10 +955,9 @@ static int mci_startup(struct device_d *mci_dev)
  *
  * If this CMD8 command will end with a timeout it is a MultiMediaCard only.
  */
-static int sd_send_if_cond(struct device_d *mci_dev)
+static int sd_send_if_cond(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 	struct mci_cmd cmd;
 	int err;
 
@@ -978,7 +965,7 @@ static int sd_send_if_cond(struct device_d *mci_dev)
 	/* We set the bit if the host supports voltages between 2.7 and 3.6 V */
 		((host->voltages & 0x00ff8000) != 0) << 8 | 0xaa,
 		MMC_RSP_R7);
-	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
 		pr_debug("Query interface conditions failed: %d\n", err);
 		return err;
@@ -1010,8 +997,7 @@ static int sd_send_if_cond(struct device_d *mci_dev)
 static int __maybe_unused mci_sd_write(struct block_device *blk,
 				const void *buffer, int block, int num_blocks)
 {
-	struct device_d *mci_dev = blk->dev;
-	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci *mci = container_of(blk, struct mci, blk);
 	int rc;
 
 	pr_debug("%s: Write %d block(s), starting at %d\n",
@@ -1029,7 +1015,7 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 		return -EINVAL;
 	}
 
-	rc = mci_block_write(mci_dev, buffer, block, num_blocks);
+	rc = mci_block_write(mci, buffer, block, num_blocks);
 	if (rc != 0) {
 		pr_debug("Writing block %d failed with %d\n", block, rc);
 		return rc;
@@ -1051,8 +1037,7 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 				int num_blocks)
 {
-	struct device_d *mci_dev = blk->dev;
-	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci *mci = container_of(blk, struct mci, blk);
 	int rc;
 
 	pr_debug("%s: Read %d block(s), starting at %d\n",
@@ -1069,7 +1054,7 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 		return -EINVAL;
 	}
 
-	rc = mci_read_block(mci_dev, buffer, block, num_blocks);
+	rc = mci_read_block(mci, buffer, block, num_blocks);
 	if (rc != 0) {
 		pr_debug("Reading block %d failed with %d\n", block, rc);
 		return rc;
@@ -1150,11 +1135,11 @@ static unsigned extract_mtd_year(struct mci *mci)
 
 /**
  * Output some valuable information when the user runs 'devinfo' on an MCI device
- * @param mci_dev MCI device instance
+ * @param mci MCI device instance
  */
 static void mci_info(struct device_d *mci_dev)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci *mci = mci_dev->priv;
 
 	if (mci->ready_for_use == 0) {
 		printf(" No information available:\n  MCI card not probed yet\n");
@@ -1193,17 +1178,15 @@ static void mci_info(struct device_d *mci_dev)
 
 /**
  * Check if the MCI card is already probed
- * @param mci_dev MCI device instance
+ * @param mci MCI device instance
  * @return 0 when not probed yet, -EPERM if already probed
  *
  * @a barebox cannot really cope with hot plugging. So, probing an attached
  * MCI card is a one time only job. If its already done, there is no way to
  * return.
  */
-static int mci_check_if_already_initialized(struct device_d *mci_dev)
+static int mci_check_if_already_initialized(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-
 	if (mci->ready_for_use != 0)
 		return -EPERM;
 
@@ -1231,45 +1214,44 @@ static struct block_device_ops mci_ops = {
 
 /**
  * Probe an MCI card at the given host interface
- * @param mci_dev MCI device instance
+ * @param mci MCI device instance
  * @return 0 on success, negative values else
  */
-static int mci_card_probe(struct device_d *mci_dev)
+static int mci_card_probe(struct mci *mci)
 {
-	struct mci *mci = GET_MCI_DATA(mci_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
+	struct mci_host *host = mci->host;
 	int rc;
 
 	/* start with a host interface reset */
-	rc = (host->init)(host, mci_dev);
+	rc = (host->init)(host, mci->mci_dev);
 	if (rc) {
 		pr_err("Cannot reset the SD/MMC interface\n");
 		return rc;
 	}
 
-	mci_set_bus_width(mci_dev, MMC_BUS_WIDTH_1);
-	mci_set_clock(mci_dev, 1);	/* set the lowest available clock */
+	mci_set_bus_width(mci, MMC_BUS_WIDTH_1);
+	mci_set_clock(mci, 1);	/* set the lowest available clock */
 
 	/* reset the card */
-	rc = mci_go_idle(mci_dev);
+	rc = mci_go_idle(mci);
 	if (rc) {
 		pr_warning("Cannot reset the SD/MMC card\n");
 		goto on_error;
 	}
 
 	/* Check if this card can handle the "SD Card Physical Layer Specification 2.0" */
-	rc = sd_send_if_cond(mci_dev);
-	rc = sd_send_op_cond(mci_dev);
+	rc = sd_send_if_cond(mci);
+	rc = sd_send_op_cond(mci);
 	if (rc && rc == -ETIMEDOUT) {
 		/* If the command timed out, we check for an MMC card */
 		pr_debug("Card seems to be a MultiMediaCard\n");
-		rc = mmc_send_op_cond(mci_dev);
+		rc = mmc_send_op_cond(mci);
 	}
 
 	if (rc)
 		goto on_error;
 
-	rc = mci_startup(mci_dev);
+	rc = mci_startup(mci);
 	if (rc) {
 		pr_debug("Card's startup fails with %d\n", rc);
 		goto on_error;
@@ -1282,7 +1264,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	 * An MMC/SD card acts like an ordinary disk.
 	 * So, re-use the disk driver to gain access to this media
 	 */
-	mci->blk.dev = mci_dev;
+	mci->blk.dev = mci->mci_dev;
 	mci->blk.ops = &mci_ops;
 
 	rc = cdev_find_free_index("disk");
@@ -1295,14 +1277,14 @@ static int mci_card_probe(struct device_d *mci_dev)
 
 	rc = blockdevice_register(&mci->blk);
 	if (rc != 0) {
-		dev_err(mci_dev, "Failed to register MCI/SD blockdevice\n");
+		dev_err(mci->mci_dev, "Failed to register MCI/SD blockdevice\n");
 		goto on_error;
 	}
 
 	/* create partitions on demand */
 	rc = parse_partition_table(&mci->blk);
 	if (rc != 0) {
-		dev_warn(mci_dev, "No partition table found\n");
+		dev_warn(mci->mci_dev, "No partition table found\n");
 		rc = 0; /* it's not a failure */
 	}
 
@@ -1311,7 +1293,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 on_error:
 	if (rc != 0) {
 		host->clock = 0;	/* disable the MCI clock */
-		mci_set_ios(mci_dev);
+		mci_set_ios(mci);
 	}
 
 	return rc;
@@ -1327,15 +1309,16 @@ on_error:
 static int mci_set_probe(struct device_d *mci_dev, struct param_d *param,
 				const char *val)
 {
+	struct mci *mci = mci_dev->priv;
 	int rc, probe;
 
-	rc = mci_check_if_already_initialized(mci_dev);
+	rc = mci_check_if_already_initialized(mci);
 	if (rc != 0)
 		return rc;
 
 	probe = simple_strtoul(val, NULL, 0);
 	if (probe != 0) {
-		rc = mci_card_probe(mci_dev);
+		rc = mci_card_probe(mci);
 		if (rc != 0)
 			return rc;
 	}
@@ -1377,10 +1360,12 @@ static int mci_probe(struct device_d *mci_dev)
 
 	mci = xzalloc(sizeof(struct mci));
 	mci_dev->priv = mci;
+	mci->mci_dev = mci_dev;
+	mci->host = mci_dev->platform_data;
 
 #ifdef CONFIG_MCI_STARTUP
 	/* if enabled, probe the attached card immediately */
-	rc = mci_card_probe(mci_dev);
+	rc = mci_card_probe(mci);
 	if (rc) {
 		/*
 		 * If it fails, add the 'probe' parameter to give the user
@@ -1439,7 +1424,7 @@ int mci_register(struct mci_host *host)
 
 	mci_dev->id = -1;
 	strcpy(mci_dev->name, mci_driver.name);
-	mci_dev->platform_data = (void*)host;
+	mci_dev->platform_data = host;
 	dev_add_child(host->hw_dev, mci_dev);
 
 	return register_device(mci_dev);
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index e7646c9..c905c07 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -44,6 +44,9 @@
 #include <mach/s3c-generic.h>
 #include <mach/s3c-iomap.h>
 
+#define GET_HOST_DATA(x) (x->priv)
+#define GET_MCI_PDATA(x) (x->platform_data)
+
 #define SDICON 0x0
 # define SDICON_SDRESET (1 << 8)
 # define SDICON_MMCCLOCK (1 << 5) /* this is a clock type SD or MMC style WTF? */
diff --git a/include/mci.h b/include/mci.h
index 9215e39..d8a88da 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -267,7 +267,9 @@ struct mci_host {
 
 /** MMC/SD and interface instance information */
 struct mci {
+	struct mci_host *host;		/**< the host for this card */
 	struct block_device blk;	/**< the blockdevice for the card */
+	struct device_d *mci_dev;	/**< the device for our disk (mcix) */
 	unsigned version;
 	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
 	int high_capacity;
@@ -288,9 +290,4 @@ struct mci {
 
 int mci_register(struct mci_host*);
 
-#define GET_HOST_DATA(x) (x->priv)
-#define GET_HOST_PDATA(x) (x->platform_data)
-#define GET_MCI_DATA(x) (x->priv)
-#define GET_MCI_PDATA(x) (x->platform_data)
-
 #endif /* _MCI_H_ */
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
