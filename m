Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vzC-0001D3-4J
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 12:40:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Feb 2020 13:40:17 +0100
Message-Id: <20200226124017.24646-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200226124017.24646-1-a.fatoum@pengutronix.de>
References: <20200226124017.24646-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] net: designware: eqos: mimic Linux gmac4 mdio_{read,
 write}
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The code was ported over from U-Boot and has some things different than
the Kernel driver:

- It reads ->mdio_address, but the kernel driver doesn't
- It doesn't write ->mdio_data in a read, but the kernel driver does
- It has delays in addition to spinning on MII_BUSY, but the kernel driver
  doesn't

Adopt the same flow as used by the kernel.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_eqos.c     | 25 +++++++------------------
 drivers/net/designware_eqos.h     |  1 -
 drivers/net/designware_stm32.c    |  1 -
 drivers/net/designware_tegra186.c |  1 -
 4 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index acb4b955464d..cb52f3942d86 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -199,7 +199,7 @@ static int eqos_mdio_wait_idle(struct eqos *eqos)
 static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
 {
 	struct eqos *eqos = bus->priv;
-	u32 miiaddr;
+	u32 miiaddr = MII_BUSY;
 	int ret;
 
 	ret = eqos_mdio_wait_idle(eqos);
@@ -208,18 +208,13 @@ static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
 		return ret;
 	}
 
-	miiaddr = readl(&eqos->mac_regs->mdio_address);
-	miiaddr &= EQOS_MDIO_ADDR_SKAP | EQOS_MDIO_ADDR_C45E;
-	miiaddr |= EQOS_MDIO_ADDR_GOC_READ << EQOS_MDIO_ADDR_GOC_SHIFT;
-
-	miiaddr |= EQOS_MDIO_CLK_CSR(eqos->ops->clk_csr);
 	miiaddr |= EQOS_MDIO_ADDR(addr) | EQOS_MDIO_REG(reg);
-	miiaddr |= MII_BUSY;
+	miiaddr |= EQOS_MDIO_CLK_CSR(eqos->ops->clk_csr);
+	miiaddr |= EQOS_MDIO_ADDR_GOC_READ << EQOS_MDIO_ADDR_GOC_SHIFT;
 
+	writel(0, &eqos->mac_regs->mdio_data);
 	writel(miiaddr, &eqos->mac_regs->mdio_address);
 
-	udelay(eqos->ops->mdio_wait_us);
-
 	ret = eqos_mdio_wait_idle(eqos);
 	if (ret) {
 		dev_err(&bus->dev, "MDIO read didn't complete\n");
@@ -232,7 +227,7 @@ static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
 static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 data)
 {
 	struct eqos *eqos = bus->priv;
-	u32 miiaddr = 0;
+	u32 miiaddr = MII_BUSY;
 	int ret;
 
 	ret = eqos_mdio_wait_idle(eqos);
@@ -241,19 +236,13 @@ static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 data)
 		return ret;
 	}
 
-	miiaddr = readl(&eqos->mac_regs->mdio_address);
-	miiaddr &= EQOS_MDIO_ADDR_SKAP | EQOS_MDIO_ADDR_C45E;
-	miiaddr |= EQOS_MDIO_ADDR_GOC_WRITE << EQOS_MDIO_ADDR_GOC_SHIFT;
-
-	miiaddr |= EQOS_MDIO_CLK_CSR(eqos->ops->clk_csr);
 	miiaddr |= EQOS_MDIO_ADDR(addr) | EQOS_MDIO_REG(reg);
-	miiaddr |= MII_BUSY;
+	miiaddr |= EQOS_MDIO_CLK_CSR(eqos->ops->clk_csr);
+	miiaddr |= EQOS_MDIO_ADDR_GOC_WRITE << EQOS_MDIO_ADDR_GOC_SHIFT;
 
 	writel(data, &eqos->mac_regs->mdio_data);
 	writel(miiaddr, &eqos->mac_regs->mdio_address);
 
-	udelay(eqos->ops->mdio_wait_us);
-
 	ret = eqos_mdio_wait_idle(eqos);
 	if (ret)
 		dev_err(&bus->dev, "MDIO read didn't complete\n");
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index f794195db4a1..30f4f0257946 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -17,7 +17,6 @@ struct eqos_ops {
 	unsigned long (*get_csr_clk_rate)(struct eqos *);
 
 	bool enh_desc;
-	int mdio_wait_us;
 
 #define EQOS_MAC_RXQ_CTRL0_RXQ0EN_SHIFT		0
 #define EQOS_MAC_RXQ_CTRL0_RXQ0EN_MASK		3
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index 1e0cdfa6952f..2e2af8942d1c 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -180,7 +180,6 @@ static struct eqos_ops stm32_ops = {
 	.adjust_link = eqos_adjust_link,
 	.get_csr_clk_rate = eqos_get_csr_clk_rate_stm32,
 
-	.mdio_wait_us = 10 * USEC_PER_MSEC,
 	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
 };
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 20521db1c711..5348f65c4146 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -280,7 +280,6 @@ static const struct eqos_ops tegra186_ops = {
 	.adjust_link = eqos_adjust_link_tegra186,
 	.get_csr_clk_rate = eqos_get_csr_clk_rate_tegra186,
 
-	.mdio_wait_us = 10,
 	.clk_csr = EQOS_MDIO_ADDR_CR_20_35,
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
 };
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
