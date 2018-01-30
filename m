Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egc7C-0006ed-22
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 20:02:48 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 30 Jan 2018 21:02:21 +0100
Message-Id: <20180130200221.12785-1-linux@rempel-privat.de>
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
Subject: [PATCH] net: phy: ar8327: fix ar8327n_reg_read
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Actual read value was lost and only by accident worked properly.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/phy/ar8327.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/ar8327.c b/drivers/net/phy/ar8327.c
index a0b10021d..e9ac3d49e 100644
--- a/drivers/net/phy/ar8327.c
+++ b/drivers/net/phy/ar8327.c
@@ -83,7 +83,7 @@ static u32 ar8327n_reg_read(struct phy_device *phydev, u32 reg_addr)
 	reg_word_addr++;
 	phy_addr = 0x10 | ((reg_word_addr >> 5) & 0x7); /* bit7-5 of reg address */
 	phy_reg = (u8) (reg_word_addr & 0x1f);   /* bit4-0 of reg address */
-	reg_val = (u32) mdiobus_read(phydev->bus, phy_addr, phy_reg);
+	tmp_val = (u32) mdiobus_read(phydev->bus, phy_addr, phy_reg);
 	reg_val |= (tmp_val << 16);
 
 	return reg_val;
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
