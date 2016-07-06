Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKi4k-0003kL-RI
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:20:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jul 2016 10:20:27 +0200
Message-Id: <1467793227-29416-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467793227-29416-1-git-send-email-s.hauer@pengutronix.de>
References: <1467793227-29416-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] Introduce non volatile device variables
To: Barebox List <barebox@lists.infradead.org>

Non volatile device variables are used to make device parameters
persistent. They are like normal non volatile variables, but set
the values of the device parameters with the corresponding name.
Every nv variable beginning with nv.dev is a non volatile device
variable. They have the form nv.dev.<devname>.<paramname> and act
on the parameter <paramname> of the device named <devname>.

The non volatile device variables are designated for example for
video modes, ethernet device ip addresses or mtd partitioning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/variables.rst |  18 +++++
 common/globalvar.c               | 137 ++++++++++++++++++++++++++++++++++++---
 include/globalvar.h              |   6 ++
 lib/parameter.c                  |   3 +
 4 files changed, 154 insertions(+), 10 deletions(-)

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 0abc25d..89aadf5 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -66,6 +66,24 @@ examples:
     model: myboard
   barebox@yourboard:/
 
+Non volatile device variables
+-----------------------------
+
+Non volatile device variables are used to make device parameters persistent. They
+are regular nv variables but are linked with other devices instead of the global
+device. Every nv variable in the form nv.dev.<devname>.<paramname> will be mirrored
+to the corresponding <devname>.<paramname> variable.
+
+This example changes the partitioning of the nand0 device:
+
+.. code-block:: sh
+  barebox@Phytec phyCARD-i.MX27:/ nv dev.nand0.partitions: 4M(barebox),1M(barebox-environment),-(root)
+  barebox@Phytec phyCARD-i.MX27:/ devinfo nand0
+    Parameters:
+    [...]
+    partitions: 4M(barebox),1M(barebox-environment),8M(kernel),1011M(root)
+    [...]
+
 .. _magicvars:
 
 Magic variables
diff --git a/common/globalvar.c b/common/globalvar.c
index 6687b03..c0958e1 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -68,17 +68,115 @@ static int nv_save(const char *name, const char *val)
 	return 0;
 }
 
