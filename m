Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001E0-RC
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:51 +0200
Message-Id: <1369644775-29887-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] mci: embed mci device into struct mci
To: barebox@lists.infradead.org

To safe a separate allocation and to make the code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 217 ++++++++++++++++++++++---------------------------
 include/mci.h          |   2 +-
 2 files changed, 96 insertions(+), 123 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9cc6cfb..1aa98db 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -215,7 +215,7 @@ static int mci_go_idle(struct mci *mci)
 	err = mci_send_cmd(mci, &cmd, NULL);
 
 	if (err) {
-		dev_dbg(mci->mci_dev, "Activating IDLE state failed: %d\n", err);
+		dev_dbg(&mci->dev, "Activating IDLE state failed: %d\n", err);
 		return err;
 	}
 
@@ -252,7 +252,7 @@ static int sd_send_op_cond(struct mci *mci)
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, 0, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(mci->mci_dev, "Preparing SD for operating conditions failed: %d\n", err);
+			dev_dbg(&mci->dev, "Preparing SD for operating conditions failed: %d\n", err);
 			return err;
 		}
 
@@ -264,7 +264,7 @@ static int sd_send_op_cond(struct mci *mci)
 		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND, arg, MMC_RSP_R3);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(mci->mci_dev, "SD operation condition set failed: %d\n", err);
+			dev_dbg(&mci->dev, "SD operation condition set failed: %d\n", err);
 			return err;
 		}
 		udelay(1000);
@@ -277,7 +277,7 @@ static int sd_send_op_cond(struct mci *mci)
 	} while (busy && timeout--);
 
 	if (timeout <= 0) {
-		dev_dbg(mci->mci_dev, "SD operation condition set timed out\n");
+		dev_dbg(&mci->dev, "SD operation condition set timed out\n");
 		return -ENODEV;
 	}
 
@@ -320,7 +320,7 @@ static int mmc_send_op_cond(struct mci *mci)
 		err = mci_send_cmd(mci, &cmd, NULL);
 
 		if (err) {
-			dev_dbg(mci->mci_dev, "Preparing MMC for operating conditions failed: %d\n", err);
+			dev_dbg(&mci->dev, "Preparing MMC for operating conditions failed: %d\n", err);
 			return err;
 		}
 
@@ -328,7 +328,7 @@ static int mmc_send_op_cond(struct mci *mci)
 	} while (!(cmd.response[0] & OCR_BUSY) && timeout--);
 
 	if (timeout <= 0) {
-		dev_dbg(mci->mci_dev, "SD operation condition set timed out\n");
+		dev_dbg(&mci->dev, "SD operation condition set timed out\n");
 		return -ENODEV;
 	}
 
@@ -438,7 +438,7 @@ static int mmc_change_freq(struct mci *mci)
 
 	err = mci_send_ext_csd(mci, mci->ext_csd);
 	if (err) {
-		dev_dbg(mci->mci_dev, "Preparing for frequency setup failed: %d\n", err);
+		dev_dbg(&mci->dev, "Preparing for frequency setup failed: %d\n", err);
 		return err;
 	}
 
@@ -447,7 +447,7 @@ static int mmc_change_freq(struct mci *mci)
 	err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
 
 	if (err) {
-		dev_dbg(mci->mci_dev, "MMC frequency changing failed: %d\n", err);
+		dev_dbg(&mci->dev, "MMC frequency changing failed: %d\n", err);
 		return err;
 	}
 
@@ -455,13 +455,13 @@ static int mmc_change_freq(struct mci *mci)
 	err = mci_send_ext_csd(mci, mci->ext_csd);
 
 	if (err) {
-		dev_dbg(mci->mci_dev, "Verifying frequency change failed: %d\n", err);
+		dev_dbg(&mci->dev, "Verifying frequency change failed: %d\n", err);
 		return err;
 	}
 
 	/* No high-speed support */
 	if (!mci->ext_csd[EXT_CSD_HS_TIMING]) {
-		dev_dbg(mci->mci_dev, "No high-speed support\n");
+		dev_dbg(&mci->dev, "No high-speed support\n");
 		return 0;
 	}
 
@@ -544,14 +544,14 @@ static int sd_change_freq(struct mci *mci)
 	if (mmc_host_is_spi(host))
 		return 0;
 
