Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001MB-Jt
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:36 +0200
Message-Id: <1365343255-26497-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/21] param: refactor __dev_add_param
To: barebox@lists.infradead.org

Let __dev_add_param take a previously allocated struct param_d. This
helps when later other users wish to embed a struct param_d in a bigger
struct.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c | 31 ++++++++++++++++++-------------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 94da79c..70f035a 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -139,14 +139,13 @@ static const char *param_get_generic(struct device_d *dev, struct param_d *p)
 	return p->value ? p->value : "";
 }
 
-static struct param_d *__dev_add_param(struct device_d *dev, const char *name,
+static int __dev_add_param(struct param_d *param, struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *dev, struct param_d *p),
 		unsigned long flags)
 {
-	struct param_d *param;
-
-	param = xzalloc(sizeof(*param));
+	if (get_param_by_name(dev, name))
+		return -EEXIST;
 
 	if (set)
 		param->set = set;
@@ -162,7 +161,7 @@ static struct param_d *__dev_add_param(struct device_d *dev, const char *name,
 	param->dev = dev;
 	list_add_tail(&param->list, &dev->parameters);
 
-	return param;
+	return 0;
 }
 
 /**
@@ -184,14 +183,15 @@ int dev_add_param(struct device_d *dev, const char *name,
 		unsigned long flags)
 {
 	struct param_d *param;
+	int ret;
 
-	param = get_param_by_name(dev, name);
-	if (param)
-		return -EEXIST;
+	param = xzalloc(sizeof(*param));
 
-	param = __dev_add_param(dev, name, set, get, flags);
+	ret = __dev_add_param(param, dev, name, set, get, flags);
+	if (ret)
+		free(param);
 
-	return param ? 0 : -EINVAL;
+	return ret;
 }
 
 /**
@@ -203,10 +203,15 @@ int dev_add_param(struct device_d *dev, const char *name,
 int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
 {
 	struct param_d *param;
+	int ret;
 
-	param = __dev_add_param(dev, name, NULL, NULL, PARAM_FLAG_RO);
-	if (!param)
-		return -EINVAL;
+	param = xzalloc(sizeof(*param));
+
+	ret = __dev_add_param(param, dev, name, NULL, NULL, PARAM_FLAG_RO);
+	if (ret) {
+		free(param);
+		return ret;
+	}
 
 	param->value = strdup(value);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
