Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9Nf-0008Rs-I0
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:02:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:02:25 +0100
Message-Id: <1354215748-25394-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
References: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] mci: Fix capacity calculation for high capacity MMC cards
To: barebox@lists.infradead.org

For these cards we have to calculate the size using the ext csd
sector count fields.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 0d601e3..942d126 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -758,14 +758,21 @@ static void mci_extract_card_capacity_from_csd(struct mci *mci)
 	uint64_t csize, cmult;
 
 	if (mci->high_capacity) {
-		csize = (mci->csd[1] & 0x3f) << 16 | (mci->csd[2] & 0xffff0000) >> 16;
-		cmult = 8;
+		if (IS_SD(mci)) {
+			csize = UNSTUFF_BITS(mci->csd, 48, 22);
+			mci->capacity = (1 + csize) << 10;
+		} else {
+			mci->capacity = mci->ext_csd[EXT_CSD_SEC_CNT] << 0 |
+				mci->ext_csd[EXT_CSD_SEC_CNT + 1] << 8 |
+				mci->ext_csd[EXT_CSD_SEC_CNT + 2] << 16 |
+				mci->ext_csd[EXT_CSD_SEC_CNT + 3] << 24;
+		}
 	} else {
-		csize = (mci->csd[1] & 0x3ff) << 2 | (mci->csd[2] & 0xc0000000) >> 30;
-		cmult = (mci->csd[2] & 0x00038000) >> 15;
+		cmult = UNSTUFF_BITS(mci->csd, 47, 3);
+		csize = UNSTUFF_BITS(mci->csd, 62, 12);
+		mci->capacity = (csize + 1) << (cmult + 2);
 	}
 
-	mci->capacity = (csize + 1) << (cmult + 2);
 	mci->capacity *= mci->read_bl_len;
 	dev_dbg(mci->mci_dev, "Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 }
@@ -996,7 +1003,6 @@ static int mci_startup(struct mci *mci)
 	mci_detect_version_from_csd(mci);
 	mci_extract_max_tran_speed_from_csd(mci);
 	mci_extract_block_lengths_from_csd(mci);
-	mci_extract_card_capacity_from_csd(mci);
 
 	/* sanitiy? */
 	if (mci->read_bl_len > SECTOR_SIZE) {
@@ -1032,6 +1038,8 @@ static int mci_startup(struct mci *mci)
 	if (err)
 		return err;
 
+	mci_extract_card_capacity_from_csd(mci);
+
 	/* Restrict card's capabilities by what the host can do */
 	mci->card_caps &= host->host_caps;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
