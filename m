Delivery-date: Wed, 02 Nov 2022 11:09:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqAgm-00CAlV-Nm
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 11:09:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqAgl-0003Jt-Bx
	for lore@pengutronix.de; Wed, 02 Nov 2022 11:09:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KMzv5m7U2V3uEw2PAHtNbK/8Pr61p5DlY4bQfbmqdpY=; b=XYgNLKgS19HGa4f6vSg37E/5zw
	2r6NpYrDXfsq/jFSNTjCjplvpnS994FsqKVWNwYITh+R1hfPK/pNE4jY1p5rTwlJBOQ+U/E/X0YcC
	tg0VA+kpimUS2TAAhisjw9wc64Br2h/5a/1vU/eYU939WSlRwl02+Gwjsj8k0MBMFITI+Mvz++b/L
	zlSslmUMj8jDIH954Pto0a2CNUC6u8UbM4GdzFf4WEEpItHyt/wj7vvRmgac2B+BPlxyy4HF1fUrg
	oYGjYmv6ioeR7lHD51Ui+E5h/l+mpwv7WJFvw9L/vtwW7fcpSFQ3l1SP5sCbJvzK8Nrg+psFVXnQs
	pGff6QHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAfI-00ARP4-L4; Wed, 02 Nov 2022 10:08:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAf5-00ARJL-3r
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 10:07:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAez-00030H-OU; Wed, 02 Nov 2022 11:07:49 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAf0-001qpO-1l; Wed, 02 Nov 2022 11:07:49 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAey-008BES-42; Wed, 02 Nov 2022 11:07:48 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  2 Nov 2022 11:07:44 +0100
Message-Id: <20221102100744.1949741-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221102100744.1949741-1-o.rempel@pengutronix.de>
References: <20221102100744.1949741-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_030755_362825_E22F1789 
X-CRM114-Status: GOOD (  14.08  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/4] ARM: boards: skov-imx6: convert all pr_ to dev_ prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unify all printing messages and make use of dev_ instead of pr_.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 62 +++++++++++++++----------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index ab8b229a69..d23730221f 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -33,21 +33,21 @@ static int eth_of_fixup_node(struct device_node *root, const char *node_path,
 		unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
 
 		ethaddr_to_string(ethaddr, ethaddr_str);
-		pr_err("The mac-address %s is invalid.\n", ethaddr_str);
+		dev_err(skov_priv->dev, "The mac-address %s is invalid.\n", ethaddr_str);
 		return -EINVAL;
 	}
 
 	node = of_find_node_by_path_from(root, node_path);
 	if (!node) {
-		pr_err("Did not find node %s to fix up with stored mac-address.\n",
-		       node_path);
+		dev_err(skov_priv->dev, "Did not find node %s to fix up with stored mac-address.\n",
+		        node_path);
 		return -ENOENT;
 	}
 
 	ret = of_set_property(node, "mac-address", ethaddr, ETH_ALEN, 1);
 	if (ret)
-		pr_err("Setting mac-address property of %s failed with: %s.\n",
-		       node->full_name, strerror(-ret));
+		dev_err(skov_priv->dev, "Setting mac-address property of %s failed with: %s.\n",
+		        node->full_name, strerror(-ret));
 
 	return ret;
 }
