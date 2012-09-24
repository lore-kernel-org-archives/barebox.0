Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGAoJ-0004LJ-1B
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 15:43:05 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0B947FFA782
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 17:48:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 17:40:25 +0200
Message-Id: <1348501228-23083-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120924152731.GF26553@game.jcrosoft.org>
 <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] globalvar: allow to register multiple device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/globalvar.c  |   77 +++++++++++++++++++++++++++++++++++++++------------
 include/globalvar.h |   26 +++++++++++++++++
 2 files changed, 85 insertions(+), 18 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 6bf2332..19e4a17 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -3,33 +3,30 @@
 #include <globalvar.h>
 #include <init.h>
 
-static struct device_d global_device = {
-	.name = "global",
-	.id = DEVICE_ID_SINGLE,
-};
+static struct device_d *global_device;
 
 int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
-	return dev_add_param(&global_device, name, set, get, flags);
+	return dev_add_param(global_device, name, set, get, flags);
 }
 
 /*
- * globalvar_get_match
+ * global_get_match
  *
- * get a concatenated string of all globalvars beginning with 'match'.
- * This adds whitespaces between the different globalvars
+ * get a concatenated string of all global vars beginning with 'match'.
+ * This adds whitespaces between the different global vars
  */
-char *globalvar_get_match(const char *match, const char *seperator)
+char *global_get_match(struct device_d *dev, const char *match, const char *seperator)
 {
 	char *val = NULL;
 	struct param_d *param;
 
-	list_for_each_entry(param, &global_device.parameters, list) {
+	list_for_each_entry(param, &dev->parameters, list) {
 		if (!strncmp(match, param->name, strlen(match))) {
-			const char *p = dev_get_param(&global_device, param->name);
+			const char *p = dev_get_param(dev, param->name);
 			if (val) {
 				char *new = asprintf("%s%s%s", val, seperator, p);
 				free(val);
@@ -46,16 +43,42 @@ char *globalvar_get_match(const char *match, const char *seperator)
 	return val;
 }
 
-void globalvar_set_match(const char *match, const char *val)
+/*
+ * globalvar_get_match
+ *
+ * get a concatenated string of all globalvars beginning with 'match'.
+ * This adds whitespaces between the different globalvars
+ */
+char *globalvar_get_match(const char *match, const char *seperator)
+{
+	return global_get_match(global_device, match, seperator);
+}
+
+void global_set_match(struct device_d *dev, const char *match, const char *val)
 {
 	struct param_d *param;
 
-	list_for_each_entry(param, &global_device.parameters, list) {
+	list_for_each_entry(param, &dev->parameters, list) {
 		if (!strncmp(match, param->name, strlen(match)))
-			dev_set_param(&global_device, param->name, val);
+			dev_set_param(dev, param->name, val);
 	}
 }
 
+void globalvar_set_match(const char *match, const char *val)
+{
+	global_set_match(global_device, match, val);
+}
+
+/*
+ * global_add_simple
+ *
+ * add a new global named 'name'
+ */
+int global_add_simple(struct device_d *dev, const char *name)
+{
+	return dev_add_param(dev, name, NULL, NULL, 0);
+}
+
 /*
  * globalvar_add_simple
  *
@@ -63,7 +86,7 @@ void globalvar_set_match(const char *match, const char *val)
  */
 int globalvar_add_simple(const char *name)
 {
-	return globalvar_add(name, NULL, NULL, 0);
+	return global_add_simple(global_device, name);
 }
 
 static int global_match(struct device_d *dev, struct driver_d *drv)
@@ -77,12 +100,30 @@ static struct bus_type global_bus = {
 	.probe = dummy_probe,
 };
 
+struct device_d *global_add_device(const char *name)
+{
+	struct device_d *dev;
+
+	dev = xzalloc(sizeof(*dev));
+	strcpy(dev->name, name);
+	dev->id = DEVICE_ID_SINGLE;
+	dev->bus = &global_bus;
+
+	register_device(dev);
+
+	return dev;
+}
+
 static int globalvar_init(void)
 {
-	bus_register(&global_bus);
-	global_device.bus = &global_bus;
-	register_device(&global_device);
+	global_device = global_add_device("global");
 
 	return 0;
 }
 postconsole_initcall(globalvar_init);
+
+static int global_bus_init(void)
+{
+	return bus_register(&global_bus);
+}
+pure_initcall(global_bus_init);
diff --git a/include/globalvar.h b/include/globalvar.h
index ddf885f..c1d73c4 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -2,6 +2,7 @@
 #define __GLOBALVAR_H
 
 #ifdef CONFIG_GLOBALVAR
+struct device_d *global_add_device(const char *name);
 int globalvar_add_simple(const char *name);
 
 int globalvar_add(const char *name,
@@ -10,6 +11,13 @@ int globalvar_add(const char *name,
 		unsigned long flags);
 char *globalvar_get_match(const char *match, const char *seperator);
 void globalvar_set_match(const char *match, const char *val);
+
+struct device_d *global_add_device(const char *name);
+int global_add_simple(struct device_d *dev, const char *name);
+void global_set_match(struct device_d *dev, const char *match,
+			const char *val);
+char *global_get_match(struct device_d *dev, const char *match,
+			const char *seperator);
 #else
 static inline int globalvar_add_simple(const char *name)
 {
@@ -30,6 +38,24 @@ static inline char *globalvar_get_match(const char *match, const char *seperator
 }
 
 static inline void globalvar_set_match(const char *match, const char *val) {}
+
+struct device_d *global_add_device(const char *name)
+{
+	return NULL;
+}
+
+int global_add_simple(struct device_d *dev, const char *name)
+{
+	return 0;
+}
+
+void global_set_match(struct device_d *dev, const char *match,
+			const char *val) {}
+char *global_get_match(struct device_d *dev, const char *match,
+			const char *seperator)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __GLOBALVAR_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
