Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTX9-0006w4-3n
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:20 +0200
Message-Id: <20170410071420.26884-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] param: remove unnecessary device_d * argument
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 14 +++++++-------
 include/param.h    | 11 +++++------
 lib/parameter.c    | 44 ++++++++++++++++++++++----------------------
 3 files changed, 34 insertions(+), 35 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 2f65ca805f..d33bc64a13 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -163,7 +163,7 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 	return 1;
 }
 
-static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
+static int nv_set(struct param_d *p, const char *val)
 {
 	struct param_d *g;
 	int ret;
@@ -184,16 +184,16 @@ static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 	return 0;
 }
 
-static const char *nv_param_get(struct device_d *dev, struct param_d *p)
+static const char *nv_param_get(struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
 
-static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val)
+static int nv_param_set(struct param_d *p, const char *val)
 {
 	int ret;
 
-	ret = nv_set(dev, p, val);
+	ret = nv_set(p, val);
 	if (ret)
 		return ret;
 
@@ -216,7 +216,7 @@ static int __nvvar_add(const char *name, const char *value)
 	}
 
 	if (value)
-		return nv_set(&nv_device, p, value);
+		return nv_set(p, value);
 
 	value = dev_get_param(&global_device, name);
 	if (value) {
@@ -370,7 +370,7 @@ void globalvar_set_match(const char *match, const char *val)
 	}
 }
 
-static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const char *val)
+static int globalvar_simple_set(struct param_d *p, const char *val)
 {
 	struct device_d *rdev;
 	const char *pname = NULL;
@@ -388,7 +388,7 @@ static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const c
 	}
 
 	/* Pass to the generic function we have overwritten */
-	return dev_param_set_generic(dev, p, val);
+	return dev_param_set_generic(p, val);
 }
 
 static void globalvar_nv_sync(const char *name)
diff --git a/include/param.h b/include/param.h
index be4cca7b68..50bca62588 100644
--- a/include/param.h
+++ b/include/param.h
@@ -24,8 +24,8 @@ enum param_type {
 };
 
 struct param_d {
-	const char* (*get)(struct device_d *, struct param_d *param);
-	int (*set)(struct device_d *, struct param_d *param, const char *val);
+	const char* (*get)(struct param_d *param);
+	int (*set)(struct param_d *param, const char *val);
 	void (*info)(struct param_d *param);
 	unsigned int flags;
 	char *name;
@@ -43,8 +43,8 @@ int dev_set_param(struct device_d *dev, const char *name, const char *val);
 struct param_d *get_param_by_name(struct device_d *dev, const char *name);
 
 struct param_d *dev_add_param(struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *, struct param_d *p),
+		int (*set)(struct param_d *p, const char *val),
+		const char *(*get)(struct param_d *p),
 		unsigned long flags);
 
 struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
@@ -83,8 +83,7 @@ void dev_remove_param(struct param_d *p);
 
 void dev_remove_parameters(struct device_d *dev);
 
-int dev_param_set_generic(struct device_d *dev, struct param_d *p,
-		const char *val);
+int dev_param_set_generic(struct param_d *p, const char *val);
 
 #else
 static inline const char *dev_get_param(struct device_d *dev, const char *name)
diff --git a/lib/parameter.c b/lib/parameter.c
index a21b8fa4a4..ab36b15591 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -76,7 +76,7 @@ const char *dev_get_param(struct device_d *dev, const char *name)
 		return NULL;
 	}
 
-	return param->get(dev, param);
+	return param->get(param);
 }
 
 /**
@@ -107,7 +107,7 @@ int dev_set_param(struct device_d *dev, const char *name, const char *val)
 		return -EACCES;
 	}
 
-	ret = param->set(dev, param, val);
+	ret = param->set(param, val);
 	if (ret)
 		errno = -ret;
 
@@ -125,7 +125,7 @@ int dev_set_param(struct device_d *dev, const char *name, const char *val)
  * used during deregistration of the parameter to free the alloctated
  * memory.
  */
-int dev_param_set_generic(struct device_d *dev, struct param_d *p,
+int dev_param_set_generic(struct param_d *p,
 		const char *val)
 {
 	free(p->value);
@@ -137,7 +137,7 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 	return p->value ? 0 : -ENOMEM;
 }
 
-static const char *param_get_generic(struct device_d *dev, struct param_d *p)
+static const char *param_get_generic(struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
@@ -151,8 +151,8 @@ static int compare(struct list_head *a, struct list_head *b)
 }
 
 static int __dev_add_param(struct param_d *param, struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *dev, struct param_d *p),
+		int (*set)(struct param_d *p, const char *val),
+		const char *(*get)(struct param_d *p),
 		unsigned long flags)
 {
 	if (get_param_by_name(dev, name))
@@ -194,8 +194,8 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
  * not use static arrays when using the generic functions.
  */
 struct param_d *dev_add_param(struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *dev, struct param_d *param),
+		int (*set)(struct param_d *p, const char *val),
+		const char *(*get)(struct param_d *param),
 		unsigned long flags)
 {
 	struct param_d *param;
@@ -248,7 +248,7 @@ static inline struct param_string *to_param_string(struct param_d *p)
 	return container_of(p, struct param_string, param);
 }
 
