Delivery-date: Fri, 22 Dec 2023 03:09:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyZ-009O24-0X
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 03:09:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyY-00079Z-5D
	for lore@pengutronix.de; Fri, 22 Dec 2023 03:09:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qj+2+xEorcnx3iqL/O06q+t9+bumMx0WVyCQ3ZY42no=; b=r5cCG4kqE6BWrwOqClq9XOtJsE
	Te9mgZfoMSOury3DrhqJrajosRiSoXWI5Ps9ditjA34clbY+etSgMRDSvHs/JHyEX2ky9J+0QFQln
	muTh/nCaTQVt0nlNxDIzfN6BV0S0twV4CMW1oqUQ04CQaNU0ZxbGDmwaW3Vdb/ZNbIZSUgb6DJ7Gg
	ky/gwJuMT4kwU29fGa8qcYfsD89NqnW5apDgjVz6VnBKIf04z+IVW2KbDhoXWzD8ZRsdku6XCPPH2
	cb3w8D470Cg2FHLTKu6SePsfNhzoLFmd2aQ7im/j5GRfmBqt2AFUum4QepGDr3ddPreebMPML4HGS
	tlrYJHwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUx5-004eZD-0T;
	Fri, 22 Dec 2023 02:07:51 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUwz-004eXA-1i
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 02:07:49 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqrs.dk; s=key1;
	t=1703210856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qj+2+xEorcnx3iqL/O06q+t9+bumMx0WVyCQ3ZY42no=;
	b=CHx6h1DeREnLbO0dUIB1lLEt7D9SAxyYYQ5js/esTCtzTDhrp8ghBZj2sxLKHBwOuhAAeG
	otw4yjbXsEJoP5loZlN/zp9IHXA8WLnbfzP40uT2bGJTmk4f4WRWtRbD6brVDy2wmpZQmc
	ciDCofHJeJW1otrl/tmc4KpM1jZiBNeB+2d5ywd6tRaUJXr2CUkfsf6jAG3JPCme4g8WtQ
	3osTpGVOjcc2wL5pWY54hqc4XoobjneCsIIfUbaI0BpN2y6OsUPQwARZLt/6u54lWClvVS
	2UhQvjWw6tJ6qTxy4jpknsQPvEobuVoaPTt8TyNjZs3/gh4YF2UgqVWm2AnayQ==
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 22 Dec 2023 03:07:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231222-realtek-mdio-fix-v1-2-6bbf80d6a756@bang-olufsen.dk>
References: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
In-Reply-To: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, 
 Luiz Angelo Daros de Luca <luizluca@gmail.com>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_180745_718876_B0435F8C 
X-CRM114-Status: GOOD (  19.37  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] net: dsa: realtek: fix support for MDIO-connected
 switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alvin Šipraga <alsi@bang-olufsen.dk>

DSA offers drivers the option to have the core register an MDIO bus,
intended for platforms which do not have a specific OF node for the MDIO
bus or corresponding phy-handle properties on the switch port nodes.
This logic works OK, but is incidentally broken in barebox because the
dsa_switch::phys_mii_mask field is not being set. That means all reads
and writes to the internal PHYs are dropped before anything goes out on
the bus.

Notwithstanding that barebox issue, there is an ongoing discussion [1]
on the Linux mailing list as to the virtues (or lack thereof) of
realtek-mdio opting into this core functionality to begin with. The fact
is that, for SMI-connected switches, realtek-smi absolutely expects an
MDIO bus node. And the device tree bindings strongly (albeit not
strictly) assert that this node for both MDIO and SMI connected
switches. In the specific case of barebox, the driver likely has even
fewer users, and realtek-mdio is currently broken, so there is nothing
to break by strictly enforcing the presence of an MDIO node.

The same discussion [1] centers around an effort to actually unify
large, common parts of the SMI and MDIO drivers, and ditching the
asymmetric MDIO bus registration would make this effort even easier.

To that end, add a little bit more code in order to bury this particular
issue once and for all in barebox. Further cleanup can be done to reduce
the overall quantity of code, probably following whatever ends up in
Linux.

