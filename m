Delivery-date: Wed, 02 Nov 2022 11:09:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqAgl-00CAl6-SC
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 11:09:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqAgk-0003Jd-IP
	for lore@pengutronix.de; Wed, 02 Nov 2022 11:09:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1xbTfvH73xukM8W8IidBgyRFIDjvl61vUGuIh/MRjtk=; b=Us2WO0Fzf/HQDSRQZdA1J/9v2C
	pKV0hVFNyTm0SRlMAzr5JpuqxvOXGeKkcyCKfnK6oXARZCROtVOjudzjtFV7eRoxs4SXH51AD/9pr
	9BtdwLLejxa4c5MnKj9O2PLD2zlnJYbmmf456TPgFxQ+26MrttxdHd84WvrdeX9mokc5erCvVEY0M
	lmauEZCIPwcCB9YO5U68E5VFquG+BGm7+usu43oiQdV07xKsXTAGB+y7nonVvavsn3XUNVstxh4Vn
	nOA0gYZ6qRxQJkqkWvvzDC7ux0Y4071XhbrlaHYldJU4VFjcNBq75ahebCyCIF7uvXup/4eu0e/OB
	Xcni8pLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAfB-00ARN2-Ig; Wed, 02 Nov 2022 10:08:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAf5-00ARJC-36
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 10:07:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAez-00030D-Ea; Wed, 02 Nov 2022 11:07:49 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAez-001qpF-Nc; Wed, 02 Nov 2022 11:07:48 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqAey-008BEP-3S; Wed, 02 Nov 2022 11:07:48 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  2 Nov 2022 11:07:43 +0100
Message-Id: <20221102100744.1949741-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221102100744.1949741-1-o.rempel@pengutronix.de>
References: <20221102100744.1949741-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_030755_178659_5B637E07 
X-CRM114-Status: GOOD (  15.71  )
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
Subject: [PATCH v1 3/4] ARM: boards: skov-imx6: assigned separate MAC address to LAN2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have two external ports and different MAC addresses on each port. So,
assign different MAC to the LAN2. The address on LAN1 is the
system default address.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 47 ++++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 3c51b76735..ab8b229a69 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -17,6 +17,12 @@
 
 #include "version.h"
 
+struct skov_imx6_priv {
+	struct device_d *dev;
+};
+
+static struct skov_imx6_priv *skov_priv;
+
 static int eth_of_fixup_node(struct device_node *root, const char *node_path,
 			     const u8 *ethaddr)
 {
@@ -542,6 +548,34 @@ static void skov_init_board(const struct board_description *variant)
 	}
 }
 
+/* */
+static int skov_set_switch_lan2_mac(struct skov_imx6_priv *priv)
+{
+	const char *state = "/state/ethaddr/eth2";
+	struct device_node *lan2_np;
+	u8 ethaddr[ETH_ALEN];
+	int ret;
+
+	ret = get_mac_address_from_env_variable("state.ethaddr.eth2", ethaddr);
+	if (ret || !is_valid_ether_addr(ethaddr)) {
+		ret = get_default_mac_address_from_state_node(state, ethaddr);
+		if (ret || !is_valid_ether_addr(ethaddr)) {
+			dev_err(priv->dev, "can't get MAC for LAN2\n");
+			return -ENODEV;
+		}
+	}
+
+	lan2_np = of_find_node_by_path("/mdio/switch@0/ports/ports@1");
+	if (!lan2_np) {
+		dev_err(priv->dev, "LAN2 node not found\n");
+		return -ENODEV;
+	}
+
+	of_eth_register_ethaddr(lan2_np, ethaddr);
+
+	return 0;
+}
+
 static int skov_switch_test(void)
 {
 	struct device_d *sw_dev;
@@ -561,8 +595,11 @@ static int skov_switch_test(void)
 		goto no_switch;
 	}
 
-	if (dev_is_probed(sw_dev))
+	if (dev_is_probed(sw_dev)) {
+		skov_set_switch_lan2_mac(skov_priv);
+		/* even if we fail, continue to boot as good as possible */
 		return 0;
+	}
 
 no_switch:
 	skov_have_switch = false;
@@ -584,6 +621,7 @@ late_initcall(skov_switch_test);
 
 static int skov_imx6_probe(struct device_d *dev)
 {
+	struct skov_imx6_priv *priv;
 	unsigned v = 0;
 	const struct board_description *variant;
 
@@ -603,6 +641,13 @@ static int skov_imx6_probe(struct device_d *dev)
 
 	skov_board_no = v;
 
+	priv = xzalloc(sizeof(*priv));
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	skov_priv = priv;
+
 	globalvar_add_simple_int("board.no", &skov_board_no, "%u");
 	globalvar_add_simple("board.variant", variant->variant);
 	globalvar_add_simple("board.revision",variant->revision);
-- 
2.30.2



