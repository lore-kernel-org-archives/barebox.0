Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baLNi-0002ZX-Ad
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 11:21:07 +0000
Received: by mail-lf0-x243.google.com with SMTP id 33so1634009lfw.3
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 04:20:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 18 Aug 2016 14:20:39 +0300
Message-Id: <1471519239-14295-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: phy: of_phy_register_fixed_link(): drop redundant
 initialization
To: barebox@lists.infradead.org

The phy_device_create() function makes all necessary phydev initialization
so we can drop phydev->pause and phydev->link initialization in
the of_phy_register_fixed_link() function.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/phy/phy.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 13b8324..7132516 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -311,8 +311,6 @@ static struct phy_device *of_phy_register_fixed_link(struct device_node *np,
 	phydev->registered = 1;
 	phydev->speed = 1000;
 	phydev->duplex = 1;
-	phydev->pause = phydev->asym_pause = 0;
-	phydev->link = 1;
 
 	return phydev;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