+/**
+ * dev_param_init_from_nv - initialize a device parameter from nv variable
+ * @dev: The device
+ * @name: The parameter name
+ *
+ * This function initializes a newly created device parameter from the corresponding
+ * nv.dev.<devname>.<paramname> variable.
+ */
+void dev_param_init_from_nv(struct device_d *dev, const char *name)
+{
+	char *nvname;
+	const char *val;
+	int ret = 0;
+
+	if (dev == &nv_device)
+		return;
+	if (dev == &global_device)
+		return;
+
+	nvname = basprintf("dev.%s.%s", dev_name(dev), name);
+	val = dev_get_param(&nv_device, nvname);
+	if (val) {
+		ret = dev_set_param(dev, name, val);
+		if (ret)
+			pr_err("Cannot init param from nv: %s.%s=%s: %s\n",
+				dev_name(dev), name, val, strerror(-ret));
+	}
+
+	free(nvname);
+}
+
+/**
+ * nvvar_device_dispatch - dispatch dev.<dev>.<param> name into device and parameter name
+ * @name: The incoming name in the form dev.<dev>.<param>
+ * @dev: The returned device_d * belonging to <dev>
+ * @pname: the parameter name
+ *
+ * Given a dev.<dev>.<param> string this function finds the device_d * belonging to
+ * <dev> and the parameter name from <param>.
+ *
+ * Return: When incoming string does not belong to the device namespace (does not begin
+ * with "dev." this function returns 0. A value > 0 is returned when the incoming string
+ * is in the device namespace and the string can be dispatched into a device_d * and a
+ * parameter name. A negative error code is returned when the incoming string belongs to
+ * the device namespace, but cannot be dispatched.
+ */
+static int nvvar_device_dispatch(const char *name, struct device_d **dev,
+				 const char **pname)
+{
+	char *devname;
+	const char *dot;
+	int dotpos;
+
+	*dev = NULL;
+
+	if (strncmp(name, "dev.", 4))
+		return 0;
+
+	name += 4;
+
+	dot = strchr(name, '.');
+	if (!dot)
+		return -EINVAL;
+
+	dotpos = dot - name;
+
+	devname = xstrndup(name, dotpos);
+	*dev = get_device_by_name(devname);
+	free(devname);
+
+	if (*dev == &nv_device || *dev == &global_device)
+		return -EINVAL;
+
+	*pname = dot + 1;
+
+	return 1;
+}
+
 static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 {
 	int ret;
+	int devspace;
+	struct device_d *rdev;
+	const char *pname;
 
 	if (!val)
 		val = "";
 
-	ret = dev_set_param(&global_device, p->name, val);
-	if (ret)
+	ret = nvvar_device_dispatch(p->name, &rdev, &pname);
+	if (ret < 0)
 		return ret;
 
+	devspace = ret;
+
+	if (devspace) {
+		if (rdev) {
+			ret = dev_set_param(rdev, pname, val);
+			if (ret) {
+				pr_err("Cannot init param from nv: %s.%s=%s: %s\n",
+					dev_name(rdev), pname, val, strerror(-ret));
+				return ret;
+			}
+		}
+	} else {
+		ret = dev_set_param(&global_device, p->name, val);
+		if (ret)
+			return ret;
+	}
+
 	free(p->value);
 	p->value = xstrdup(val);
 
@@ -94,15 +192,26 @@ int nvvar_add(const char *name, const char *value)
 {
 	struct param_d *p, *gp;
 	int ret;
+	int devspace;
+	struct device_d *dev;
+	const char *pname;
 
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
 
+	ret = nvvar_device_dispatch(name, &dev, &pname);
+	if (ret < 0)
+		return ret;
+
+	devspace = ret;
+
 	gp = get_param_by_name(&nv_device, name);
 	if (gp) {
-		ret = dev_set_param(&global_device, name, value);
-		if (ret)
-			return ret;
+		if (!devspace) {
+			ret = dev_set_param(&global_device, name, value);
+			if (ret)
+				return ret;
+		}
 
 		ret = dev_set_param(&nv_device, name, value);
 		if (ret)
@@ -111,16 +220,24 @@ int nvvar_add(const char *name, const char *value)
 		return 0;
 	}
 
-	ret = globalvar_add_simple(name, value);
-	if (ret && ret != -EEXIST)
-		return ret;
+	if (!devspace) {
+		ret = globalvar_add_simple(name, value);
+		if (ret && ret != -EEXIST)
+			return ret;
+	}
 
 	p = dev_add_param(&nv_device, name, nv_set, nv_get, 0);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	if (!value)
-		value = dev_get_param(&global_device, name);
+	if (!value) {
+		if (devspace) {
+			if (dev)
+				value = dev_get_param(dev, pname);
+		} else {
+			value = dev_get_param(&global_device, name);
+		}
+	}
 
 	return nv_set(&nv_device, p, value);
 }
diff --git a/include/globalvar.h b/include/globalvar.h
index 5dfa371..67b97de 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -94,6 +94,8 @@ int nvvar_add(const char *name, const char *value);
 int nvvar_remove(const char *name);
 void globalvar_print(void);
 
+void dev_param_init_from_nv(struct device_d *dev, const char *name);
+
 #else
 static inline int globalvar_add_simple(const char *name, const char *value)
 {
@@ -165,6 +167,10 @@ static inline int nvvar_remove(const char *name)
 	return 0;
 }
 
+static inline void dev_param_init_from_nv(struct device_d *dev, const char *name)
+{
+}
+
 #endif
 
 #endif /* __GLOBALVAR_H */
diff --git a/lib/parameter.c b/lib/parameter.c
index 3d356fb..656a603 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <driver.h>
 #include <string.h>
+#include <globalvar.h>
 #include <linux/err.h>
 
 struct param_d *get_param_by_name(struct device_d *dev, const char *name)
@@ -156,6 +157,8 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
 	param->dev = dev;
 	list_add_sort(&param->list, &dev->parameters, compare);
 
+	dev_param_init_from_nv(dev, name);
+
 	return 0;
 }
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