-	dev_dbg(mci->mci_dev, "Changing transfer frequency\n");
+	dev_dbg(&mci->dev, "Changing transfer frequency\n");
 	mci->card_caps = 0;
 
 	/* Read the SCR to find out if this card supports higher speeds */
 	mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		dev_dbg(mci->mci_dev, "Query SD card capabilities failed: %d\n", err);
+		dev_dbg(&mci->dev, "Query SD card capabilities failed: %d\n", err);
 		return err;
 	}
 
@@ -560,7 +560,7 @@ static int sd_change_freq(struct mci *mci)
 	timeout = 3;
 
 retry_scr:
-	dev_dbg(mci->mci_dev, "Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
+	dev_dbg(&mci->dev, "Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
 	data.dest = (char *)scr;
 	data.blocksize = 8;
 	data.blocks = 1;
@@ -568,12 +568,12 @@ retry_scr:
 
 	err = mci_send_cmd(mci, &cmd, &data);
 	if (err) {
-		dev_dbg(mci->mci_dev, " Catch error (%d)", err);
+		dev_dbg(&mci->dev, " Catch error (%d)", err);
 		if (timeout--) {
-			dev_dbg(mci->mci_dev, "-- retrying\n");
+			dev_dbg(&mci->dev, "-- retrying\n");
 			goto retry_scr;
 		}
-		dev_dbg(mci->mci_dev, "-- giving up\n");
+		dev_dbg(&mci->dev, "-- giving up\n");
 		return err;
 	}
 
@@ -604,7 +604,7 @@ retry_scr:
 		err = sd_switch(mci, SD_SWITCH_CHECK, 0, 1,
 				(uint8_t*)switch_status);
 		if (err) {
-			dev_dbg(mci->mci_dev, "Checking SD transfer switch frequency feature failed: %d\n", err);
+			dev_dbg(&mci->dev, "Checking SD transfer switch frequency feature failed: %d\n", err);
 			return err;
 		}
 
@@ -622,7 +622,7 @@ retry_scr:
 
 	err = sd_switch(mci, SD_SWITCH_SWITCH, 0, 1, (uint8_t*)switch_status);
 	if (err) {
-		dev_dbg(mci->mci_dev, "Switching SD transfer frequency failed: %d\n", err);
+		dev_dbg(&mci->dev, "Switching SD transfer frequency failed: %d\n", err);
 		return err;
 	}
 
@@ -725,7 +725,7 @@ static void mci_detect_version_from_csd(struct mci *mci)
 			break;
 		}
 
-		dev_info(mci->mci_dev, "detected card version %s\n", vstr);
+		dev_info(&mci->dev, "detected card version %s\n", vstr);
 	}
 }
 
@@ -777,13 +777,13 @@ static void mci_extract_max_tran_speed_from_csd(struct mci *mci)
 	unit = tran_speed_unit[(mci->csd[0] & 0x7)];
 	time = tran_speed_time[((mci->csd[0] >> 3) & 0xf)];
 	if ((unit == 0) || (time == 0)) {
-		dev_dbg(mci->mci_dev, "Unsupported 'TRAN_SPEED' unit/time value."
+		dev_dbg(&mci->dev, "Unsupported 'TRAN_SPEED' unit/time value."
 				" Can't calculate card's max. transfer speed\n");
 		return;
 	}
 
 	mci->tran_speed = time * unit;
-	dev_dbg(mci->mci_dev, "Transfer speed: %u\n", mci->tran_speed);
+	dev_dbg(&mci->dev, "Transfer speed: %u\n", mci->tran_speed);
 }
 
 /**
@@ -801,7 +801,7 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
 	else
 		mci->write_bl_len = 1 << ((mci->csd[3] >> 22) & 0xf);
 
-	dev_dbg(mci->mci_dev, "Max. block length are: Write=%u, Read=%u Bytes\n",
+	dev_dbg(&mci->dev, "Max. block length are: Write=%u, Read=%u Bytes\n",
 		mci->write_bl_len, mci->read_bl_len);
 }
 
@@ -830,7 +830,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 	}
 
 	mci->capacity *= 1 << UNSTUFF_BITS(mci->csd, 80, 4);;
-	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
+	dev_dbg(&mci->dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 }
 
 static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
@@ -844,7 +844,7 @@ static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
 	bw_ext_csd = xmalloc(512);
 	err = mci_send_ext_csd(mci, bw_ext_csd);
 	if (err) {
-		dev_info(mci->mci_dev, "mci_send_ext_csd failed with %d\n", err);
+		dev_info(&mci->dev, "mci_send_ext_csd failed with %d\n", err);
 		if (bus_width != MMC_BUS_WIDTH_1)
 			err = -EINVAL;
 		goto out;
@@ -900,19 +900,19 @@ static int mci_startup_sd(struct mci *mci)
 	int err;
 
 	if (mci->card_caps & MMC_MODE_4BIT) {
-		dev_dbg(mci->mci_dev, "Prepare for bus width change\n");
+		dev_dbg(&mci->dev, "Prepare for bus width change\n");
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(mci->mci_dev, "Preparing SD for bus width change failed: %d\n", err);
+			dev_dbg(&mci->dev, "Preparing SD for bus width change failed: %d\n", err);
 			return err;
 		}
 
-		dev_dbg(mci->mci_dev, "Set SD bus width to 4 bit\n");
+		dev_dbg(&mci->dev, "Set SD bus width to 4 bit\n");
 		mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(mci->mci_dev, "Changing SD bus width failed: %d\n", err);
+			dev_dbg(&mci->dev, "Changing SD bus width failed: %d\n", err);
 			/* TODO continue with 1 bit? */
 			return err;
 		}
