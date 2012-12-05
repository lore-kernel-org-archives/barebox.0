Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgJhU-0002hV-7F
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:28:05 +0000
Date: Wed, 5 Dec 2012 19:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205182801.GI10369@pengutronix.de>
References: <20121205165337.GJ8327@game.jcrosoft.org>
 <1354727720-23063-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354727720-23063-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] mtd: nand: fix unaligned write support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 06:15:20PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> via cdev we may write unaligned data the code was drop in the commit
> 0a4b1c7e440a81819eb2137f923573a3055dc7a2
> mtd core: call driver write function with complete buffer
> 
> which is true for spi flashes but the code is still mandatory on nand

I suggest the following simpler approach.

Sascha


From 5248abe7e59f60085b9a2affd3db11a6ac0a9da9 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 5 Dec 2012 19:24:41 +0100
Subject: [PATCH] mtd nand: allow partial page writes

The nand layer handles partial page writes just fine. If the start or
end of the data is not page aligned, the nand layer will copy the data
to a temporary page buffer.
Remove the check which disallows partial page writes since this is what
we want to do on barebox when for example an image is written to nand
which is not padded to page size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_write.c |    7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 5ed04ce..9997127 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -273,13 +273,6 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 	if (!writelen)
 		return 0;
 
-	/* reject writes, which are not page aligned */
-	if (NOTALIGNED(to) || NOTALIGNED(ops->len)) {
-		printk(KERN_NOTICE "nand_write: "
-		       "Attempt to write not page aligned data\n");
-		return -EINVAL;
-	}
-
 	column = to & (mtd->writesize - 1);
 	subpage = column || (writelen & (mtd->writesize - 1));
 
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
