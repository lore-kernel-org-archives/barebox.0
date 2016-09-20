Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmM09-0004la-9c
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 14:26:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Sep 2016 16:26:01 +0200
Message-Id: <1474381562-4330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] globalvar: Move static inline functions to common/
To: Barebox List <barebox@lists.infradead.org>

These functions will get bigger in the next patch which disqualifies
them as static inline functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 67 ++++++++++++++++++++++++++++++++++++++++++++++
 include/globalvar.h | 76 +++++------------------------------------------------
 2 files changed, 74 insertions(+), 69 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 44e6528..49f7f7d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -437,6 +437,73 @@ int globalvar_add_simple(const char *name, const char *value)
 	return dev_set_param(&global_device, name, value);
 }
 
+int globalvar_add_simple_string(const char *name, char **value)
+{
+	struct param_d *p;
+
+	p = dev_add_param_string(&global_device, name, NULL, NULL,
+		value, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
+int globalvar_add_simple_int(const char *name, int *value,
+			     const char *format)
+{
+	struct param_d *p;
+
+	p = dev_add_param_int(&global_device, name, NULL, NULL,
+		value, format, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
+int globalvar_add_simple_bool(const char *name, int *value)
+{
+	struct param_d *p;
+
+	p = dev_add_param_bool(&global_device, name, NULL, NULL,
+		value, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
+int globalvar_add_simple_enum(const char *name,	int *value,
+			      const char * const *names, int max)
+{
+	struct param_d *p;
+
+	p = dev_add_param_enum(&global_device, name, NULL, NULL,
+		value, names, max, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
+int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
+{
+	struct param_d *p;
+
+	p = dev_add_param_ip(&global_device, name, NULL, NULL,
+		ip, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
 static int globalvar_init(void)
 {
 	register_device(&global_device);
diff --git a/include/globalvar.h b/include/globalvar.h
index 1cd8d21..2322efb 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -18,75 +18,13 @@ void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 
-static inline int globalvar_add_simple_string(const char *name,
-		char **value)
-{
-	struct param_d *p;
-
-	p = dev_add_param_string(&global_device, name, NULL, NULL,
-		value, NULL);
-
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	return 0;
-}
-
-static inline int globalvar_add_simple_int(const char *name,
-		int *value, const char *format)
-{
-	struct param_d *p;
-
-	p = dev_add_param_int(&global_device, name, NULL, NULL,
-		value, format, NULL);
-
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	return 0;
-}
-
-static inline int globalvar_add_simple_bool(const char *name,
-		int *value)
-{
-	struct param_d *p;
-
-	p = dev_add_param_bool(&global_device, name, NULL, NULL,
-		value, NULL);
-
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	return 0;
-}
-
-static inline int globalvar_add_simple_enum(const char *name,
-		int *value, const char * const *names, int max)
-{
-	struct param_d *p;
-
-	p = dev_add_param_enum(&global_device, name, NULL, NULL,
-		value, names, max, NULL);
-
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	return 0;
-}
-
-static inline int globalvar_add_simple_ip(const char *name,
-		IPaddr_t *ip)
-{
-	struct param_d *p;
-
-	p = dev_add_param_ip(&global_device, name, NULL, NULL,
-		ip, NULL);
-
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
-	return 0;
-}
+int globalvar_add_simple_string(const char *name, char **value);
+int globalvar_add_simple_int(const char *name, int *value,
+			     const char *format);
+int globalvar_add_simple_bool(const char *name, int *value);
+int globalvar_add_simple_enum(const char *name,	int *value,
+			      const char * const *names, int max);
+int globalvar_add_simple_ip(const char *name, IPaddr_t *ip);
 
 int nvvar_load(void);
 void nvvar_print(void);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
