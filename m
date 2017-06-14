Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hn-0001yB-QP
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:41 +0200
Message-Id: <20170614072641.29942-9-s.hauer@pengutronix.de>
In-Reply-To: <20170614072641.29942-1-s.hauer@pengutronix.de>
References: <20170614072641.29942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] Revert "nv: Do not create globalvars from nvvars"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit 35d8e858bea17ec4796069c9c27fd0b134125eaf.
---
 common/globalvar.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 1b3082a1b7..fdfaf76fae 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -165,18 +165,14 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 
 static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 {
-	struct param_d *g;
 	int ret;
 
 	if (!val)
 		val = "";
 
-	g = get_param_by_name(&global_device, p->name);
-	if (g) {
-		ret = dev_set_param(&global_device, p->name, val);
-		if (ret)
-			return ret;
-	}
+	ret = dev_set_param(&global_device, p->name, val);
+	if (ret)
+		return ret;
 
 	free(p->value);
 	p->value = xstrdup(val);
@@ -203,6 +199,7 @@ static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val
 static int __nvvar_add(const char *name, const char *value)
 {
 	struct param_d *p;
+	int ret;
 
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
@@ -215,6 +212,11 @@ static int __nvvar_add(const char *name, const char *value)
 			return PTR_ERR(p);
 	}
 
+	/* Create corresponding globalvar if it doesn't exist yet */
+	ret = globalvar_add_simple(name, value);
+	if (ret && ret != -EEXIST)
+		return ret;
+
 	if (value)
 		return nv_set(&nv_device, p, value);
 
@@ -391,15 +393,6 @@ static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const c
 	return dev_param_set_generic(dev, p, val);
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
 /*
  * globalvar_add_simple
  *
@@ -416,12 +409,10 @@ int globalvar_add_simple(const char *name, const char *value)
 			return PTR_ERR(param);
 	}
 
-	if (value)
-		dev_set_param(&global_device, name, value);
-
-	globalvar_nv_sync(name);
+	if (!value)
+		return 0;
 
-	return 0;
+	return dev_set_param(&global_device, name, value);
 }
 
 static int globalvar_remove_unqualified(const char *name)
@@ -440,6 +431,15 @@ static int globalvar_remove_unqualified(const char *name)
 	return 0;
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
 int globalvar_add_simple_string(const char *name, char **value)
 {
 	struct param_d *p;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
