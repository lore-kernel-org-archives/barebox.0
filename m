Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cwNsA-0005Sn-7a
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 06:59:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Apr 2017 08:59:26 +0200
Message-Id: <20170407065926.27245-3-s.hauer@pengutronix.de>
In-Reply-To: <20170407065926.27245-1-s.hauer@pengutronix.de>
References: <20170407065926.27245-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] globalvar: remove code for unqualified globalvars
To: Barebox List <barebox@lists.infradead.org>

The globalvar_add_simple_* functions will fail when a globalvar of
the name already exists. This happened when the globalvar was created
previously because a corresponding nvvar existed. For this reason we
removed the globalvars that have been previously created by nvvar
creation (we called these unqualified globalvars). Since we no longer
create the corresponding globalvars on nvvar creation this code is
no longer needed. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 43 +------------------------------------------
 include/param.h    |  1 -
 2 files changed, 1 insertion(+), 43 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 778d8e608c..4050bd66de 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -404,7 +404,7 @@ int globalvar_add_simple(const char *name, const char *value)
 	struct param_d *param;
 
 	param = dev_add_param(&global_device, name, globalvar_simple_set, NULL,
-			      PARAM_GLOBALVAR_UNQUALIFIED);
+			      0);
 	if (IS_ERR(param)) {
 		if (PTR_ERR(param) != -EEXIST)
 			return PTR_ERR(param);
@@ -418,30 +418,9 @@ int globalvar_add_simple(const char *name, const char *value)
 	return 0;
 }
 
-static int globalvar_remove_unqualified(const char *name)
-{
-	struct param_d *p;
-
-	p = get_param_by_name(&global_device, name);
-	if (!p)
-		return 0;
-
-	if (!(p->flags & PARAM_GLOBALVAR_UNQUALIFIED))
-		return -EEXIST;
-
-	dev_remove_param(p);
-
-	return 0;
-}
-
 int globalvar_add_simple_string(const char *name, char **value)
 {
 	struct param_d *p;
-	int ret;
-
-	ret = globalvar_remove_unqualified(name);
-	if (ret)
-		return ret;
 
 	p = dev_add_param_string(&global_device, name, NULL, NULL,
 		value, NULL);
@@ -458,11 +437,6 @@ int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format)
 {
 	struct param_d *p;
-	int ret;
-
-	ret = globalvar_remove_unqualified(name);
-	if (ret)
-		return ret;
 
 	p = dev_add_param_int(&global_device, name, NULL, NULL,
 		value, format, NULL);
@@ -478,11 +452,6 @@ int globalvar_add_simple_int(const char *name, int *value,
 int globalvar_add_simple_bool(const char *name, int *value)
 {
 	struct param_d *p;
-	int ret;
-
-	ret = globalvar_remove_unqualified(name);
-	if (ret)
-		return ret;
 
 	p = dev_add_param_bool(&global_device, name, NULL, NULL,
 		value, NULL);
@@ -499,11 +468,6 @@ int globalvar_add_simple_enum(const char *name,	int *value,
 			      const char * const *names, int max)
 {
 	struct param_d *p;
-	int ret;
-
-	ret = globalvar_remove_unqualified(name);
-	if (ret)
-		return ret;
 
 	p = dev_add_param_enum(&global_device, name, NULL, NULL,
 		value, names, max, NULL);
@@ -533,11 +497,6 @@ int globalvar_add_simple_bitmask(const char *name, unsigned long *value,
 int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 {
 	struct param_d *p;
-	int ret;
-
-	ret = globalvar_remove_unqualified(name);
-	if (ret)
-		return ret;
 
 	p = dev_add_param_ip(&global_device, name, NULL, NULL,
 		ip, NULL);
diff --git a/include/param.h b/include/param.h
index f5f82ee70c..f9f3398cae 100644
--- a/include/param.h
+++ b/include/param.h
@@ -6,7 +6,6 @@
 #include <linux/list.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
-#define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
 
 struct device_d;
 typedef uint32_t          IPaddr_t;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
