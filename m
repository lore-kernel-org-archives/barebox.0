Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YUyw1-0001K9-4y
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 14:45:34 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  9 Mar 2015 15:45:04 +0100
Message-Id: <1425912304-9998-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] paramter: The dev_add_param_*() return ERR_PTR(),
 change no-ops to return ERR_PTR(-ENOSYS) instead of NULL
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/param.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/include/param.h b/include/param.h
index 53bee541100e..bd2c0789968a 100644
--- a/include/param.h
+++ b/include/param.h
@@ -97,7 +97,7 @@ static inline struct param_d *dev_add_param(struct device_d *dev, char *name,
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
-	return 0;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
@@ -105,7 +105,7 @@ static inline struct param_d *dev_add_param_string(struct device_d *dev, const c
 		int (*get)(struct param_d *p, void *priv),
 		char **value, void *priv)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_int(struct device_d *dev, const char *name,
@@ -113,7 +113,7 @@ static inline struct param_d *dev_add_param_int(struct device_d *dev, const char
 		int (*get)(struct param_d *p, void *priv),
 		int *value, const char *format, void *priv)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
@@ -122,7 +122,7 @@ static inline struct param_d *dev_add_param_enum(struct device_d *dev, const cha
 		int *value, const char **names, int max, void *priv)
 
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
@@ -130,19 +130,19 @@ static inline struct param_d *dev_add_param_bool(struct device_d *dev, const cha
 		int (*get)(struct param_d *p, void *priv),
 		int *value, void *priv)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		int value, const char *format)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
 		long long value, const char *format)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
@@ -150,7 +150,7 @@ static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char
 		int (*get)(struct param_d *p, void *priv),
 		IPaddr_t *ip, void *priv)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
@@ -158,7 +158,7 @@ static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char
 		int (*get)(struct param_d *p, void *priv),
 		u8 *mac, void *priv)
 {
-	return NULL;
+	return ERR_PTR(-ENOSYS);
 }
 
 static inline int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
