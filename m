Delivery-date: Wed, 29 May 2024 11:42:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCFoo-0018bL-33
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 11:42:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCFoo-0006cA-Be
	for lore@pengutronix.de; Wed, 29 May 2024 11:42:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+nrLbG7q0tNVSG3PnmjLj1R0Am/xH6VeG3bFatEcLSE=; b=xup0377ze+RfCArm5FjrVtz+EC
	ud8zZsgNmRswiyQ6krPf7+1+Ng+4tnYEaBiyA7ixMgVpJk9M6hbW9Ii4XkM6bj6RWWN0VZwKiKduf
	j69Elcc3oHbQPSBLEevqvkvkOcOfjA8RKm8sCySFP92hB1iN36sxxhydI88H0FXeOAvOPVdyRKcxF
	4qao6kzP0kijmzGg8isy5oCDPLQvCy9HiVJCQ4eaPXgO1A1jT6httbzgqOnal2nmD+PiBAgpqCwqq
	TLuIUzXa5o89PYNITS/mT7HpWgck2pFPzNqlCMj568JjNs1AdVNheHmU21iK2AaZiuIlEvt7uVrDV
	YY1GB9Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCFoK-00000003evE-45tU;
	Wed, 29 May 2024 09:41:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCFoF-00000003esC-0h5Q
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 09:41:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFoD-0006T3-O6; Wed, 29 May 2024 11:41:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFoD-003RfE-BP; Wed, 29 May 2024 11:41:25 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFoD-0029gg-0z;
	Wed, 29 May 2024 11:41:25 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 11:41:24 +0200
Message-Id: <20240529094124.513880-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240529094124.513880-1-o.rempel@pengutronix.de>
References: <20240529094124.513880-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_024127_264396_42011AAE 
X-CRM114-Status: GOOD (  14.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/2] net: sja1105: add function to configure CPU port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce sja1105_cpu_port_enable() to configure the CPU port.
Typically, dedicated Ethernet devices attach to a PHY with an adjust
link function for the networking framework to handle link adjustments.
However, for the CPU port, we face a unique scenario where the device
tree defines two Ethernet devices each with a fixed link: CPU == fixed
link and fixed link == Switch.

This function reflects the model where fixed link driver extracts all
needed information from the device tree, but we do not create an
Ethernet device for the fixed link == Switch bundle, only for the
CPU == fixed link part. Thus, instead of adding adjust link support for
non-dedicated Ethernet devices or making them official Ethernet devices,
we opt to use a port_enable call in the DSA framework.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/sja1105.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index c759c40b36..4ef30b8c81 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -2840,8 +2840,35 @@ static int sja1105_rcv(struct dsa_switch *ds, int *port, void *packet,
 	return 0;
 }
 
+static int sja1105_cpu_port_enable(struct dsa_port *dp, int port,
+				   struct phy_device *phy)
+{
+	struct device *dev = dp->ds->dev;
+	struct sja1105_private *priv = dev_get_priv(dev);
+	phy_interface_t phy_mode = phy->interface;
+	struct dsa_switch *ds = &priv->ds;
+	int cpu = ds->cpu_port;
+	int ret;
+
+	if (port != cpu)
+		return 0;
+
+	sja1105_set_speed(dp, port, phy->speed);
+
+	ret = sja1105_port_set_mode(dp, port, phy_mode);
+	if (ret)
+		return ret;
+
+	ret = sja1105_set_rgmii_delay(priv, port, phy_mode);
+	if (ret)
+		return ret;
+
+	return sja1105_static_config_reload(priv);
+}
+
 static const struct dsa_switch_ops sja1105_dsa_ops = {
 	.port_pre_enable	= sja1105_port_pre_enable,
+	.port_enable		= sja1105_cpu_port_enable,
 	.adjust_link		= sja1105_adjust_link,
 	.xmit			= sja1105_xmit,
 	.rcv			= sja1105_rcv,
-- 
2.39.2