-static int param_string_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_string_set(struct param_d *p, const char *val)
 {
 	struct param_string *ps = to_param_string(p);
 	int ret;
@@ -273,7 +273,7 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
 	return ret;
 }
 
-static const char *param_string_get(struct device_d *dev, struct param_d *p)
+static const char *param_string_get(struct param_d *p)
 {
 	struct param_string *ps = to_param_string(p);
 	int ret;
@@ -327,7 +327,7 @@ static inline struct param_int *to_param_int(struct param_d *p)
 	return container_of(p, struct param_int, param);
 }
 
-static int param_int_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_int_set(struct param_d *p, const char *val)
 {
 	struct param_int *pi = to_param_int(p);
 	u8 value_save[pi->dsize];
@@ -368,7 +368,7 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
 	return ret;
 }
 
-static const char *param_int_get(struct device_d *dev, struct param_d *p)
+static const char *param_int_get(struct param_d *p)
 {
 	struct param_int *pi = to_param_int(p);
 	int ret;
@@ -487,7 +487,7 @@ static inline struct param_enum *to_param_enum(struct param_d *p)
 	return container_of(p, struct param_enum, param);
 }
 
-static int param_enum_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_enum_set(struct param_d *p, const char *val)
 {
 	struct param_enum *pe = to_param_enum(p);
 	int value_save = *pe->value;
@@ -515,7 +515,7 @@ static int param_enum_set(struct device_d *dev, struct param_d *p, const char *v
 	return ret;
 }
 
-static const char *param_enum_get(struct device_d *dev, struct param_d *p)
+static const char *param_enum_get(struct param_d *p)
 {
 	struct param_enum *pe = to_param_enum(p);
 	int ret;
@@ -599,7 +599,7 @@ static inline struct param_bitmask *to_param_bitmask(struct param_d *p)
 	return container_of(p, struct param_bitmask, param);
 }
 
-static int param_bitmask_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_bitmask_set(struct param_d *p, const char *val)
 {
 	struct param_bitmask *pb = to_param_bitmask(p);
 	void *value_save;
@@ -645,7 +645,7 @@ out:
 	return ret;
 }
 
-static const char *param_bitmask_get(struct device_d *dev, struct param_d *p)
+static const char *param_bitmask_get(struct param_d *p)
 {
 	struct param_bitmask *pb = to_param_bitmask(p);
 	int ret, bit;
@@ -734,7 +734,7 @@ static inline struct param_ip *to_param_ip(struct param_d *p)
 	return container_of(p, struct param_ip, param);
 }
 
-static int param_ip_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_ip_set(struct param_d *p, const char *val)
 {
 	struct param_ip *pi = to_param_ip(p);
 	IPaddr_t ip_save = *pi->ip;
@@ -757,7 +757,7 @@ static int param_ip_set(struct device_d *dev, struct param_d *p, const char *val
 	return ret;
 }
 
-static const char *param_ip_get(struct device_d *dev, struct param_d *p)
+static const char *param_ip_get(struct param_d *p)
 {
 	struct param_ip *pi = to_param_ip(p);
 	int ret;
@@ -816,7 +816,7 @@ static inline struct param_mac *to_param_mac(struct param_d *p)
 	return container_of(p, struct param_mac, param);
 }
 
-static int param_mac_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_mac_set(struct param_d *p, const char *val)
 {
 	struct param_mac *pm = to_param_mac(p);
 	char mac_save[6];
@@ -845,7 +845,7 @@ out:
 	return ret;
 }
 
-static const char *param_mac_get(struct device_d *dev, struct param_d *p)
+static const char *param_mac_get(struct param_d *p)
 {
 	struct param_mac *pm = to_param_mac(p);
 	int ret;
@@ -894,7 +894,7 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
  */
 void dev_remove_param(struct param_d *p)
 {
-	p->set(p->dev, p, NULL);
+	p->set(p, NULL);
 	list_del(&p->list);
 	free(p->name);
 	free(p);
@@ -910,7 +910,7 @@ void dev_remove_parameters(struct device_d *dev)
 	struct param_d *p, *n;
 
 	list_for_each_entry_safe(p, n, &dev->parameters, list) {
-		p->set(dev, p, NULL);
+		p->set(p, NULL);
 		list_del(&p->list);
 		free(p->name);
 		free(p);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
