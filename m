Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMbw7-0007d6-Ej
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 09:21:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Apr 2012 11:21:17 +0200
Message-Id: <1335259279-25353-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
References: <1335259279-25353-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] param: make return value of param getter function const
To: barebox@lists.infradead.org

The string returned by the getter function should not be
changed. Make it const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h |    6 +++---
 lib/parameter.c |   10 +++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/include/param.h b/include/param.h
index 4a39dc7..e7b66a4 100644
--- a/include/param.h
+++ b/include/param.h
@@ -10,7 +10,7 @@ struct device_d;
 typedef unsigned long          IPaddr_t;
 
 struct param_d {
-	char* (*get)(struct device_d *, struct param_d *param);
+	const char* (*get)(struct device_d *, struct param_d *param);
 	int (*set)(struct device_d *, struct param_d *param, const char *val);
 	unsigned int flags;
 	char *name;
@@ -24,9 +24,9 @@ const char *dev_get_param(struct device_d *dev, const char *name);
 int dev_set_param(struct device_d *dev, const char *name, const char *val);
 struct param_d *get_param_by_name(struct device_d *dev, const char *name);
 
-int dev_add_param(struct device_d *dev, char *name,
+int dev_add_param(struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		char *(*get)(struct device_d *, struct param_d *p),
+		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
 
 int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
diff --git a/lib/parameter.c b/lib/parameter.c
index 5a7ae1a..e746467 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -133,14 +133,14 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 	return 0;
 }
 
-static char *param_get_generic(struct device_d *dev, struct param_d *p)
+static const char *param_get_generic(struct device_d *dev, struct param_d *p)
 {
 	return p->value;
 }
 
-static struct param_d *__dev_add_param(struct device_d *dev, char *name,
+static struct param_d *__dev_add_param(struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		char *(*get)(struct device_d *dev, struct param_d *p),
+		const char *(*get)(struct device_d *dev, struct param_d *p),
 		unsigned long flags)
 {
 	struct param_d *param;
@@ -176,9 +176,9 @@ static struct param_d *__dev_add_param(struct device_d *dev, char *name,
  * expect the parameter value to be a string which can be freed with free(). Do
  * not use static arrays when using the generic functions.
  */
-int dev_add_param(struct device_d *dev, char *name,
+int dev_add_param(struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		char *(*get)(struct device_d *dev, struct param_d *param),
+		const char *(*get)(struct device_d *dev, struct param_d *param),
 		unsigned long flags)
 {
 	struct param_d *param;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
