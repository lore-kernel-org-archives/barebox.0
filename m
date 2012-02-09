Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZy-0004fw-H2
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:55 +0100
Message-Id: <1328788438-19717-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/15] mci: replace pr_debug with dev_dbg
To: barebox@lists.infradead.org

The mci layer uses pr_debug throughout. Use dev_dbg instead
which is very useful when multiple cards are involved.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |  118 ++++++++++++++++++++++++------------------------
 1 files changed, 59 insertions(+), 59 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 49e1c42..799c5cb 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -215,7 +215,7 @@ static int mci_go_idle(struct mci *mci)
 	err = mci_send_cmd(mci, &cmd, NULL);
 
 	if (err) {
-		pr_debug("Activating IDLE state failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Activating IDLE state failed: %d\n", err);
 		return err;
 	}
 
@@ -251,7 +251,7 @@ static int sd_send_op_cond(struct mci *mci)
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, 0, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			pr_debug("Preparing SD for operating conditions failed: %d\n", err);
+			dev_dbg(mci->mci_dev, "Preparing SD for operating conditions failed: %d\n", err);
 			return err;
 		}
 
@@ -260,7 +260,7 @@ static int sd_send_op_cond(struct mci *mci)
 			MMC_RSP_R3);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			pr_debug("SD operation condition set failed: %d\n", err);
+			dev_dbg(mci->mci_dev, "SD operation condition set failed: %d\n", err);
 			return err;
 		}
 		udelay(1000);
@@ -273,7 +273,7 @@ static int sd_send_op_cond(struct mci *mci)
 	} while (busy && timeout--);
 
 	if (timeout <= 0) {
-		pr_debug("SD operation condition set timed out\n");
+		dev_dbg(mci->mci_dev, "SD operation condition set timed out\n");
 		return -ENODEV;
 	}
 
@@ -316,7 +316,7 @@ static int mmc_send_op_cond(struct mci *mci)
 		err = mci_send_cmd(mci, &cmd, NULL);
 
 		if (err) {
-			pr_debug("Preparing MMC for operating conditions failed: %d\n", err);
+			dev_dbg(mci->mci_dev, "Preparing MMC for operating conditions failed: %d\n", err);
 			return err;
 		}
 
@@ -324,7 +324,7 @@ static int mmc_send_op_cond(struct mci *mci)
 	} while (!(cmd.response[0] & OCR_BUSY) && timeout--);
 
 	if (timeout <= 0) {
-		pr_debug("SD operation condition set timed out\n");
+		dev_dbg(mci->mci_dev, "SD operation condition set timed out\n");
 		return -ENODEV;
 	}
 
@@ -405,7 +405,7 @@ static int mmc_change_freq(struct mci *mci)
 
 	err = mci_send_ext_csd(mci, ext_csd);
 	if (err) {
-		pr_debug("Preparing for frequency setup failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Preparing for frequency setup failed: %d\n", err);
 		return err;
 	}
 
@@ -414,7 +414,7 @@ static int mmc_change_freq(struct mci *mci)
 	err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
 
 	if (err) {
-		pr_debug("MMC frequency changing failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "MMC frequency changing failed: %d\n", err);
 		return err;
 	}
 
@@ -422,7 +422,7 @@ static int mmc_change_freq(struct mci *mci)
 	err = mci_send_ext_csd(mci, ext_csd);
 
 	if (err) {
-		pr_debug("Verifying frequency change failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Verifying frequency change failed: %d\n", err);
 		return err;
 	}
 
@@ -490,14 +490,14 @@ static int sd_change_freq(struct mci *mci)
 	if (mmc_host_is_spi(host))
 		return 0;
 
-	pr_debug("Changing transfer frequency\n");
+	dev_dbg(mci->mci_dev, "Changing transfer frequency\n");
 	mci->card_caps = 0;
 
 	/* Read the SCR to find out if this card supports higher speeds */
 	mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		pr_debug("Query SD card capabilities failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Query SD card capabilities failed: %d\n", err);
 		return err;
 	}
 
@@ -506,7 +506,7 @@ static int sd_change_freq(struct mci *mci)
 	timeout = 3;
 
 retry_scr:
