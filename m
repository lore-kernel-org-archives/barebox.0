Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001MD-OZ
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:37 +0200
Message-Id: <1365343255-26497-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/21] param: Add integer and boolean parameter helpers
To: barebox@lists.infradead.org

This adds convenience functions for directly registering integers
and bools as device parameter. This way driver no longer have to
fiddle with string handling. The format used to print the parameter
is passed to the functions to be able to print parameters in a
flexible way.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h |  37 +++++++++++++
 lib/parameter.c | 161 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 198 insertions(+)

diff --git a/include/param.h b/include/param.h
index 2a1b4fa..ea22215 100644
--- a/include/param.h
+++ b/include/param.h
@@ -16,6 +16,7 @@ struct param_d {
 	char *name;
 	char *value;
 	struct device_d *dev;
+	void *driver_priv;
 	struct list_head list;
 };
 
@@ -29,6 +30,19 @@ int dev_add_param(struct device_d *dev, const char *name,
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
 
+struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, const char *format, void *priv);
+
+struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv);
+
+struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
+		int value, const char *format);
+
 int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
 
 void dev_remove_param(struct device_d *dev, char *name);
@@ -41,6 +55,7 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 /* Convenience functions to handle a parameter as an ip address */
 int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip);
 IPaddr_t dev_get_param_ip(struct device_d *dev, char *name);
+
 #else
 static inline const char *dev_get_param(struct device_d *dev, const char *name)
 {
@@ -65,6 +80,28 @@ static inline int dev_add_param(struct device_d *dev, char *name,
 	return 0;
 }
 
+static inline struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, const char *format, void *priv)
+{
+	return NULL;
+}
+
+struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv)
+{
+	return NULL;
+}
+
+static inline struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
+		int value, const char *format);
+{
+	return NULL;
+}
+
 static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
 {
 	return 0;
diff --git a/lib/parameter.c b/lib/parameter.c
index 70f035a..3e78c96 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -27,6 +27,7 @@
 #include <net.h>
 #include <malloc.h>
 #include <driver.h>
+#include <linux/err.h>
 
 struct param_d *get_param_by_name(struct device_d *dev, const char *name)
 {
@@ -218,6 +219,166 @@ int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
 	return 0;
 }
 
+struct param_int {
+	struct param_d param;
+	int *value;
+	const char *format;
+#define PARAM_INT_FLAG_BOOL (1 << 0)
+	unsigned flags;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_int *to_param_int(struct param_d *p)
+{
+	return container_of(p, struct param_int, param);
+}
+
+static int param_int_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_int *pi = to_param_int(p);
+	int value_save = *pi->value;
+	int ret;
+
+	if (!val)
+		return -EINVAL;
+
+	*pi->value = simple_strtol(val, NULL, 0);
+	if (pi->flags & PARAM_INT_FLAG_BOOL)
+		*pi->value = !!*pi->value;
+
+	if (pi->set) {
+		ret = pi->set(p, p->driver_priv);
+		if (ret) {
+			*pi->value = value_save;
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static const char *param_int_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_int *pi = to_param_int(p);
+	int ret;
+
+	if (pi->get) {
+		ret = pi->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	free(p->value);
+	p->value = asprintf(pi->format, *pi->value);
+
+	return p->value;
+}
+
+/**
+ * dev_add_param_int - add an integer parameter to a device
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param set	set function
+ * @param get	get function
+ * @param value	pointer to the integer containing the value of the parameter
+ * @param format the printf format used to print the value
+ * @param priv	user private data, will be passed to get/set
+ *
+ * The get function can be used as a notifier when the variable is about
+ * to be read.
+ * The set function can be used as a notifer when the variable is about
+ * to be written. Can also be used to limit the value.
+ */
+struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, const char *format, void *priv)
+{
+	struct param_int *pi;
+	struct param_d *p;
+	int ret;
+
+	pi = xzalloc(sizeof(*pi));
+	pi->value = value;
+	pi->format = format;
+	pi->set = set;
+	pi->get = get;
+	p = &pi->param;
+	p->driver_priv = priv;
+
+	ret = __dev_add_param(p, dev, name, param_int_set, param_int_get, 0);
+	if (ret) {
+		free(pi);
+		return ERR_PTR(ret);
+	}
+
+	return &pi->param;
+}
+
+/**
+ * dev_add_param_bool - add an boolean parameter to a device
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param set	set function
+ * @param get	get function
+ * @param value	pointer to the integer containing the value of the parameter
+ * @param priv	user private data, will be passed to get/set
+ *
+ * The get function can be used as a notifier when the variable is about
+ * to be read.
+ * The set function can be used as a notifer when the variable is about
+ * to be written. Can also be used to limit the value.
+ */
+struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv)
+{
+	struct param_int *pi;
+	struct param_d *p;
+
+	p = dev_add_param_int(dev, name, set, get, value, "%d", priv);
+	if (IS_ERR(p))
+		return p;
+
+	pi = to_param_int(p);
+	pi->flags |= PARAM_INT_FLAG_BOOL;
+
+	return p;
+}
+
+struct param_int_ro {
+	struct param_d param;
+	char *value;
+};
+
+/**
+ * dev_add_param_int_ro - add a read only integer parameter to a device
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param value	The value of the parameter
+ * @param format the printf format used to print the value
+ */
+struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
+		int value, const char *format)
+{
+	struct param_int *piro;
+	int ret;
+
+	piro = xzalloc(sizeof(*piro));
+
+	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
+	if (ret) {
+		free(piro);
+		return ERR_PTR(ret);
+	}
+
+	piro->param.value = asprintf(format, value);
+
+	return &piro->param;
+}
+
 /**
  * dev_remove_param - remove a parameter from a device and free its
  * memory
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
