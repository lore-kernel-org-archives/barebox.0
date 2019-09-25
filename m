Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD17U-0004jj-FC
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 06:49:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2019 08:49:44 +0200
Message-Id: <20190925064944.21584-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] imx-bbu-nand-fcb: Mark block as bad when erasing it fails
To: Barebox List <barebox@lists.infradead.org>

When a block cannot be erased it must be marked as bad. Previously we
accidently ignored the erase failure and the the code just wrote the
firmware into that block which resulted in boot failure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index bb6dd1d4e9..aa3f733912 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -626,8 +626,15 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 			continue;
 
 		ret = mtd_peb_erase(mtd, block + i);
-		if (ret && ret != -EIO)
+		if (ret == -EIO) {
+			newbadblock = 1;
+
+			ret = mtd_peb_mark_bad(mtd, block + i);
+			if (ret)
+				return ret;
+		} else if (ret) {
 			return ret;
+		}
 	}
 
 	while (len > 0) {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
