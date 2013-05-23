Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfW0c-0005fH-AD
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:56:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 May 2013 15:56:16 +0200
Message-Id: <1369317377-17153-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
References: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] param: Add helpers to provide an enum parameter
To: barebox@lists.infradead.org

We recently gained helper functions for different types of
device parameters. One thing missing was a helper for an
enum type parameter. This patch adds this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h |  14 ++++++++
 lib/parameter.c | 104 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 118 insertions(+)

diff --git a/include/param.h b/include/param.h
index 54dea56..7830f6f 100644
--- a/include/param.h
+++ b/include/param.h
@@ -41,6 +41,11 @@ struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		int *value, void *priv);
 
+struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, const char **names, int max, void *priv);
+
 struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		int value, const char *format);
 
@@ -90,6 +95,15 @@ static inline struct param_d *dev_add_param_int(struct device_d *dev, const char
 	return NULL;
 }
 
+static inline struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, const char **names, int max, void *priv)
+
+{
+	return NULL;
+}
+
 static inline struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
diff --git a/lib/parameter.c b/lib/parameter.c
index e47e8b9..c5c6426 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -299,6 +299,110 @@ struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
 	return &pi->param;
 }
 
+struct param_enum {
+	struct param_d param;
+	int *value;
+	const char **names;
+	int num_names;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_enum *to_param_enum(struct param_d *p)
+{
+	return container_of(p, struct param_enum, param);
+}
+
+static int param_enum_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_enum *pe = to_param_enum(p);
+	int value_save = *pe->value;
+	int i, ret;
+
+	if (!val)
+		return -EINVAL;
+
+	for (i = 0; i < pe->num_names; i++)
+		if (pe->names[i] && !strcmp(val, pe->names[i]))
+			break;
+
+	if (i == pe->num_names)
+		return -EINVAL;
+
+	*pe->value = i;
+
+	if (!pe->set)
+		return 0;
+
+	ret = pe->set(p, p->driver_priv);
+	if (ret)
+		*pe->value = value_save;
+
+	return ret;
+}
+
+static const char *param_enum_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_enum *pe = to_param_enum(p);
+	int ret;
+
+	if (pe->get) {
+		ret = pe->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	free(p->value);
+	p->value = strdup(pe->names[*pe->value]);
+
+	return p->value;
+}
+
+static void param_enum_info(struct param_d *p)
+{
+	struct param_enum *pe = to_param_enum(p);
+	int i;
+
+	printf(" (");
+
+	for (i = 0; i < pe->num_names; i++) {
+		if (!pe->names[i] || !*pe->names[i])
+			continue;
+		printf("\"%s\"%s", pe->names[i],
+				i ==  pe->num_names - 1 ? ")" : ", ");
+	}
+}
+
+struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, const char **names, int num_names, void *priv)
+{
+	struct param_enum *pe;
+	struct param_d *p;
+	int ret;
+
+	pe = xzalloc(sizeof(*pe));
+
+	pe->value = value;
+	pe->set = set;
+	pe->get = get;
+	pe->names = names;
+	pe->num_names = num_names;
+	p = &pe->param;
+	p->driver_priv = priv;
+
+	ret = __dev_add_param(p, dev, name, param_enum_set, param_enum_get, 0);
+	if (ret) {
+		free(pe);
+		return ERR_PTR(ret);
+	}
+
+	p->info = param_enum_info;
+
+	return &pe->param;
+}
+
 /**
  * dev_add_param_bool - add an boolean parameter to a device
  * @param dev	The device
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
