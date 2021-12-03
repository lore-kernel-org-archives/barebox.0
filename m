Delivery-date: Fri, 03 Dec 2021 21:52:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtFXi-0000KZ-Vx
	for lore@lore.pengutronix.de; Fri, 03 Dec 2021 21:52:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mtFXh-0000En-UN
	for lore@pengutronix.de; Fri, 03 Dec 2021 21:52:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=umUefpZZRScIyfd8pvP23FNivqOvnM7Hulg+gpBsPQE=; b=CHt4wLg71lyugb
	oC8i/I94mnEkMm/tn4U4XlH9vB25PAT02V+Tiq+VbkmEPdrnPMBjBAy0cczWAlCzoOprTS3L8bFJM
	yOR1USgkKGxwHsbz/nIPqm7boG5Azg47jwm6mqj4weUOz+PseTggIkeTwGXqlPOlZC7sJWANYUzEJ
	oi4k7Niifi3ZGfcVR8p8DWxsJ6bBOyPtcAtF421KBHkdpXMDz77pJzADWH5yb8gan807PCCDA/1US
	SlrU2anm+2EgtCbvnDmKkn8d4H8XXhw+K6pCgSVQsBcmkuDaDAU+QYv5nNasTcpqJWh+YHS7NvIEv
	qVfTymZB0TWo/7Y3X2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtFW3-00H19t-Gr; Fri, 03 Dec 2021 20:50:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtFVy-00H19U-5G
 for barebox@lists.infradead.org; Fri, 03 Dec 2021 20:50:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mtFVv-00006I-36; Fri, 03 Dec 2021 21:50:39 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mtFVu-002KZE-JF; Fri, 03 Dec 2021 21:50:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 Dec 2021 21:50:35 +0100
Message-Id: <20211203205035.555285-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_125042_230790_228F203B 
X-CRM114-Status: GOOD (  20.03  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] net: cpsw: add support for new binding in Linux
 v5.15-rc1 DTs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As is customary, upstream OMAP DTs have yet again added a new binding
breaking compatibility with a barebox driver. This time, the old Ethernet
node was disabled in favor of a new node that is matched by the new Linux
cpsw driver introduced with Linux commit ed3525eda4c4 ("net: ethernet:
ti: introduce cpsw switchdev based driver part 1 - dual-emac").

Add support for the new binding to restore working Beaglebone Black
networking. These changes have been tested against both the old and new
bindings.

Fixes: 618948e4e5b3 ("dts: update to v5.15-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/cpsw.c | 120 +++++++++++++++++++++++++++++++++------------
 1 file changed, 89 insertions(+), 31 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 4a8f9e67d6f0..6725c7b9bdb4 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -592,7 +592,12 @@ static int cpsw_mdio_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
+	/* If we can't request I/O memory region, we'll assume parent did
+	 * it for us
+	 */
 	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores) && PTR_ERR(iores) == -EBUSY)
+		iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	priv->mdio_regs = IOMEM(iores->start);
@@ -1214,11 +1219,27 @@ static void cpsw_gmii_sel_am335x(struct cpsw_slave *slave)
 	writel(reg, phy_sel_addr);
 }
 
