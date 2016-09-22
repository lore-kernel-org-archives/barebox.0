Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmz6U-00011q-Ra
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:11:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 10:11:12 +0200
Message-Id: <1474531872-15000-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
References: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] globalvar: Also create globalvars from for nonvolatile
 device vars
To: Barebox List <barebox@lists.infradead.org>

nv variables beginning with "nv.dev.<devname>.<varname>" are directly
mirrored to <devname>.<varname> and there is no globalvar for it. To
make it a bit more consistent and to increase the visibility of the
nonvolatile device variables create globalvars for them aswell.

With this the propagation flow has changed from:

nv.dev.<devname>.<varname>
  -> <devname>.<varname>

to:

nv.dev.<devname>.<varname>
  -> global.dev.<devname>.<varname>
    -> <devname>.<varname>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 75 ++++++++++++++++++++++--------------------------------
 1 file changed, 30 insertions(+), 45 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 8f37c99..a2555cf 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -179,34 +179,14 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 {
 	int ret;
-	int devspace;
-	struct device_d *rdev;
-	const char *pname;
 
 	if (!val)
 		val = "";
 
-	ret = nvvar_device_dispatch(p->name, &rdev, &pname);
-	if (ret < 0)
+	ret = dev_set_param(&global_device, p->name, val);
+	if (ret)
 		return ret;
 
-	devspace = ret;
-
-	if (devspace) {
-		if (rdev) {
-			ret = dev_set_param(rdev, pname, val);
-			if (ret) {
-				pr_err("Cannot init param from nv: %s.%s=%s: %s\n",
-					dev_name(rdev), pname, val, strerror(-ret));
-				return ret;
-			}
-		}
-	} else {
-		ret = dev_set_param(&global_device, p->name, val);
-		if (ret)
-			return ret;
-	}
-
 	free(p->value);
 	p->value = xstrdup(val);
 
@@ -233,19 +213,10 @@ static int __nvvar_add(const char *name, const char *value)
 {
 	struct param_d *p;
 	int ret;
-	int devspace;
-	struct device_d *dev;
-	const char *pname;
 
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
 
-	ret = nvvar_device_dispatch(name, &dev, &pname);
-	if (ret < 0)
-		return ret;
-
-	devspace = ret;
-
 	/* Get param. If it doesn't exist yet, create it */
 	p = get_param_by_name(&nv_device, name);
 	if (!p) {
@@ -254,20 +225,13 @@ static int __nvvar_add(const char *name, const char *value)
 			return PTR_ERR(p);
 	}
 
-	if (!devspace) {
-		ret = globalvar_add_simple(name, value);
-		if (ret && ret != -EEXIST)
-			return ret;
-	}
+	/* Create corresponding globalvar if it doesn't exist yet */
+	ret = globalvar_add_simple(name, value);
+	if (ret && ret != -EEXIST)
+		return ret;
 
-	if (!value) {
-		if (devspace) {
-			if (dev)
-				value = dev_get_param(dev, pname);
-		} else {
-			value = dev_get_param(&global_device, name);
-		}
-	}
+	if (!value)
+		value = dev_get_param(&global_device, name);
 
 	return nv_set(&nv_device, p, value);
 }
@@ -409,6 +373,27 @@ void globalvar_set_match(const char *match, const char *val)
 	}
 }
 
+int globalvar_simple_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct device_d *rdev;
+	const char *pname;
+	int ret;
+
+	ret = nvvar_device_dispatch(p->name, &rdev, &pname);
+	if (ret < 0)
+		return ret;
+
+	if (ret && rdev) {
+		ret = dev_set_param(rdev, pname, val);
+		if (ret)
+			pr_err("Cannot init param from global: %s.%s=%s: %s\n",
+				dev_name(rdev), pname, val, strerror(-ret));
+	}
+
+	/* Pass to the generic function we have overwritten */
+	return dev_param_set_generic(dev, p, val);
+}
+
 /*
  * globalvar_add_simple
  *
@@ -418,7 +403,7 @@ int globalvar_add_simple(const char *name, const char *value)
 {
 	struct param_d *param;
 
-	param = dev_add_param(&global_device, name, NULL, NULL,
+	param = dev_add_param(&global_device, name, globalvar_simple_set, NULL,
 			      PARAM_GLOBALVAR_UNQUALIFIED);
 	if (IS_ERR(param)) {
 		if (PTR_ERR(param) != -EEXIST)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
