Delivery-date: Fri, 08 Nov 2024 14:16:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqK-006Kp5-1M
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:16:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqG-0003xj-NL
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:16:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4UD5/GewHZEIxOG5Xc6YcGHzgdz+JYdIiDMn2RO0EKU=; b=ptWGyNx1cvNiblM8ONngmMZVbP
	UfXUQkLhi1vuQ4VpHtsZvb9FRUEN9FMqz17VTeIbJybRKt1xErf+pdjYxqjf9ovNwokGfdQyCGzvJ
	kqDSgLCJraCVe28kVMNixwilxT8JSWCm1plePj5/6Fbjr6HFI80/JHMPT4b3FO2ILiZu+KLOBlv4u
	WDKjUKdEUtFIxVvBPYUnSTupW7MzsTSyX61EyG4Z8t6u4OeB5KcxdGnPTQ97MlE/XCxeg9Y8vJii9
	Vz0cibp03byxt984QzWnZ9EGEOzvNM2Tv35++WEVqT4VdZ7n1UfHzS3JXNKsFz1fYJrvTfK8jxc/S
	Zj+yOStg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Opa-0000000Adq8-1NUc;
	Fri, 08 Nov 2024 13:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpS-0000000AdjG-1WzT
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003X5-60; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cvz-2p;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2Z;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:14:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241108-network-k3-v1-1-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=11909;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uQWT1P1N3E30l3yBdBkBD4nrE9aicnf9Z4ynQJ275v8=;
 b=vzaSd6JnwcU4gWhwEllG7uFn6ATfFTWH43My616ormUC/T3fVrzIV4bCjca5Wn6NHuS9dvsXp
 bjqHtBohuKjBL180oW03Z0sDU08js62z6zinZTiZ70UoiWaWdekSraM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_051510_962254_8BDB52DA 
X-CRM114-Status: GOOD (  25.59  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] net: davinci_mdio: separate driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The davinci MDIO driver can be reused for the CPSW found on TI K3 SoCs
which needs a new ethernet driver. Separate the MDIO driver from the
CPSW driver to make it usable with other ethernet drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig        |   5 ++
 drivers/net/Makefile       |   1 +
 drivers/net/cpsw.c         | 178 ------------------------------------------
 drivers/net/davinci_mdio.c | 188 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 194 insertions(+), 178 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 13e9ff6924..7f0d277548 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -53,8 +53,13 @@ config DRIVER_NET_CS8900
 config DRIVER_NET_CPSW
 	bool "CPSW ethernet driver"
 	depends on ARCH_OMAP
+	select DRIVER_NET_TI_DAVINCI_MDIO
 	select PHYLIB
 
+config DRIVER_NET_TI_DAVINCI_MDIO
+	bool "TI Davinci MDIO driver"
+	depends on ARCH_OMAP3 || COMPILE_TEST
+
 config DRIVER_NET_DAVINCI_EMAC
 	bool "TI Davinci/OMAP EMAC ethernet driver"
 	depends on ARCH_OMAP3
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 207345cfa3..b451813f7c 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_DRIVER_NET_BCMGENET)	+= bcmgenet.o
 obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
+obj-$(CONFIG_DRIVER_NET_TI_DAVINCI_MDIO) += davinci_mdio.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 3e4f6502f9..b11930fdd0 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -28,8 +28,6 @@
 #define CPSW_VERSION_2		0x19010c
 
 #define BITMASK(bits)		((1 << (bits)) - 1)
-#define PHY_REG_MASK		0x1f
-#define PHY_ID_MASK		0x1f
 #define NUM_DESCS		(PKTBUFSRX * 2)
 #define PKT_MIN			60
 #define PKT_MAX			(1500 + 14 + 4 + 4)
@@ -60,34 +58,6 @@
 
 #define SLIVER_SIZE		0x40
 
