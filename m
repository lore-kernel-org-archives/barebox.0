Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webmail.celad.com ([84.14.244.162])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wv1SS-0007yV-RN
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 09:38:09 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Thu, 12 Jun 2014 11:37:37 +0200
Message-ID: <1402565858-7098-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 1/2] param: Add support for long long read only dev param
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 include/param.h |    9 +++++++++
 lib/parameter.c |   26 ++++++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/include/param.h b/include/param.h
index eac3372..24827c5 100644
--- a/include/param.h
+++ b/include/param.h
@@ -49,6 +49,9 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
 struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		int value, const char *format);
 
+struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
+		long long value, const char *format);
+
 struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
@@ -123,6 +126,12 @@ static inline struct param_d *dev_add_param_int_ro(struct device_d *dev, const c
 	return NULL;
 }
 
+static inline struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
+		long long value, const char *format)
+{
+	return NULL;
+}
+
 static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
diff --git a/lib/parameter.c b/lib/parameter.c
index b1f9aa3..13062bc 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -468,6 +468,32 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 	return &piro->param;
 }
 
+/**
+ * dev_add_param_llint_ro - add a read only long long parameter to a device
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param value	The value of the parameter
+ * @param format the printf format used to print the value
+ */
+struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
+		long long value, const char *format)
+{
+	struct param_int *piro;
+	int ret;
+
+	piro = xzalloc(sizeof(*piro));
+
+	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
+	if (ret) {
+		free(piro);
+		return ERR_PTR(ret);
+	}
+
+	piro->param.value = asprintf(format, value);
+
+	return &piro->param;
+}
+
 #ifdef CONFIG_NET
 struct param_ip {
 	struct param_d param;
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