-	pr_debug("Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
+	dev_dbg(mci->mci_dev, "Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
 	data.dest = (char *)scr;
 	data.blocksize = 8;
 	data.blocks = 1;
@@ -514,12 +514,12 @@ retry_scr:
 
 	err = mci_send_cmd(mci, &cmd, &data);
 	if (err) {
-		pr_debug(" Catch error (%d)", err);
+		dev_dbg(mci->mci_dev, " Catch error (%d)", err);
 		if (timeout--) {
-			pr_debug("-- retrying\n");
+			dev_dbg(mci->mci_dev, "-- retrying\n");
 			goto retry_scr;
 		}
-		pr_debug("-- giving up\n");
+		dev_dbg(mci->mci_dev, "-- giving up\n");
 		return err;
 	}
 
@@ -550,7 +550,7 @@ retry_scr:
 		err = sd_switch(mci, SD_SWITCH_CHECK, 0, 1,
 				(uint8_t*)switch_status);
 		if (err) {
-			pr_debug("Checking SD transfer switch frequency feature failed: %d\n", err);
+			dev_dbg(mci->mci_dev, "Checking SD transfer switch frequency feature failed: %d\n", err);
 			return err;
 		}
 
@@ -568,7 +568,7 @@ retry_scr:
 
 	err = sd_switch(mci, SD_SWITCH_SWITCH, 0, 1, (uint8_t*)switch_status);
 	if (err) {
-		pr_debug("Switching SD transfer frequency failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Switching SD transfer frequency failed: %d\n", err);
 		return err;
 	}
 
@@ -718,13 +718,13 @@ static void mci_extract_max_tran_speed_from_csd(struct mci *mci)
 	unit = tran_speed_unit[(mci->csd[0] & 0x7)];
 	time = tran_speed_time[((mci->csd[0] >> 3) & 0xf)];
 	if ((unit == 0) || (time == 0)) {
-		pr_debug("Unsupported 'TRAN_SPEED' unit/time value."
+		dev_dbg(mci->mci_dev, "Unsupported 'TRAN_SPEED' unit/time value."
 				" Can't calculate card's max. transfer speed\n");
 		return;
 	}
 
 	mci->tran_speed = time * unit;
-	pr_debug("Transfer speed: %u\n", mci->tran_speed);
+	dev_dbg(mci->mci_dev, "Transfer speed: %u\n", mci->tran_speed);
 }
 
 /**
@@ -742,7 +742,7 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
 	else
 		mci->write_bl_len = 1 << ((mci->csd[3] >> 22) & 0xf);
 
-	pr_debug("Max. block length are: Write=%u, Read=%u Bytes\n",
+	dev_dbg(mci->mci_dev, "Max. block length are: Write=%u, Read=%u Bytes\n",
 		mci->write_bl_len, mci->read_bl_len);
 }
 
@@ -764,7 +764,7 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 
 	mci->capacity = (csize + 1) << (cmult + 2);
 	mci->capacity *= mci->read_bl_len;
-	pr_debug("Capacity: %u MiB\n", (unsigned)mci->capacity >> 20);
+	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)mci->capacity >> 20);
 }
 
 /**
@@ -785,25 +785,25 @@ static int mci_startup(struct mci *mci)
 		err = mci_send_cmd(mci, &cmd, NULL);
 
 		if (err) {
-			pr_debug("Can't enable CRC check : %d\n", err);
+			dev_dbg(mci->mci_dev, "Can't enable CRC check : %d\n", err);
 			return err;
 		}
 	}
 #endif
 
-	pr_debug("Put the Card in Identify Mode\n");
+	dev_dbg(mci->mci_dev, "Put the Card in Identify Mode\n");
 
 	/* Put the Card in Identify Mode */
 	mci_setup_cmd(&cmd, mmc_host_is_spi(host) ? MMC_CMD_SEND_CID : MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		pr_debug("Can't bring card into identify mode: %d\n", err);
+		dev_dbg(mci->mci_dev, "Can't bring card into identify mode: %d\n", err);
 		return err;
 	}
 
 	memcpy(mci->cid, cmd.response, 16);
 
-	pr_debug("Card's identification data is: %08X-%08X-%08X-%08X\n",
+	dev_dbg(mci->mci_dev, "Card's identification data is: %08X-%08X-%08X-%08X\n",
 		mci->cid[0], mci->cid[1], mci->cid[2], mci->cid[3]);
 
 	/*
@@ -812,11 +812,11 @@ static int mci_startup(struct mci *mci)
 	 * This also puts the cards into Standby State
 	 */
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
-		pr_debug("Get/Set relative address\n");
+		dev_dbg(mci->mci_dev, "Get/Set relative address\n");
 		mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			pr_debug("Get/Set relative address failed: %d\n", err);
+			dev_dbg(mci->mci_dev, "Get/Set relative address failed: %d\n", err);
 			return err;
 		}
 	}
@@ -824,19 +824,19 @@ static int mci_startup(struct mci *mci)
 	if (IS_SD(mci))
 		mci->rca = (cmd.response[0] >> 16) & 0xffff;
 
-	pr_debug("Get card's specific data\n");
+	dev_dbg(mci->mci_dev, "Get card's specific data\n");
 	/* Get the Card-Specific Data */
 	mci_setup_cmd(&cmd, MMC_CMD_SEND_CSD, mci->rca << 16, MMC_RSP_R2);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		pr_debug("Getting card's specific data failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Getting card's specific data failed: %d\n", err);
 		return err;
 	}
 
 	/* CSD is of 128 bit */
 	memcpy(mci->csd, cmd.response, 16);
 
