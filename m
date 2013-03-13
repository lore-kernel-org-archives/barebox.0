Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFq7Q-0008Fr-HP
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 18:09:46 +0000
Received: from mail645.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1C897FF99E7
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 19:26:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Mar 2013 19:05:16 +0100
Message-Id: <1363197922-19851-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130313180100.GJ1568@game.jcrosoft.org>
References: <20130313180100.GJ1568@game.jcrosoft.org>
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
Subject: [PATCH 1/7] params: allow to access first sub-device and params via
 env
To: barebox@lists.infradead.org

this will allow to keep retro-compatiblility and adding
globalvar multiple device support

 barebox@Somfy Animeo IP:/
 # echo $platform.soc.
 at91sam9260
 barebox@Somfy Animeo IP:/
 # echo $platform.soc.name
 Unknown
 barebox@Somfy Animeo IP:/
 # echo $global.dhcp.vendor_id
 barebox-animeo-ip

update complete too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |   45 ++++++++++++++++++++++++++++++++++++++++-----
 lib/parameter.c   |   41 ++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 80 insertions(+), 6 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 9206ef0..17ee3c4 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -169,7 +169,7 @@ int device_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(device_complete);
 
-static int device_param_complete(char *begin, struct device_d *dev,
+static int device_param_complete(char *begin, char *dev_fullname, struct device_d *dev,
 				 struct string_list *sl, char *instr)
 {
 	struct param_d *param;
@@ -185,7 +185,7 @@ static int device_param_complete(char *begin, struct device_d *dev,
 			continue;
 
 		string_list_add_asprintf(sl, "%s%s.%s%c",
-			begin ? begin : "", dev_name(dev), param->name,
+			begin ? begin : "", dev_fullname, param->name,
 			begin ? ' ' : '=');
 	}
 
@@ -253,12 +253,47 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 	}
 
 	for_each_device(dev) {
-		if (!strncmp(instr, dev_name(dev), len)) {
+		struct device_d *child;
+		char *devname = asprintf("%s", dev_name(dev));
+
+		if (!strncmp(instr, devname, len)) {
 			if (eval)
-				device_param_complete("$", dev, sl, instr_param);
+				device_param_complete("$", devname, dev, sl, instr_param);
 			else
-				device_param_complete(NULL, dev, sl, instr_param);
+				device_param_complete(NULL, devname, dev, sl, instr_param);
+		}
+
+		if (dev->bus) {
+			free(devname);
+			continue;
+		}
+
+		device_for_each_child(dev, child) {
+			char *dev_fullname;
+			char *child_instr_param;
+			int child_len;
+
+			dev_fullname = asprintf("%s.%s", devname, dev_name(child));
+			child_instr_param = strchr(instr_param, '.');
+
+			if (child_instr_param) {
+				child_len = (child_instr_param - instr);
+				child_instr_param++;
+			} else {
+				child_len = strlen(instr);
+				child_instr_param = "";
+			}
+
+			if (!strncmp(instr, dev_fullname, child_len)) {
+				if (eval)
+					device_param_complete("$", dev_fullname, child, sl, child_instr_param);
+				else
+					device_param_complete(NULL, dev_fullname, child, sl, child_instr_param);
+			}
+
+			free(dev_fullname);
 		}
+		free(devname);
 	}
 
 	return 0;
diff --git a/lib/parameter.c b/lib/parameter.c
index c00b824..4b7b26a 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -28,7 +28,7 @@
 #include <malloc.h>
 #include <driver.h>
 
-struct param_d *get_param_by_name(struct device_d *dev, const char *name)
+static struct param_d *__get_param_by_name(struct device_d *dev, const char *name)
 {
 	struct param_d *p;
 
@@ -40,6 +40,45 @@ struct param_d *get_param_by_name(struct device_d *dev, const char *name)
 	return NULL;
 }
 
+static struct param_d *get_child_param_by_name(struct device_d *dev, const char *name)
+{
+	struct device_d *child;
+	char *devstr;
+	char *par;
+
+	if (dev->bus)
+		return NULL;
+
+	if (!strchr(name, '.'))
+		return NULL;
+
+	devstr = strdup(name);
+	par = strchr(devstr, '.');
+
+	*par = 0;
+	par++;
+
+	device_for_each_child(dev, child) {
+		if (!strcmp(devstr, dev_name(child)))
+			return __get_param_by_name(child, par);
+	}
+
+	free(devstr);
+
+	return NULL;
+}
+
+struct param_d *get_param_by_name(struct device_d *dev, const char *name)
+{
+	struct param_d *param;
+
+	param = get_child_param_by_name(dev, name);
+	if (param)
+		return param;
+
+	return __get_param_by_name(dev, name);
+}
+
 /**
  * dev_get_param - get the value of a parameter
  * @param dev	The device
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
