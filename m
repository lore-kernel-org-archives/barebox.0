Delivery-date: Mon, 16 Jan 2023 14:48:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPqI-00Dbx2-D9
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:48:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPqG-0000aK-5O
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:48:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i+NEp7npMabzNH61JJYdXKnqm8/ekrI6Z43BHt/jbKQ=; b=U21WJTMXPptIWwbFg70t3syWxG
	ZZIRzA0l4rg2HxjhfUSpAJinuqaZfwoS9BHpgqvjmMcLaGTrSBKEhX/NimD1aHsE71qHPteYVESUJ
	2T+V1g0/eMzTAAaEBjDNxU6XQyljyHkEcr0DSb1esnPArcmKGgNYaKTUN+1xXq3H5MzWSXi4M878k
	OPEGfvSnT2v0Pa8oird/8qvhRhu4/5+FRBgiXQmmzYCpeOj0bE/izgl3i2g7rgePPGAIaMXl6iAUL
	+5933OuY/rlK2CuL9iXJODzjF18HkYVXVFmLmjM+LdoiFlAhN5qXzHvocD2oL6G65CtoQW+gYh+vp
	KiSZloiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPop-00AYnM-Ua; Mon, 16 Jan 2023 13:46:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8L-76
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-0007zR-32; Mon, 16 Jan 2023 14:45:08 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKL-Eh; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyH-QK; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:44:56 +0100
Message-Id: <20230116134501.2006391-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_054517_437333_6FED78C7 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] net: dsa: factor out dsa_port_alloc helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We'll reuse this helper in a follow-up commit for allocating the CPU
port's struct dsa_port, so prepare for this by creating a helper
function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/dsa.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index d51e9c861114..ea1a6a699698 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -235,10 +235,9 @@ static int dsa_ether_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	return edev_master->get_ethaddr(edev_master, adr);
 }
 
-static int dsa_switch_register_edev(struct dsa_switch *ds,
-				    struct device_node *dn, int port)
+static struct dsa_port *dsa_port_alloc(struct dsa_switch *ds,
+				       struct device_node *dn, int port)
 {
-	struct eth_device *edev;
 	struct device *dev;
 	struct dsa_port *dp;
 
@@ -248,14 +247,24 @@ static int dsa_switch_register_edev(struct dsa_switch *ds,
 	dev = of_platform_device_create(dn, ds->dev);
 	of_platform_device_dummy_drv(dev);
 	dp->dev = dev;
-
-	dp->rx_buf = xmalloc(DSA_PKTSIZE);
 	dp->ds = ds;
 	dp->index = port;
 
+	return dp;
+}
+
+static int dsa_switch_register_edev(struct dsa_switch *ds,
+				    struct device_node *dn, int port)
+{
+	struct eth_device *edev;
+	struct dsa_port *dp;
+
+	dp = dsa_port_alloc(ds, dn, port);
+	dp->rx_buf = xmalloc(DSA_PKTSIZE);
+
 	edev = &dp->edev;
 	edev->priv = dp;
-	edev->parent = dev;
+	edev->parent = dp->dev;
 	edev->init = dsa_port_probe;
 	edev->open = dsa_port_start;
 	edev->send = dsa_port_send;
-- 
2.30.2



