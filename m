Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsKi-0000Aq-4w
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:35:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:34:52 +0200
Message-Id: <1412778892-22976-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] param: let dev_add_param return the newly created param
To: barebox@lists.infradead.org

dev_add_param creates a new parameter so it makes more sense to
return it than to return an error code. Since the return value
is hardly ever checked this is only a small patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 7 ++++++-
 include/param.h    | 4 ++--
 lib/parameter.c    | 8 +++++---
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 1f9b0cc..c72f147 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -17,7 +17,12 @@ int globalvar_add(const char *name,
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
-	return dev_add_param(&global_device, name, set, get, flags);
+	struct param_d *param;
+
+	param = dev_add_param(&global_device, name, set, get, flags);
+	if (IS_ERR(param))
+		return PTR_ERR(param);
+	return 0;
 }
 
 /*
diff --git a/include/param.h b/include/param.h
index 9856a2e..b8dd9b1 100644
--- a/include/param.h
+++ b/include/param.h
@@ -26,7 +26,7 @@ const char *dev_get_param(struct device_d *dev, const char *name);
 int dev_set_param(struct device_d *dev, const char *name, const char *val);
 struct param_d *get_param_by_name(struct device_d *dev, const char *name);
 
-int dev_add_param(struct device_d *dev, const char *name,
+struct param_d *dev_add_param(struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
@@ -92,7 +92,7 @@ static inline struct param_d *get_param_by_name(struct device_d *dev,
 	return NULL;
 }
 
-static inline int dev_add_param(struct device_d *dev, char *name,
+static inline struct param_d *dev_add_param(struct device_d *dev, char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
diff --git a/lib/parameter.c b/lib/parameter.c
index 84a632c..d6f8d16 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -160,7 +160,7 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
  * expect the parameter value to be a string which can be freed with free(). Do
  * not use static arrays when using the generic functions.
  */
-int dev_add_param(struct device_d *dev, const char *name,
+struct param_d *dev_add_param(struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *dev, struct param_d *param),
 		unsigned long flags)
@@ -171,10 +171,12 @@ int dev_add_param(struct device_d *dev, const char *name,
 	param = xzalloc(sizeof(*param));
 
 	ret = __dev_add_param(param, dev, name, set, get, flags);
-	if (ret)
+	if (ret) {
 		free(param);
+		return ERR_PTR(ret);
+	}
 
-	return ret;
+	return param;
 }
 
 /**
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
