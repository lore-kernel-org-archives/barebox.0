Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S29KI-0004R8-Bj
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 22:45:52 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 27 Feb 2012 23:45:28 +0100
Message-Id: <1330382728-10708-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] drivers/mci: fix read/write stalling
To: barebox@lists.infradead.org

If a read or write operation encounters an error, the card
might stay in "recv" or "data" state, and never get back to
"tran" state.

In these cases, the host is required to send a CMD12 (end
transmission) to switch the FSM of the card back to "tran"
state, as described in MMC Specification, chapter "Data
Transfer Mode".

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/mci-core.c |   31 ++++++++++---------------------
 1 files changed, 10 insertions(+), 21 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 0bf4449..6432391 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -101,7 +101,7 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 static void *sector_buf;
 
 /**
- * Write one block of data to the card
+ * Write one or several blocks of data to the card
  * @param mci_dev MCI instance
  * @param src Where to read from to write to the card
  * @param blocknum Block number to write
@@ -140,23 +140,17 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 	data.flags = MMC_DATA_WRITE;
 
 	ret = mci_send_cmd(mci, &cmd, &data);
-	if (ret)
-		return ret;
-
-	if (blocks > 1) {
-		mci_setup_cmd(&cmd,
-			MMC_CMD_STOP_TRANSMISSION,
-			0, MMC_RSP_R1b);
-			ret = mci_send_cmd(mci, &cmd, NULL);
-			if (ret)
-				return ret;
+
+	if (ret || blocks > 1) {
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+		mci_send_cmd(mci, &cmd, NULL);
         }
 
 	return ret;
 }
 
 /**
- * Read one block of data from the card
+ * Read one or several block(s) of data from the card
  * @param mci MCI instance
  * @param dst Where to store the data read from the card
  * @param blocknum Block number to read
@@ -186,15 +180,10 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
 	data.flags = MMC_DATA_READ;
 
 	ret = mci_send_cmd(mci, &cmd, &data);
-	if (ret)
-		return ret;
-
-	if (blocks > 1) {
-		mci_setup_cmd(&cmd,
-			MMC_CMD_STOP_TRANSMISSION,
-			0,
-			MMC_RSP_R1b);
-			ret = mci_send_cmd(mci, &cmd, NULL);
+
+	if (ret || blocks > 1) {
+		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+		mci_send_cmd(mci, &cmd, NULL);
 	}
 	return ret;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