@@ -1003,25 +1003,25 @@ static int mci_startup(struct mci *mci)
 		err = mci_send_cmd(mci, &cmd, NULL);
 
 		if (err) {
-			dev_dbg(mci->mci_dev, "Can't enable CRC check : %d\n", err);
+			dev_dbg(&mci->dev, "Can't enable CRC check : %d\n", err);
 			return err;
 		}
 	}
 #endif
 
-	dev_dbg(mci->mci_dev, "Put the Card in Identify Mode\n");
+	dev_dbg(&mci->dev, "Put the Card in Identify Mode\n");
 
 	/* Put the Card in Identify Mode */
 	mci_setup_cmd(&cmd, mmc_host_is_spi(host) ? MMC_CMD_SEND_CID : MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		dev_dbg(mci->mci_dev, "Can't bring card into identify mode: %d\n", err);
+		dev_dbg(&mci->dev, "Can't bring card into identify mode: %d\n", err);
 		return err;
 	}
 
 	memcpy(mci->cid, cmd.response, 16);
 
-	dev_dbg(mci->mci_dev, "Card's identification data is: %08X-%08X-%08X-%08X\n",
+	dev_dbg(&mci->dev, "Card's identification data is: %08X-%08X-%08X-%08X\n",
 		mci->cid[0], mci->cid[1], mci->cid[2], mci->cid[3]);
 
 	/*
@@ -1030,11 +1030,11 @@ static int mci_startup(struct mci *mci)
 	 * This also puts the cards into Standby State
 	 */
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
-		dev_dbg(mci->mci_dev, "Get/Set relative address\n");
+		dev_dbg(&mci->dev, "Get/Set relative address\n");
 		mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(mci->mci_dev, "Get/Set relative address failed: %d\n", err);
+			dev_dbg(&mci->dev, "Get/Set relative address failed: %d\n", err);
 			return err;
 		}
 	}
@@ -1042,19 +1042,19 @@ static int mci_startup(struct mci *mci)
 	if (IS_SD(mci))
 		mci->rca = (cmd.response[0] >> 16) & 0xffff;
 
-	dev_dbg(mci->mci_dev, "Get card's specific data\n");
+	dev_dbg(&mci->dev, "Get card's specific data\n");
 	/* Get the Card-Specific Data */
 	mci_setup_cmd(&cmd, MMC_CMD_SEND_CSD, mci->rca << 16, MMC_RSP_R2);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		dev_dbg(mci->mci_dev, "Getting card's specific data failed: %d\n", err);
+		dev_dbg(&mci->dev, "Getting card's specific data failed: %d\n", err);
 		return err;
 	}
 
 	/* CSD is of 128 bit */
 	memcpy(mci->csd, cmd.response, 16);
 
