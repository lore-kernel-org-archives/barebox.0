Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cwNs7-0005Rs-BH
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 06:59:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Apr 2017 08:59:24 +0200
Message-Id: <20170407065926.27245-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] globalvar: remove unused globalvar_add()
To: Barebox List <barebox@lists.infradead.org>

globalvar_add() is unused in the tree. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 16 ----------------
 include/globalvar.h | 12 ------------
 2 files changed, 28 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 4cf635c0c7..971c21949f 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -29,22 +29,6 @@ void nv_var_set_clean(void)
 	nv_dirty = 0;
 }
 
-int globalvar_add(const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *, struct param_d *p),
-		unsigned long flags)
-{
-	struct param_d *param;
-
-	if (!strncmp(name, "global.", 7))
-		name += 7;
-
-	param = dev_add_param(&global_device, name, set, get, flags);
-	if (IS_ERR(param))
-		return PTR_ERR(param);
-	return 0;
-}
-
 void globalvar_remove(const char *name)
 {
 	struct param_d *p, *tmp;
diff --git a/include/globalvar.h b/include/globalvar.h
index 80bc53e680..df43f1fe66 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -11,10 +11,6 @@ extern struct device_d global_device;
 #ifdef CONFIG_GLOBALVAR
 int globalvar_add_simple(const char *name, const char *value);
 
-int globalvar_add(const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *, struct param_d *p),
-		unsigned long flags);
 void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
@@ -80,14 +76,6 @@ static inline int globalvar_add_simple_ip(const char *name,
 	return 0;
 }
 
-static inline int globalvar_add(const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *, struct param_d *p),
-		unsigned long flags)
-{
-	return 0;
-}
-
 static inline void globalvar_remove(const char *name) {}
 
 static inline void globalvar_print(void) {}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
