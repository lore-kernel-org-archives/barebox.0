Delivery-date: Tue, 08 Nov 2022 07:12:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osHq8-0018Rk-3A
	for lore@lore.pengutronix.de; Tue, 08 Nov 2022 07:12:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osHq7-0000Av-14
	for lore@pengutronix.de; Tue, 08 Nov 2022 07:12:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tMHUR05/mGCYNQ67Xa64GkWAfhBsKrZaw8P8BRDDueg=; b=k+7MQy2HjEumm9qhT6wjEEqKN4
	906LMugRzmmiEfdmq5fCj5cm67q9ZGhAhNqR4WQKShyre6efg5xR3iLofYEO08vr14n0u/j8oGHKF
	DwJ9gn/NRnT+joqNE0vwFCud3Fuc9VCcslz5msqhUAtCgR4GaCDF5UKbZu2aEcDqVNv4iV4AgpNV+
	mwdOqq6qZsBD11u4QBJSoZrEhr17sD6vqEYzUIO7CODHInOus0dNMi5BS24ngkC28XhUYzg8S0eet
	4/XSIN38MNIDshw9DQzpcuTw8y/AZ5yiqEWz6JQUc+SobjXXTYenCB/pBCN7SJu2r+6sUzzrkHTxk
	qZWa7G6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHog-0035IB-M9; Tue, 08 Nov 2022 06:10:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHoV-0035EH-SI
	for barebox@lists.infradead.org; Tue, 08 Nov 2022 06:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoU-0007tz-LB; Tue, 08 Nov 2022 07:10:22 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoT-002zpv-1y; Tue, 08 Nov 2022 07:10:22 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoS-00HUUo-7V; Tue, 08 Nov 2022 07:10:20 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  8 Nov 2022 07:10:07 +0100
Message-Id: <20221108061009.4168735-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221108061009.4168735-1-o.rempel@pengutronix.de>
References: <20221108061009.4168735-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_221023_926325_11F399FE 
X-CRM114-Status: GOOD (  15.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 6/8] net: dsa: fix of_device_ensure_probed*() for switch ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Create ports by using of_platform_device_create() in the same way as it
is used by of_device_ensure_probed*(). Otherwise we are creating
multiple devices for the same node.

At same time we need to link dummy driver to make this logic work.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa.c | 18 +++++-------------
 include/dsa.h     |  2 +-
 2 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 124059ee3c..bc33892f39 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -59,7 +59,7 @@ static int dsa_port_probe(struct eth_device *edev)
 	int ret;
 
 	if (ops->port_probe) {
-		interface = of_get_phy_mode(dp->dev.device_node);
+		interface = of_get_phy_mode(dp->dev->device_node);
 		ret = ops->port_probe(dp, dp->index, interface);
 		if (ret)
 			return ret;
@@ -93,7 +93,7 @@ static int dsa_port_start(struct eth_device *edev)
 	if (dp->enabled)
 		return -EBUSY;
 
-	interface = of_get_phy_mode(dp->dev.device_node);
+	interface = of_get_phy_mode(dp->dev->device_node);
 
 	if (ops->port_pre_enable) {
 		/* In case of RMII interface we need to enable RMII clock
@@ -241,21 +241,13 @@ static int dsa_switch_register_edev(struct dsa_switch *ds,
 	struct eth_device *edev;
 	struct device_d *dev;
 	struct dsa_port *dp;
-	int ret;
 
 	ds->dp[port] = xzalloc(sizeof(*dp));
-
 	dp = ds->dp[port];
-	dev = &dp->dev;
-
-	dev_set_name(dev, "dsa_port");
-	dev->id = DEVICE_ID_DYNAMIC;
-	dev->parent = ds->dev;
-	dev->device_node = dn;
 
-	ret = register_device(dev);
-	if (ret)
-		return ret;
+	dev = of_platform_device_create(dn, ds->dev);
+	of_platform_device_dummy_drv(dev);
+	dp->dev = dev;
 
 	dp->rx_buf = xmalloc(DSA_PKTSIZE);
 	dp->ds = ds;
diff --git a/include/dsa.h b/include/dsa.h
index 75a939f2cb..f428aa74a5 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -58,7 +58,7 @@ struct dsa_ops {
 };
 
 struct dsa_port {
-	struct device_d dev;
+	struct device_d *dev;
 	struct dsa_switch *ds;
 	unsigned int index;
 	struct eth_device edev;
-- 
2.30.2



