Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9RdH-0007hs-T2
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 09:15:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2018 11:15:07 +0200
Message-Id: <20181008091507.2844-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: do not attach already attached UBI
To: Barebox List <barebox@lists.infradead.org>

in mtd_detect we do not check if the mtd is already attached to UBI. If
it is we get the error:

ERROR: ubi: mtd0 is already attached to ubi0

Check before trying to attach it to avoid this message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ae7818a189..15fe9ce798 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -589,11 +589,8 @@ static int mtd_detect(struct device_d *dev)
 			continue;
 
 		filetype = file_detect_type(buf, bufsize);
-		if (filetype == filetype_ubi) {
+		if (filetype == filetype_ubi && ubi_num_get_by_mtd(mtd) < 0)
 			ret = ubi_attach_mtd_dev(mtd, UBI_DEV_NUM_AUTO, 0, 20);
-			if (ret == -EEXIST)
-				ret = 0;
-		}
 
 		break;
 	}
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
