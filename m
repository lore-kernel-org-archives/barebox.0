Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXsA-0006wb-BN
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:40:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:14 +0200
Message-Id: <1469183959-9002-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
References: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] nv: Do not save nv variables while loading
To: Barebox List <barebox@lists.infradead.org>

When reading nv variables from the storage in /env/nv we do
not need to write back the value to the file we just read from.
Optimize this a bit and make it unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 32 +++++++++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 5 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index c0958e1..be08231 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -180,15 +180,26 @@ static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 	free(p->value);
 	p->value = xstrdup(val);
 
-	return nv_save(p->name, val);
+	return 0;
 }
 
-static const char *nv_get(struct device_d *dev, struct param_d *p)
+static const char *nv_param_get(struct device_d *dev, struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
 
-int nvvar_add(const char *name, const char *value)
+static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	int ret;
+
+	ret = nv_set(dev, p, val);
+	if (ret)
+		return ret;
+
+	return nv_save(p->name, val);
+}
+
+static int __nvvar_add(const char *name, const char *value)
 {
 	struct param_d *p, *gp;
 	int ret;
@@ -226,7 +237,7 @@ int nvvar_add(const char *name, const char *value)
 			return ret;
 	}
 
-	p = dev_add_param(&nv_device, name, nv_set, nv_get, 0);
+	p = dev_add_param(&nv_device, name, nv_param_set, nv_param_get, 0);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
@@ -242,6 +253,17 @@ int nvvar_add(const char *name, const char *value)
 	return nv_set(&nv_device, p, value);
 }
 
+int nvvar_add(const char *name, const char *value)
+{
+	int ret;
+
+	ret = __nvvar_add(name, value);
+	if (ret)
+		return ret;
+
+	return nv_save(name, value);
+}
+
 int nvvar_remove(const char *name)
 {
 	struct param_d *p;
@@ -288,7 +310,7 @@ int nvvar_load(void)
 		pr_debug("%s: Setting \"%s\" to \"%s\"\n",
 				__func__, d->d_name, val);
 
-		ret = nvvar_add(d->d_name, val);
+		ret = __nvvar_add(d->d_name, val);
 		if (ret)
 			pr_err("failed to create nv variable %s: %s\n",
 					d->d_name, strerror(-ret));
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
