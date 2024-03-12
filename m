Delivery-date: Tue, 12 Mar 2024 11:02:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjyxU-002Tad-2F
	for lore@lore.pengutronix.de;
	Tue, 12 Mar 2024 11:02:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjyxQ-0000bx-4V
	for lore@pengutronix.de; Tue, 12 Mar 2024 11:02:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LeatFeSMenoP2shinq+Ihhk2oDHnicTlD2W4J7vKXOA=; b=e7dta34+9E+OxHOwhlwKqPs6ST
	QC/xn8zoCFt3nlna1/MB6iwwz4zwJ6NcUYbKZnNAPokG/1485yt75wmr02wNThDZgJof4v1NmQrsT
	V5rOQMLzJd2YdR4pRjhajvS4MT3JNnVG/EbUDHJ6KKmKxmdhRdJv5WDxsSpJBt6iH+RXhnvy6+ZnU
	w2rxXWbV1XdqdvxQiCTy2rjLQefGQVN6RTYBuciktCsCXpG9d18OX6+SoNEUZvvZT6KC0NPrTrE7j
	FycsFJN/fJHBZUFZd37lRRHtzxKMLsEapDpz15+qWWnNWPJAUmipddr5OGxDLKL1+yikQGAYwMpIS
	vncF8JKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjywZ-00000005FJZ-2H63;
	Tue, 12 Mar 2024 10:01:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjywU-00000005FIH-3HUQ
	for barebox@lists.infradead.org;
	Tue, 12 Mar 2024 10:01:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rjywO-0008Gg-KG; Tue, 12 Mar 2024 11:01:00 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rjywO-005tVM-7J; Tue, 12 Mar 2024 11:01:00 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rjywO-00EzRP-0Y;
	Tue, 12 Mar 2024 11:01:00 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 12 Mar 2024 11:00:57 +0100
Message-Id: <20240312100057.3572762-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_030106_846895_EA9DCB8B 
X-CRM114-Status: GOOD (  22.00  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] ARM: i.MX8MP: skov: add MAC address assignment support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Assign MAC address to main CPU interface and switch ports.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 131 ++++++++++++++++++++++++++++
 arch/arm/dts/imx8mp-skov.dts        |   1 +
 2 files changed, 132 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 3b6eb7b080..94d0bc75f9 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -10,9 +10,12 @@
 #include <gpio.h>
 #include <init.h>
 #include <io.h>
+#include <linux/nvmem-consumer.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/iomux-mx8mp.h>
+#include <net.h>
+#include <of_net.h>
 
 struct skov_imx8mp_priv {
 	struct device *dev;
@@ -85,6 +88,134 @@ static const struct board_description imx8mp_variants[] = {
 	},
 };
 
