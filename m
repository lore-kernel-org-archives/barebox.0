Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXt3-0000SI-WA
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:54:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:54:09 +0200
Message-Id: <20200916135409.24896-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] globalvar: allow running actions on set with
 globalvar_add_bool()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

globalvar_add_simple_bool() and the other family of globalvars don't allow
running a callback when the variable is set. This is a useful thing
to have however for things like global.usbgadget.autostart=1.
Provide a globalvar_add_bool() that accommodates this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/globalvar.c  |  8 +++++---
 include/globalvar.h | 14 +++++++++++---
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 83f61366a201..5bde86aad08a 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -569,7 +569,9 @@ int globalvar_add_simple_int(const char *name, int *value,
 	return 0;
 }
 
-int globalvar_add_simple_bool(const char *name, int *value)
+int globalvar_add_bool(const char *name,
+		       int (*set)(struct param_d *, void *),
+		       int *value, void *priv)
 {
 	struct param_d *p;
 	int ret;
@@ -578,8 +580,8 @@ int globalvar_add_simple_bool(const char *name, int *value)
 	if (ret)
 		return ret;
 
-	p = dev_add_param_bool(&global_device, name, NULL, NULL,
-		value, NULL);
+	p = dev_add_param_bool(&global_device, name, set, NULL,
+		value, priv);
 
 	if (IS_ERR(p))
 		return PTR_ERR(p);
diff --git a/include/globalvar.h b/include/globalvar.h
index d798fa815c5a..84bee9102cf3 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -20,7 +20,9 @@ void globalvar_set(const char *name, const char *val);
 int globalvar_add_simple_string(const char *name, char **value);
 int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format);
-int globalvar_add_simple_bool(const char *name, int *value);
+int globalvar_add_bool(const char *name,
+		       int (*set)(struct param_d *, void *),
+		       int *value, void *priv);
 int globalvar_add_simple_enum(const char *name,	int *value,
 			      const char * const *names, int max);
 int globalvar_add_simple_bitmask(const char *name, unsigned long *value,
@@ -53,8 +55,9 @@ static inline int globalvar_add_simple_int(const char *name,
 	return 0;
 }
 
-static inline int globalvar_add_simple_bool(const char *name,
-		int *value)
+static inline int globalvar_add_bool(const char *name,
+		int (*set)(struct param_d *, void *),
+		int *value, void *priv)
 {
 	return 0;
 }
@@ -127,4 +130,9 @@ int nvvar_save(void);
 int nv_complete(struct string_list *sl, char *instr);
 int global_complete(struct string_list *sl, char *instr);
 
+static inline int globalvar_add_simple_bool(const char *name, int *value)
+{
+	return globalvar_add_bool(name, NULL, value, NULL);
+}
+
 #endif /* __GLOBALVAR_H */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
