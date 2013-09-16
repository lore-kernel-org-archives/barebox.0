Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLcvD-0004Or-Sj
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 17:49:18 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 62311FF8C77
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 19:48:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Sep 2013 19:49:56 +0200
Message-Id: <1379353800-28237-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130916174824.GH21829@ns203013.ovh.net>
References: <20130916174824.GH21829@ns203013.ovh.net>
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
Subject: [PATCH 1/5] globalvar: add globalvar_add_simple_int/bool/enum/ip
 support
To: barebox@lists.infradead.org

so we can types var

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/globalvar.c  |  2 +-
 include/globalvar.h | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index edb66dd..6ef4a6a 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -6,7 +6,7 @@
 #include <magicvar.h>
 #include <generated/utsrelease.h>
 
-static struct device_d global_device = {
+struct device_d global_device = {
 	.name = "global",
 	.id = DEVICE_ID_SINGLE,
 };
diff --git a/include/globalvar.h b/include/globalvar.h
index c2a13b3..298e8ef 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -2,6 +2,9 @@
 #define __GLOBALVAR_H
 
 #include <param.h>
+#include <driver.h>
+
+extern struct device_d global_device;
 
 #ifdef CONFIG_GLOBALVAR
 int globalvar_add_simple(const char *name, const char *value);
@@ -12,12 +15,92 @@ int globalvar_add(const char *name,
 		unsigned long flags);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
+
+static inline int globalvar_add_simple_int(const char *name,
+		int *value, const char *format)
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
+static inline int globalvar_add_simple_bool(const char *name,
+		int *value)
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
+static inline int globalvar_add_simple_enum(const char *name,
+		int *value, const char **names, int max)
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
+static inline int globalvar_add_simple_ip(const char *name,
+		IPaddr_t *ip)
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
 #else
 static inline int globalvar_add_simple(const char *name, const char *value)
 {
 	return 0;
 }
 
+static inline int globalvar_add_simple_int(const char *name,
+		int *value, const char *format)
+{
+	return 0;
+}
+
+static inline int globalvar_add_simple_bool(const char *name,
+		int *value)
+{
+	return 0;
+}
+
+static inline int globalvar_add_simple_enum(const char *name,
+		int *value, const char **names, int max)
+{
+	return 0;
+}
+
+static inline int globalvar_add_simple_ip(const char *name,
+		IPaddr_t *ip)
+{
+	return 0;
+}
+
 static inline int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
