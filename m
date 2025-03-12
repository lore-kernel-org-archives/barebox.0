Delivery-date: Wed, 12 Mar 2025 12:58:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsKja-00D6uE-09
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 12:58:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsKjY-0001xY-Ok
	for lore@pengutronix.de; Wed, 12 Mar 2025 12:58:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NTMnkaJoWXEjcvQG5Bs1VPzoy/qA4yJ0Cg8+Mcs1WDo=; b=Zhs40P+y4rShs6WF1vzfmJMXWs
	bQRQ3TpRrTq0lfGS0vd6GG1nuIFZllm9TjRmzQTpfiz6dRggDfUHUsjEywe97CC/JTYSHGYbtpiyy
	BRfwdIWLsX1KOD8surEdUtkn6KKQ7ZTIfqvR6DLJPIN/mHTYDWfr1U9iCRtWduGDQQX9jIPXPlq6x
	R7PeNoajyfgCC0BjJYJMpg6hKSAST29Gc15wYSiseSXz4rl7nQGPl/tmMKhWhp/whZYOGx/ywOY4F
	qWdtleVG5rQvtYcl9+1iXSCUGRgtch5uzllg36+wDymfcSAa3fqxYG0hvjss6f4xEaiBnmGNzu9g6
	TlDQy0Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKix-00000008Kft-424f;
	Wed, 12 Mar 2025 11:58:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsK8z-00000008Eqz-0E3I
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 11:21:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-0006Hg-Ex; Wed, 12 Mar 2025 12:20:58 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-005Lic-0r;
	Wed, 12 Mar 2025 12:20:58 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-002OI2-0g;
	Wed, 12 Mar 2025 12:20:58 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Mar 2025 12:20:57 +0100
Message-Id: <20250312112057.570001-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250312112057.570001-1-o.rempel@pengutronix.de>
References: <20250312112057.570001-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042101_093888_D62478F9 
X-CRM114-Status: GOOD (  18.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/3] net: dsa: sja1105: Add support for global forwarding mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for global forwarding mode in the SJA1105 DSA driver,
allowing dynamic control over whether the switch forwards traffic
between all ports or restricts communication to only CPU-port
connections.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/sja1105.c | 77 +++++++++++++++++++++++++++++++++----------
 1 file changed, 59 insertions(+), 18 deletions(-)

diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index 4ef30b8c81f1..aaf9237dc19d 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -1230,11 +1230,13 @@ static int sja1105_init_mii_settings(struct sja1105_private *priv)
 	return 0;
 }
 
-static void sja1105_setup_tagging(struct sja1105_private *priv, int port)
+static void sja1105_setup_tagging(struct sja1105_private *priv, int port,
+				  bool forward_all)
 {
 	struct sja1105_vlan_lookup_entry *vlan;
 	struct dsa_switch *ds = &priv->ds;
 	int cpu = ds->cpu_port;
+	u8 vlan_mask;
 
 	/* The CPU port is implicitly configured by
 	 * configuring the front-panel ports
@@ -1246,8 +1248,16 @@ static void sja1105_setup_tagging(struct sja1105_private *priv, int port)
 
 	priv->pvid[port] = DSA_8021Q_DIR_TX | DSA_8021Q_PORT(port);
 
-	vlan[port].vmemb_port	= BIT(port) | BIT(cpu);
-	vlan[port].vlan_bc	= BIT(port) | BIT(cpu);
+	if (forward_all) {
+		/* All ports in the same VLAN */
+		vlan_mask = (1 << ds->num_ports) - 1;
+	} else {
+		/* Only allow port ↔ CPU communication */
+		vlan_mask = BIT(port) | BIT(cpu);
+	}
+
+	vlan[port].vmemb_port	= vlan_mask;
+	vlan[port].vlan_bc	= vlan_mask;
 	vlan[port].tag_port	= BIT(cpu);
 	vlan[port].vlanid	= priv->pvid[port];
 	vlan[port].type_entry	= SJA1110_VLAN_D_TAG;
@@ -1269,7 +1279,7 @@ static int sja1105_init_vlan(struct sja1105_private *priv)
 	table->entry_count = ds->num_ports;
 
 	for (port = 0; port < ds->num_ports; port++)
