Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vy7-0002lc-5a
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:39:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id g12-v6so1165836pgs.1
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:38:01 -0700
Message-Id: <20181009173805.26181-14-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 13/17] net: phy: Check phy_mask in get_phy_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Do not try to probe PHY devices if they are masked via phy_mask of the
corresponding bus. This way we won't try adding devices that are
unlikely to be proper PHYs by default. With this change it is still
remain to be possible to add such a device to the bus explicitly
either using "miitool" or calling phy_device_create() explicilty.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/phy.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 19d458e07..b985b7567 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -234,6 +234,10 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
 	u32 phy_id = 0;
 	int r;
 
+	/* skip masked out PHY addresses */
+	if (bus->phy_mask & BIT(addr))
+		return ERR_PTR(-ENODEV);
+
 	r = get_phy_id(bus, addr, &phy_id);
 	if (r)
 		return ERR_PTR(r);
@@ -440,9 +444,6 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	}
 
 	for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
-		/* skip masked out PHY addresses */
-		if (bus->phy_mask & (1 << i))
-			continue;
 
 		phy = mdiobus_scan(bus, i);
 		if (IS_ERR(phy))
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
