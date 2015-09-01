Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWeto-0001Sd-7O
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 06:18:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Sep 2015 08:18:04 +0200
Message-Id: <1441088285-22965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] param_enum: Make name strings const
To: Barebox List <barebox@lists.infradead.org>

Not only the array containing the pointers should be const but
also the strings themselves, so instead of using const char **
use const char * const *.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/globalvar.h | 4 ++--
 include/param.h     | 4 ++--
 lib/parameter.c     | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/globalvar.h b/include/globalvar.h
index 6e10956..e77209b 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -60,7 +60,7 @@ static inline int globalvar_add_simple_bool(const char *name,
 }
 
 static inline int globalvar_add_simple_enum(const char *name,
-		int *value, const char **names, int max)
+		int *value, const char * const *names, int max)
 {
 	struct param_d *p;
 
@@ -117,7 +117,7 @@ static inline int globalvar_add_simple_bool(const char *name,
 }
 
 static inline int globalvar_add_simple_enum(const char *name,
-		int *value, const char **names, int max)
+		int *value, const char * const *names, int max)
 {
 	return 0;
 }
diff --git a/include/param.h b/include/param.h
index 3a851fc..3fb4740 100644
--- a/include/param.h
+++ b/include/param.h
@@ -50,7 +50,7 @@ struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
 struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, const char **names, int max, void *priv);
+		int *value, const char * const *names, int max, void *priv);
 
 struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		int value, const char *format);
@@ -120,7 +120,7 @@ static inline struct param_d *dev_add_param_int(struct device_d *dev, const char
 static inline struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, const char **names, int max, void *priv)
+		int *value, const char * const *names, int max, void *priv)
 
 {
 	return ERR_PTR(-ENOSYS);
diff --git a/lib/parameter.c b/lib/parameter.c
index b238859..868b810 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -390,7 +390,7 @@ struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
 struct param_enum {
 	struct param_d param;
 	int *value;
-	const char **names;
+	const char * const *names;
 	int num_names;
 	int (*set)(struct param_d *p, void *priv);
 	int (*get)(struct param_d *p, void *priv);
@@ -467,7 +467,7 @@ static void param_enum_info(struct param_d *p)
 struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
-		int *value, const char **names, int num_names, void *priv)
+		int *value, const char * const *names, int num_names, void *priv)
 {
 	struct param_enum *pe;
 	struct param_d *p;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
