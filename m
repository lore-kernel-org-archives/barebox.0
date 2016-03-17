Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agVna-0000SB-7g
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:09:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:08:38 +0100
Message-Id: <1458212919-30507-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
References: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd: remove unused debug defines
To: Barebox List <barebox@lists.infradead.org>

MTD_DEBUG was only used by the i.MX Nand driver and is now unused.
Remove the mtd specific debug defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mtd/mtd.h | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 421a941..5ff09c0 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -311,25 +311,6 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs);
 
 int mtd_all_ff(const void *buf, unsigned int len);
 
-/*
- * Debugging macro and defines
- */
-#define MTD_DEBUG_LEVEL0	(0)	/* Quiet   */
-#define MTD_DEBUG_LEVEL1	(1)	/* Audible */
-#define MTD_DEBUG_LEVEL2	(2)	/* Loud    */
-#define MTD_DEBUG_LEVEL3	(3)	/* Noisy   */
-
-#ifdef CONFIG_MTD_DEBUG
-#define MTD_DEBUG(n, args...)				\
-	do {						\
-		if (n <= CONFIG_MTD_DEBUG_VERBOSE)	\
-			pr_info( args);		\
-	} while(0)
-#else /* CONFIG_MTD_DEBUG */
-#define MTD_DEBUG(n, args...) do { } while(0)
-
-#endif /* CONFIG_MTD_DEBUG */
-
 static inline int mtd_is_bitflip(int err) {
 	return err == -EUCLEAN;
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