-		sja1105_setup_tagging(priv, port);
+		sja1105_setup_tagging(priv, port, false);
 
 	return 0;
 }
@@ -1283,33 +1293,47 @@ sja1105_port_allow_traffic(struct sja1105_l2_forwarding_entry *l2_fwd,
 	l2_fwd[from].fl_domain  |= BIT(to);
 }
 
-static int sja1105_init_l2_forwarding(struct sja1105_private *priv)
+static int sja1105_init_l2_forwarding(struct sja1105_private *priv,
+				      bool forward_all)
 {
 	struct sja1105_l2_forwarding_entry *l2fwd;
 	struct dsa_switch *ds = &priv->ds;
 	struct sja1105_table *table;
 	int cpu = ds->cpu_port;
-	int i;
+	int i, j;
 
 	table = &priv->static_config.tables[BLK_IDX_L2_FORWARDING];
 
-	table->entries = calloc(SJA1105_MAX_L2_FORWARDING_COUNT,
-				table->ops->unpacked_entry_size);
-	if (!table->entries)
-		return -ENOMEM;
+	if (!table->entries) {
+		table->entries = calloc(SJA1105_MAX_L2_FORWARDING_COUNT,
+					table->ops->unpacked_entry_size);
+		if (!table->entries)
+			return -ENOMEM;
+	}
 
 	table->entry_count = SJA1105_MAX_L2_FORWARDING_COUNT;
 
 	l2fwd = table->entries;
 
-	/* First 5 entries define the forwarding rules */
-	for (i = 0; i < ds->num_ports; i++) {
-		if (i == cpu)
-			continue;
-
-		sja1105_port_allow_traffic(l2fwd, i, cpu);
-		sja1105_port_allow_traffic(l2fwd, cpu, i);
+	if (forward_all) {
+		/* Forwarding mode: All ports can talk to each other */
+		for (i = 0; i < ds->num_ports; i++) {
+			for (j = 0; j < ds->num_ports; j++) {
+				if (i == j)
+					continue;
+				sja1105_port_allow_traffic(l2fwd, i, j);
+			}
+		}
+	} else {
+		/* Default mode: Each port only forwards to/from the CPU */
+		for (i = 0; i < ds->num_ports; i++) {
+			if (i == cpu)
+				continue;
+			sja1105_port_allow_traffic(l2fwd, i, cpu);
+			sja1105_port_allow_traffic(l2fwd, cpu, i);
+		}
 	}
+
 	/* Next 8 entries define VLAN PCP mapping from ingress to egress.
 	 * Leave them unpopulated (implicitly 0) but present.
 	 */
@@ -1490,7 +1514,7 @@ static int sja1105_static_config_init(struct sja1105_private *priv)
 	rc = sja1105_init_mii_settings(priv);
 	if (rc < 0)
 		return rc;
-	rc = sja1105_init_l2_forwarding(priv);
+	rc = sja1105_init_l2_forwarding(priv, false);
 	if (rc < 0)
 		return rc;
 	rc = sja1105_init_l2_forwarding_params(priv);
@@ -2866,12 +2890,29 @@ static int sja1105_cpu_port_enable(struct dsa_port *dp, int port,
 	return sja1105_static_config_reload(priv);
 }
 
+static int sja1105_set_forwarding(struct dsa_switch *ds, bool enable)
+{
+	struct device *dev = ds->dev;
+	struct sja1105_private *priv = dev_get_priv(dev);
+	int port, ret;
+
+	for (port = 0; port < ds->num_ports; port++)
+		sja1105_setup_tagging(priv, port, enable);
+
+	ret = sja1105_init_l2_forwarding(priv, enable);
+	if (ret)
+		return ret;
+
+	return sja1105_static_config_reload(priv);
+}
+
 static const struct dsa_switch_ops sja1105_dsa_ops = {
 	.port_pre_enable	= sja1105_port_pre_enable,
 	.port_enable		= sja1105_cpu_port_enable,
 	.adjust_link		= sja1105_adjust_link,
 	.xmit			= sja1105_xmit,
 	.rcv			= sja1105_rcv,
+	.set_forwarding		= sja1105_set_forwarding,
 };
 
 static int sja1105_init(struct sja1105_private *priv)
-- 
2.39.5