-	dev_dbg(mci->mci_dev, "Card's specific data is: %08X-%08X-%08X-%08X\n",
+	dev_dbg(&mci->dev, "Card's specific data is: %08X-%08X-%08X-%08X\n",
 		mci->csd[0], mci->csd[1], mci->csd[2], mci->csd[3]);
 
 	mci_detect_version_from_csd(mci);
@@ -1064,25 +1064,25 @@ static int mci_startup(struct mci *mci)
 	/* sanitiy? */
 	if (mci->read_bl_len > SECTOR_SIZE) {
 		mci->read_bl_len = SECTOR_SIZE;
-		dev_dbg(mci->mci_dev, "Limiting max. read block size down to %u\n",
+		dev_dbg(&mci->dev, "Limiting max. read block size down to %u\n",
 				mci->read_bl_len);
 	}
 
 	if (mci->write_bl_len > SECTOR_SIZE) {
 		mci->write_bl_len = SECTOR_SIZE;
-		dev_dbg(mci->mci_dev, "Limiting max. write block size down to %u\n",
+		dev_dbg(&mci->dev, "Limiting max. write block size down to %u\n",
 				mci->read_bl_len);
 	}
-	dev_dbg(mci->mci_dev, "Read block length: %u, Write block length: %u\n",
+	dev_dbg(&mci->dev, "Read block length: %u, Write block length: %u\n",
 		mci->read_bl_len, mci->write_bl_len);
 
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
-		dev_dbg(mci->mci_dev, "Select the card, and put it into Transfer Mode\n");
+		dev_dbg(&mci->dev, "Select the card, and put it into Transfer Mode\n");
 		/* Select the card, and put it into Transfer Mode */
 		mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(mci->mci_dev, "Putting in transfer mode failed: %d\n", err);
+			dev_dbg(&mci->dev, "Putting in transfer mode failed: %d\n", err);
 			return err;
 		}
 	}
@@ -1141,15 +1141,15 @@ static int sd_send_if_cond(struct mci *mci)
 		MMC_RSP_R7);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		dev_dbg(mci->mci_dev, "Query interface conditions failed: %d\n", err);
+		dev_dbg(&mci->dev, "Query interface conditions failed: %d\n", err);
 		return err;
 	}
 
 	if ((cmd.response[0] & 0xff) != 0xaa) {
-		dev_dbg(mci->mci_dev, "Card cannot work with hosts supply voltages\n");
+		dev_dbg(&mci->dev, "Card cannot work with hosts supply voltages\n");
 		return -EINVAL;
 	} else {
-		dev_dbg(mci->mci_dev, "SD Card Rev. 2.00 or later detected\n");
+		dev_dbg(&mci->dev, "SD Card Rev. 2.00 or later detected\n");
 		mci->version = SD_VERSION_2;
 	}
 
@@ -1209,28 +1209,28 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 	mci_blk_part_switch(part);
 
 	if (host->card_write_protected && host->card_write_protected(host)) {
-		dev_err(mci->mci_dev, "card write protected\n");
+		dev_err(&mci->dev, "card write protected\n");
 		return -EPERM;
 	}
 
