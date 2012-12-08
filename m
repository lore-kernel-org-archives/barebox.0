Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThNjV-0002PJ-Qa
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 16:58:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  8 Dec 2012 17:58:21 +0100
Message-Id: <1354985902-11317-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
References: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] net phylib: Clear BMCR_PDOWN bit
To: barebox@lists.infradead.org

Some phys come up with this bit set, clear it so that these phys
can work. This has been observed with a ASIX compatible USB ethernet
adapter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index ed185e1..58546f8 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -443,6 +443,9 @@ int genphy_restart_aneg(struct phy_device *phydev)
 	/* Don't isolate the PHY if we're negotiating */
 	ctl &= ~(BMCR_ISOLATE);
 
+	/* Clear powerdown bit which eventually is set on some phys */
+	ctl &= ~BMCR_PDOWN;
+
 	ctl = phy_write(phydev, MII_BMCR, ctl);
 
 	if (ctl < 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
