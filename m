Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo6.mail-out.ovh.net ([87.98.184.159]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYd23-0004rz-RU
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:34:05 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 4C057FFA8D8
 for <barebox@lists.infradead.org>; Tue, 22 Oct 2013 16:34:02 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 22 Oct 2013 16:35:23 +0200
Message-Id: <1382452525-26955-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131022143339.GC26639@ns203013.ovh.net>
References: <20131022143339.GC26639@ns203013.ovh.net>
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
Subject: [PATCH 1/3] mci: add max_req_size support
To: barebox@lists.infradead.org

Some controller such as the ARM AMBA pl181 can not handle more than 16bits
data length request.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci-core.c | 38 ++++++++++++++++++++++++++++++--------
 include/mci.h          |  1 +
 2 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 66ddb5b..cfae91b 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1199,6 +1199,11 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 	struct mci *mci = part->mci;
 	struct mci_host *host = mci->host;
 	int rc;
+	unsigned max_req_block = num_blocks;
+	int write_block;
+
+	if (mci->host->max_req_size)
+		max_req_block = mci->host->max_req_size / mci->write_bl_len;
 
 	mci_blk_part_switch(part);
 
@@ -1222,10 +1227,16 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 		return -EINVAL;
 	}
 
-	rc = mci_block_write(mci, buffer, block, num_blocks);
-	if (rc != 0) {
-		dev_dbg(&mci->dev, "Writing block %d failed with %d\n", block, rc);
-		return rc;
+	while (num_blocks) {
+		write_block = min_t(int, num_blocks, max_req_block);
+		rc = mci_block_write(mci, buffer, block, write_block);
+		if (rc != 0) {
+			dev_dbg(&mci->dev, "Writing block %d failed with %d\n", block, rc);
+			return rc;
+		}
+		num_blocks -= write_block;
+		block += write_block;
+		buffer += write_block * mci->write_bl_len;
 	}
 
 	return 0;
@@ -1246,8 +1257,13 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 {
 	struct mci_part *part = container_of(blk, struct mci_part, blk);
 	struct mci *mci = part->mci;
+	unsigned max_req_block = num_blocks;
+	int read_block;
 	int rc;
 
+	if (mci->host->max_req_size)
+		max_req_block = mci->host->max_req_size / mci->read_bl_len;
+
 	mci_blk_part_switch(part);
 
 	dev_dbg(&mci->dev, "%s: Read %d block(s), starting at %d\n",
@@ -1264,10 +1280,16 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 		return -EINVAL;
 	}
 
-	rc = mci_read_block(mci, buffer, block, num_blocks);
-	if (rc != 0) {
-		dev_dbg(&mci->dev, "Reading block %d failed with %d\n", block, rc);
-		return rc;
+	while (num_blocks) {
+		read_block = min_t(int, num_blocks, max_req_block);
+		rc = mci_read_block(mci, buffer, block, read_block);
+		if (rc != 0) {
+			dev_dbg(&mci->dev, "Reading block %d failed with %d\n", block, rc);
+			return rc;
+		}
+		num_blocks -= read_block;
+		block += read_block;
+		buffer += read_block * mci->read_bl_len;
 	}
 
 	return 0;
diff --git a/include/mci.h b/include/mci.h
index 1ca00c7..07ac273 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -293,6 +293,7 @@ struct mci_host {
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned clock;		/**< Current clock used to talk to the card */
 	unsigned bus_width;	/**< used data bus width to the card */
+	unsigned max_req_size;
 
 	/** init the host interface */
 	int (*init)(struct mci_host*, struct device_d*);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
