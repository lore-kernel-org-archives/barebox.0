Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL6jd-0002pY-FH
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:04:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Feb 2015 10:03:29 +0100
Message-Id: <1423559014-3783-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423559014-3783-1-git-send-email-s.hauer@pengutronix.de>
References: <1423559014-3783-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] mtd: nand: omap: Fix OMAP_ECC_BCH8_CODE_HW ecc mode
To: Barebox List <barebox@lists.infradead.org>

This is broken since:

| commit 00f119a29387cfb1b188fcc4daa4aa94186ac7a9
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Fri Aug 1 14:09:48 2014 +0200
|
|     mtd: omap gpmc: fix ecc bytes/size
|
|     The ecc bytes / size are per subpage, not per page.
|
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

The ecc code in omap_correct_data() expects to correct a whole page
at once, so we must tell the nand layer that we have 4 * 13 bytes of
ecc bytes and 4 * 512 bytes of ecc size. Otherwise the NAND layer will
iterate over 512 byte steps over a page and call the .correct callback
each time.

This only works for 2k pagesize and needs revisit once other page sizes
shall be supported. It would be better to tell the nand layer the real
ecc bytes (13) and ecc size (512) instead and drop the iteration in
omap_correct_bch(). However, this needs better testing so it isn't done
here now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index b1d266f..d254042 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -815,8 +815,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 			omap_oobinfo.eccpos[i] = i + offset;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW:
-		oinfo->nand.ecc.bytes    = 13;
-		oinfo->nand.ecc.size     = 512;
+		oinfo->nand.ecc.bytes    = 13 * 4;
+		oinfo->nand.ecc.size     = 512 * 4;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
