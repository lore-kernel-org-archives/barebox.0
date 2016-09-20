Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmM09-0004ld-9d
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 14:26:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Sep 2016 16:26:02 +0200
Message-Id: <1474381562-4330-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474381562-4330-1-git-send-email-s.hauer@pengutronix.de>
References: <1474381562-4330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] globalvar: sync with nvvars
To: Barebox List <barebox@lists.infradead.org>

This patch fixes the behaviour when a driver creates a globalvar using
globalvar_add_simple_[string|int|bool|enum|ip]) *after* nvvars are
initialized and this globalvar is overwritten with a nvvar. Currently
this fix is not needed because all globalvars are registered before the
nvvars are initialized.

We have two different typed of globalvars. The first type, here referred
to as qualified globalvars, has a backend variable storage (the ones
created with globalvar_add_simple_[string|int|bool|enum|ip]), the other
created with globalvar_add_simple only has a dynamically allocted string
as backend.

Normally during startup of barebox the qualified globalvars are
registered and during load of nvvars are synced with the values from the
nvvars. Everything works fine in this case. However, when during nvvar
initialisation a globalvar for a nvvar does not exist, then it is
registered as unqualified globalvar. When then later some driver wants
to register a qualified globalvar for which a unqualified globalvar
already exists, it will get a -EEXIST. This is not the expected
behaviour. Instead, the current unqualified globalvar should be removed,
recreated as qualified globalvar and then afterwards synced with the
corresponding nvvar. This behaviour is fixed with this patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++---
 include/param.h    |  1 +
 2 files changed, 68 insertions(+), 4 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 49f7f7d..3fd8221 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -425,11 +425,14 @@ void globalvar_set_match(const char *match, const char *val)
  */
 int globalvar_add_simple(const char *name, const char *value)
 {
-	int ret;
+	struct param_d *param;
 
-	ret = globalvar_add(name, NULL, NULL, 0);
-	if (ret && ret != -EEXIST)
-		return ret;
+	param = dev_add_param(&global_device, name, NULL, NULL,
+			      PARAM_GLOBALVAR_UNQUALIFIED);
+	if (IS_ERR(param)) {
+		if (PTR_ERR(param) != -EEXIST)
+			return PTR_ERR(param);
+	}
 
 	if (!value)
 		return 0;
@@ -437,9 +440,39 @@ int globalvar_add_simple(const char *name, const char *value)
 	return dev_set_param(&global_device, name, value);
 }
 
+static int globalvar_remove_unqualified(const char *name)
+{
+	struct param_d *p;
+
+	p = get_param_by_name(&global_device, name);
+	if (!p)
+		return 0;
+
+	if (!(p->flags & PARAM_GLOBALVAR_UNQUALIFIED))
+		return -EEXIST;
+
+	dev_remove_param(p);
+
+	return 0;
+}
+
+static void globalvar_nv_sync(const char *name)
+{
+	const char *val;
+
+	val = dev_get_param(&nv_device, name);
+	if (val)
+		dev_set_param(&global_device, name, val);
+}
+
 int globalvar_add_simple_string(const char *name, char **value)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_string(&global_device, name, NULL, NULL,
 		value, NULL);
@@ -447,6 +480,8 @@ int globalvar_add_simple_string(const char *name, char **value)
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	globalvar_nv_sync(name);
+
 	return 0;
 }
 
@@ -454,6 +489,11 @@ int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_int(&global_device, name, NULL, NULL,
 		value, format, NULL);
@@ -461,12 +501,19 @@ int globalvar_add_simple_int(const char *name, int *value,
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	globalvar_nv_sync(name);
+
 	return 0;
 }
 
 int globalvar_add_simple_bool(const char *name, int *value)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_bool(&global_device, name, NULL, NULL,
 		value, NULL);
@@ -474,6 +521,8 @@ int globalvar_add_simple_bool(const char *name, int *value)
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	globalvar_nv_sync(name);
+
 	return 0;
 }
 
@@ -481,6 +530,11 @@ int globalvar_add_simple_enum(const char *name,	int *value,
 			      const char * const *names, int max)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_enum(&global_device, name, NULL, NULL,
 		value, names, max, NULL);
@@ -488,12 +542,19 @@ int globalvar_add_simple_enum(const char *name,	int *value,
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	globalvar_nv_sync(name);
+
 	return 0;
 }
 
 int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_ip(&global_device, name, NULL, NULL,
 		ip, NULL);
@@ -501,6 +562,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	globalvar_nv_sync(name);
+
 	return 0;
 }
 
diff --git a/include/param.h b/include/param.h
index 3fb4740..68e08a2 100644
--- a/include/param.h
+++ b/include/param.h
@@ -6,6 +6,7 @@
 #include <linux/list.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
+#define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
 
 struct device_d;
 typedef uint32_t          IPaddr_t;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
