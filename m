Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkcvk-0003zR-UG
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 15:48:37 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 17 Dec 2012 16:48:23 +0100
Message-Id: <1355759313-23329-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
References: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V3 01/11] mtd: drop custom is_power_of_2()
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

We have proper version in log2.h these days.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/ubi/ubi-barebox.h |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 72f29a6..7574607 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -25,6 +25,7 @@
 #include <linux/string.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/ubi.h>
+#include <linux/log2.h>
 
 #define crc32(seed, data, length)  crc32_no_comp(seed, (unsigned char const *)data, length)
 
@@ -53,10 +54,6 @@ do {									\
 #define put_device(...)
 #define ubi_sysfs_init(...)		0
 #define ubi_sysfs_close(...)		do { } while (0)
-static inline int is_power_of_2(unsigned long n)
-{
-	return (n != 0 && ((n & (n - 1)) == 0));
-}
 
 /* FIXME */
 #define MKDEV(...)			0
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
