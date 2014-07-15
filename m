Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7330-0006K7-KP
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 13:45:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Jul 2014 15:45:10 +0200
Message-Id: <1405431910-15431-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] introduce verbose debug
To: barebox@lists.infradead.org

During debugging it sometimes helps to me even more verbose. This
adds an additional debug level for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig   | 2 ++
 include/printk.h | 8 +++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index bba7f15..e7c22e5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -676,6 +676,7 @@ config COMPILE_LOGLEVEL
 	  5    normal but significant condition (notice)
 	  6    informational (info)
 	  7    debug-level messages (debug)
+	  8    verbose debug messages (vdebug)
 
 config DEFAULT_LOGLEVEL
 	int "default loglevel"
@@ -692,6 +693,7 @@ config DEFAULT_LOGLEVEL
 	  5    normal but significant condition (notice)
 	  6    informational (info)
 	  7    debug-level messages (debug)
+	  8    verbose debug messages (vdebug)
 
 config DEBUG_INFO
 	bool
diff --git a/include/printk.h b/include/printk.h
index f550f07..4543156 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -9,8 +9,11 @@
 #define MSG_NOTICE     5    /* normal but significant condition */
 #define MSG_INFO       6    /* informational */
 #define MSG_DEBUG      7    /* debug-level messages */
+#define MSG_VDEBUG     8    /* verbose debug messages */
 
-#ifdef DEBUG
+#ifdef VERBOSE_DEBUG
+#define LOGLEVEL	MSG_VDEBUG
+#elif defined DEBUG
 #define LOGLEVEL	MSG_DEBUG
 #else
 #define LOGLEVEL	CONFIG_COMPILE_LOGLEVEL
@@ -46,6 +49,8 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	__dev_printf(6, (dev) , format , ## arg)
 #define dev_dbg(dev, format, arg...)		\
 	__dev_printf(7, (dev) , format , ## arg)
+#define dev_vdbg(dev, format, arg...)		\
+	__dev_printf(8, (dev) , format , ## arg)
 
 #define __pr_printk(level, format, args...) \
 	({	\
@@ -65,5 +70,6 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 #define pr_info(fmt, arg...)	__pr_printk(6, pr_fmt(fmt), ##arg)
 #define pr_debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
+#define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
 
 #endif
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
