Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xp-JA
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:45:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:44 +0100
Message-Id: <1359449147-30145-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] introduce pr_fmt
To: barebox@lists.infradead.org

With this the files can give more context to their pr_* messages by
specifying a

at the beginning of the files. Basically the same mechanism as in the
Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h |   22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 82be308..1d45616 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -55,14 +55,18 @@ int dev_printf(const struct device_d *dev, const char *format, ...)
 		ret;					\
 	 })
 
-#define pr_emerg(fmt, arg...)	__pr_printk(0, fmt, ##arg)
-#define pr_alert(fmt, arg...)	__pr_printk(1, fmt, ##arg)
-#define pr_crit(fmt, arg...)	__pr_printk(2, fmt, ##arg)
-#define pr_warning(fmt, arg...)	__pr_printk(3, fmt, ##arg)
-#define pr_err(fmt, arg...)	__pr_printk(4, fmt, ##arg)
-#define pr_notice(fmt, arg...)	__pr_printk(5, fmt, ##arg)
-#define pr_info(fmt, arg...)	__pr_printk(6, fmt, ##arg)
-#define pr_debug(fmt, arg...)	__pr_printk(7, fmt, ##arg)
-#define debug(fmt, arg...)	__pr_printk(7, fmt, ##arg)
+#ifndef pr_fmt
+#define pr_fmt(fmt) fmt
+#endif
+
+#define pr_emerg(fmt, arg...)	__pr_printk(0, pr_fmt(fmt), ##arg)
+#define pr_alert(fmt, arg...)	__pr_printk(1, pr_fmt(fmt), ##arg)
+#define pr_crit(fmt, arg...)	__pr_printk(2, pr_fmt(fmt), ##arg)
+#define pr_warning(fmt, arg...)	__pr_printk(3, pr_fmt(fmt), ##arg)
+#define pr_err(fmt, arg...)	__pr_printk(4, pr_fmt(fmt), ##arg)
+#define pr_notice(fmt, arg...)	__pr_printk(5, pr_fmt(fmt), ##arg)
+#define pr_info(fmt, arg...)	__pr_printk(6, pr_fmt(fmt), ##arg)
+#define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
+#define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
