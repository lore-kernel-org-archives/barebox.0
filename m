Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004rh-Fb
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:06 +0200
Message-Id: <1433830875-31119-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] console: Add console_get_by_name
To: Barebox List <barebox@lists.infradead.org>

Commands like loadx/loady wish to find a console device by its name. Add
a function for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c | 13 +++++++++++++
 include/console.h       |  1 +
 2 files changed, 14 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index 41a6929..1e362ab 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -260,6 +260,19 @@ struct console_device *console_get_by_dev(struct device_d *dev)
 }
 EXPORT_SYMBOL(console_get_by_dev);
 
+struct console_device *console_get_by_name(const char *name)
+{
+	struct console_device *cdev;
+
+	for_each_console(cdev) {
+		if (!strcmp(cdev->devname, name))
+			return cdev;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(console_get_by_name);
+
 /*
  * @brief returns current used console device
  *
diff --git a/include/console.h b/include/console.h
index 945bdcb..c2622c9 100644
--- a/include/console.h
+++ b/include/console.h
@@ -63,6 +63,7 @@ int console_register(struct console_device *cdev);
 int console_unregister(struct console_device *cdev);
 
 struct console_device *console_get_by_dev(struct device_d *dev);
+struct console_device *console_get_by_name(const char *name);
 
 extern struct list_head console_list;
 #define for_each_console(console) list_for_each_entry(console, &console_list, list)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
