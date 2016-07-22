Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXIc-0001Bu-VK
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:03:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:02:56 +0200
Message-Id: <1469181776-1818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] printk: Fix pr_cont
To: Barebox List <barebox@lists.infradead.org>

pr_cont is meant to continue a line, so do not printf the prefix given
with pr_fmt() again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/printk.h b/include/printk.h
index f62e57d..b4ae0b3 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -91,7 +91,7 @@ static inline int pr_print(int level, const char *format, ...)
 #define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
-#define pr_cont(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
+#define pr_cont(fmt, arg...)	__pr_printk(0, fmt, ##arg)
 
 #define printk_once(fmt, ...)					\
 ({								\
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