@@ -60,7 +60,7 @@ static int eth_of_fixup_node_from_eth_device(struct device_node *root,
 
 	edev = eth_get_byname(ethname);
 	if (!edev) {
-		pr_err("Did not find eth device \"%s\" to copy mac-address from.\n", ethname);
+		dev_err(skov_priv->dev, "Did not find eth device \"%s\" to copy mac-address from.\n", ethname);
 		return -ENOENT;
 	}
 
@@ -74,14 +74,14 @@ static int get_mac_address_from_env_variable(const char *env, u8 ethaddr[ETH_ALE
 
 	ethaddr_str = getenv(env);
 	if (!ethaddr_str) {
-		pr_err("State variable %s storing the mac-address not found.\n", env);
+		dev_err(skov_priv->dev, "State variable %s storing the mac-address not found.\n", env);
 		return -ENOENT;
 	}
 
 	ret = string_to_ethaddr(ethaddr_str, ethaddr);
 	if (ret < 0) {
-		pr_err("Could not convert \"%s\" in state variable %s into mac-address.\n",
-		       ethaddr_str, env);
+		dev_err(skov_priv->dev, "Could not convert \"%s\" in state variable %s into mac-address.\n",
+		        ethaddr_str, env);
 		return -EINVAL;
 	}
 
@@ -96,13 +96,13 @@ static int get_default_mac_address_from_state_node(const char *state_node_path,
 
 	node = of_find_node_by_path(state_node_path);
 	if (!node) {
-		pr_err("Node %s defining the state variable not found.\n", state_node_path);
+		dev_err(skov_priv->dev, "Node %s defining the state variable not found.\n", state_node_path);
 		return -ENOENT;
 	}
 
 	ret = of_property_read_u8_array(node, "default", ethaddr, ETH_ALEN);
 	if (ret) {
-		pr_err("Node %s has no property \"default\" of proper type.\n", state_node_path);
+		dev_err(skov_priv->dev, "Node %s has no property \"default\" of proper type.\n", state_node_path);
 		return -ENOENT;
 	}
 
@@ -346,18 +346,18 @@ static void skov_imx6_no_switch(struct device_node *root)
 	if (node) {
 		ret = of_device_disable(node);
 		if (ret)
-			pr_warn("Can't disable %s\n", fec_alias);
+			dev_warn(skov_priv->dev, "Can't disable %s\n", fec_alias);
 	} else {
-		pr_warn("Can't find node by alias: %s\n", fec_alias);
+		dev_warn(skov_priv->dev, "Can't find node by alias: %s\n", fec_alias);
 	}
 
 	node = of_find_node_by_alias(root, "mdio-gpio0");
 	if (node) {
 		ret = of_device_disable(node);
 		if (ret)
-			pr_warn("Can't disable mdio-gpio0 node\n");
+			dev_warn(skov_priv->dev, "Can't disable mdio-gpio0 node\n");
 	} else {
-		pr_warn("Can't find mdio-gpio0 node\n");
+		dev_warn(skov_priv->dev, "Can't find mdio-gpio0 node\n");
 	}
 }
 
@@ -404,7 +404,7 @@ static void skov_imx6_switch(struct device_node *root)
 	if (ret) {
 		ret = skov_imx6_switch_port(root, old);
 		if (ret)
-			pr_err("Filed to set mac address\n");
+			dev_err(skov_priv->dev, "Filed to set mac address\n");
 	}
 }
 
@@ -429,7 +429,7 @@ static int skov_imx6_fixup(struct device_node *root, void *unused)
 	default:
 		val = getenv("state.display.brightness");
 		if (!val) {
-			pr_err("could not get default display brightness\n");
+			dev_err(skov_priv->dev, "could not get default display brightness\n");
 			return 0;
 		}
 
@@ -440,7 +440,7 @@ static int skov_imx6_fixup(struct device_node *root, void *unused)
 	for_each_compatible_node_from(node, root, NULL, "pwm-backlight") {
 		ret = of_property_write_u32(node, "default-brightness-level", brightness);
 		if (ret)
-			pr_err("error %d while setting default-brightness-level property on node %s to %d\n",
+			dev_err(skov_priv->dev, "error %d while setting default-brightness-level property on node %s to %d\n",
 				ret, node->name, brightness);
 	}
 
@@ -469,9 +469,9 @@ static void skov_init_board(const struct board_description *variant)
 	if (gpio_np) {
 		ret = of_device_ensure_probed(gpio_np);
 		if (ret)
-			pr_warn("Can't probe GPIO node\n");
+			dev_warn(skov_priv->dev, "Can't probe GPIO node\n");
 	} else {
-		pr_warn("Can't get GPIO node\n");
+		dev_warn(skov_priv->dev, "Can't get GPIO node\n");
 	}
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
@@ -490,12 +490,12 @@ static void skov_init_board(const struct board_description *variant)
 		break;
 	}
 
-	pr_notice("Using environment in %s\n", envdev);
+	dev_notice(skov_priv->dev, "Using environment in %s\n", envdev);
 
 	ret = of_device_enable_path(environment_path);
 	if (ret < 0)
-		pr_warn("Failed to enable environment partition '%s' (%d)\n",
-			environment_path, ret);
+		dev_warn(skov_priv->dev, "Failed to enable environment partition '%s' (%d)\n",
+			 environment_path, ret);
 
 	if (variant->flags & SKOV_NEED_ENABLE_RMII) {
 		/*
@@ -529,7 +529,7 @@ static void skov_init_board(const struct board_description *variant)
 		if (np)
 			of_device_enable_and_register(np);
 		else
-			pr_err("Cannot find \"fsl,imx-parallel-display\" node\n");
+			dev_err(skov_priv->dev, "Cannot find \"fsl,imx-parallel-display\" node\n");
 	}
 
 	if (variant->flags & SKOV_DISPLAY_LVDS) {
@@ -537,14 +537,14 @@ static void skov_init_board(const struct board_description *variant)
 		if (np)
 			of_device_enable_and_register(np);
 		else
-			pr_err("Cannot find \"fsl,imx6q-ldb\" node\n");
+			dev_err(skov_priv->dev, "Cannot find \"fsl,imx6q-ldb\" node\n");
 
 		/* ... as well as its channel 0 */
 		np = of_find_node_by_name_address(np, "lvds-channel@0");
 		if (np)
 			of_device_enable(np);
 		else
-			pr_err("Cannot find \"lvds-channel@0\" node\n");
+			dev_err(skov_priv->dev, "Cannot find \"lvds-channel@0\" node\n");
 	}
 }
 
@@ -591,7 +591,7 @@ static int skov_switch_test(void)
 	 */
 	sw_dev = of_find_device_by_node_path("/mdio/switch@0");
 	if (!sw_dev) {
-		pr_err("switch@0 device was not created!\n");
+		dev_err(skov_priv->dev, "switch@0 device was not created!\n");
 		goto no_switch;
 	}
 
@@ -604,15 +604,15 @@ static int skov_switch_test(void)
 no_switch:
 	skov_have_switch = false;
 
-	pr_notice("No-switch variant is detected\n");
+	dev_notice(skov_priv->dev, "No-switch variant is detected\n");
 
 	eth0 = get_device_by_name("eth0");
 	if (eth0) {
 		ret = dev_set_param(eth0, "mode", "disabled");
 		if (ret)
-			pr_warn("Can't set eth0 mode\n");
+			dev_warn(skov_priv->dev, "Can't set eth0 mode\n");
 	} else {
-		pr_warn("Can't disable eth0\n");
+		dev_warn(skov_priv->dev, "Can't disable eth0\n");
 	}
 
 	return 0;
@@ -689,7 +689,7 @@ static void skov_imx6_devices_shutdown(void)
 
 	external = getenv("state.display.external");
 	if (!external) {
-		pr_err("could not get state variable display.external\n");
+		dev_err(skov_priv->dev, "could not get state variable display.external\n");
 		return;
 	}
 
-- 
2.30.2