-	dev_dbg(mci->mci_dev, "%s: Write %d block(s), starting at %d\n",
+	dev_dbg(&mci->dev, "%s: Write %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
 	if (mci->write_bl_len != SECTOR_SIZE) {
-		dev_dbg(mci->mci_dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
+		dev_dbg(&mci->dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
 				SECTOR_SIZE, mci->read_bl_len);
 		return -EINVAL;
 	}
 
 	/* size of the block number field in the MMC/SD command is 32 bit only */
 	if (block > MAX_BUFFER_NUMBER) {
-		dev_dbg(mci->mci_dev, "Cannot handle block number %d. Too large!\n", block);
+		dev_dbg(&mci->dev, "Cannot handle block number %d. Too large!\n", block);
 		return -EINVAL;
 	}
 
 	rc = mci_block_write(mci, buffer, block, num_blocks);
 	if (rc != 0) {
-		dev_dbg(mci->mci_dev, "Writing block %d failed with %d\n", block, rc);
+		dev_dbg(&mci->dev, "Writing block %d failed with %d\n", block, rc);
 		return rc;
 	}
 
@@ -1256,23 +1256,23 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 
 	mci_blk_part_switch(part);
 
-	dev_dbg(mci->mci_dev, "%s: Read %d block(s), starting at %d\n",
+	dev_dbg(&mci->dev, "%s: Read %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
 	if (mci->read_bl_len != 512) {
-		dev_dbg(mci->mci_dev, "MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
+		dev_dbg(&mci->dev, "MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
 				mci->read_bl_len);
 		return -EINVAL;
 	}
 
 	if (block > MAX_BUFFER_NUMBER) {
-		dev_err(mci->mci_dev, "Cannot handle block number %d. Too large!\n", block);
+		dev_err(&mci->dev, "Cannot handle block number %d. Too large!\n", block);
 		return -EINVAL;
 	}
 
 	rc = mci_read_block(mci, buffer, block, num_blocks);
 	if (rc != 0) {
-		dev_dbg(mci->mci_dev, "Reading block %d failed with %d\n", block, rc);
+		dev_dbg(&mci->dev, "Reading block %d failed with %d\n", block, rc);
 		return rc;
 	}
 
@@ -1369,9 +1369,9 @@ static unsigned extract_mtd_year(struct mci *mci)
  * Output some valuable information when the user runs 'devinfo' on an MCI device
  * @param mci MCI device instance
  */
-static void mci_info(struct device_d *mci_dev)
+static void mci_info(struct device_d *dev)
 {
-	struct mci *mci = mci_dev->priv;
+	struct mci *mci = container_of(dev, struct mci, dev);
 
 	if (mci->ready_for_use == 0) {
 		printf(" No information available:\n  MCI card not probed yet\n");
@@ -1464,14 +1464,14 @@ static int mci_card_probe(struct mci *mci)
 	int i, rc, disknum;
 
 	if (host->card_present && !host->card_present(host)) {
-		dev_err(mci->mci_dev, "no card inserted\n");
+		dev_err(&mci->dev, "no card inserted\n");
 		return -ENODEV;
 	}
 
 	/* start with a host interface reset */
-	rc = (host->init)(host, mci->mci_dev);
+	rc = (host->init)(host, &mci->dev);
 	if (rc) {
-		dev_err(mci->mci_dev, "Cannot reset the SD/MMC interface\n");
+		dev_err(&mci->dev, "Cannot reset the SD/MMC interface\n");
 		return rc;
 	}
 
@@ -1482,7 +1482,7 @@ static int mci_card_probe(struct mci *mci)
 	/* reset the card */
 	rc = mci_go_idle(mci);
 	if (rc) {
-		dev_warn(mci->mci_dev, "Cannot reset the SD/MMC card\n");
+		dev_warn(&mci->dev, "Cannot reset the SD/MMC card\n");
 		goto on_error;
 	}
 
@@ -1491,7 +1491,7 @@ static int mci_card_probe(struct mci *mci)
 	rc = sd_send_op_cond(mci);
 	if (rc && rc == -ETIMEDOUT) {
 		/* If the command timed out, we check for an MMC card */
-		dev_dbg(mci->mci_dev, "Card seems to be a MultiMediaCard\n");
+		dev_dbg(&mci->dev, "Card seems to be a MultiMediaCard\n");
 		rc = mmc_send_op_cond(mci);
 	}
 
@@ -1507,11 +1507,11 @@ static int mci_card_probe(struct mci *mci)
 
 	rc = mci_startup(mci);
 	if (rc) {
-		dev_dbg(mci->mci_dev, "Card's startup fails with %d\n", rc);
+		dev_dbg(&mci->dev, "Card's startup fails with %d\n", rc);
 		goto on_error;
 	}
 
-	dev_dbg(mci->mci_dev, "Card is up and running now, registering as a disk\n");
+	dev_dbg(&mci->dev, "Card is up and running now, registering as a disk\n");
 	mci->ready_for_use = 1;	/* TODO now or later? */
 
 	for (i = 0; i < mci->nr_parts; i++) {
@@ -1521,21 +1521,21 @@ static int mci_card_probe(struct mci *mci)
 		 * An MMC/SD card acts like an ordinary disk.
 		 * So, re-use the disk driver to gain access to this media
 		 */
-		part->blk.dev = mci->mci_dev;
+		part->blk.dev = &mci->dev;
 		part->blk.ops = &mci_ops;
 
 		rc = blockdevice_register(&part->blk);
 		if (rc != 0) {
-			dev_err(mci->mci_dev, "Failed to register MCI/SD blockdevice\n");
+			dev_err(&mci->dev, "Failed to register MCI/SD blockdevice\n");
 			goto on_error;
 		}
-		dev_info(mci->mci_dev, "registered %s\n", part->blk.cdev.name);
+		dev_info(&mci->dev, "registered %s\n", part->blk.cdev.name);
 
 		/* create partitions on demand */
 		if (part->area_type == MMC_BLK_DATA_AREA_MAIN) {
 			rc = parse_partition_table(&part->blk);
 			if (rc != 0) {
-				dev_warn(mci->mci_dev, "No partition table found\n");
+				dev_warn(&mci->dev, "No partition table found\n");
 				rc = 0; /* it's not a failure */
 			}
 		}
@@ -1543,13 +1543,13 @@ static int mci_card_probe(struct mci *mci)
 		if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
 				part->area_type == MMC_BLK_DATA_AREA_BOOT &&
 				!mci->param_boot) {
-			mci->param_boot = dev_add_param_enum(mci->mci_dev, "boot",
+			mci->param_boot = dev_add_param_enum(&mci->dev, "boot",
 					mci_set_boot, NULL, &mci->bootpart,
 					mci_boot_names, ARRAY_SIZE(mci_boot_names), mci);
 		}
 	}
 
-	dev_dbg(mci->mci_dev, "SD Card successfully added\n");
+	dev_dbg(&mci->dev, "SD Card successfully added\n");
 
 on_error:
 	if (rc != 0) {
@@ -1586,49 +1586,6 @@ static int mci_set_probe(struct param_d *param, void *priv)
 	return 0;
 }
 
-/**
- * Prepare for MCI card's usage
- * @param mci_dev MCI device instance
- * @return 0 on success
- *
- * This routine will probe an attached MCI card immediately or provide
- * a parameter to do it later on user's demand.
- */
-static int mci_probe(struct device_d *mci_dev)
-{
-	struct mci *mci;
-	int rc;
-
-	mci = xzalloc(sizeof(struct mci));
-	mci_dev->priv = mci;
-	mci->mci_dev = mci_dev;
-	mci->host = mci_dev->platform_data;
-
-	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(mci_dev));
-
-	mci->param_probe = dev_add_param_bool(mci_dev, "probe",
-			mci_set_probe, NULL, &mci->probe, mci);
-
-	if (IS_ERR(mci->param_probe)) {
-		dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
-		goto on_error;
-	}
-
-	if (IS_ENABLED(CONFIG_MCI_INFO))
-		mci->dev.info = mci_info;
-
-#ifdef CONFIG_MCI_STARTUP
-	/* if enabled, probe the attached card immediately */
-	mci_card_probe(mci);
-#endif
-
-	return 0;
-
-on_error:
-	free(mci);
-	return rc;
-}
-
 static int mci_init(void)
 {
 	sector_buf = xmemalign(32, 512);
@@ -1645,28 +1602,44 @@ device_initcall(mci_init);
  */
 int mci_register(struct mci_host *host)
 {
+	struct mci *mci;
 	int ret;
-	struct device_d *mci_dev = xzalloc(sizeof(struct device_d));
 
-	strcpy(mci_dev->name, "mci");
-	mci_dev->id = DEVICE_ID_DYNAMIC;
-	mci_dev->platform_data = host;
-	mci_dev->parent = host->hw_dev;
+	mci = xzalloc(sizeof(*mci));
+	mci->host = host;
 
-	ret = register_device(mci_dev);
+	strcpy(mci->dev.name, "mci");
+	mci->dev.id = DEVICE_ID_DYNAMIC;
+	mci->dev.platform_data = host;
+	mci->dev.parent = host->hw_dev;
+
+	ret = register_device(&mci->dev);
 	if (ret)
 		goto err_free;
 
-	ret = mci_probe(mci_dev);
-	if (ret)
+	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(&mci->dev));
+
+	mci->param_probe = dev_add_param_bool(&mci->dev, "probe",
+			mci_set_probe, NULL, &mci->probe, mci);
+
+	if (IS_ERR(mci->param_probe)) {
+		dev_dbg(&mci->dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto err_unregister;
+	}
+
+	if (IS_ENABLED(CONFIG_MCI_INFO))
+		mci->dev.info = mci_info;
+
+	/* if enabled, probe the attached card immediately */
+	if (IS_ENABLED(CONFIG_MCI_STARTUP))
+		mci_card_probe(mci);
 
 	return 0;
 
 err_unregister:
-	unregister_device(mci_dev);
+	unregister_device(&mci->dev);
 err_free:
-	free(mci_dev);
+	free(mci);
 
 	return ret;
 }
diff --git a/include/mci.h b/include/mci.h
index 1735986..1eb967d 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -330,7 +330,7 @@ struct mci_part {
 /** MMC/SD and interface instance information */
 struct mci {
 	struct mci_host *host;		/**< the host for this card */
-	struct device_d *mci_dev;	/**< the device for our disk (mcix) */
+	struct device_d dev;		/**< the device for our disk (mcix) */
 	unsigned version;
 	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
 	int high_capacity;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
