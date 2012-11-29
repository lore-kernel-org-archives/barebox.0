Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9NX-0008PJ-Ip
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:02:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:02:24 +0100
Message-Id: <1354215748-25394-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] mci: Add STUFF_BITS and use it
To: barebox@lists.infradead.org

This adds the STUFF_BITS macro from the kernel to extract numbers
from the csd. This also fixes several places where the csd fields
in SD cards differ from MMC cards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   41 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bf2b0f8..0d601e3 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -37,6 +37,20 @@
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
+#define UNSTUFF_BITS(resp,start,size)					\
+	({								\
+		const int __size = size;				\
+		const u32 __mask = (__size < 32 ? 1 << __size : 0) - 1;	\
+		const int __off = 3 - ((start) / 32);			\
+		const int __shft = (start) & 31;			\
+		u32 __res;						\
+									\
+		__res = resp[__off] >> __shft;				\
+		if (__size + __shft > 32)				\
+			__res |= resp[__off-1] << ((32 - __shft) % 32);	\
+		__res & __mask;						\
+	})
+
 /**
  * @file
  * @brief Memory Card framework
@@ -724,7 +738,7 @@ static void mci_extract_max_tran_speed_from_csd(struct mci *mci)
  */
 static void mci_extract_block_lengths_from_csd(struct mci *mci)
 {
-	mci->read_bl_len = 1 << ((mci->csd[1] >> 16) & 0xf);
+	mci->read_bl_len = 1 << UNSTUFF_BITS(mci->csd, 80, 4);
 
 	if (IS_SD(mci))
 		mci->write_bl_len = mci->read_bl_len;	/* FIXME why? */
@@ -1165,7 +1179,10 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
  */
 static unsigned extract_mid(struct mci *mci)
 {
-	return mci->cid[0] >> 24;
+	if (!IS_SD(mci) && mci->version <= MMC_VERSION_1_4)
+		return UNSTUFF_BITS(mci->cid, 104, 24);
+	else
+		return UNSTUFF_BITS(mci->cid, 120, 8);
 }
 
 /**
@@ -1198,7 +1215,15 @@ static unsigned extract_prv(struct mci *mci)
  */
 static unsigned extract_psn(struct mci *mci)
 {
-	return (mci->cid[2] << 8) | (mci->cid[3] >> 24);
+	if (IS_SD(mci)) {
+		return UNSTUFF_BITS(mci->csd, 24, 32);
+	} else {
+		if (mci->version > MMC_VERSION_1_4)
+			return UNSTUFF_BITS(mci->cid, 16, 32);
+		else
+			return UNSTUFF_BITS(mci->cid, 16, 24);
+	}
+
 }
 
 /**
@@ -1209,7 +1234,10 @@ static unsigned extract_psn(struct mci *mci)
  */
 static unsigned extract_mtd_month(struct mci *mci)
 {
-	return (mci->cid[3] >> 8) & 0xf;
+	if (IS_SD(mci))
+		return UNSTUFF_BITS(mci->cid, 8, 4);
+	else
+		return UNSTUFF_BITS(mci->cid, 12, 4);
 }
 
 /**
@@ -1221,7 +1249,10 @@ static unsigned extract_mtd_month(struct mci *mci)
  */
 static unsigned extract_mtd_year(struct mci *mci)
 {
-	return ((mci->cid[3] >> 12) & 0xff) + 2000U;
+	if (IS_SD(mci))
+		return UNSTUFF_BITS(mci->cid, 12, 8) + 2000;
+	else
+		return UNSTUFF_BITS(mci->cid, 8, 4) + 1997;
 }
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
