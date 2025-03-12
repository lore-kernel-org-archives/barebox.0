Delivery-date: Wed, 12 Mar 2025 12:58:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsKjW-00D6tX-2M
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 12:58:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsKjV-0001w2-Hv
	for lore@pengutronix.de; Wed, 12 Mar 2025 12:58:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wZqchqZF6/iyGSN7uX6HRmcTqay/cuPMJtEtxYHx4GI=; b=zNgZzEuj2oTjsbUXlK026oqfli
	ERqo2IuMraI4upCt+3ttfyQ1VADB/INAQ10Zcx0vmw81Nq499qFSkspjhgGOUYV88d0wP2l2nwlve
	sp0GmEZmbYBH8WLvdNYUfGsYJbFJtdeiIun1gCyWaEzPRm30SG9UB9sxHia8+Y9fsP+8qVpqs9UE8
	9FqnOiSVjFj7aVYdq/8h0KD6iEEhc9nd6OIY0pQe7fZ3v3t6gpu1HVNynWhqzGh2FdxaqyNXR5BaV
	6mzqdq2l3fVRAu9AcaxgRTyZVa6JEbh6wxBpWi/vPMmL/v3qJbHZb5tMwbmhIOSk+KXO/JHtcEBjG
	KkG66u5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKix-00000008Kfn-1y6i;
	Wed, 12 Mar 2025 11:58:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsK8z-00000008Eqy-0GTu
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 11:21:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-0006He-Ed; Wed, 12 Mar 2025 12:20:58 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-005Lia-0n;
	Wed, 12 Mar 2025 12:20:58 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsK8w-002OHq-0b;
	Wed, 12 Mar 2025 12:20:58 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Mar 2025 12:20:55 +0100
Message-Id: <20250312112057.570001-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042101_100032_5DFCE158 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH v1 1/3] net: dsa: Add global forwarding mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch introduces a global forwarding mode control for DSA switches
in Barebox.  It adds a new `forwarding` parameter that allows enabling
or disabling forwarding  between all ports on a DSA switch.

This enables users to configure global forwarding dynamically via:
dev.switch0.forwarding=1  # Enable forwarding
dev.switch0.forwarding=0  # Disable forwarding (isolated mode)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa.c | 12 ++++++++++++
 include/dsa.h     |  4 ++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index a451a1a35e8b..537e9dd72ac6 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -4,6 +4,7 @@
 #include <dma.h>
 #include <dsa.h>
 #include <of_net.h>
+#include <param.h>
 
 u32 dsa_user_ports(struct dsa_switch *ds)
 {
@@ -431,6 +432,13 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
 	return ret;
 }
 
+static int dsa_set_forwarding(struct param_d *p, void *priv)
+{
+	struct dsa_switch *ds = priv;
+
+	return ds->ops->set_forwarding(ds, ds->forwarding_enable);
+}
+
 int dsa_register_switch(struct dsa_switch *ds)
 {
 	int ret;
@@ -448,6 +456,10 @@ int dsa_register_switch(struct dsa_switch *ds)
 		return -EINVAL;
 	}
 
+	if (ds->ops->set_forwarding)
+		dev_add_param_bool(ds->dev, "forwarding", dsa_set_forwarding,
+				   NULL, &ds->forwarding_enable, ds);
+
 	ret = dsa_switch_parse_ports_of(ds, ds->dev->of_node);
 	if (ret)
 		return ret;
diff --git a/include/dsa.h b/include/dsa.h
index 527941c26949..ecf7c4f429f3 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -56,6 +56,9 @@ struct dsa_switch_ops {
 	int (*phy_read)(struct dsa_switch *ds, int port, int regnum);
 	int (*phy_write)(struct dsa_switch *ds, int port, int regnum, u16 val);
 	void (*adjust_link)(struct eth_device *dev);
+
+	/* enable/disable forwarding between all ports on the switch */
+	int (*set_forwarding)(struct dsa_switch *ds, bool enable);
 };
 
 struct dsa_port {
@@ -84,6 +87,7 @@ struct dsa_switch {
 	struct mii_bus *slave_mii_bus;
 	u32 phys_mii_mask;
 	void *priv;
+	u32 forwarding_enable;
 };
 
 static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
-- 
2.39.5