A slice dependency is also added to the parent MDIO bus to prevent the
PHY status polling from interleaving MDIO accesses during switch
management.

Link: https://lore.kernel.org/all/20231221174746.hylsmr3f7g5byrsi@skbuf/ [1]
Fixes: f9f31a9a21e4 ("net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch support")
Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 drivers/net/realtek-dsa/realtek-mdio.c | 103 ++++++++++++++++++++++++++-------
 drivers/net/realtek-dsa/rtl8365mb.c    |  13 -----
 drivers/net/realtek-dsa/rtl8366rb.c    |  13 -----
 3 files changed, 81 insertions(+), 48 deletions(-)

diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index 463757711198..2b8661b95677 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -47,22 +47,27 @@ static int realtek_mdio_write(void *ctx, u32 reg, u32 val)
 	struct mii_bus *bus = priv->bus;
 	int ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL0_REG, REALTEK_MDIO_ADDR_OP);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL0_REG,
+			    REALTEK_MDIO_ADDR_OP);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_ADDRESS_REG, reg);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_ADDRESS_REG,
+			    reg);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_DATA_WRITE_REG, val);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_DATA_WRITE_REG,
+			    val);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL1_REG, REALTEK_MDIO_WRITE_OP);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL1_REG,
+			    REALTEK_MDIO_WRITE_OP);
+	if (ret)
+		return ret;
 
-out_unlock:
-	return ret;
+	return 0;
 }
 
 static int realtek_mdio_read(void *ctx, u32 reg, u32 *val)
@@ -71,26 +76,43 @@ static int realtek_mdio_read(void *ctx, u32 reg, u32 *val)
 	struct mii_bus *bus = priv->bus;
 	int ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL0_REG, REALTEK_MDIO_ADDR_OP);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL0_REG,
+			    REALTEK_MDIO_ADDR_OP);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_ADDRESS_REG, reg);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_ADDRESS_REG,
+			    reg);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
-	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL1_REG, REALTEK_MDIO_READ_OP);
+	ret = mdiobus_write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL1_REG,
+			    REALTEK_MDIO_READ_OP);
 	if (ret)
-		goto out_unlock;
+		return ret;
 
-	ret = bus->read(bus, priv->mdio_addr, REALTEK_MDIO_DATA_READ_REG);
-	if (ret >= 0) {
-		*val = ret;
-		ret = 0;
-	}
+	ret = mdiobus_read(bus, priv->mdio_addr, REALTEK_MDIO_DATA_READ_REG);
+	if (ret < 0)
+		return ret;
 
