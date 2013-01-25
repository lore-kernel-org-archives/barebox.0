Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyt8f-0006RF-KC
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 23:56:54 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 239C0FFA75F
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:06:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 00:55:27 +0100
Message-Id: <1359158132-8023-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359158132-8023-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125235326.GG26329@game.jcrosoft.org>
 <1359158132-8023-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] globalvar: add it's own bus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/globalvar.c |   31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index a8aaa72..f275a38 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -3,17 +3,14 @@
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
@@ -27,9 +24,9 @@ char *globalvar_get_match(const char *match, const char *seperator)
 	char *val = NULL;
 	struct param_d *param;
 
-	list_for_each_entry(param, &global_device.parameters, list) {
+	list_for_each_entry(param, global_device.parameters, list) {
 		if (!strncmp(match, param->name, strlen(match))) {
-			const char *p = dev_get_param(&global_device, param->name);
+			const char *p = dev_get_param(global_device, param->name);
 			if (val) {
 				char *new = asprintf("%s%s%s", val, seperator, p);
 				free(val);
@@ -50,9 +47,9 @@ void globalvar_set_match(const char *match, const char *val)
 {
 	struct param_d *param;
 
-	list_for_each_entry(param, &global_device.parameters, list) {
+	list_for_each_entry(param, global_device.parameters, list) {
 		if (!strncmp(match, param->name, strlen(match)))
-			dev_set_param(&global_device, param->name, val);
+			dev_set_param(global_device, param->name, val);
 	}
 }
 
@@ -66,10 +63,22 @@ int globalvar_add_simple(const char *name)
 	return globalvar_add(name, NULL, NULL, 0);
 }
 
+static int global_match(struct device_d *dev, struct driver_d *drv)
+{
+	return 1;
+}
+
+static struct bus_type global_bus = {
+	.name = "global",
+	.match = global_match,
+	.probe = dummy_probe,
+};
+
 static int globalvar_init(void)
 {
-	register_device(&global_device);
+	bus_register(&global_bus);
+	global_device = &global_bus->dev;
 
 	return 0;
 }
-postconsole_initcall(globalvar_init);
+pure_initcall(globalvar_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
