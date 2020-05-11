Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l0-0008RH-75
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:40 +0200
Message-Id: <20200511072140.29610-24-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 23/23] mtd: nand: base: fix use of uninitialized struct member
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

ooblen is read in nand_do_read_ops, despite never having been assigned a
value. Because ooblen is used to indicate how many bytes of oobbuf are
usable and oobbuf is NULL, use 0 as initial value.

Found on ARCH=sandbox using clang-analyzer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 00f0f7588434..3f4c787f49da 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1688,6 +1688,7 @@ static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
 	nand_get_device(mtd, FL_READING);
 	ops.len = len;
 	ops.datbuf = buf;
+	ops.ooblen = 0;
 	ops.oobbuf = NULL;
 	ops.mode = MTD_OPS_PLACE_OOB;
 	ret = nand_do_read_ops(mtd, from, &ops);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
