Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVW68-0004rp-6N
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:32:53 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C7B65100013
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:32:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:32:39 +0100
Message-Id: <20191115073239.21013-4-ahmad@a3f.at>
In-Reply-To: <20191115073239.21013-1-ahmad@a3f.at>
References: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
 <20191115073239.21013-1-ahmad@a3f.at>
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
Subject: [PATCH 3/3] net: designware: eqos: fix NULL pointer use in dev_printf
To: barebox@lists.infradead.org

Inside mdio_register, a read of the PHY's id register is attempted.
If it fails, we print an error message with eqos_err, which uses the
ethernet device's unique name, but at this time there has been none set,
because eth_register was not yet called. Fix this by using the MDIO bus
device instead.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/designware_eqos.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 84dcd04a3fc9..da67adf9a0f0 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -204,7 +204,7 @@ static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
 
 	ret = eqos_mdio_wait_idle(eqos);
 	if (ret) {
-		eqos_err(eqos, "MDIO not idle at entry\n");
+		dev_err(&bus->dev, "MDIO not idle at entry\n");
 		return ret;
 	}
 
@@ -222,7 +222,7 @@ static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
 
 	ret = eqos_mdio_wait_idle(eqos);
 	if (ret) {
-		eqos_err(eqos, "MDIO read didn't complete\n");
+		dev_err(&bus->dev, "MDIO read didn't complete\n");
 		return ret;
 	}
 
@@ -237,7 +237,7 @@ static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
 
 	ret = eqos_mdio_wait_idle(eqos);
 	if (ret) {
-		eqos_err(eqos, "MDIO not idle at entry\n");
+		dev_err(&bus->dev, "MDIO not idle at entry\n");
 		return ret;
 	}
 
@@ -256,7 +256,7 @@ static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
 
 	ret = eqos_mdio_wait_idle(eqos);
 	if (ret) {
-		eqos_err(eqos, "MDIO read didn't complete\n");
+		dev_err(&bus->dev, "MDIO read didn't complete\n");
 		return ret;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
