Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hn-0001yC-Pv
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:40 +0200
Message-Id: <20170614072641.29942-8-s.hauer@pengutronix.de>
In-Reply-To: <20170614072641.29942-1-s.hauer@pengutronix.de>
References: <20170614072641.29942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] Revert "globalvar: remove code for unqualified globalvars"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit e4f81050e098074792730b61563538d9e394e3d6.
---
 common/globalvar.c | 43 ++++++++++++++++++++++++++++++++++++++++++-
 include/param.h    |  1 +
 2 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 32ca6a24db..1b3082a1b7 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -410,7 +410,7 @@ int globalvar_add_simple(const char *name, const char *value)
 	struct param_d *param;
 
 	param = dev_add_param(&global_device, name, globalvar_simple_set, NULL,
-			      0);
+			      PARAM_GLOBALVAR_UNQUALIFIED);
 	if (IS_ERR(param)) {
 		if (PTR_ERR(param) != -EEXIST)
 			return PTR_ERR(param);
@@ -424,9 +424,30 @@ int globalvar_add_simple(const char *name, const char *value)
 	return 0;
 }
 
+static int globalvar_remove_unqualified(const char *name)
+{
+	struct param_d *p;
+
+	p = get_param_by_name(&global_device, name);
+	if (!p)
+		return 0;
+
+	if (!(p->flags & PARAM_GLOBALVAR_UNQUALIFIED))
+		return -EEXIST;
+
+	dev_remove_param(p);
+
+	return 0;
+}
+
 int globalvar_add_simple_string(const char *name, char **value)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_string(&global_device, name, NULL, NULL,
 		value, NULL);
@@ -443,6 +464,11 @@ int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_int(&global_device, name, NULL, NULL,
 		value, format, NULL);
@@ -458,6 +484,11 @@ int globalvar_add_simple_int(const char *name, int *value,
 int globalvar_add_simple_bool(const char *name, int *value)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_bool(&global_device, name, NULL, NULL,
 		value, NULL);
@@ -474,6 +505,11 @@ int globalvar_add_simple_enum(const char *name,	int *value,
 			      const char * const *names, int max)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_enum(&global_device, name, NULL, NULL,
 		value, names, max, NULL);
@@ -503,6 +539,11 @@ int globalvar_add_simple_bitmask(const char *name, unsigned long *value,
 int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 {
 	struct param_d *p;
+	int ret;
+
+	ret = globalvar_remove_unqualified(name);
+	if (ret)
+		return ret;
 
 	p = dev_add_param_ip(&global_device, name, NULL, NULL,
 		ip, NULL);
diff --git a/include/param.h b/include/param.h
index 449d3d78e9..2592a09c3a 100644
--- a/include/param.h
+++ b/include/param.h
@@ -6,6 +6,7 @@
 #include <linux/list.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
+#define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
 
 struct device_d;
 typedef uint32_t          IPaddr_t;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
