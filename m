Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VG-3B
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:59 +0100
Message-Id: <1417184946-16128-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] param: make string arguments to dev_add_param_fixed
 const
To: barebox@lists.infradead.org

dev_add_param_fixed does not modify the strings, so make them
const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 4 ++--
 lib/parameter.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/param.h b/include/param.h
index b8dd9b1..53bee54 100644
--- a/include/param.h
+++ b/include/param.h
@@ -67,7 +67,7 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 		int (*get)(struct param_d *p, void *priv),
 		u8 *mac, void *priv);
 
-int dev_add_param_fixed(struct device_d *dev, char *name, const char *value);
+int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
 
 void dev_remove_param(struct param_d *p);
 
@@ -161,7 +161,7 @@ static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char
 	return NULL;
 }
 
-static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
+static inline int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
 {
 	return 0;
 }
diff --git a/lib/parameter.c b/lib/parameter.c
index bcdb16b..d337ef3 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -185,7 +185,7 @@ struct param_d *dev_add_param(struct device_d *dev, const char *name,
  * @param name	The name of the parameter
  * @param value	The value of the parameter
  */
-int dev_add_param_fixed(struct device_d *dev, char *name, const char *value)
+int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
 {
 	struct param_d *param;
 	int ret;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
