Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLtLu-00066B-3d
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 10:17:22 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 10 Oct 2012 12:17:08 +0200
Message-Id: <1349864229-12914-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] parameter: remove unused function global_add_parameter
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 include/param.h |    7 -------
 1 file changed, 7 deletions(-)

diff --git a/include/param.h b/include/param.h
index a855102..e0c415d 100644
--- a/include/param.h
+++ b/include/param.h
@@ -38,8 +38,6 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 /* Convenience functions to handle a parameter as an ip address */
 int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip);
 IPaddr_t dev_get_param_ip(struct device_d *dev, char *name);
-
-int global_add_parameter(struct param_d *param);
 #else
 static inline const char *dev_get_param(struct device_d *dev, const char *name)
 {
@@ -86,11 +84,6 @@ static inline IPaddr_t dev_get_param_ip(struct device_d *dev, char *name)
 {
 	return 0;
 }
-
-static inline int global_add_parameter(struct param_d *param)
-{
-	return 0;
-}
 #endif
 
 #endif /* PARAM_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
