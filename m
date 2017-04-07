Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cwNs9-0001C4-Cu
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 06:59:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Apr 2017 08:59:25 +0200
Message-Id: <20170407065926.27245-2-s.hauer@pengutronix.de>
In-Reply-To: <20170407065926.27245-1-s.hauer@pengutronix.de>
References: <20170407065926.27245-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] nv: Do not create globalvars from nvvars
To: Barebox List <barebox@lists.infradead.org>

When we create a new nvvar there's no need to create the corresponding
globalvar, because whoever wants to use the corresponding globalvar
will create it before usage anyway. Doing this means that we have to
test for existence of a corresponding nvvar when we create a globalvar,
and if it does, set the value of the globalvar from the nvvar.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 971c21949f..778d8e608c 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -165,14 +165,18 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 
 static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 {
+	struct param_d *g;
 	int ret;
 
 	if (!val)
 		val = "";
 
-	ret = dev_set_param(&global_device, p->name, val);
-	if (ret)
-		return ret;
+	g = get_param_by_name(&global_device, p->name);
+	if (g) {
+		ret = dev_set_param(&global_device, p->name, val);
+		if (ret)
+			return ret;
+	}
 
 	free(p->value);
 	p->value = xstrdup(val);
@@ -199,7 +203,6 @@ static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val
 static int __nvvar_add(const char *name, const char *value)
 {
 	struct param_d *p;
-	int ret;
 
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
@@ -212,11 +215,6 @@ static int __nvvar_add(const char *name, const char *value)
 			return PTR_ERR(p);
 	}
 
-	/* Create corresponding globalvar if it doesn't exist yet */
-	ret = globalvar_add_simple(name, value);
-	if (ret && ret != -EEXIST)
-		return ret;
-
 	if (!value)
 		value = dev_get_param(&global_device, name);
 
@@ -387,6 +385,15 @@ static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const c
 	return dev_param_set_generic(dev, p, val);
 }
 
+static void globalvar_nv_sync(const char *name)
+{
+	const char *val;
+
+	val = dev_get_param(&nv_device, name);
+	if (val)
+		dev_set_param(&global_device, name, val);
+}
+
 /*
  * globalvar_add_simple
  *
@@ -403,10 +410,12 @@ int globalvar_add_simple(const char *name, const char *value)
 			return PTR_ERR(param);
 	}
 
-	if (!value)
-		return 0;
+	if (value)
+		dev_set_param(&global_device, name, value);
+
+	globalvar_nv_sync(name);
 
-	return dev_set_param(&global_device, name, value);
+	return 0;
 }
 
 static int globalvar_remove_unqualified(const char *name)
@@ -425,15 +434,6 @@ static int globalvar_remove_unqualified(const char *name)
 	return 0;
 }
 
-static void globalvar_nv_sync(const char *name)
-{
-	const char *val;
-
-	val = dev_get_param(&nv_device, name);
-	if (val)
-		dev_set_param(&global_device, name, val);
-}
-
 int globalvar_add_simple_string(const char *name, char **value)
 {
 	struct param_d *p;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
