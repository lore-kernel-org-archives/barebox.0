Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MI-0z
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:42 +0200
Message-Id: <1365343255-26497-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/21] param: remove now unused dev_[gs]et_param_ip
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 15 ---------------
 lib/parameter.c | 17 -----------------
 2 files changed, 32 deletions(-)

diff --git a/include/param.h b/include/param.h
index 5e4c989..3061cfd 100644
--- a/include/param.h
+++ b/include/param.h
@@ -57,10 +57,6 @@ void dev_remove_parameters(struct device_d *dev);
 int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 		const char *val);
 
-/* Convenience functions to handle a parameter as an ip address */
-int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip);
-IPaddr_t dev_get_param_ip(struct device_d *dev, char *name);
-
 #else
 static inline const char *dev_get_param(struct device_d *dev, const char *name)
 {
@@ -129,17 +125,6 @@ static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 {
 	return 0;
 }
-
-/* Convenience functions to handle a parameter as an ip address */
-static inline int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
-{
-	return 0;
-}
-static inline IPaddr_t dev_get_param_ip(struct device_d *dev, char *name)
-{
-	return 0;
-}
 #endif
 
 #endif /* PARAM_H */
-
diff --git a/lib/parameter.c b/lib/parameter.c
index c80110a..fe35f54 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -59,23 +59,6 @@ const char *dev_get_param(struct device_d *dev, const char *name)
 	return param->get(dev, param);
 }
 
-#ifdef CONFIG_NET
-IPaddr_t dev_get_param_ip(struct device_d *dev, char *name)
-{
-	IPaddr_t ip;
-
-	if (string_to_ip(dev_get_param(dev, name), &ip))
-		return 0;
-
-	return ip;
-}
-
-int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
-{
-	return dev_set_param(dev, name, ip_to_string(ip));
-}
-#endif
-
 /**
  * dev_set_param - set a parameter of a device to a new value
  * @param dev	The device
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
