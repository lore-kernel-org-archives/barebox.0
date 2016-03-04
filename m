Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abkFj-0005SE-UI
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:34:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Mar 2016 08:33:34 +0100
Message-Id: <1457076814-29170-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1457076814-29170-1-git-send-email-s.hauer@pengutronix.de>
References: <1457076814-29170-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: nand: default bitflip-reporting threshold to 75% of
 correction strength
To: Barebox List <barebox@lists.infradead.org>

Based on Kernel commit 240181fd0ffa6 from Brian Norris:

The MTD API reports -EUCLEAN only if the maximum number of bitflips
found in any ECC block exceeds a certain threshold. This is done to
avoid excessive -EUCLEAN reports to MTD users, which may induce
additional scrubbing of data, even when the ECC algorithm in use is
perfectly capable of handling the bitflips.

This threshold can be controlled by user-space (via sysfs), to allow
users to determine what they are willing to tolerate in their
application. But it still helps to have sane defaults.

In recent discussion [1], it was pointed out that our default threshold
is equal to the correction strength. That means that we won't actually
report any -EUCLEAN (i.e., "bitflips were corrected") errors until there
are almost too many to handle. It was determined that 3/4 of the
correction strength is probably a better default.

[1] http://lists.infradead.org/pipermail/linux-mtd/2015-January/057259.html

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 554d3d2..ec5a8b7 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3718,7 +3718,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	 * properly set.
 	 */
 	if (!mtd->bitflip_threshold)
-		mtd->bitflip_threshold = mtd->ecc_strength;
+		mtd->bitflip_threshold = DIV_ROUND_UP(mtd->ecc_strength * 3, 4);
 
 	/* Check, if we should skip the bad block table scan */
 	if (chip->options & NAND_SKIP_BBTSCAN)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
