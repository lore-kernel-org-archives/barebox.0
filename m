Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYy0-0005MT-TP
 for barebox@lists.infradead.org; Tue, 12 May 2020 17:45:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id u4so11291597lfm.7
 for <barebox@lists.infradead.org>; Tue, 12 May 2020 10:45:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2020 20:45:11 +0300
Message-Id: <20200512174511.9702-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] phy: drop of_phy_simple_xlate() stub
To: barebox@lists.infradead.org

The function of_phy_simple_xlate() is not used.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/phy/phy.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index e2fe42d90e..679ce6e420 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -139,8 +139,6 @@ struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
 				  u8 index);
 void phy_put(struct phy *phy);
 struct phy *of_phy_get(struct device_node *np, const char *con_id);
-struct phy *of_phy_simple_xlate(struct device_d *dev,
-	struct of_phandle_args *args);
 struct phy *phy_create(struct device_d *dev, struct device_node *node,
 		       const struct phy_ops *ops);
 void phy_destroy(struct phy *phy);
@@ -215,12 +213,6 @@ static inline struct phy *of_phy_get(struct device_node *np, const char *con_id)
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct phy *of_phy_simple_xlate(struct device_d *dev,
-	struct of_phandle_args *args)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
 static inline struct phy *phy_create(struct device_d *dev,
 				     struct device_node *node,
 				     const struct phy_ops *ops)
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
