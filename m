Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xs-KS
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:46:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:36 +0100
Message-Id: <1359449147-30145-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] consolidate print* in a single header
To: barebox@lists.infradead.org

From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h |   17 +---------------
 include/driver.h |   29 ---------------------------
 include/printk.h |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 59 insertions(+), 45 deletions(-)
 create mode 100644 include/printk.h

diff --git a/include/common.h b/include/common.h
index b1c96de..32a5d96 100644
--- a/include/common.h
+++ b/include/common.h
@@ -29,6 +29,7 @@
 #include <linux/kernel.h>
 #include <linux/stddef.h>
 #include <asm/common.h>
+#include <printk.h>
 
 /*
  * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
@@ -48,22 +49,6 @@
 #error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
 #endif
 
-#define pr_info(fmt, arg...)	printf(fmt, ##arg)
-#define pr_notice(fmt, arg...)	printf(fmt, ##arg)
-#define pr_err(fmt, arg...)	printf(fmt, ##arg)
-#define pr_warning(fmt, arg...)	printf(fmt, ##arg)
-#define pr_crit(fmt, arg...)	printf(fmt, ##arg)
-#define pr_alert(fmt, arg...)	printf(fmt, ##arg)
-#define pr_emerg(fmt, arg...)	printf(fmt, ##arg)
-
-#ifdef DEBUG
-#define pr_debug(fmt, arg...)	printf(fmt, ##arg)
-#else
-#define pr_debug(fmt, arg...)	do {} while(0)
-#endif
-
-#define debug(fmt, arg...)	pr_debug(fmt, ##arg)
-
 #define BUG() do { \
 	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
 	panic("BUG!"); \
diff --git a/include/driver.h b/include/driver.h
index 7ad0374..31f5d69 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -358,35 +358,6 @@ static inline int dev_close_default(struct device_d *dev, struct filep *f)
 	return 0;
 }
 
-/* debugging and troubleshooting/diagnostic helpers. */
-
-int dev_printf(const struct device_d *dev, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
-
-
-#define dev_emerg(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#define dev_alert(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#define dev_crit(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#define dev_err(dev, format, arg...)		\
-	dev_printf(dev , format , ## arg)
-#define dev_warn(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#define dev_notice(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#define dev_info(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-
-#if defined(DEBUG)
-#define dev_dbg(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#else
-#define dev_dbg(dev, format, arg...)		\
-	({ if (0) dev_printf((dev), format, ##arg); 0; })
-#endif
-
 struct bus_type {
 	char *name;
 	int (*match)(struct device_d *dev, struct driver_d *drv);
diff --git a/include/printk.h b/include/printk.h
new file mode 100644
index 0000000..9e6f4bd
--- /dev/null
+++ b/include/printk.h
@@ -0,0 +1,58 @@
+#ifndef __PRINTK_H
+#define __PRINTK_H
+
+#define MSG_EMERG      0    /* system is unusable */
+#define MSG_ALERT      1    /* action must be taken immediately */
+#define MSG_CRIT       2    /* critical conditions */
+#define MSG_ERR        3    /* error conditions */
+#define MSG_WARNING    4    /* warning conditions */
+#define MSG_NOTICE     5    /* normal but significant condition */
+#define MSG_INFO       6    /* informational */
+#define MSG_DEBUG      7    /* debug-level messages */
+
+/* debugging and troubleshooting/diagnostic helpers. */
+
+int dev_printf(const struct device_d *dev, const char *format, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+
+
+#define dev_emerg(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+#define dev_alert(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+#define dev_crit(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+#define dev_err(dev, format, arg...)		\
+	dev_printf(dev , format , ## arg)
+#define dev_warn(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+#define dev_notice(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+#define dev_info(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+
+#if defined(DEBUG)
+#define dev_dbg(dev, format, arg...)		\
+	dev_printf((dev) , format , ## arg)
+#else
+#define dev_dbg(dev, format, arg...)		\
+	({ if (0) dev_printf((dev), format, ##arg); 0; })
+#endif
+
+#define pr_info(fmt, arg...)	printk(fmt, ##arg)
+#define pr_notice(fmt, arg...)	printk(fmt, ##arg)
+#define pr_err(fmt, arg...)	printk(fmt, ##arg)
+#define pr_warning(fmt, arg...)	printk(fmt, ##arg)
+#define pr_crit(fmt, arg...)	printk(fmt, ##arg)
+#define pr_alert(fmt, arg...)	printk(fmt, ##arg)
+#define pr_emerg(fmt, arg...)	printk(fmt, ##arg)
+
+#ifdef DEBUG
+#define pr_debug(fmt, arg...)	printk(fmt, ##arg)
+#define debug(fmt, arg...)	printf(fmt, ##arg)
+#else
+#define pr_debug(fmt, arg...)	do {} while(0)
+#define debug(fmt, arg...)	do {} while(0)
+#endif
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
