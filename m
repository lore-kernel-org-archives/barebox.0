Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWBU-0004Zt-SW
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 18:17:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Jan 2020 19:17:16 +0100
Message-Id: <20200117181716.1775-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] net: designware: eqos: don't funnel all MDIO writes to
 register 0
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

eqos_mdio_write ended up using the addr parameter instead of the
computed miiaddr variable, which would've factored in the reg parameter.

This had the effect that all writes went to PHY register 0, which was
fine as long as there were only register 0 writes. As soon there are more
writes, e.g. because a PHY driver was enabled, register 0 became
clobbered and erratic behavior ensued.
Fix the typo and while at it rename the val parameter to a more
descriptive name.

Fixes: a4f709bbb ("net: add Designware Ethernet QoS for STM32MP")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Could this be applied to master? Thanks.
---
 drivers/net/designware_eqos.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index da67adf9a0f0..4ae07fe059ca 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -229,7 +229,7 @@ static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
 	return readl(&eqos->mac_regs->mdio_data) & 0xffff;
 }
 
-static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
+static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 data)
 {
 	struct eqos *eqos = bus->priv;
 	u32 miiaddr = 0;
@@ -249,8 +249,8 @@ static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
 	miiaddr |= EQOS_MDIO_ADDR(addr) | EQOS_MDIO_REG(reg);
 	miiaddr |= MII_BUSY;
 
-	writel(val, &eqos->mac_regs->mdio_data);
-	writel(addr, &eqos->mac_regs->mdio_address);
+	writel(data, &eqos->mac_regs->mdio_data);
+	writel(miiaddr, &eqos->mac_regs->mdio_address);
 
 	udelay(eqos->ops->mdio_wait_us);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
