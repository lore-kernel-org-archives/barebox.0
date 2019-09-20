Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLp7-0002lj-IB
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 16:31:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Sep 2019 18:31:44 +0200
Message-Id: <20190920163144.26968-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] regmap: align documentation in comment with code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

dev_get_regmap has some copy-paste left-over in the comment.
Rectify this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index d2f8ec70e439..dc7b4f276f31 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -65,7 +65,7 @@ struct regmap *regmap_init(struct device_d *dev,
 }
 
 /*
- * regmap_init - initialize and register a regmap
+ * dev_get_regmap - get a regmap from a device
  *
  * @dev:         The device the maps is attached to
  * @name:        Optional name for the map. If given it must match.
@@ -406,4 +406,4 @@ void regmap_exit(struct regmap *map)
 	}
 
 	free(map);
-}
\ No newline at end of file
+}
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
