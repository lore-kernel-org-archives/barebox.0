Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJKR-0005aT-9W
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2020 09:35:38 +0100
Message-Id: <20200312083555.10793-3-s.hauer@pengutronix.de>
In-Reply-To: <20200312083555.10793-1-s.hauer@pengutronix.de>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/19] miitool: Use mdiobus_read()
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Use mdiobus_read() to read from the mii bus. Accessing the read hook
directly bypasses the acquiring the slice.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/miitool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index a87d567ace..07437d28a8 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -110,10 +110,10 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 
 	/* Some bits in the BMSR are latched, but we can't rely on being
 	   the only reader, so only the current values are meaningful */
-	mii->read(mii, phydev->addr, MII_BMSR);
+	mdiobus_read(mii, phydev->addr, MII_BMSR);
 
 	for (i = 0; i < 32; i++)
-		mii_val[i] = mii->read(mii, phydev->addr, i);
+		mii_val[i] = mdiobus_read(mii, phydev->addr, i);
 
 	printf((mii->parent->id) < 0 ? "%s: %s: " : "%s: %s%d: ",
 	       phydev->cdev.name, mii->parent->name, mii->parent->id);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
