Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTX9-0006w2-3n
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:12 +0200
Message-Id: <20170410071420.26884-3-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] parameter: Give device parameters types
To: Barebox List <barebox@lists.infradead.org>

This adds a variable type enum and adds this to the device parameters.
This information gives the user a hint which values a parameter expects
and also helps to organize the parameters better internally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devinfo.c |  3 ++-
 include/param.h    | 15 +++++++++++++++
 lib/parameter.c    | 30 +++++++++++++++++++++++++++++-
 3 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 9d5e8b86eb..cd69d2e5f8 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -103,7 +103,8 @@ static int do_devinfo(int argc, char *argv[])
 				printf("Parameters:\n");
 				first = false;
 			}
-			printf("  %s: %s", param->name, dev_get_param(dev, param->name));
+			printf("  %s: %s (type: %s)", param->name, dev_get_param(dev, param->name),
+			       get_param_type(param));
 			if (param->info) {
 				param->info(param);
 			}
diff --git a/include/param.h b/include/param.h
index f9f3398cae..2eb040fea4 100644
--- a/include/param.h
+++ b/include/param.h
@@ -10,6 +10,19 @@
 struct device_d;
 typedef uint32_t          IPaddr_t;
 
+enum param_type {
+	PARAM_TYPE_STRING = 0,
+	PARAM_TYPE_INT32,
+	PARAM_TYPE_UINT32,
+	PARAM_TYPE_INT64,
+	PARAM_TYPE_UINT64,
+	PARAM_TYPE_BOOL,
+	PARAM_TYPE_ENUM,
+	PARAM_TYPE_BITMASK,
+	PARAM_TYPE_IPV4,
+	PARAM_TYPE_MAC,
+};
+
 struct param_d {
 	const char* (*get)(struct device_d *, struct param_d *param);
 	int (*set)(struct device_d *, struct param_d *param, const char *val);
@@ -20,9 +33,11 @@ struct param_d {
 	struct device_d *dev;
 	void *driver_priv;
 	struct list_head list;
+	enum param_type type;
 };
 
 #ifdef CONFIG_PARAMETER
+const char *get_param_type(struct param_d *param);
 const char *dev_get_param(struct device_d *dev, const char *name);
 int dev_set_param(struct device_d *dev, const char *name, const char *val);
 struct param_d *get_param_by_name(struct device_d *dev, const char *name);
diff --git a/lib/parameter.c b/lib/parameter.c
index 65d6c7c0df..6456779e71 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -31,6 +31,24 @@
 #include <globalvar.h>
 #include <linux/err.h>
 
+static const char *param_type_string[] = {
+	[PARAM_TYPE_STRING] = "string",
+	[PARAM_TYPE_INT32] = "int32",
+	[PARAM_TYPE_UINT32] = "uint32",
+	[PARAM_TYPE_INT64] = "int64",
+	[PARAM_TYPE_UINT64] = "uint64",
+	[PARAM_TYPE_BOOL] = "bool",
+	[PARAM_TYPE_ENUM] = "enum",
+	[PARAM_TYPE_BITMASK] = "bitmask",
+	[PARAM_TYPE_IPV4] = "ipv4",
+	[PARAM_TYPE_MAC] = "MAC",
+};
+
+const char *get_param_type(struct param_d *param)
+{
+	return param_type_string[param->type];
+}
+
 struct param_d *get_param_by_name(struct device_d *dev, const char *name)
 {
 	struct param_d *p;
@@ -284,6 +302,7 @@ struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
 	ps->get = get;
 	p = &ps->param;
 	p->driver_priv = priv;
+	p->type = PARAM_TYPE_STRING;
 
 	ret = __dev_add_param(p, dev, name, param_string_set, param_string_get, 0);
 	if (ret) {
@@ -384,6 +403,7 @@ struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
 	pi->get = get;
 	p = &pi->param;
 	p->driver_priv = priv;
+	p->type = PARAM_TYPE_INT32;
 
 	ret = __dev_add_param(p, dev, name, param_int_set, param_int_get, 0);
 	if (ret) {
@@ -465,7 +485,7 @@ static void param_enum_info(struct param_d *p)
 	if (pe->num_names <= 1)
 		return;
 
-	printf(" (");
+	printf(" (values: ");
 
 	for (i = 0; i < pe->num_names; i++) {
 		if (!pe->names[i] || !*pe->names[i])
@@ -493,6 +513,7 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 	pe->num_names = num_names;
 	p = &pe->param;
 	p->driver_priv = priv;
+	p->type = PARAM_TYPE_ENUM;
 
 	ret = __dev_add_param(p, dev, name, param_enum_set, param_enum_get, 0);
 	if (ret) {
@@ -622,6 +643,7 @@ struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
 	pb->num_names = max;
 	p = &pb->param;
 	p->driver_priv = priv;
+	p->type = PARAM_TYPE_BITMASK;
 
 	for (i = 0; i < pb->num_names; i++)
 		if (pb->names[i])
@@ -666,6 +688,8 @@ struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 	if (IS_ERR(p))
 		return p;
 
+	p->type = PARAM_TYPE_BOOL;
+
 	pi = to_param_int(p);
 	pi->flags |= PARAM_INT_FLAG_BOOL;
 
@@ -698,6 +722,7 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		return ERR_PTR(ret);
 	}
 
+	piro->param.type = PARAM_TYPE_INT32;
 	piro->param.value = basprintf(format, value);
 
 	return &piro->param;
@@ -724,6 +749,7 @@ struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
 		return ERR_PTR(ret);
 	}
 
+	piro->param.type = PARAM_TYPE_INT64;
 	piro->param.value = basprintf(format, value);
 
 	return &piro->param;
@@ -795,6 +821,7 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 	pi->set = set;
 	pi->get = get;
 	pi->param.driver_priv = priv;
+	pi->param.type = PARAM_TYPE_IPV4;
 
 	ret = __dev_add_param(&pi->param, dev, name,
 			param_ip_set, param_ip_get, 0);
@@ -882,6 +909,7 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 	pm->get = get;
 	pm->param.driver_priv = priv;
 	pm->param.value = pm->mac_str;
+	pm->param.type = PARAM_TYPE_MAC;
 
 	ret = __dev_add_param(&pm->param, dev, name,
 			param_mac_set, param_mac_get, 0);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
