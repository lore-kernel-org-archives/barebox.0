Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b016V-0000Q2-7E
 for barebox@lists.infradead.org; Tue, 10 May 2016 06:25:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 08:24:42 +0200
Message-Id: <1462861483-19983-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462861483-19983-1-git-send-email-s.hauer@pengutronix.de>
References: <1462861483-19983-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mtd: nand: Enable subpage reads
To: Barebox List <barebox@lists.infradead.org>

Until now we did not support subpage reads for smaller binary sizes.
Scanning UBI volumes on large page NANDs can be painfully slow,
subpage reads can speed this up significantly, so enable subpage reads.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mtd/nand.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index dfb94d7..76a6425 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -169,7 +169,7 @@ typedef enum {
 
 /* Device supports subpage reads */
 /* Disabled in barebox for smaller binary sizes */
-#define NAND_SUBPAGE_READ	(__BAREBOX__ ? 0x0 : 0x00001000)
+#define NAND_SUBPAGE_READ	(0x00001000)
 
 /* Options valid for Samsung large page devices */
 #define NAND_SAMSUNG_LP_OPTIONS NAND_CACHEPRG
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
