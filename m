Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROpR8-0000uP-3W
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 11:38:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Nov 2011 12:38:13 +0100
Message-Id: <1321011494-4274-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mci: implement multi block write
To: barebox@lists.infradead.org

This speeds up writes to MMC/SD cards significantly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   30 ++++++++++++++++++++++++++----
 1 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 09f7e29..58f7f6d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -107,12 +107,20 @@ static void *sector_buf;
  * @return Transaction status (0 on success)
  */
 #ifdef CONFIG_MCI_WRITE
-static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned blocknum)
+static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned blocknum,
+	int blocks)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_cmd cmd;
 	struct mci_data data;
 	const void *buf;
+	unsigned mmccmd;
+	int ret;
+
+	if (blocks > 1)
+		mmccmd = MMC_CMD_WRITE_MULTIPLE_BLOCK;
+	else
+		mmccmd = MMC_CMD_WRITE_SINGLE_BLOCK;
 
 	if ((unsigned long)src & 0x3) {
 		memcpy(sector_buf, src, 512);
@@ -122,16 +130,30 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
 	}
 
 	mci_setup_cmd(&cmd,
-		MMC_CMD_WRITE_SINGLE_BLOCK,
+		mmccmd,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
 		MMC_RSP_R1);
 
 	data.src = buf;
-	data.blocks = 1;
+	data.blocks = blocks;
 	data.blocksize = mci->write_bl_len;
 	data.flags = MMC_DATA_WRITE;
 
-	return mci_send_cmd(mci_dev, &cmd, &data);
+	ret = mci_send_cmd(mci_dev, &cmd, &data);
+	if (ret)
+		return ret;
+
+
+	if (blocks > 1) {
+		mci_setup_cmd(&cmd,
+			MMC_CMD_STOP_TRANSMISSION,
+			0, MMC_RSP_R1b);
+			ret = mci_send_cmd(mci_dev, &cmd, NULL);
+			if (ret)
+				return ret;
+        }
+
+	return ret;
 }
 #endif
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
