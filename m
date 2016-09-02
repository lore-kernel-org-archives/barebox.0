Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bfkBl-0004LJ-UZ
 for barebox@lists.infradead.org; Fri, 02 Sep 2016 08:51:07 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri,  2 Sep 2016 10:50:37 +0200
Message-Id: <20160902085037.11653-1-m.olbrich@pengutronix.de>
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
Subject: [PATCH] mci: mmci: Fix read FIFO handling
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

According to the Linux kernel and the qemu code, the MMCIFIFOCNT contains
the remaining number of words to read, excluding those that are already in
the FIFO. So the current number of bytes in the FIFO is
host_remain - (readl(base + MMCIFIFOCNT) << 2).

Also writing to MMCIDATACTRL will reset the read counter. As a result,
MCI_DATABLOCKEND is never set and read_bytes() waits forever.

With this change, SD-Card support on qemu vexpress works correctly.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 drivers/mci/mmci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 9d1e858917de..7489ee03a13c 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -212,7 +212,7 @@ static u64 mmci_pio_read(struct mmci_host *host, char *buffer, unsigned int host
 	struct variant_data *variant = host->variant;
 
 	do {
-		int count = readl(base + MMCIFIFOCNT) << 2;
+		int count = host_remain - (readl(base + MMCIFIFOCNT) << 2);
 
 		if (count > host_remain)
 			count = host_remain;
@@ -264,7 +264,6 @@ static int read_bytes(struct mci_host *mci, char *dest, unsigned int blkcount, u
 	dev_dbg(host->hw_dev, "read_bytes: blkcount=%u blksize=%u\n", blkcount, blksize);
 
 	do {
-		mmci_writel(host, MMCIDATACTRL, mmci_readl(host, MMCIDATACTRL));
 		len = mmci_pio_read(host, dest, xfercount);
 		xfercount -= len;
 		dest += len;
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
