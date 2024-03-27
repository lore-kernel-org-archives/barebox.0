Delivery-date: Wed, 27 Mar 2024 17:56:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpWa8-007RuH-1F
	for lore@lore.pengutronix.de;
	Wed, 27 Mar 2024 17:56:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rpWa7-0004W6-RD
	for lore@pengutronix.de; Wed, 27 Mar 2024 17:56:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GaeVNuNtK3FgHf/jO80cAcdMb84cSfbTizge1qQomno=; b=F3G9vF4wReh5eWZDp2YlfyZQG+
	4PLJcGPaMy6L57xIdVw3RXvmvtIoJ5qFQFJsE+Dy0j2WNFseQpHQfhVZWaZumNhffPC7aZvp4+g2j
	EGtfRjoxvs2vAjLTvBr5/Bo6mvUpJM394ILreEUnjCR7y0aWoDrZlmIo8Pc/Xy4NigHn6qT//p/Qw
	9z/0v7whYOvKOKIkhM8ld2R7m/No8BwiXyujZfhuZbf2ajzeZFoLoc4EomSbFVLXfRGZ5vRoI28tR
	jUs7syk9xasxp0fcrlvYxW1PO2NKzJlrqxStQw6qVc3jhLAOTn0ypEchcXb4kvw7xSpI5mbumdYVa
	EhIU6ybQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpWZJ-0000000AAOu-3dER;
	Wed, 27 Mar 2024 16:56:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpWZF-0000000AALZ-2yrf
	for barebox@lists.infradead.org;
	Wed, 27 Mar 2024 16:56:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rpWZ8-0002pP-I2
	for barebox@lists.infradead.org; Wed, 27 Mar 2024 17:55:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rpWZ8-008qNp-5D
	for barebox@lists.infradead.org; Wed, 27 Mar 2024 17:55:54 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 27 Mar 2024 17:55:54 +0100
Message-Id: <20240327165554.894805-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_095601_792756_E746A388 
X-CRM114-Status: GOOD (  11.73  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: onboard-hub: bail out if peer hub is already probed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Many physical hub chips include multiple logical hubs to handle both
USB and 2 and 3. Both logical hubs will then match the onboard hub
driver, which means we'll end up with two driver instances trying to
control the reset GPIO that is only present once on the physical chip.

As this doesn't make sense, just bail out of the probe function when
the peer-hub is already probed and can be assumed to handle power,
clocks and reset resources of the chip.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/misc/onboard_usb_hub.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
index 6339a3e4ec18..9e94caaa8456 100644
--- a/drivers/usb/misc/onboard_usb_hub.c
+++ b/drivers/usb/misc/onboard_usb_hub.c
@@ -53,8 +53,17 @@ static int onboard_hub_power_on(struct onboard_hub *hub)
 
 static int onboard_hub_probe(struct device *dev)
 {
+	struct device_node *peer_node;
+	struct device *peer_dev;
 	struct onboard_hub *hub;
 
+	peer_node = of_parse_phandle(dev->of_node, "peer-hub", 0);
+	if (peer_node) {
+		peer_dev = of_find_device_by_node(peer_node);
+		if (peer_dev && peer_dev->priv)
+			return 0;
+	}
+
 	hub = xzalloc(sizeof(*hub));
 
 	hub->pdata = device_get_match_data(dev);
@@ -71,6 +80,7 @@ static int onboard_hub_probe(struct device *dev)
 				     "failed to get reset GPIO\n");
 
 	hub->dev = dev;
+	dev->priv = hub;
 
 	return onboard_hub_power_on(hub);
 }
-- 
2.44.0



