Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aMk-0004I7-5Y
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 08:19:44 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Aug 2020 10:19:25 +0200
Message-Id: <20200817081929.2329-4-o.rempel@pengutronix.de>
In-Reply-To: <20200817081929.2329-1-o.rempel@pengutronix.de>
References: <20200817081929.2329-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v4 3/7] common: console_common: add of_console_get_by_alias()
 helper
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Add helper function to get console device by devicetree alias

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/console_common.c | 18 ++++++++++++++++++
 include/console.h       |  1 +
 2 files changed, 19 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index a174c2deed..8cd57e623d 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -23,6 +23,7 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <of.h>
 #include <password.h>
 #include <clock.h>
 #include <malloc.h>
@@ -323,6 +324,23 @@ struct console_device *console_get_first_active(void)
 }
 EXPORT_SYMBOL(console_get_first_active);
 
+struct console_device *of_console_get_by_alias(const char *alias)
+{
+	struct device_node *node;
+	struct device_d *dev;
+
+	node = of_find_node_by_alias(NULL, alias);
+	if (!node)
+		return NULL;
+
+	dev = of_find_device_by_node(node);
+	if (!dev)
+		return NULL;
+
+	return console_get_by_dev(dev);
+}
+EXPORT_SYMBOL(of_console_get_by_alias);
+
 #endif /* !CONFIG_CONSOLE_NONE */
 
 int dprintf(int file, const char *fmt, ...)
diff --git a/include/console.h b/include/console.h
index 5b5c037026..a71d0da42e 100644
--- a/include/console.h
+++ b/include/console.h
@@ -87,6 +87,7 @@ int console_unregister(struct console_device *cdev);
 
 struct console_device *console_get_by_dev(struct device_d *dev);
 struct console_device *console_get_by_name(const char *name);
+struct console_device *of_console_get_by_alias(const char *alias);
 
 extern struct list_head console_list;
 #define for_each_console(console) list_for_each_entry(console, &console_list, list)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