-	pr_debug("Card's specific data is: %08X-%08X-%08X-%08X\n",
+	dev_dbg(mci->mci_dev, "Card's specific data is: %08X-%08X-%08X-%08X\n",
 		mci->csd[0], mci->csd[1], mci->csd[2], mci->csd[3]);
 
 	mci_detect_version_from_csd(mci);
@@ -847,25 +847,25 @@ static int mci_startup(struct mci *mci)
 	/* sanitiy? */
 	if (mci->read_bl_len > SECTOR_SIZE) {
 		mci->read_bl_len = SECTOR_SIZE;
-		pr_debug("Limiting max. read block size down to %u\n",
+		dev_dbg(mci->mci_dev, "Limiting max. read block size down to %u\n",
 				mci->read_bl_len);
 	}
 
 	if (mci->write_bl_len > SECTOR_SIZE) {
 		mci->write_bl_len = SECTOR_SIZE;
-		pr_debug("Limiting max. write block size down to %u\n",
+		dev_dbg(mci->mci_dev, "Limiting max. write block size down to %u\n",
 				mci->read_bl_len);
 	}
-	pr_debug("Read block length: %u, Write block length: %u\n",
+	dev_dbg(mci->mci_dev, "Read block length: %u, Write block length: %u\n",
 		mci->read_bl_len, mci->write_bl_len);
 
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
-		pr_debug("Select the card, and put it into Transfer Mode\n");
+		dev_dbg(mci->mci_dev, "Select the card, and put it into Transfer Mode\n");
 		/* Select the card, and put it into Transfer Mode */
 		mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			pr_debug("Putting in transfer mode failed: %d\n", err);
+			dev_dbg(mci->mci_dev, "Putting in transfer mode failed: %d\n", err);
 			return err;
 		}
 	}
@@ -883,19 +883,19 @@ static int mci_startup(struct mci *mci)
 
 	if (IS_SD(mci)) {
 		if (mci->card_caps & MMC_MODE_4BIT) {
-			pr_debug("Prepare for bus width change\n");
+			dev_dbg(mci->mci_dev, "Prepare for bus width change\n");
 			mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
 			err = mci_send_cmd(mci, &cmd, NULL);
 			if (err) {
-				pr_debug("Preparing SD for bus width change failed: %d\n", err);
+				dev_dbg(mci->mci_dev, "Preparing SD for bus width change failed: %d\n", err);
 				return err;
 			}
 
-			pr_debug("Set SD bus width to 4 bit\n");
+			dev_dbg(mci->mci_dev, "Set SD bus width to 4 bit\n");
 			mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
 			err = mci_send_cmd(mci, &cmd, NULL);
 			if (err) {
-				pr_debug("Changing SD bus width failed: %d\n", err);
+				dev_dbg(mci->mci_dev, "Changing SD bus width failed: %d\n", err);
 				/* TODO continue with 1 bit? */
 				return err;
 			}
@@ -908,22 +908,22 @@ static int mci_startup(struct mci *mci)
 			mci_set_clock(mci, 25000000);
 	} else {
 		if (mci->card_caps & MMC_MODE_4BIT) {
-			pr_debug("Set MMC bus width to 4 bit\n");
+			dev_dbg(mci->mci_dev, "Set MMC bus width to 4 bit\n");
 			/* Set the card to use 4 bit*/
 			err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
 					EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_4);
 			if (err) {
-				pr_debug("Changing MMC bus width failed: %d\n", err);
+				dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
 				return err;
 			}
 			mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 		} else if (mci->card_caps & MMC_MODE_8BIT) {
-			pr_debug("Set MMC bus width to 8 bit\n");
+			dev_dbg(mci->mci_dev, "Set MMC bus width to 8 bit\n");
 			/* Set the card to use 8 bit*/
 			err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
 					EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_8);
 			if (err) {
-				pr_debug("Changing MMC bus width failed: %d\n", err);
+				dev_dbg(mci->mci_dev, "Changing MMC bus width failed: %d\n", err);
 				return err;
 			}
 			mci_set_bus_width(mci, MMC_BUS_WIDTH_8);
@@ -967,15 +967,15 @@ static int sd_send_if_cond(struct mci *mci)
 		MMC_RSP_R7);
 	err = mci_send_cmd(mci, &cmd, NULL);
 	if (err) {
-		pr_debug("Query interface conditions failed: %d\n", err);
+		dev_dbg(mci->mci_dev, "Query interface conditions failed: %d\n", err);
 		return err;
 	}
 
 	if ((cmd.response[0] & 0xff) != 0xaa) {
-		pr_debug("Card cannot work with hosts supply voltages\n");
+		dev_dbg(mci->mci_dev, "Card cannot work with hosts supply voltages\n");
 		return -EINVAL;
 	} else {
-		pr_debug("SD Card Rev. 2.00 or later detected\n");
+		dev_dbg(mci->mci_dev, "SD Card Rev. 2.00 or later detected\n");
 		mci->version = SD_VERSION_2;
 	}
 
@@ -1000,24 +1000,24 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 	struct mci *mci = container_of(blk, struct mci, blk);
 	int rc;
 
-	pr_debug("%s: Write %d block(s), starting at %d\n",
+	dev_dbg(mci->mci_dev, "%s: Write %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
 	if (mci->write_bl_len != SECTOR_SIZE) {
-		pr_debug("MMC/SD block size is not %d bytes (its %u bytes instead)\n",
+		dev_dbg(mci->mci_dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
 				SECTOR_SIZE, mci->read_bl_len);
 		return -EINVAL;
 	}
 
 	/* size of the block number field in the MMC/SD command is 32 bit only */
 	if (block > MAX_BUFFER_NUMBER) {
-		pr_debug("Cannot handle block number %d. Too large!\n", block);
+		dev_dbg(mci->mci_dev, "Cannot handle block number %d. Too large!\n", block);
 		return -EINVAL;
 	}
 
 	rc = mci_block_write(mci, buffer, block, num_blocks);
 	if (rc != 0) {
-		pr_debug("Writing block %d failed with %d\n", block, rc);
+		dev_dbg(mci->mci_dev, "Writing block %d failed with %d\n", block, rc);
 		return rc;
 	}
 
@@ -1040,11 +1040,11 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 	struct mci *mci = container_of(blk, struct mci, blk);
 	int rc;
 
-	pr_debug("%s: Read %d block(s), starting at %d\n",
+	dev_dbg(mci->mci_dev, "%s: Read %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
 	if (mci->read_bl_len != 512) {
-		pr_debug("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
+		dev_dbg(mci->mci_dev, "MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
 				mci->read_bl_len);
 		return -EINVAL;
 	}
@@ -1056,7 +1056,7 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 
 	rc = mci_read_block(mci, buffer, block, num_blocks);
 	if (rc != 0) {
-		pr_debug("Reading block %d failed with %d\n", block, rc);
+		dev_dbg(mci->mci_dev, "Reading block %d failed with %d\n", block, rc);
 		return rc;
 	}
 
@@ -1244,7 +1244,7 @@ static int mci_card_probe(struct mci *mci)
 	rc = sd_send_op_cond(mci);
 	if (rc && rc == -ETIMEDOUT) {
 		/* If the command timed out, we check for an MMC card */
-		pr_debug("Card seems to be a MultiMediaCard\n");
+		dev_dbg(mci->mci_dev, "Card seems to be a MultiMediaCard\n");
 		rc = mmc_send_op_cond(mci);
 	}
 
@@ -1253,11 +1253,11 @@ static int mci_card_probe(struct mci *mci)
 
 	rc = mci_startup(mci);
 	if (rc) {
-		pr_debug("Card's startup fails with %d\n", rc);
+		dev_dbg(mci->mci_dev, "Card's startup fails with %d\n", rc);
 		goto on_error;
 	}
 
-	pr_debug("Card is up and running now, registering as a disk\n");
+	dev_dbg(mci->mci_dev, "Card is up and running now, registering as a disk\n");
 	mci->ready_for_use = 1;	/* TODO now or later? */
 
 	/*
@@ -1288,7 +1288,7 @@ static int mci_card_probe(struct mci *mci)
 		rc = 0; /* it's not a failure */
 	}
 
-	pr_debug("SD Card successfully added\n");
+	dev_dbg(mci->mci_dev, "SD Card successfully added\n");
 
 on_error:
 	if (rc != 0) {
@@ -1375,7 +1375,7 @@ static int mci_probe(struct device_d *mci_dev)
 		 */
 		rc = add_mci_parameter(mci_dev);
 		if (rc != 0) {
-			pr_debug("Failed to add 'probe' parameter to the MCI device\n");
+			dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
 			goto on_error;
 		}
 	}
@@ -1385,7 +1385,7 @@ static int mci_probe(struct device_d *mci_dev)
 	/* add params on demand */
 	rc = add_mci_parameter(mci_dev);
 	if (rc != 0) {
-		pr_debug("Failed to add 'probe' parameter to the MCI device\n");
+		dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto on_error;
 	}
 #endif
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
