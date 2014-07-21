Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9FJQ-0004sY-OJ
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:30 +0200
Message-Id: <1405955687-27433-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/23] param: Add dev_add_param_string
To: barebox@lists.infradead.org

This function allows drivers to create a string parameter and
provides access to it via a pointer. Using regular dev_add_param
only allows access via dev_get_param().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 13 ++++++++++
 lib/parameter.c | 76 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 89 insertions(+)

diff --git a/include/param.h b/include/param.h
index 8f200df..9856a2e 100644
--- a/include/param.h
+++ b/include/param.h
@@ -31,6 +31,11 @@ int dev_add_param(struct device_d *dev, const char *name,
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
 
+struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		char **value, void *priv);
+
 struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
@@ -95,6 +100,14 @@ static inline int dev_add_param(struct device_d *dev, char *name,
 	return 0;
 }
 
+static inline struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		char **value, void *priv)
+{
+	return NULL;
+}
+
 static inline struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
diff --git a/lib/parameter.c b/lib/parameter.c
index 13062bc..84a632c 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -201,6 +201,82 @@ int dev_add_param_fixed(struct device_d *dev, char *name, const char *value)
 	return 0;
 }
 
+struct param_string {
+	struct param_d param;
+	char **value;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_string *to_param_string(struct param_d *p)
+{
+	return container_of(p, struct param_string, param);
+}
+
+static int param_string_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_string *ps = to_param_string(p);
+	int ret;
+	char *value_save = *ps->value;
+
+	if (!val)
+		return -EINVAL;
+
+	*ps->value = xstrdup(val);
+
+	if (!ps->set)
+		return 0;
+
+	ret = ps->set(p, p->driver_priv);
+	if (ret) {
+		free(*ps->value);
+		*ps->value = value_save;
+	} else {
+		free(value_save);
+	}
+
+	return ret;
+}
+
+static const char *param_string_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_string *ps = to_param_string(p);
+	int ret;
+
+	if (ps->get) {
+		ret = ps->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	return *ps->value;
+}
+
+struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		char **value, void *priv)
+{
+	struct param_string *ps;
+	struct param_d *p;
+	int ret;
+
+	ps = xzalloc(sizeof(*ps));
+	ps->value = value;
+	ps->set = set;
+	ps->get = get;
+	p = &ps->param;
+	p->driver_priv = priv;
+
+	ret = __dev_add_param(p, dev, name, param_string_set, param_string_get, 0);
+	if (ret) {
+		free(ps);
+		return ERR_PTR(ret);
+	}
+
+	return &ps->param;
+}
+
 struct param_int {
 	struct param_d param;
 	int *value;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
