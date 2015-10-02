Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhzYh-00018n-Ku
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 12:35:32 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri,  2 Oct 2015 14:35:01 +0200
Message-Id: <1443789301-25097-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] param: dev_add_param_mac() depends on CONFIG_NET
To: barebox@lists.infradead.org

This patch adds the proper inline function for CONFIG_PARAMETER && !
CONFIG_NET.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/param.h | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/include/param.h b/include/param.h
index 3a851fc552a4..f8a2534ef3a8 100644
--- a/include/param.h
+++ b/include/param.h
@@ -63,10 +63,12 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		IPaddr_t *ip, void *priv);
 
+#ifdef CONFIG_NET
 struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 		int (*set)(struct param_d *p, void *priv),
 		int (*get)(struct param_d *p, void *priv),
 		u8 *mac, void *priv);
+#endif
 
 int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
 
@@ -154,14 +156,6 @@ static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		u8 *mac, void *priv)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
 static inline int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
 {
 	return 0;
@@ -178,4 +172,15 @@ static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 }
 #endif
 
+#if ! defined(CONFIG_PARAMETER) || ! defined(CONFIG_NET)
+static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
+		int (*set)(struct param_d *p, void *priv),
+		int (*get)(struct param_d *p, void *priv),
+		u8 *mac, void *priv)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+#endif
+
 #endif /* PARAM_H */
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
