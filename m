Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLtkg-0000hG-J8
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 10:42:59 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 10 Oct 2012 12:42:51 +0200
Message-Id: <1349865771-18825-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1349865771-18825-1-git-send-email-jlu@pengutronix.de>
References: <1349865771-18825-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] parameter: support removing named parameters
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 include/param.h |    4 ++++
 lib/parameter.c |   18 ++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/include/param.h b/include/param.h
index e0c415d..21f4f7d 100644
--- a/include/param.h
+++ b/include/param.h
@@ -30,6 +30,8 @@ int dev_add_param(struct device_d *dev, const char *name,
 
 int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
 
+void dev_remove_param(struct device_d *dev, char *name);
+
 void dev_remove_parameters(struct device_d *dev);
 
 int dev_param_set_generic(struct device_d *dev, struct param_d *p,
@@ -67,6 +69,8 @@ static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *va
 	return 0;
 }
 
+static inline void dev_remove_param(struct device_d *dev, char *name) {}
+
 static inline void dev_remove_parameters(struct device_d *dev) {}
 
 static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
diff --git a/lib/parameter.c b/lib/parameter.c
index b33ad17..c00b824 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -213,6 +213,24 @@ int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
 }
 
 /**
+ * dev_remove_param - remove a parameter from a device and free its
+ * memory
+ * @param dev	The device
+ * @param name	The name of the parameter
+ */
+void dev_remove_param(struct device_d *dev, char *name)
+{
+	struct param_d *p = get_param_by_name(dev, name);
+
+	if (p) {
+		p->set(dev, p, NULL);
+		list_del(&p->list);
+		free(p->name);
+		free(p);
+	}
+}
+
+/**
  * dev_remove_parameters - remove all parameters from a device and free their
  * memory
  * @param dev	The device
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
