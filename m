Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aUEqZ-00087h-4Y
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 14:37:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Feb 2016 15:36:58 +0100
Message-Id: <1455287818-31915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] regmap: Add missing prototype for regmap_exit()
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/regmap.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/regmap.h b/include/regmap.h
index 4cb473c..bcbe6c1 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -41,6 +41,7 @@ struct regmap *regmap_init(struct device_d *dev,
 			     const struct regmap_bus *bus,
 			     void *bus_context,
 			     const struct regmap_config *config);
+void regmap_exit(struct regmap *map);
 
 struct regmap *dev_get_regmap(struct device_d *dev, const char *name);
 struct regmap *of_node_to_regmap(struct device_node *node);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