-static int cpsw_probe_dt(struct cpsw_priv *priv)
+static void cpsw_add_slave(struct cpsw_slave *slave, struct device_node *child, int i)
+{
+	uint32_t phy_id[2] = {-1, -1};
+	int ret;
+
+	if (!of_find_node_by_name(child, "fixed-link")) {
+		ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
+		if (!ret)
+			dev_warn(slave->cpsw->dev, "phy_id is deprecated, use phy-handle\n");
+	}
+
+	slave->dev.device_node = child;
+	slave->phy_id = phy_id[1];
+	slave->phy_if = of_get_phy_mode(child);
+	slave->slave_num = i;
+}
+
+static int cpsw_legacy_probe_dt(struct cpsw_priv *priv)
 {
 	struct device_d *dev = priv->dev;
 	struct device_node *np = dev->device_node, *child;
-	struct device_node *physel;
 	int ret, i = 0;
 
 	ret = of_property_read_u32(np, "slaves", &priv->num_slaves);
@@ -1227,15 +1248,6 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 
 	priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
 
-	physel = of_find_compatible_node(NULL, NULL, "ti,am3352-phy-gmii-sel");
-	if (!physel) {
-		dev_err(dev, "Cannot find ti,am3352-phy-gmii-sel node\n");
-		return -EINVAL;
-	}
-	ret = cpsw_phy_sel_init(priv, physel);
-	if (ret)
-		return ret;
-
 	for_each_child_of_node(np, child) {
 		if (of_device_is_compatible(child, "ti,davinci_mdio")) {
 			ret = of_pinctrl_select_state_default(child);
@@ -1244,29 +1256,73 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 		}
 
 		if (i < priv->num_slaves && !strncmp(child->name, "slave", 5)) {
-			struct cpsw_slave *slave = &priv->slaves[i];
-			uint32_t phy_id[2] = {-1, -1};
+			cpsw_add_slave(&priv->slaves[i], child, i);
+			i++;
+		}
+	}
 
-			if (!of_find_node_by_name(child, "fixed-link")) {
-				ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
-				if (!ret)
-					dev_warn(dev, "phy_id is deprecated, use phy-handle\n");
-			}
+	return 0;
+}
+
+static int cpsw_switch_probe_dt(struct cpsw_priv *priv)
+{
+	struct device_d *dev = priv->dev;
+	struct device_node *np = dev->device_node, *child;
+	struct device_node *ports = NULL;
+	int ret, i = 0;
 
-			slave->dev.device_node = child;
-			slave->phy_id = phy_id[1];
-			slave->phy_if = of_get_phy_mode(child);
-			slave->slave_num = i;
+	for_each_child_of_node(np, child) {
+		if (of_device_is_compatible(child, "ti,davinci_mdio")) {
+			ret = of_pinctrl_select_state_default(child);
+			if (ret)
+				return ret;
+		}
 
-			i++;
+		if (!strcmp(child->name, "ethernet-ports")) {
+			ports = child;
+			priv->num_slaves = of_get_available_child_count(ports);
 		}
 	}
 
-	for (i = 0; i < priv->num_slaves; i++) {
-		struct cpsw_slave *slave = &priv->slaves[i];
+	if (!ports)
+		return -EINVAL;
+
+	priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
+
+	for_each_available_child_of_node(ports, child) {
+		cpsw_add_slave(&priv->slaves[i], child, i);
+		i++;
+	}
+
+	return 0;
+}
 
-		cpsw_gmii_sel_am335x(slave);
+static int cpsw_probe_dt(struct cpsw_priv *priv)
+{
+	struct device_d *dev = priv->dev;
+	struct device_node *physel;
+	int (*probe_slaves_dt)(struct cpsw_priv *priv);
+	int ret, i = 0;
+
+	physel = of_find_compatible_node(NULL, NULL, "ti,am3352-phy-gmii-sel");
+	if (!physel) {
+		dev_err(dev, "Cannot find ti,am3352-phy-gmii-sel node\n");
+		return -EINVAL;
 	}
+	ret = cpsw_phy_sel_init(priv, physel);
+	if (ret)
+		return ret;
+
+	probe_slaves_dt = device_get_match_data(dev);
+	if (!probe_slaves_dt)
+		return -EINVAL;
+
+	ret = probe_slaves_dt(priv);
+	if (ret < 0)
+		return ret;
+
+	for (i = 0; i < priv->num_slaves; i++)
+		cpsw_gmii_sel_am335x(&priv->slaves[i]);
 
 	return 0;
 }
@@ -1282,15 +1338,15 @@ static int cpsw_probe(struct device_d *dev)
 
 	dev_dbg(dev, "* %s\n", __func__);
 
-	ret = of_platform_populate(dev->device_node, NULL, dev);
-	if (ret)
-		return ret;
-
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	regs = IOMEM(iores->start);
 
+	ret = of_platform_populate(dev->device_node, NULL, dev);
+	if (ret)
+		return ret;
+
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
 
@@ -1371,7 +1427,9 @@ static void cpsw_remove(struct device_d *dev)
 
 static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
 	{
-		.compatible = "ti,cpsw",
+		.compatible = "ti,cpsw", .data = cpsw_legacy_probe_dt
+	}, {
+		.compatible = "ti,cpsw-switch", .data = cpsw_switch_probe_dt
 	}, {
 		/* sentinel */
 	}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

