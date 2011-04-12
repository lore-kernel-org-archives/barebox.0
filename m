Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9YnL-0005ql-KY
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:17:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Apr 2011 10:17:51 +0200
Message-Id: <1302596272-21635-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
References: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] mci: turn several pr_* statements into debug
To: barebox@lists.infradead.org

These are mostly useful for developers, so turn them off by default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   26 +++++++++++++-------------
 1 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a51c44b..c4c5c2f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -684,7 +684,7 @@ static void mci_extract_max_tran_speed_from_csd(struct device_d *mci_dev)
 	unit = tran_speed_unit[(mci->csd[0] & 0x7)];
 	time = tran_speed_time[((mci->csd[0] >> 3) & 0xf)];
 	if ((unit == 0) || (time == 0)) {
-		pr_warning("Unsupported 'TRAN_SPEED' unit/time value."
+		pr_debug("Unsupported 'TRAN_SPEED' unit/time value."
 				" Can't calculate card's max. transfer speed\n");
 		return;
 	}
@@ -802,13 +802,13 @@ static int mci_startup(struct device_d *mci_dev)
 	/* sanitiy? */
 	if (mci->read_bl_len > 512) {
 		mci->read_bl_len = 512;
-		pr_warning("Limiting max. read block size down to %u\n",
+		pr_debug("Limiting max. read block size down to %u\n",
 				mci->read_bl_len);
 	}
 
 	if (mci->write_bl_len > 512) {
 		mci->write_bl_len = 512;
-		pr_warning("Limiting max. write block size down to %u\n",
+		pr_debug("Limiting max. write block size down to %u\n",
 				mci->read_bl_len);
 	}
 	pr_debug("Read block length: %u, Write block length: %u\n",
@@ -961,7 +961,7 @@ static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 		__func__, sector_count, (unsigned)sector_start);
 
 	if (mci->write_bl_len != 512) {
-		pr_warning("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
+		pr_debug("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
 				mci->read_bl_len);
 		return -EINVAL;
 	}
@@ -969,13 +969,13 @@ static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 	while (sector_count) {
 		/* size of the block number field in the MMC/SD command is 32 bit only */
 		if (sector_start > MAX_BUFFER_NUMBER) {
-			pr_err("Cannot handle block number %llu. Too large!\n",
+			pr_debug("Cannot handle block number %llu. Too large!\n",
 				sector_start);
 			return -EINVAL;
 		}
 		rc = mci_block_write(mci_dev, buffer, sector_start);
 		if (rc != 0) {
-			pr_err("Writing block %u failed with %d\n", (unsigned)sector_start, rc);
+			pr_debug("Writing block %u failed with %d\n", (unsigned)sector_start, rc);
 			return rc;
 		}
 		sector_count--;
@@ -1009,7 +1009,7 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 		__func__, sector_count, (unsigned)sector_start);
 
 	if (mci->read_bl_len != 512) {
-		pr_warning("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
+		pr_debug("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
 				mci->read_bl_len);
 		return -EINVAL;
 	}
@@ -1023,7 +1023,7 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 		}
 		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start, now);
 		if (rc != 0) {
-			pr_err("Reading block %u failed with %d\n", (unsigned)sector_start, rc);
+			pr_debug("Reading block %u failed with %d\n", (unsigned)sector_start, rc);
 			return rc;
 		}
 		sector_count -= now;
@@ -1182,7 +1182,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	/* start with a host interface reset */
 	rc = (host->init)(host, mci_dev);
 	if (rc) {
-		pr_err("Cannot reset the SD/MMC interface\n");
+		pr_debug("Cannot reset the SD/MMC interface\n");
 		return rc;
 	}
 
@@ -1192,7 +1192,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	/* reset the card */
 	rc = mci_go_idle(mci_dev);
 	if (rc) {
-		pr_warning("Cannot reset the SD/MMC card\n");
+		pr_debug("Cannot reset the SD/MMC card\n");
 		goto on_error;
 	}
 
@@ -1210,7 +1210,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 
 	rc = mci_startup(mci_dev);
 	if (rc) {
-		printf("Card's startup fails with %d\n", rc);
+		pr_debug("Card's startup fails with %d\n", rc);
 		goto on_error;
 	}
 
@@ -1321,7 +1321,7 @@ static int mci_probe(struct device_d *mci_dev)
 		 */
 		rc = add_mci_parameter(mci_dev);
 		if (rc != 0) {
-			pr_err("Failed to add 'probe' parameter to the MCI device\n");
+			pr_debug("Failed to add 'probe' parameter to the MCI device\n");
 			goto on_error;
 		}
 	}
@@ -1331,7 +1331,7 @@ static int mci_probe(struct device_d *mci_dev)
 	/* add params on demand */
 	rc = add_mci_parameter(mci_dev);
 	if (rc != 0) {
-		pr_err("Failed to add 'probe' parameter to the MCI device\n");
+		pr_debug("Failed to add 'probe' parameter to the MCI device\n");
 		goto on_error;
 	}
 #endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
