Delivery-date: Mon, 02 Oct 2023 12:18:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0V-001uGD-FA
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 12:18:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0T-00041U-HL
	for lore@pengutronix.de; Mon, 02 Oct 2023 12:18:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EGSSK4EQrjOQ7wtaR6CVWjG0Q8Ic1VhYtcgpUAVUVLU=; b=k3qBs0D22gi1yEi1+FlhiRpaFm
	r3tDxiZf1UKSSPgHTZo9UZ5IKKSVbTLuFhm2m+UXnMHrrMoN7YvqD5YVr5GjDmTTOkbQiKXV297K5
	u8Vt+K5G5YGBoL37Ye9ZHCBWY6bzRiuHld9M1WkIH9KQ4Fy9fjLqgXkIWtSt8gsQtlYI7dFSRWy8y
	dn8pLnhNH7d6vwS4H0zmLtJAfeHREBE8VJl52dJ6ZowEyj8rlpQMMdse9gXUYNeHr0r8wIv6QGX+f
	n4wyjhsgb/lEyLFj9jXn8FKY1CUqKHBZ9ZrIjkKPKSSecEyByUhblR+NTuL6uhbU+13XOmcO6AC/I
	/hasu66Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFzG-00CIku-15;
	Mon, 02 Oct 2023 10:17:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFz8-00CIgz-2b
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 10:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz6-0003TX-8t; Mon, 02 Oct 2023 12:17:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-00AV2U-Pu; Mon, 02 Oct 2023 12:17:03 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-009xLZ-2A;
	Mon, 02 Oct 2023 12:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  2 Oct 2023 12:16:54 +0200
Message-Id: <20231002101654.2373000-11-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002101654.2373000-1-o.rempel@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_031706_841807_EA908BEA 
X-CRM114-Status: GOOD (  16.85  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/10] ARM: i.MX8MP: skov: assign Ethernet addresses to all ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Assign Ethernet address to all ports based on the master address stored
in the NVMEM. In case nothing nvmem is clean, generate address based on
vendor OUI with part of i.MX8MP unique ID.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 97 +++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 3b6eb7b080..6de9ab47ab 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -12,13 +12,18 @@
 #include <io.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/generic.h>
+#include <mach/imx/imx8mq.h>
 #include <mach/imx/iomux-mx8mp.h>
+#include <net.h>
+#include <of_net.h>
 
 struct skov_imx8mp_priv {
 	struct device *dev;
 	int variant_id;
 };
 
+#define SKOV_OUI  {0x00, 0x0e, 0xcd}
+
 static struct skov_imx8mp_priv *skov_imx8mp_priv;
 
 #define GPIO_HW_VARIANT  {\
@@ -85,6 +90,98 @@ static const struct board_description imx8mp_variants[] = {
 	},
 };
 
+static struct eth_device *
+skov_imx8mp_init_master_edev(struct skov_imx8mp_priv *priv,
+			     struct device_node *np)
+{
+	u8 oui_mac[ETH_ALEN] = SKOV_OUI;
+	struct eth_device *edev;
+
+	edev = of_find_eth_device_by_node(np);
+	if (!edev) {
+		dev_err(priv->dev, "Failed to find master eth device\n");
+		return NULL;
+	}
+
+	if (is_valid_ether_addr(edev->ethaddr))
+		return edev;
+
+	if (!edev->parent || of_get_mac_addr_nvmem(edev->parent->of_node,
+						   oui_mac)) {
+		char str[sizeof("xx:xx:xx:xx:xx:xx")];
+		u64 unique_id;
+
+		unique_id = imx8m_uid();
+		if (!unique_id)
+			dev_err(priv->dev, "Failed to get i.MX8MP unique ID\n");
+
+		/* Generate MAC address based on i.MX8MP unique ID */
+		oui_mac[3] = (unique_id >> 56) & 0xff;
+		oui_mac[4] = (unique_id >> 48) & 0xff;
+		oui_mac[5] = (unique_id >> 40) & 0xff;
+		ethaddr_to_string(oui_mac, str);
+		dev_warn(priv->dev, "Failed to get master eth addr. Generating based on i.MX8MP unique ID: %s\n",
+			 str);
+	}
+
+	of_eth_register_ethaddr(np, oui_mac);
+
+	return edev;
+}
+
+static void skov_imx8mp_register_ethaddr(struct skov_imx8mp_priv *priv,
+					 struct device_node *root)
+{
+	struct eth_device *master_edev;
+	struct eth_node_info {
+		const char *alias;
+		struct device_node *np;
+		u32 inc;
+	} eth_nodes[] = {
+		{ "ethernet0", NULL, 0 },
+		/* Addresses are assigned in the reverse order
+		 * LAN2 addr < LAN1 addr
+		 */
+		{ "ethernet1", NULL, 1 },
+		{ "ethernet2", NULL, 0 },
+	};
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(eth_nodes); i++) {
+		eth_nodes[i].np = of_find_node_by_alias(root,
+							eth_nodes[i].alias);
+		if (!eth_nodes[i].np) {
+			dev_err(priv->dev, "Failed to find %s alias\n",
+				eth_nodes[i].alias);
+			return;
+		}
+	}
+
+	master_edev = skov_imx8mp_init_master_edev(priv, eth_nodes[0].np);
+	if (!master_edev) {
+		dev_err(priv->dev, "Failed to init master edev\n");
+		return;
+	}
+
+	/* Set ETH addresses for all but master edev */
+	for (i = 1; i < ARRAY_SIZE(eth_nodes); i++) {
+		u8 ethaddr[ETH_ALEN];
+
+		ether_addr_inc(ethaddr, master_edev->ethaddr, eth_nodes[i].inc);
+		of_eth_register_ethaddr(eth_nodes[i].np, ethaddr);
+	}
+}
+
+static int skov_imx8mp_populate_ethaddr(void)
+{
+	struct skov_imx8mp_priv *priv = skov_imx8mp_priv;
+
+	skov_imx8mp_register_ethaddr(priv, NULL);
+
+	return 0;
+}
+postenvironment_initcall(skov_imx8mp_populate_ethaddr);
+
 static int skov_imx8mp_fixup(struct device_node *root, void *data)
 {
 	struct device_node *chosen = of_create_node(root, "/chosen");
-- 
2.39.2



