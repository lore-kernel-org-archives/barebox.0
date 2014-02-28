Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJKcW-00069L-0x
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 10:24:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 11:24:18 +0100
Message-Id: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] param: dev_add_param_fixed: constify argument
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 2 +-
 lib/parameter.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/param.h b/include/param.h
index 7830f6f..e8458b5 100644
--- a/include/param.h
+++ b/include/param.h
@@ -54,7 +54,7 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		IPaddr_t *ip, void *priv);
 
-int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
+int dev_add_param_fixed(struct device_d *dev, char *name, const char *value);
 
 void dev_remove_param(struct param_d *p);
 
diff --git a/lib/parameter.c b/lib/parameter.c
index c5c6426..de11819 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -184,7 +184,7 @@ int dev_add_param(struct device_d *dev, const char *name,
  * @param name	The name of the parameter
  * @param value	The value of the parameter
  */
-int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
+int dev_add_param_fixed(struct device_d *dev, char *name, const char *value)
 {
 	struct param_d *param;
 	int ret;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
