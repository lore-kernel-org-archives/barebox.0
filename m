Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MK-6e
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:49 +0200
Message-Id: <1365343255-26497-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/21] param: pass param to dev_remove_param
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h |  4 ++--
 lib/parameter.c | 17 ++++++-----------
 2 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/include/param.h b/include/param.h
index 3061cfd..2dc2c83 100644
--- a/include/param.h
+++ b/include/param.h
@@ -50,7 +50,7 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 
 int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
 
-void dev_remove_param(struct device_d *dev, char *name);
+void dev_remove_param(struct param_d *p);
 
 void dev_remove_parameters(struct device_d *dev);
 
@@ -116,7 +116,7 @@ static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *va
 	return 0;
 }
 
-static inline void dev_remove_param(struct device_d *dev, char *name) {}
+static inline void dev_remove_param(struct param_d *p) {}
 
 static inline void dev_remove_parameters(struct device_d *dev) {}
 
diff --git a/lib/parameter.c b/lib/parameter.c
index fe35f54..7fe3aee 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -442,19 +442,14 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 /**
  * dev_remove_param - remove a parameter from a device and free its
  * memory
- * @param dev	The device
- * @param name	The name of the parameter
+ * @param p	The parameter
  */
-void dev_remove_param(struct device_d *dev, char *name)
+void dev_remove_param(struct param_d *p)
 {
-	struct param_d *p = get_param_by_name(dev, name);
-
-	if (p) {
-		p->set(dev, p, NULL);
-		list_del(&p->list);
-		free(p->name);
-		free(p);
-	}
+	p->set(p->dev, p, NULL);
+	list_del(&p->list);
+	free(p->name);
+	free(p);
 }
 
 /**
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
