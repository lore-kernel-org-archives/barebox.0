Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001ME-Oa
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:38 +0200
Message-Id: <1365343255-26497-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/21] param: Add ip address convenience function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 13 ++++++++
 lib/parameter.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 98 insertions(+), 8 deletions(-)

diff --git a/include/param.h b/include/param.h
index ea22215..5e4c989 100644
--- a/include/param.h
+++ b/include/param.h
@@ -43,6 +43,11 @@ struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		int value, const char *format);
 
+struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		IPaddr_t *ip, void *priv);
+
 int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
 
 void dev_remove_param(struct device_d *dev, char *name);
@@ -102,6 +107,14 @@ static inline struct param_d *dev_add_param_int_ro(struct device_d *dev, const c
 	return NULL;
 }
 
+static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		IPaddr_t *ip, void *priv)
+{
+	return NULL;
+}
+
 static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
 {
 	return 0;
diff --git a/lib/parameter.c b/lib/parameter.c
index 3e78c96..c80110a 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -244,18 +244,18 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
 		return -EINVAL;
 
 	*pi->value = simple_strtol(val, NULL, 0);
+
 	if (pi->flags & PARAM_INT_FLAG_BOOL)
 		*pi->value = !!*pi->value;
 
-	if (pi->set) {
-		ret = pi->set(p, p->driver_priv);
-		if (ret) {
-			*pi->value = value_save;
-			return ret;
-		}
-	}
+	if (!pi->set)
+		return 0;
 
-	return 0;
+	ret = pi->set(p, p->driver_priv);
+	if (ret)
+		*pi->value = value_save;
+
+	return ret;
 }
 
 static const char *param_int_get(struct device_d *dev, struct param_d *p)
@@ -379,6 +379,83 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 	return &piro->param;
 }
 
+struct param_ip {
+	struct param_d param;
+	IPaddr_t *ip;
+	const char *format;
+	int (*set)(struct param_d *p, void *priv);
+	int (*get)(struct param_d *p, void *priv);
+};
+
+static inline struct param_ip *to_param_ip(struct param_d *p)
+{
+	return container_of(p, struct param_ip, param);
+}
+
+static int param_ip_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_ip *pi = to_param_ip(p);
+	IPaddr_t ip_save = *pi->ip;
+	int ret;
+
+	if (!val)
+		return -EINVAL;
+
+	ret = string_to_ip(val, pi->ip);
+	if (ret)
+		return ret;
+
+	if (!pi->set)
+		return 0;
+
+	ret = pi->set(p, p->driver_priv);
+	if (ret)
+		*pi->ip = ip_save;
+
+	return ret;
+}
+
+static const char *param_ip_get(struct device_d *dev, struct param_d *p)
+{
+	struct param_ip *pi = to_param_ip(p);
+	int ret;
+
+	if (pi->get) {
+		ret = pi->get(p, p->driver_priv);
+		if (ret)
+			return NULL;
+	}
+
+	free(p->value);
+	p->value = xstrdup(ip_to_string(*pi->ip));
+
+	return p->value;
+}
+
+struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		IPaddr_t *ip, void *priv)
+{
+	struct param_ip *pi;
+	int ret;
+
+	pi = xzalloc(sizeof(*pi));
+	pi->ip = ip;
+	pi->set = set;
+	pi->get = get;
+	pi->param.driver_priv = priv;
+
+	ret = __dev_add_param(&pi->param, dev, name,
+			param_ip_set, param_ip_get, 0);
+	if (ret) {
+		free(pi);
+		return ERR_PTR(ret);
+	}
+
+	return &pi->param;
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