+static void skov_imx8mp_get_src_mac(struct skov_imx8mp_priv *priv,
+				   struct device_node *s_np, u8 *mac,
+				   int dst_id)
+{
+	char str[sizeof("xx:xx:xx:xx:xx:xx")];
+	struct eth_device *s_edev;
+	int ret;
+
+	s_edev = of_find_eth_device_by_node(s_np);
+	if (s_edev && is_valid_ether_addr(s_edev->ethaddr)) {
+		/* If the source device has a valid MAC address, use it in
+		 * case address is overwritten by user.
+		 */
+		memcpy(mac, s_edev->ethaddr, ETH_ALEN);
+		return;
+	}
+
+	/* if the source device has no valid MAC address, try to get it from
+	 * nvmem if it configured in the devicetree.
+	 */
+	ret = of_get_mac_addr_nvmem(s_np, mac);
+	if (!ret)
+		return;
+
+	/* if the source device has no valid MAC address, generate one with
+	 * vendor OUI.
+	 */
+	ret = generate_ether_addr(mac, dst_id);
+	if (ret)
+		random_ether_addr(mac);
+
+	/* set SKOV OUI */
+	mac[0] = 0x00;
+	mac[1] = 0x0e;
+	mac[2] = 0xcd;
+	ethaddr_to_string(mac, str);
+	dev_warn(priv->dev, "Failed to get eth addr for idx=%d. Generating one: %s\n",
+		 dst_id, str);
+}
+
+static int skov_imx8mp_eth_register_ethaddr(struct skov_imx8mp_priv *priv,
+					    struct device_node *d_np,
+					    struct device_node *s_np,
+					    int dst_id)
+{
+	struct eth_device *d_edev;
+	u8 mac[ETH_ALEN] = { 0 };
+
+	d_edev = of_find_eth_device_by_node(d_np);
+	if (d_edev) {
+		/* If the destination device already has a valid MAC address, do
+		 * nothing, it was probably set to nv by user.
+		 */
+		if (is_valid_ether_addr(d_edev->ethaddr))
+			return 0;
+	}
+
+	skov_imx8mp_get_src_mac(priv, s_np, mac, dst_id);
+
+	of_eth_register_ethaddr(d_np, mac);
+
+	return 0;
+}
+
+/* We have following requirements for the ethernet MAC addresses:
+ * - LAN1 MAC address should be the same as the MAC address stored in the FEC
+ *   slot (FEC is not used on this board).
+ * - LAN2 MAC address should be the same as the EQOS MAC address. (EQOS is
+ *   the master interface for the switch on this board, LAN2 and LAN1 are
+ *   external ports of this switch).
+ * - LAN2 MAC address is usually higher than LAN1 MAC address. But production
+ *   process do not guarantee this. So, we can't calculate LAN2 MAC address
+ *   from LAN1 MAC address.
+ */
+static void skov_imx8mp_ethernet_init(struct skov_imx8mp_priv *priv)
+{
+	struct device_node *root;
+	unsigned int i;
+	struct eth_node_info {
+		const char *s_alias;
+		const char *d_alias;
+	} eth_node_info[] = {
+		{ "ethernet0", "ethernet0" }, /* EQOS -> EQOS */
+		{ "ethernet0", "ethernet2" }, /* EQOS -> LAN2 */
+		{ "ethernet3", "ethernet1" }, /* FEC -> LAN1 */
+	};
+
+	root = of_get_root_node();
+
+	for (i = 0; i < ARRAY_SIZE(eth_node_info); i++) {
+		const char *s_alias = eth_node_info[i].s_alias;
+		const char *d_alias = eth_node_info[i].d_alias;
+		struct device_node *s_np, *d_np;
+		int ret;
+
+		s_np = of_find_node_by_alias(root, s_alias);
+		if (!s_np) {
+			dev_warn(priv->dev, "Failed to find src ethernet node by alias: %s\n",
+				 s_alias);
+			continue;
+		}
+
+		d_np = of_find_node_by_alias(root, d_alias);
+		if (!d_np) {
+			dev_warn(priv->dev, "Failed to find dst ethernet node by alias: %s\n",
+				 d_alias);
+			continue;
+		}
+
+		ret = skov_imx8mp_eth_register_ethaddr(priv, d_np, s_np, i);
+		if (ret) {
+			dev_warn(priv->dev, "Failed to transfer MAC address from alias %s to %s\n",
+				 s_alias, d_alias);
+			continue;
+		}
+	}
+}
+
+static int skov_imx8mp_populate_ethaddr(void)
+{
+	struct skov_imx8mp_priv *priv = skov_imx8mp_priv;
+
+	skov_imx8mp_ethernet_init(priv);
+
+	return 0;
+}
+postenvironment_initcall(skov_imx8mp_populate_ethaddr);
+
 static int skov_imx8mp_fixup(struct device_node *root, void *data)
 {
 	struct device_node *chosen = of_create_node(root, "/chosen");
diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 3243a41697..063861427c 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -31,6 +31,7 @@ aliases {
 		ethernet0 = &eqos;
 		ethernet1 = &lan1;
 		ethernet2 = &lan2;
+		ethernet3 = &fec;
 		state = &state;
 	};
 
-- 
2.39.2



