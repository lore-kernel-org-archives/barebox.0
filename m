Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyt8f-0006RG-KI
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 23:56:59 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 34E0BFFA763
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:06:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 00:55:28 +0100
Message-Id: <1359158132-8023-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] globalvar: allow to register multiple device
To: barebox@lists.infradead.org

This will allow to reduce the time spend to search for globalvar
(boot time)

the access to the globalvar is retro-compatible

we can now create device via the global command

 barebox@Somfy Animeo IP:/
 # devinfo
 devices:
 `---- global
      `---- net
      `---- bootm
      `---- dhcp
      ...
 barebox@Somfy Animeo IP:/
 resources:
 driver: none
 bus: global
 bus: none

 Parameters:
         hostname =
 barebox@Somfy Animeo IP:/
 # devinfo net
 resources:
 driver: none
 bus: global

 Parameters:
       nameserver =
       domainname =
 barebox@Somfy Animeo IP:/
 # devinfo dhcp
 resources:
 driver: none
 bus: global

 Parameters:
         rootpath =
 tftp_server_name =
         bootfile =
      oftree_file =
        vendor_id = barebox-animeo-ip
        client_id =
       user_class =
      client_uuid =
 barebox@Somfy Animeo IP:/
 # devinfo bootm
 resources:
 driver: none
 bus: global

 Parameters:
            image =
           oftree =
           initrd =
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/global.c   |   41 ++++++++++++----
 common/globalvar.c  |  129 +++++++++++++++++++++++++++++++++++++++++++++------
 include/globalvar.h |   26 +++++++++++
 3 files changed, 174 insertions(+), 22 deletions(-)

diff --git a/commands/global.c b/commands/global.c
index 427a231..539fa21 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -23,14 +23,23 @@
 #include <environment.h>
 #include <getopt.h>
 
-static int globalvar_set(char* name, char* value)
+static int globalvar_set(char *devname, char* name, char* value)
 {
 	int ret;
 
-	ret = globalvar_add_simple(name);
+	if (devname) {
+		struct device_d *dev;
+
+		dev = get_device_by_name(devname);
+		if (!dev)
+			dev = global_add_device(devname);
+		ret = global_add_simple(dev, name);
+	} else {
+		ret = globalvar_add_simple(name);
+	}
 
 	if (value) {
-		char *tmp = asprintf("global.%s", name);
+		char *tmp = asprintf("%s.%s", devname ? devname : "global", name);
 		ret = setenv(tmp, value);
 		free(tmp);
 	}
@@ -43,12 +52,16 @@ static int do_global(int argc, char *argv[])
 	int opt;
 	int do_set_match = 0;
 	char *value;
+	char *devname = NULL;
 
-	while ((opt = getopt(argc, argv, "r")) > 0) {
+	while ((opt = getopt(argc, argv, "rd:")) > 0) {
 		switch (opt) {
 		case 'r':
 			do_set_match = 1;
 			break;
+		case 'd':
+			devname = optarg;
+			break;
 		}
 	}
 
@@ -68,17 +81,29 @@ static int do_global(int argc, char *argv[])
 		if (!value)
 			value = "";
 
-		globalvar_set_match(argv[0], value);
+		if (devname) {
+			struct device_d *dev;
+
+			dev = get_device_by_name(devname);
+
+			if (!dev)
+				return -EINVAL;
+
+			global_set_match(dev, argv[0], value);
+		} else {
+			globalvar_set_match(argv[0], value);
+		}
 		return 0;
 	}
 
-	return globalvar_set(argv[0], value);
+	return globalvar_set(devname, argv[0], value);
 }
 
 BAREBOX_CMD_HELP_START(global)
-BAREBOX_CMD_HELP_USAGE("global [-r] <var>[=<value]\n")
+BAREBOX_CMD_HELP_USAGE("global [-d device] [-r] <var>[=<value]\n")
 BAREBOX_CMD_HELP_SHORT("add a new global variable named <var>, optionally set to <value>\n")
