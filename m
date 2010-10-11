Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYR-0003G8-3B
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:20 +0200
Message-Id: <1286796505-16049-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] mci: align write buffer if necessary
To: barebox@lists.infradead.org

Most SD controllers need some kind of alignment for writing
blocks. Instead of coding this in every driver, align write
blocks to a 4 byte alignment in the mci layer. For DMA
accesses we may need bigger alignment, but let's solve this
problem when we have it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   16 +++++++++++++++-
 1 files changed, 15 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 57b82bf..6a35d54 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -94,6 +94,8 @@ static int mci_set_blocklen(struct device_d *mci_dev, unsigned len)
 	return mci_send_cmd(mci_dev, &cmd, NULL);
 }
 
+static void *sector_buf;
+
 /**
  * Write one block of data to the card
  * @param mci_dev MCI instance
@@ -106,13 +108,21 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_cmd cmd;
 	struct mci_data data;
+	const void *buf;
+
+	if ((unsigned long)src & 0x3) {
+		memcpy(sector_buf, src, 512);
+		buf = sector_buf;
+	} else {
+		buf = src;
+	}
 
 	mci_setup_cmd(&cmd,
 		MMC_CMD_WRITE_SINGLE_BLOCK,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
 		MMC_RSP_R1);
 
-	data.src = src;
+	data.src = buf;
 	data.blocks = 1;
 	data.blocksize = mci->write_bl_len;
 	data.flags = MMC_DATA_WRITE;
@@ -1299,6 +1309,10 @@ static struct driver_d mci_driver = {
 
 static int mci_init(void)
 {
+	sector_buf = memalign(32, 512);
+	if (!sector_buf)
+		return -ENOMEM;
+
 	return register_driver(&mci_driver);
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
