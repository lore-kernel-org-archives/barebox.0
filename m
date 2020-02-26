Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vzC-0001D1-4M
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 12:40:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Feb 2020 13:40:16 +0100
Message-Id: <20200226124017.24646-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] net: designware: eqos: remove left-over PHY quirk work
 around
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The dummy read was a left over from an abandoned merge with the existing
support for the SoCFPGA variant of the Designware MAC. It doesn't exist
in either the U-Boot or kernel drivers for the EQOS, thus drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_eqos.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 4ae07fe059ca..acb4b955464d 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -255,14 +255,10 @@ static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 data)
 	udelay(eqos->ops->mdio_wait_us);
 
 	ret = eqos_mdio_wait_idle(eqos);
-	if (ret) {
+	if (ret)
 		dev_err(&bus->dev, "MDIO read didn't complete\n");
-		return ret;
-	}
 
-	/* Needed as a fix for ST-Phy */
-	eqos_mdio_read(bus, addr, reg);
-	return 0;
+	return ret;
 }
 
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
