Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvTZ-00065d-M4
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:33:18 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A5EAC1BF21D
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:33:12 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:32:58 +0200
Message-Id: <20200330143259.651510-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] mci: core: use SECTOR_SIZE instead of direct 512
To: barebox@lists.infradead.org

Instead of hardcoding the 512 byte constant, use the symbolic
SECTOR_SIZE.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/mci/mci-core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 34aaee54f9ed..f3718327f18d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -156,7 +156,7 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 		mmccmd = MMC_CMD_WRITE_SINGLE_BLOCK;
 
 	if ((unsigned long)src & 0x3) {
-		memcpy(sector_buf, src, 512);
+		memcpy(sector_buf, src, SECTOR_SIZE);
 		buf = sector_buf;
 	} else {
 		buf = src;
@@ -1360,9 +1360,9 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 	dev_dbg(&mci->dev, "%s: Read %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
-	if (mci->read_bl_len != 512) {
-		dev_dbg(&mci->dev, "MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
-				mci->read_bl_len);
+	if (mci->read_bl_len != SECTOR_SIZE) {
+		dev_dbg(&mci->dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
+				SECTOR_SIZE, mci->read_bl_len);
 		return -EINVAL;
 	}
 
@@ -1789,7 +1789,7 @@ static int mci_set_probe(struct param_d *param, void *priv)
 
 static int mci_init(void)
 {
-	sector_buf = xmemalign(32, 512);
+	sector_buf = xmemalign(32, SECTOR_SIZE);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
