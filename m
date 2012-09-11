Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQZQ-0003lI-Mo
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:32:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Sep 2012 15:31:52 +0200
Message-Id: <1347370313-15184-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] driver: rewrite dev_printf as a function
To: barebox@lists.infradead.org

Printing device context normally should be "driver instance:",
but instead we printed the device name twice. This patch fixes
this and as a bonus makes the binary a bit smaller. Instead of
a '@' between driver and instance this function now prints a
whitespace which is a bit more like Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |   19 +++++++++++++++++++
 include/driver.h      |    6 +++---
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6cd4286..47d3803 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -313,6 +313,25 @@ const char *dev_id(const struct device_d *dev)
 	return buf;
 }
 
+int dev_printf(const struct device_d *dev, const char *format, ...)
+{
+	va_list args;
+	int ret = 0;
+
+	if (dev->driver && dev->driver->name)
+		ret += printf("%s ", dev->driver->name);
+
+	ret += printf("%s: ", dev_name(dev));
+
+	va_start(args, format);
+
+	ret += vprintf(format, args);
+
+	va_end(args);
+
+	return ret;
+}
+
 void devices_shutdown(void)
 {
 	struct device_d *dev;
diff --git a/include/driver.h b/include/driver.h
index 0fecc7a..c74f245 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -333,9 +333,9 @@ static inline int dev_close_default(struct device_d *dev, struct filep *f)
 
 /* debugging and troubleshooting/diagnostic helpers. */
 
-#define dev_printf(dev, format, arg...)	\
-	printf("%s@%s: " format , (dev)->name , \
-	       dev_name(dev) , ## arg)
+int dev_printf(const struct device_d *dev, const char *format, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+
 
 #define dev_emerg(dev, format, arg...)		\
 	dev_printf((dev) , format , ## arg)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
