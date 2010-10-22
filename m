Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT4-0006Hq-DX
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:21 +0200
Message-Id: <1287753331-7696-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] mci-core: add multiple block support
To: barebox@lists.infradead.org

So far only for reading blocks. This is based on the corresponding
U-Boot code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mci-core.c |   35 +++++++++++++++++++++++++++--------
 1 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c92d5a9..34c4f8c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -139,23 +139,41 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
  * @param dst Where to store the data read from the card
  * @param blocknum Block number to read
  */
-static int mci_read_block(struct device_d *mci_dev, void *dst, unsigned blocknum)
+static int mci_read_block(struct device_d *mci_dev, void *dst, unsigned blocknum, int blocks)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_cmd cmd;
 	struct mci_data data;
+	int ret;
+	unsigned mmccmd;
+
+	if (blocks > 1)
+		mmccmd = MMC_CMD_READ_MULTIPLE_BLOCK;
+	else
+		mmccmd = MMC_CMD_READ_SINGLE_BLOCK;
 
 	mci_setup_cmd(&cmd,
-		MMC_CMD_READ_SINGLE_BLOCK,
+		mmccmd,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
 		MMC_RSP_R1);
 
 	data.dest = dst;
-	data.blocks = 1;
+	data.blocks = blocks;
 	data.blocksize = mci->read_bl_len;
 	data.flags = MMC_DATA_READ;
 
-	return mci_send_cmd(mci_dev, &cmd, &data);
+	ret = mci_send_cmd(mci_dev, &cmd, &data);
+	if (ret)
+		return ret;
+
+	if (blocks > 1) {
+		mci_setup_cmd(&cmd,
+			MMC_CMD_STOP_TRANSMISSION,
+			0,
+			MMC_RSP_R1b);
+			ret = mci_send_cmd(mci_dev, &cmd, NULL);
+	}
+	return ret;
 }
 
 /**
@@ -979,19 +997,20 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 	}
 
 	while (sector_count) {
+		int now = min(sector_count, 32);
 		if (sector_start > MAX_BUFFER_NUMBER) {
 			pr_err("Cannot handle block number %lu. Too large!\n",
 				(unsigned)sector_start);
 			return -EINVAL;
 		}
-		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start);
+		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start, now);
 		if (rc != 0) {
 			pr_err("Reading block %lu failed with %d\n", (unsigned)sector_start, rc);
 			return rc;
 		}
-		sector_count--;
-		buffer += mci->read_bl_len;
-		sector_start++;
+		sector_count -= now;
+		buffer += mci->read_bl_len * now;
+		sector_start += now;
 	}
 
 	return 0;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
