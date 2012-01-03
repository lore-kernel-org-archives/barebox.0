Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri0A4-00049M-5C
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 08:56:01 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ri09r-0006g6-FY
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 09:55:47 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1Ri09r-0006zL-E7
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 09:55:47 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  3 Jan 2012 09:55:33 +0100
Message-Id: <1325580934-26295-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325580934-26295-1-git-send-email-jbe@pengutronix.de>
References: <1325580934-26295-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] MTD/NAND/DOC: add forgotten change due to API change
To: barebox@lists.infradead.org

Commit 88ce7ef769de0306dd3c3eac98d437a92bed2ce9 introduces an additional
parameter to the function add_mtd_device(). It seems one of the callers was
left.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mtd/nand/diskonchip.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index 8323575..6da68dc 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -1418,7 +1418,7 @@ static int __init inftl_scan_bbt(struct mtd_info *mtd)
 	   do without it for non-INFTL use, since all it gives us is
 	   autopartitioning, but I want to give it more thought. */
 	if (!numparts) return -EIO;
-	add_mtd_device(mtd);
+	add_mtd_device(mtd, "nand");
 #ifdef CONFIG_MTD_PARTITIONS
 	if (!no_autopart)
 		add_mtd_partitions(mtd, parts, numparts);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
