Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QOsHl-0008PK-IL
	for barebox@lists.infradead.org; Tue, 24 May 2011 14:08:39 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1QOsHj-00005t-2f
	for barebox@lists.infradead.org; Tue, 24 May 2011 16:08:35 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 24 May 2011 16:07:21 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201105241607.21271.jbe@pengutronix.de>
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
Subject: [PATCH/master] Always initialize oob_poi before writing OOB data
To: barebox@lists.infradead.org

The following patch came across the mtd mailing list today. I thinks its also 
valid for barebox (it handles a special corner case, but maybe it can hit us, 
too):

In nand_do_write_ops() code it is possible for a caller to provide
ops.oobbuf populated and ops.mode == MTD_OOB_AUTO, which currently
means that the chip->oob_poi buffer isn't initialised to all 0xFF.
The nand_fill_oob() method then carries out the task of copying
the provided OOB data to oob_poi, but with MTD_OOB_AUTO it skips
areas marked as unavailable by the layout struct, including the
bad block marker bytes.

An example of this causing issues is when the last OOB data read
was from the start of a bad block where the markers are not 0xFF,
and the caller wishes to write new OOB data at the beginning of
another block. In this scenario the caller would provide OOB data,
but nand_fill_oob() would skip the bad block marker bytes in
oob_poi before copying the OOB data provided by the caller.
This means that when the OOB data is written back to NAND,
the block is inadvertently marked as bad without the caller knowing.
This has been witnessed when using YAFFS2 where tags are stored
in the OOB.

This patch changes the code so that oob_poi is always initialised
to 0xFF to make sure no left over data is inadvertently written
back to OOB data.

The comment above is for the linux kernel, but the same is valid for barebox
and CPUs writing the OOB date controlled in software (like the Samsung
S3C2440 does).

Signed-off-by: Adam Thomson <adam.thomson@alcatel-lucent.com>
Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 89dc47b..376d2a9 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -303,9 +303,9 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 	    (chip->pagebuf << chip->page_shift) < (to + ops->len))
 		chip->pagebuf = -1;
 
-	/* If we're not given explicit OOB data, let it be 0xFF */
-	if (likely(!oob))
-		memset(chip->oob_poi, 0xff, mtd->oobsize);
+	/* Initialize to all 0xFF, to avoid the possibility of
+	   left over OOB data from a previous OOB read. */
+	memset(chip->oob_poi, 0xff, mtd->oobsize);
 
 	while(1) {
 		int bytes = mtd->writesize;


-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
