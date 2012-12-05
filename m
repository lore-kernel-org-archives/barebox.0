Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgKFB-0007sj-2W
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 19:02:53 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  5 Dec 2012 20:02:47 +0100
Message-Id: <1354734167-13486-1-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <20121205185036.GM10369@pengutronix.de>
References: <20121205185036.GM10369@pengutronix.de>
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
Subject: [PATCH V2] mtd: nand: mxs: reset BCH earlier, too,
 to avoid NAND startup problems
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

It could happen (1 out of 100 times) that NAND did not start up
correctly after warm rebooting, so barebox could not find its
environment or DMA timed out due to a stalled BCH. When resetting BCH
together with GPMI, the issue could not be observed anymore. We probably
need the consistent state already before sending commands to NAND.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c |   13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 975a44f..c4509d3 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1128,6 +1128,7 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 int mxs_nand_hw_init(struct mxs_nand_info *info)
 {
 	void __iomem *gpmi_regs = (void *)MXS_GPMI_BASE;
+	void __iomem *bch_regs = (void __iomem *)MXS_BCH_BASE;
 	int i = 0, ret;
 	u32 val;
 
@@ -1153,6 +1154,15 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 	if (ret)
 		return ret;
 
+	val = readl(gpmi_regs + GPMI_VERSION);
+	info->version = val >> GPMI_VERSION_MINOR_OFFSET;
+
+	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
+	ret = mxs_reset_block(bch_regs + BCH_CTRL,
+				info->version == GPMI_VERSION_TYPE_MX23);
+	if (ret)
+		return ret;
+
 	/*
 	 * Choose NAND mode, set IRQ polarity, disable write protection and
 	 * select BCH ECC.
@@ -1163,9 +1173,6 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 		GPMI_CTRL1_BCH_MODE;
 	writel(val, gpmi_regs + GPMI_CTRL1);
 
-	val = readl(gpmi_regs + GPMI_VERSION);
-	info->version = val >> GPMI_VERSION_MINOR_OFFSET;
-
 	return 0;
 
 err2:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
