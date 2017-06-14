Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hq-0001yp-B1
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:35 +0200
Message-Id: <20170614072641.29942-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] Revert "nv: Fix setting of nv.dev.<devname>.<param>
 variables"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit eaf884ba55def055fd81ff3291a1a534fc8bd8f9.
---
 common/globalvar.c | 65 +++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 42 insertions(+), 23 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index c48e7df067..1385559fd7 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -120,21 +120,28 @@ void dev_param_init_from_nv(struct device_d *dev, const char *name)
 }
 
 /**
- * nvvar_device_set - set device parameter dev.<dev>.<param>
+ * nvvar_device_dispatch - dispatch dev.<dev>.<param> name into device and parameter name
  * @name: The incoming name in the form dev.<dev>.<param>
- * val: The value <dev>.<param> should be set to
+ * @dev: The returned device_d * belonging to <dev>
+ * @pname: the parameter name
  *
- * Given a dev.<dev>.<param> string this function sets the corresponding parameter
- * in the struct device_d * named <param> to @val.
+ * Given a dev.<dev>.<param> string this function finds the device_d * belonging to
+ * <dev> and the parameter name from <param>.
  *
- * Return: 0 for success, negative error code for failure
+ * Return: When incoming string does not belong to the device namespace (does not begin
+ * with "dev." this function returns 0. A value > 0 is returned when the incoming string
+ * is in the device namespace and the string can be dispatched into a device_d * and a
+ * parameter name. A negative error code is returned when the incoming string belongs to
+ * the device namespace, but cannot be dispatched.
  */
-static int nvvar_device_set(const char *name, const char *val)
+static int nvvar_device_dispatch(const char *name, struct device_d **dev,
+				 const char **pname)
 {
-	struct device_d *dev;
 	char *devname;
-	const char *dot, *pname;
-	int dotpos, ret;
+	const char *dot;
+	int dotpos;
+
+	*dev = NULL;
 
 	if (strncmp(name, "dev.", 4))
 		return 0;
@@ -148,20 +155,15 @@ static int nvvar_device_set(const char *name, const char *val)
 	dotpos = dot - name;
 
 	devname = xstrndup(name, dotpos);
-	dev = get_device_by_name(devname);
+	*dev = get_device_by_name(devname);
 	free(devname);
 
-	if (dev == &nv_device || dev == &global_device)
+	if (*dev == &nv_device || *dev == &global_device)
 		return -EINVAL;
 
-	pname = dot + 1;
-
-	ret = dev_set_param(dev, pname, val);
-	if (ret)
-		pr_err("Cannot init param from nv: %s.%s=%s: %s\n",
-			dev_name(dev), pname, val, strerror(-ret));
+	*pname = dot + 1;
 
-	return 0;
+	return 1;
 }
 
 static int nv_set(struct param_d *p, const char *val)
@@ -172,10 +174,6 @@ static int nv_set(struct param_d *p, const char *val)
 	if (!val)
 		val = "";
 
-	ret = nvvar_device_set(p->name, val);
-	if (ret)
-		return ret;
-
 	g = get_param_by_name(&global_device, p->name);
 	if (g) {
 		ret = dev_set_param(&global_device, p->name, val);
@@ -375,6 +373,27 @@ void globalvar_set_match(const char *match, const char *val)
 	}
 }
 
+static int globalvar_simple_set(struct param_d *p, const char *val)
+{
+	struct device_d *rdev;
+	const char *pname = NULL;
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
+	return dev_param_set_generic(p, val);
+}
+
 static void globalvar_nv_sync(const char *name)
 {
 	const char *val;
@@ -396,7 +415,7 @@ int globalvar_add_simple(const char *name, const char *value)
 {
 	struct param_d *param;
 
-	param = dev_add_param(&global_device, name, NULL, NULL,
+	param = dev_add_param(&global_device, name, globalvar_simple_set, NULL,
 			      0);
 	if (IS_ERR(param)) {
 		if (PTR_ERR(param) != -EEXIST)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