-struct cpsw_mdio_regs {
-	u32	version;
-	u32	control;
-#define CONTROL_IDLE		(1 << 31)
-#define CONTROL_ENABLE		(1 << 30)
-
-	u32	alive;
-	u32	link;
-	u32	linkintraw;
-	u32	linkintmasked;
-	u32	__reserved_0[2];
-	u32	userintraw;
-	u32	userintmasked;
-	u32	userintmaskset;
-	u32	userintmaskclr;
-	u32	__reserved_1[20];
-
-	struct {
-		u32 access;
-		u32 physel;
-#define USERACCESS_GO		(1 << 31)
-#define USERACCESS_WRITE	(1 << 30)
-#define USERACCESS_ACK		(1 << 29)
-#define USERACCESS_READ		(0)
-#define USERACCESS_DATA		(0xffff)
-	} user[0];
-};
-
 struct cpsw_regs {
 	u32	id_ver;
 	u32	control;
@@ -226,12 +196,6 @@ struct cpsw_priv {
 	struct cpsw_slave		*slaves;
 };
 
-struct cpsw_mdio_priv {
-	struct device			*dev;
-	struct mii_bus			miibus;
-	struct cpsw_mdio_regs		*mdio_regs;
-};
-
 static int cpsw_ale_get_field(u32 *ale_entry, u32 start, u32 bits)
 {
 	int idx;
@@ -524,148 +488,6 @@ static inline void cpsw_ale_port_state(struct cpsw_priv *priv, int port,
 	writel(tmp, priv->ale_regs + offset);
 }
 
-/* wait until hardware is ready for another user access */
-static u32 wait_for_user_access(struct cpsw_mdio_priv *priv)
-{
-	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
-	u32 tmp;
-	uint64_t start = get_time_ns();
-
-	do {
-		tmp = readl(&mdio_regs->user[0].access);
-
-		if (!(tmp & USERACCESS_GO))
-			break;
-
-		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(priv->dev, "timeout waiting for user access\n");
-			break;
-		}
-	} while (1);
-
-	return tmp;
-}
-
-static int cpsw_mdio_read(struct mii_bus *bus, int phy_id, int phy_reg)
-{
-	struct cpsw_mdio_priv *priv = bus->priv;
-	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
-
-	u32 tmp;
-
-	if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
-		return -EINVAL;
-
-	wait_for_user_access(priv);
-
-	tmp = (USERACCESS_GO | USERACCESS_READ | (phy_reg << 21) |
-	       (phy_id << 16));
-	writel(tmp, &mdio_regs->user[0].access);
-
-	tmp = wait_for_user_access(priv);
-
-	return (tmp & USERACCESS_ACK) ? (tmp & USERACCESS_DATA) : -1;
-}
-
-static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 value)
-{
-	struct cpsw_mdio_priv *priv = bus->priv;
-	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
-	u32 tmp;
-
-	if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
-		return -EINVAL;
-
-	wait_for_user_access(priv);
-	tmp = (USERACCESS_GO | USERACCESS_WRITE | (phy_reg << 21) |
-		   (phy_id << 16) | (value & USERACCESS_DATA));
-	writel(tmp, &mdio_regs->user[0].access);
-	wait_for_user_access(priv);
-
-	return 0;
-}
-
-static int cpsw_mdio_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct cpsw_mdio_priv *priv;
-	uint64_t start;
-	uint32_t phy_mask;
-	int ret;
-
-	priv = xzalloc(sizeof(*priv));
-
-	/* If we can't request I/O memory region, we'll assume parent did
-	 * it for us
-	 */
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores) && PTR_ERR(iores) == -EBUSY)
-		iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->mdio_regs = IOMEM(iores->start);
-	priv->miibus.read = cpsw_mdio_read;
-	priv->miibus.write = cpsw_mdio_write;
-	priv->miibus.priv = priv;
-	priv->miibus.parent = dev;
-
-	/*
-	 * set enable and clock divider
-	 *
-	 * FIXME: Use a clock to calculate the divider
-	 */
-	writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
-
-	/*
-	 * wait for scan logic to settle:
-	 * the scan time consists of (a) a large fixed component, and (b) a
-	 * small component that varies with the mii bus frequency.  These
-	 * were estimated using measurements at 1.1 and 2.2 MHz on tnetv107x
-	 * silicon.  Since the effect of (b) was found to be largely
-	 * negligible, we keep things simple here.
-	 */
-	udelay(2000);
-
-	start = get_time_ns();
-	while (1) {
-		phy_mask = readl(&priv->mdio_regs->alive);
-		if (phy_mask) {
-			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
-			phy_mask = ~phy_mask;
-			break;
-		}
-		if (is_timeout(start, 256 * MSECOND)) {
-			dev_err(dev, "no live phy, scanning all\n");
-			phy_mask = 0;
-			break;
-		}
-	}
-
-	priv->miibus.phy_mask = phy_mask;
-
-	ret = mdiobus_register(&priv->miibus);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] = {
-	{
-		.compatible = "ti,cpsw-mdio",
-	}, {
-		/* sentinel */
-	}
-};
-MODULE_DEVICE_TABLE(of, cpsw_mdio_dt_ids);
-
-static struct driver cpsw_mdio_driver = {
-	.name   = "cpsw-mdio",
-	.probe  = cpsw_mdio_probe,
-	.of_compatible = DRV_OF_COMPAT(cpsw_mdio_dt_ids),
-};
-coredevice_platform_driver(cpsw_mdio_driver);
-
 static inline void soft_reset(struct cpsw_priv *priv, void *reg)
 {
 	int ret;
diff --git a/drivers/net/davinci_mdio.c b/drivers/net/davinci_mdio.c
new file mode 100644
index 0000000000..c5cd28fba4
--- /dev/null
+++ b/drivers/net/davinci_mdio.c
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * DaVinci MDIO Module driver
+ */
+#include <driver.h>
+#include <linux/phy.h>
+#include <clock.h>
+#include <xfuncs.h>
+#include <io.h>
+
+#define PHY_REG_MASK		0x1f
+#define PHY_ID_MASK		0x1f
+
+struct cpsw_mdio_regs {
+	u32	version;
+	u32	control;
+#define CONTROL_IDLE		(1 << 31)
+#define CONTROL_ENABLE		(1 << 30)
+
+	u32	alive;
+	u32	link;
+	u32	linkintraw;
+	u32	linkintmasked;
+	u32	__reserved_0[2];
+	u32	userintraw;
+	u32	userintmasked;
+	u32	userintmaskset;
+	u32	userintmaskclr;
+	u32	__reserved_1[20];
+
+	struct {
+		u32 access;
+		u32 physel;
+#define USERACCESS_GO		(1 << 31)
+#define USERACCESS_WRITE	(1 << 30)
+#define USERACCESS_ACK		(1 << 29)
+#define USERACCESS_READ		(0)
+#define USERACCESS_DATA		(0xffff)
+	} user[0];
+};
+
+struct cpsw_mdio_priv {
+	struct device			*dev;
+	struct mii_bus			miibus;
+	struct cpsw_mdio_regs		*mdio_regs;
+};
+
+/* wait until hardware is ready for another user access */
+static u32 wait_for_user_access(struct cpsw_mdio_priv *priv)
+{
+	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
+	u32 tmp;
+	uint64_t start = get_time_ns();
+
+	do {
+		tmp = readl(&mdio_regs->user[0].access);
+
+		if (!(tmp & USERACCESS_GO))
+			break;
+
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(priv->dev, "timeout waiting for user access\n");
+			break;
+		}
+	} while (1);
+
+	return tmp;
+}
+
+static int cpsw_mdio_read(struct mii_bus *bus, int phy_id, int phy_reg)
+{
+	struct cpsw_mdio_priv *priv = bus->priv;
+	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
+
+	u32 tmp;
+
+	if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
+		return -EINVAL;
+
+	wait_for_user_access(priv);
+
+	tmp = (USERACCESS_GO | USERACCESS_READ | (phy_reg << 21) |
+	       (phy_id << 16));
+	writel(tmp, &mdio_regs->user[0].access);
+
+	tmp = wait_for_user_access(priv);
+
+	return (tmp & USERACCESS_ACK) ? (tmp & USERACCESS_DATA) : -1;
+}
+
+static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 value)
+{
+	struct cpsw_mdio_priv *priv = bus->priv;
+	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
+	u32 tmp;
+
+	if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
+		return -EINVAL;
+
+	wait_for_user_access(priv);
+	tmp = (USERACCESS_GO | USERACCESS_WRITE | (phy_reg << 21) |
+		   (phy_id << 16) | (value & USERACCESS_DATA));
+	writel(tmp, &mdio_regs->user[0].access);
+	wait_for_user_access(priv);
+
+	return 0;
+}
+
+static int cpsw_mdio_probe(struct device *dev)
+{
+	struct resource *iores;
+	struct cpsw_mdio_priv *priv;
+	uint64_t start;
+	uint32_t phy_mask;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	/* If we can't request I/O memory region, we'll assume parent did
+	 * it for us
+	 */
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores) && PTR_ERR(iores) == -EBUSY)
+		iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	priv->mdio_regs = IOMEM(iores->start);
+	priv->miibus.read = cpsw_mdio_read;
+	priv->miibus.write = cpsw_mdio_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
+	/*
+	 * set enable and clock divider
+	 *
+	 * FIXME: Use a clock to calculate the divider
+	 */
+	writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
+
+	/*
+	 * wait for scan logic to settle:
+	 * the scan time consists of (a) a large fixed component, and (b) a
+	 * small component that varies with the mii bus frequency.  These
+	 * were estimated using measurements at 1.1 and 2.2 MHz on tnetv107x
+	 * silicon.  Since the effect of (b) was found to be largely
+	 * negligible, we keep things simple here.
+	 */
+	udelay(2000);
+
+	start = get_time_ns();
+	while (1) {
+		phy_mask = readl(&priv->mdio_regs->alive);
+		if (phy_mask) {
+			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
+			phy_mask = ~phy_mask;
+			break;
+		}
+		if (is_timeout(start, 256 * MSECOND)) {
+			dev_err(dev, "no live phy, scanning all\n");
+			phy_mask = 0;
+			break;
+		}
+	}
+
+	priv->miibus.phy_mask = phy_mask;
+
+	ret = mdiobus_register(&priv->miibus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] = {
+	{
+		.compatible = "ti,cpsw-mdio",
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, cpsw_mdio_dt_ids);
+
+static struct driver cpsw_mdio_driver = {
+	.name   = "cpsw-mdio",
+	.probe  = cpsw_mdio_probe,
+	.of_compatible = DRV_OF_COMPAT(cpsw_mdio_dt_ids),
+};
+coredevice_platform_driver(cpsw_mdio_driver);

-- 
2.39.5