-BAREBOX_CMD_HELP_SHORT("-r to set a value to of all globalvars beginning with 'match'")
+BAREBOX_CMD_HELP_SHORT("-r to set a value to of all globalvars beginning with 'match'\n")
+BAREBOX_CMD_HELP_SHORT("-d use a specific global device if do not exist create (if -r not set), it if not set use 'global'")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(global)
diff --git a/common/globalvar.c b/common/globalvar.c
index f275a38..d0aa2a3 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -14,19 +14,19 @@ int globalvar_add(const char *name,
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
 
-	list_for_each_entry(param, global_device.parameters, list) {
+	list_for_each_entry(param, &dev->parameters, list) {
 		if (!strncmp(match, param->name, strlen(match))) {
-			const char *p = dev_get_param(global_device, param->name);
+			const char *p = dev_get_param(dev, param->name);
 			if (val) {
 				char *new = asprintf("%s%s%s", val, seperator, p);
 				free(val);
@@ -43,14 +43,75 @@ char *globalvar_get_match(const char *match, const char *seperator)
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
 
-	list_for_each_entry(param, global_device.parameters, list) {
+	list_for_each_entry(param, &dev->parameters, list) {
 		if (!strncmp(match, param->name, strlen(match)))
-			dev_set_param(global_device, param->name, val);
+			dev_set_param(dev, param->name, val);
+	}
+}
+
+void globalvar_set_match(const char *match, const char *val)
+{
+	struct device_d *child;
+	char *tmp = NULL;
+	char *submatch = "";
+
+	if (strchr(match, '.')) {
+		tmp = strdup(match);
+		submatch = strchr(tmp, '.');
+		*submatch = 0;
+		submatch++;
 	}
+
+	global_set_match(global_device, match, val);
+
+	device_for_each_child(global_device, child) {
+		const char *devname = dev_name(child);
+
+		if (tmp && !strcmp(devname, tmp))
+			global_set_match(child, submatch, val);
+
+		if (!strncmp(devname, match, strlen(match)))
+			global_set_match(child, "", val);
+	}
+
+	free(tmp);
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
+static struct device_d *global_get_child_by_name(const char *name)
+{
+	struct device_d *child;
+
+	device_for_each_child(global_device, child) {
+		if (!strcmp(dev_name(child), name))
+			return child;
+	}
+
+	return NULL;
 }
 
 /*
@@ -60,7 +121,27 @@ void globalvar_set_match(const char *match, const char *val)
  */
 int globalvar_add_simple(const char *name)
 {
-	return globalvar_add(name, NULL, NULL, 0);
+	struct device_d *dev = global_device;
+	const char *subname = name;
+	char *tmp = NULL;
+	int ret;
+
+	if (strchr(name, '.')) {
+		char *data;
+
+		tmp = strdup(name);
+		data = strchr(tmp, '.');
+		*data = 0;
+		subname = ++data;
+
+		dev = global_get_child_by_name(tmp);
+	}
+
+	ret = global_add_simple(dev, subname);
+
+	free(tmp);
+
+	return ret;
 }
 
 static int global_match(struct device_d *dev, struct driver_d *drv)
@@ -74,11 +155,31 @@ static struct bus_type global_bus = {
 	.probe = dummy_probe,
 };
 
-static int globalvar_init(void)
+struct device_d *global_add_device(const char *name)
 {
-	bus_register(&global_bus);
-	global_device = &global_bus->dev;
+	struct device_d *dev;
+
+	dev = xzalloc(sizeof(struct device_d));
+
+	strcpy(dev->name, name);
+	dev->id = DEVICE_ID_SINGLE;
+	dev->bus = &global_bus;
+
+	register_device(dev);
+
+	return dev;
+}
+
+static int global_bus_init(void)
+{
+	int ret;
+
+	ret = bus_register(&global_bus);
+	if (ret)
+		return ret;
+
+	global_device = &global_bus.dev;
 
 	return 0;
 }
-pure_initcall(globalvar_init);
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
