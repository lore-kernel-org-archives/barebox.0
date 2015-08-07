Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp32.i.mail.ru ([94.100.177.92])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNdCT-0006rW-9d
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 08:40:27 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  7 Aug 2015 11:39:55 +0300
Message-Id: <1438936795-5608-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] mci: mmci: Fix status flags check
To: barebox@lists.infradead.org

Data transfer procedures should check _DATA_ flags instead of _CMD_.
---
 drivers/mci/mmci.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 608cac1..9d1e858 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -269,18 +269,18 @@ static int read_bytes(struct mci_host *mci, char *dest, unsigned int blkcount, u
 		xfercount -= len;
 		dest += len;
 		status = mmci_readl(host, MMCISTATUS);
-		status_err = status & (MCI_CMDCRCFAIL | MCI_DATATIMEOUT |
-			       MCI_RXOVERRUN);
+		status_err = status & (MCI_DATACRCFAIL | MCI_DATATIMEOUT |
+			     MCI_RXOVERRUN);
 	} while(xfercount && !status_err);
 
 	status_err = status &
-		(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND |
+		(MCI_DATACRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND |
 		 MCI_RXOVERRUN);
 
 	while (!status_err) {
 		status = mmci_readl(host, MMCISTATUS);
 		status_err = status &
-			(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND |
+			(MCI_DATACRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND |
 			 MCI_RXOVERRUN);
 	}
 
@@ -288,7 +288,7 @@ static int read_bytes(struct mci_host *mci, char *dest, unsigned int blkcount, u
 		dev_err(host->hw_dev, "Read data timed out, xfercount: %u, status: 0x%08X\n",
 			xfercount, status);
 		return -ETIMEDOUT;
-	} else if (status & MCI_CMDCRCFAIL) {
+	} else if (status & MCI_DATACRCFAIL) {
 		dev_err(host->hw_dev, "Read data bytes CRC error: 0x%x\n", status);
 		return -EILSEQ;
 	} else if (status & MCI_RXOVERRUN) {
@@ -351,7 +351,7 @@ static int write_bytes(struct mci_host *mci, char *dest, unsigned int blkcount,
 	dev_dbg(host->hw_dev, "write_bytes: blkcount=%u blksize=%u\n", blkcount, blksize);
 
 	status = mmci_readl(host, MMCISTATUS);
-	status_err = status & (MCI_CMDCRCFAIL | MCI_DATATIMEOUT);
+	status_err = status & (MCI_DATACRCFAIL | MCI_DATATIMEOUT);
 
 	do {
 		len = mmci_pio_write(host, dest, xfercount, status);
@@ -359,11 +359,11 @@ static int write_bytes(struct mci_host *mci, char *dest, unsigned int blkcount,
 		dest += len;
 
 		status = mmci_readl(host, MMCISTATUS);
-		status_err = status & (MCI_CMDCRCFAIL | MCI_DATATIMEOUT);
+		status_err = status & (MCI_DATACRCFAIL | MCI_DATATIMEOUT);
 	} while (!status_err && xfercount);
 
 	status_err = status &
-		(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND);
+		(MCI_DATACRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND);
 	while (!status_err) {
 		status = mmci_readl(host, MMCISTATUS);
 		status_err = status &
@@ -374,7 +374,7 @@ static int write_bytes(struct mci_host *mci, char *dest, unsigned int blkcount,
 		dev_err(host->hw_dev, "Write data timed out, xfercount:%u,status:0x%08X\n",
 		       xfercount, status);
 		return -ETIMEDOUT;
-	} else if (status & MCI_CMDCRCFAIL) {
+	} else if (status & MCI_DATACRCFAIL) {
 		dev_err(host->hw_dev, "Write data CRC error\n");
 		return -EILSEQ;
 	}
-- 
2.3.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
