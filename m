Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEk4-0008Ry-O8
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 17:32:36 +0100
Message-Id: <1351614757-20520-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351614757-20520-1-git-send-email-s.hauer@pengutronix.de>
References: <1351614757-20520-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mdiobus: return existing phydev in mdiobus_scan
To: barebox@lists.infradead.org

Test if we already found a phy device on an address earlier and return
it if it exists. This makes it possible to call mdiobus_scan multiple
times.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index b49f714..5025e3f 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -101,6 +101,9 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 {
 	struct phy_device *phydev;
 
+	if (bus->phy_map[addr])
+		return bus->phy_map[addr];
+
 	phydev = get_phy_device(bus, addr);
 	if (IS_ERR(phydev) || phydev == NULL)
 		return phydev;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
