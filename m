Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xm-G6
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:45:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:43 +0100
Message-Id: <1359449147-30145-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] introduce compile time loglevel
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig   |   16 +++++++++++++
 include/printk.h |   66 +++++++++++++++++++++++++++++++-----------------------
 2 files changed, 54 insertions(+), 28 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index b60b78b..30d6107 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -637,6 +637,22 @@ endmenu
 
 menu "Debugging"
 
+config COMPILE_LOGLEVEL
+	int "loglevel"
+	default 6
+	help
+	  This defines the maximum loglevel compiled into the binary. Less important
+	  messages will be compiled away resulting in a smaller binary.
+
+	  0    system is unusable (emerg)
+	  1    action must be taken immediately (alert)
+	  2    critical conditions (crit)
+	  3    error conditions (err)
+	  4    warning conditions (warn)
+	  5    normal but significant condition (notice)
+	  6    informational (info)
+	  7    debug-level messages (debug)
+
 config DEBUG_INFO
 	bool
 	prompt "enable debug symbols"
diff --git a/include/printk.h b/include/printk.h
index 9e6f4bd..82be308 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -10,49 +10,59 @@
 #define MSG_INFO       6    /* informational */
 #define MSG_DEBUG      7    /* debug-level messages */
 
+#ifdef DEBUG
+#define LOGLEVEL	MSG_DEBUG
+#else
+#define LOGLEVEL	CONFIG_COMPILE_LOGLEVEL
+#endif
+
 /* debugging and troubleshooting/diagnostic helpers. */
 
 int dev_printf(const struct device_d *dev, const char *format, ...)
 	__attribute__ ((format(__printf__, 2, 3)));
 
+#define __dev_printf(level, dev, format, args...) \
+	({	\
+		int ret = 0; \
+		if (level <= LOGLEVEL) \
+			ret = dev_printf(dev, format, ##args);	\
+		ret;						\
+	 })
+
 
 #define dev_emerg(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
+	__dev_printf(0, (dev) , format , ## arg)
 #define dev_alert(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
+	__dev_printf(1, (dev) , format , ## arg)
 #define dev_crit(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
+	__dev_printf(2, (dev) , format , ## arg)
 #define dev_err(dev, format, arg...)		\
-	dev_printf(dev , format , ## arg)
+	__dev_printf(3, (dev) , format , ## arg)
 #define dev_warn(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
+	__dev_printf(4, (dev) , format , ## arg)
 #define dev_notice(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
+	__dev_printf(5, (dev) , format , ## arg)
 #define dev_info(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-
-#if defined(DEBUG)
+	__dev_printf(6, (dev) , format , ## arg)
 #define dev_dbg(dev, format, arg...)		\
-	dev_printf((dev) , format , ## arg)
-#else
-#define dev_dbg(dev, format, arg...)		\
-	({ if (0) dev_printf((dev), format, ##arg); 0; })
-#endif
+	__dev_printf(7, (dev) , format , ## arg)
 
-#define pr_info(fmt, arg...)	printk(fmt, ##arg)
-#define pr_notice(fmt, arg...)	printk(fmt, ##arg)
-#define pr_err(fmt, arg...)	printk(fmt, ##arg)
-#define pr_warning(fmt, arg...)	printk(fmt, ##arg)
-#define pr_crit(fmt, arg...)	printk(fmt, ##arg)
-#define pr_alert(fmt, arg...)	printk(fmt, ##arg)
-#define pr_emerg(fmt, arg...)	printk(fmt, ##arg)
+#define __pr_printk(level, format, args...) \
+	({	\
+		int ret = 0;	\
+		if (level <= LOGLEVEL) \
+			ret = printk(format, ##args);	\
+		ret;					\
+	 })
 
-#ifdef DEBUG
-#define pr_debug(fmt, arg...)	printk(fmt, ##arg)
-#define debug(fmt, arg...)	printf(fmt, ##arg)
-#else
-#define pr_debug(fmt, arg...)	do {} while(0)
-#define debug(fmt, arg...)	do {} while(0)
-#endif
+#define pr_emerg(fmt, arg...)	__pr_printk(0, fmt, ##arg)
+#define pr_alert(fmt, arg...)	__pr_printk(1, fmt, ##arg)
+#define pr_crit(fmt, arg...)	__pr_printk(2, fmt, ##arg)
+#define pr_warning(fmt, arg...)	__pr_printk(3, fmt, ##arg)
+#define pr_err(fmt, arg...)	__pr_printk(4, fmt, ##arg)
+#define pr_notice(fmt, arg...)	__pr_printk(5, fmt, ##arg)
+#define pr_info(fmt, arg...)	__pr_printk(6, fmt, ##arg)
+#define pr_debug(fmt, arg...)	__pr_printk(7, fmt, ##arg)
+#define debug(fmt, arg...)	__pr_printk(7, fmt, ##arg)
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
