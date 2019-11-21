Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXi0l-0006RK-PQ
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 08:40:25 +0000
Received: from geraet.fritz.box (142-252-142-46.pool.kielnet.net
 [46.142.252.142]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C670B1BF20C
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2019 08:40:09 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 21 Nov 2019 09:40:03 +0100
Message-Id: <20191121084005.683-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] param: add dev_add_param_tristate(_ro) helpers
To: barebox@lists.infradead.org

This is can be considered an extension to the dev_add_param_bool
interfaces with a third value that's "unknown".
This can be used for cases, where barebox can flip a bit somewhere,
but it has no way of knowing what the initial state of the bit was,
e.g. turn on/off the watchdog, but no watchdog status.
Turn on/off a co-processor, but no co-processor online status.
And so on. Not providing a way to customize the "unknown" string
is a deliberate choice, so future device parameters follow the same
naming scheme.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/param.h | 24 ++++++++++++++++++++++++
 lib/parameter.c | 22 ++++++++++++++++++++++
 2 files changed, 46 insertions(+)

diff --git a/include/param.h b/include/param.h
index 4ac502e726c0..d75f50ea3e60 100644
--- a/include/param.h
+++ b/include/param.h
@@ -63,6 +63,16 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		int *value, const char * const *names, int max, void *priv);
 
+enum param_tristate { PARAM_TRISTATE_UNKNOWN, PARAM_TRISTATE_TRUE, PARAM_TRISTATE_FALSE };
+
+struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv);
+
+struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
+		int *value);
+
 struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
@@ -144,6 +154,20 @@ static inline struct param_d *dev_add_param_bitmask(struct device_d *dev, const
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
+		int *value)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
diff --git a/lib/parameter.c b/lib/parameter.c
index fdbb2e71d15d..22695634e5f1 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -588,6 +588,28 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 	return &pe->param;
 }
 
+static const char *const tristate_names[] = {
+	[PARAM_TRISTATE_UNKNOWN] = "unknown",
+	[PARAM_TRISTATE_TRUE] = "1",
+	[PARAM_TRISTATE_FALSE] = "0",
+};
+
+struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		int *value, void *priv)
+{
+	return dev_add_param_enum(dev, name, set, get, value, tristate_names,
+				  ARRAY_SIZE(tristate_names), priv);
+}
+
+struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
+		int *value)
+{
+	return dev_add_param_enum_ro(dev, name, value, tristate_names,
+				     ARRAY_SIZE(tristate_names));
+}
+
 struct param_bitmask {
 	struct param_d param;
 	unsigned long *value;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
