Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROpR7-0000sz-Rq
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 11:38:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Nov 2011 12:38:14 +0100
Message-Id: <1321011494-4274-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1321011494-4274-1-git-send-email-s.hauer@pengutronix.de>
References: <1321011494-4274-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mci: remove unnecessary loops
To: barebox@lists.infradead.org

We used to loop around the sectors in mci_sd_write/mci_sd_read.
Now that we have multi block read and write this is not necessary
anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   51 +++++++++++++++++++----------------------------
 1 files changed, 21 insertions(+), 30 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 58f7f6d..651bcbf 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -988,21 +988,17 @@ static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 		return -EINVAL;
 	}
 
-	while (sector_count) {
-		/* size of the block number field in the MMC/SD command is 32 bit only */
-		if (sector_start > MAX_BUFFER_NUMBER) {
-			pr_debug("Cannot handle block number %llu. Too large!\n",
-				sector_start);
-			return -EINVAL;
-		}
-		rc = mci_block_write(mci_dev, buffer, sector_start);
-		if (rc != 0) {
-			pr_debug("Writing block %u failed with %d\n", (unsigned)sector_start, rc);
-			return rc;
-		}
-		sector_count--;
-		buffer += mci->write_bl_len;
-		sector_start++;
+	/* size of the block number field in the MMC/SD command is 32 bit only */
+	if (sector_start > MAX_BUFFER_NUMBER) {
+		pr_debug("Cannot handle block number %llu. Too large!\n",
+			sector_start);
+		return -EINVAL;
+	}
+
+	rc = mci_block_write(mci_dev, buffer, sector_start, sector_count);
+	if (rc != 0) {
+		pr_debug("Writing block %u failed with %d\n", (unsigned)sector_start, rc);
+		return rc;
 	}
 
 	return 0;
@@ -1036,21 +1032,16 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 		return -EINVAL;
 	}
 
-	while (sector_count) {
-		int now = min(sector_count, 32U);
-		if (sector_start > MAX_BUFFER_NUMBER) {
-			pr_err("Cannot handle block number %u. Too large!\n",
-				(unsigned)sector_start);
-			return -EINVAL;
-		}
-		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start, now);
-		if (rc != 0) {
-			pr_debug("Reading block %u failed with %d\n", (unsigned)sector_start, rc);
-			return rc;
-		}
-		sector_count -= now;
-		buffer += mci->read_bl_len * now;
-		sector_start += now;
+	if (sector_start > MAX_BUFFER_NUMBER) {
+		pr_err("Cannot handle block number %u. Too large!\n",
+			(unsigned)sector_start);
+		return -EINVAL;
+	}
+
+	rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start, sector_count);
+	if (rc != 0) {
+		pr_debug("Reading block %u failed with %d\n", (unsigned)sector_start, rc);
+		return rc;
 	}
 
 	return 0;
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
