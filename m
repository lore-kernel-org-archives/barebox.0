Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpij-0007XT-J2
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:26:28 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:26:15 +0100
Message-Id: <1288599979-3905-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 1/5] devinfo: use subtree only with devinfo
To: barebox@lists.infradead.org

The do_devinfo_subtree() function is only used if devinfo is compiled
in, so put it under the same ifdef. This avoids the following warning
when built with allnoconfig:

lib/driver.c:247: warning: 'do_devinfo_subtree' defined but not used

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 lib/driver.c |   42 +++++++++++++++++++++---------------------
 1 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index 66d8fee..a05e7e3 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -244,6 +244,27 @@ int dummy_probe(struct device_d *dev)
 }
 EXPORT_SYMBOL(dummy_probe);
 
+const char *dev_id(const struct device_d *dev)
+{
+	static char buf[sizeof(unsigned long) * 2];
+
+	sprintf(buf, FORMAT_DRIVER_MANE_ID, dev->name, dev->id);
+
+	return buf;
+}
+
+void devices_shutdown(void)
+{
+	struct device_d *dev;
+
+	list_for_each_entry(dev, &active, active) {
+		if (dev->driver->remove)
+			dev->driver->remove(dev);
+	}
+}
+
+#ifdef CONFIG_CMD_DEVINFO
+
 static int do_devinfo_subtree(struct device_d *dev, int depth, char edge)
 {
 	struct device_d *child;
@@ -276,27 +297,6 @@ static int do_devinfo_subtree(struct device_d *dev, int depth, char edge)
 	return 0;
 }
 
-const char *dev_id(const struct device_d *dev)
-{
-	static char buf[sizeof(unsigned long) * 2];
-
-	sprintf(buf, FORMAT_DRIVER_MANE_ID, dev->name, dev->id);
-
-	return buf;
-}
-
-void devices_shutdown(void)
-{
-	struct device_d *dev;
-
-	list_for_each_entry(dev, &active, active) {
-		if (dev->driver->remove)
-			dev->driver->remove(dev);
-	}
-}
-
-#ifdef CONFIG_CMD_DEVINFO
-
 static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 {
 	struct device_d *dev;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
