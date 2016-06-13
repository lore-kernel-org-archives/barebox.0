Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCVka-0006lv-SK
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 17:34:13 +0000
Received: by mail-wm0-x241.google.com with SMTP id n184so16553538wmn.1
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 10:33:52 -0700 (PDT)
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Date: Mon, 13 Jun 2016 19:29:15 +0200
Message-Id: <1465838955-24515-1-git-send-email-guille.rodriguez@gmail.com>
In-Reply-To: <20160504074331.GM19714@pengutronix.de>
References: <20160504074331.GM19714@pengutronix.de>
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
Subject: [PATCH] Fix genphy_restart_aneg() for Micrel's ksz9031.
To: barebox@lists.infradead.org
Cc: Philipp Zabel <pza@pengutronix.de>, grodriguez <guille.rodriguez@gmail.com>, Trent Piepho <tpiepho@kymetacorp.com>

From: grodriguez <guille.rodriguez@gmail.com>

Commit da89ee8f2e04 ("Center FLP timing at 16ms") breaks
genphy_restart_aneg() for Micrel's ksz9031. According to the
datasheet, the ksz9031 requires a wait of 1ms after clearing
the PDOWN bit and before read/write access to any PHY registers.
---
 drivers/net/phy/phy.c |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 73176fb..ed69d9b 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -561,7 +561,7 @@ int phy_wait_aneg_done(struct phy_device *phydev)
  */
 int genphy_restart_aneg(struct phy_device *phydev)
 {
-	int ctl;
+	int ctl, pdown;
 
 	ctl = phy_read(phydev, MII_BMCR);
 
@@ -574,6 +574,7 @@ int genphy_restart_aneg(struct phy_device *phydev)
 	ctl &= ~(BMCR_ISOLATE);
 
 	/* Clear powerdown bit which eventually is set on some phys */
+	pdown = ctl & BMCR_PDOWN;
 	ctl &= ~BMCR_PDOWN;
 
 	ctl = phy_write(phydev, MII_BMCR, ctl);
@@ -581,6 +582,12 @@ int genphy_restart_aneg(struct phy_device *phydev)
 	if (ctl < 0)
 		return ctl;
 
+	/* Micrel's ksz9031 (and perhaps others?): Changing the PDOWN bit
+	 * from '1' to '0' generates an internal reset. Must wait a minimum
+	 * of 1ms before read/write access to the PHY registers. */
+	if (pdown)
+		mdelay(1);
+
 	return 0;
 }
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