-out_unlock:
-	return ret;
+	*val = ret;
+
+	return 0;
+}
+
+static int realtek_mdio_mdio_write(struct mii_bus *bus, int addr, int regnum,
+				   u16 val)
+{
+	struct realtek_priv *priv = bus->priv;
+
+	return priv->ops->phy_write(priv, addr, regnum, val);
+}
+
+static int realtek_mdio_mdio_read(struct mii_bus *bus, int addr, int regnum)
+{
+	struct realtek_priv *priv = bus->priv;
+
+	return priv->ops->phy_read(priv, addr, regnum);
 }
 
 static const struct regmap_config realtek_mdio_regmap_config = {
@@ -107,6 +129,42 @@ static const struct regmap_bus realtek_mdio_regmap_bus = {
 	.reg_read = realtek_mdio_read,
 };
 
+static int realtek_mdio_setup_mdio(struct dsa_switch *ds)
+{
+	struct realtek_priv *priv =  ds->priv;
+	struct device_node *np;
+	int ret;
+
+	np = of_get_child_by_name(priv->dev->of_node, "mdio");
+	if (!np) {
+		dev_err(priv->dev, "missing 'mdio' child node\n");
+		return -ENODEV;
+	}
+
+	priv->slave_mii_bus->priv = priv;
+	priv->slave_mii_bus->read = realtek_mdio_mdio_read;
+	priv->slave_mii_bus->write = realtek_mdio_mdio_write;
+	priv->slave_mii_bus->dev.of_node = np;
+	priv->slave_mii_bus->parent = priv->dev;
+
+	ret = mdiobus_register(priv->slave_mii_bus);
+	if (ret) {
+		dev_err(priv->dev, "unable to register MDIO bus %pOF\n", np);
+		goto err_put_node;
+	}
+
+	/* Avoid interleaved MDIO access during PHY status polling */
+	slice_depends_on(mdiobus_slice(priv->slave_mii_bus),
+			 mdiobus_slice(priv->bus));
+
+	return 0;
+
+err_put_node:
+	of_node_put(np);
+
+	return ret;
+}
+
 static int realtek_mdio_probe(struct phy_device *mdiodev)
 {
 	struct realtek_priv *priv;
@@ -142,6 +200,7 @@ static int realtek_mdio_probe(struct phy_device *mdiodev)
 	priv->cmd_write = var->cmd_write;
 	priv->ops = var->ops;
 
+	priv->setup_interface = realtek_mdio_setup_mdio;
 	priv->write_reg_noack = realtek_mdio_write;
 
 	np = dev->of_node;
diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
index 700773ffa657..0f4c471715d1 100644
--- a/drivers/net/realtek-dsa/rtl8365mb.c
+++ b/drivers/net/realtek-dsa/rtl8365mb.c
@@ -649,17 +649,6 @@ static int rtl8365mb_phy_write(struct realtek_priv *priv, int phy, int regnum,
 	return 0;
 }
 
-static int rtl8365mb_dsa_phy_read(struct dsa_switch *ds, int phy, int regnum)
-{
-	return rtl8365mb_phy_read(ds->priv, phy, regnum);
-}
-
-static int rtl8365mb_dsa_phy_write(struct dsa_switch *ds, int phy, int regnum,
-				   u16 val)
-{
-	return rtl8365mb_phy_write(ds->priv, phy, regnum, val);
-}
-
 static const struct rtl8365mb_extint *
 rtl8365mb_get_port_extint(struct realtek_priv *priv, int port)
 {
@@ -1246,8 +1235,6 @@ static const struct dsa_switch_ops rtl8365mb_switch_ops_mdio = {
 	.port_pre_enable = rtl8365mb_phylink_mac_config,
 	.port_disable = rtl8365mb_phylink_mac_link_down,
 	.port_enable = rtl8365mb_phylink_mac_link_up,
-	.phy_read = rtl8365mb_dsa_phy_read,
-	.phy_write = rtl8365mb_dsa_phy_write,
 };
 
 static const struct realtek_ops rtl8365mb_ops = {
diff --git a/drivers/net/realtek-dsa/rtl8366rb.c b/drivers/net/realtek-dsa/rtl8366rb.c
index 26f036dfe570..6fd2b1852159 100644
--- a/drivers/net/realtek-dsa/rtl8366rb.c
+++ b/drivers/net/realtek-dsa/rtl8366rb.c
@@ -1021,17 +1021,6 @@ static int rtl8366rb_phy_write(struct realtek_priv *priv, int phy, int regnum,
 	return ret;
 }
 
-static int rtl8366rb_dsa_phy_read(struct dsa_switch *ds, int phy, int regnum)
-{
-	return rtl8366rb_phy_read(ds->priv, phy, regnum);
-}
-
-static int rtl8366rb_dsa_phy_write(struct dsa_switch *ds, int phy, int regnum,
-				   u16 val)
-{
-	return rtl8366rb_phy_write(ds->priv, phy, regnum, val);
-}
-
 static int rtl8366rb_reset_chip(struct realtek_priv *priv)
 {
 	int timeout = 10;
@@ -1096,8 +1085,6 @@ static const struct dsa_switch_ops rtl8366rb_switch_ops_smi = {
 };
 
 static const struct dsa_switch_ops rtl8366rb_switch_ops_mdio = {
-	.phy_read = rtl8366rb_dsa_phy_read,
-	.phy_write = rtl8366rb_dsa_phy_write,
 	.port_enable = rtl8366rb_port_enable,
 	.port_disable = rtl8366rb_port_disable,
 };

-- 
2.43.0



