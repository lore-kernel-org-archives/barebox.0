Delivery-date: Mon, 19 Sep 2022 10:03:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkV-009OG9-JL
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkT-0000Zc-7X
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hAURfsRTRTU/nWZKb24NnxbYh60vObKJX0+v4lD5E4s=; b=uDJnTJyuFDjROIU4wDMCMYG0f1
	KA+mnN2uKXut0ObEbhfLIi/e85bmw7oovCakkegogI3kZOpWk9MgVgYl6Tnk5vGZNDy04PVbHvn/g
	FUVys8sTGvfOxWDN0Ek1klD8Ke1wZybpWoOHru+btO9TLz6VllcTRb3/lUrEYgu2K7C/0f8RuYDZt
	ZRsI2oosTMIcUl16mdZtjh7BBDH3IZNLFmJowlYH9Z1ysWMkeyPPvDW8JNJBSOwsp3oRQABEFxQPf
	/rC+4U1TUjVv90D/xBOztix46sIQJewM8FbyDDc5HV58DZor6mmNjGTKu2yBhBSTmxeRDMDXhDDXs
	XrNFHQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBit-009fUk-2Y; Mon, 19 Sep 2022 08:01:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fOS-3o
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008L1-DN; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXR-3o; Mon, 19 Sep 2022 10:01:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003ges-Dd; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:25 +0200
Message-Id: <20220919080133.877651-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_196213_A4DEF86E 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] net: tap: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/tap.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 1fbfa085b1..8a659c125e 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -15,6 +15,7 @@
 struct tap_priv {
 	int fd;
 	char *name;
+	char *rx_buf;
 };
 
 static int tap_eth_send(struct eth_device *edev, void *packet, int length)
@@ -30,10 +31,10 @@ static int tap_eth_rx(struct eth_device *edev)
 	struct tap_priv *priv = edev->priv;
 	int length;
 
-	length = linux_read_nonblock(priv->fd, NetRxPackets[0], PKTSIZE);
+	length = linux_read_nonblock(priv->fd, priv->rx_buf, PKTSIZE);
 
 	if (length > 0)
-		net_receive(edev, NetRxPackets[0], length);
+		net_receive(edev, priv->rx_buf, length);
 
 	return 0;
 }
@@ -73,6 +74,8 @@ static int tap_probe(struct device_d *dev)
 		goto out;
 	}
 
+	priv->rx_buf = xmalloc(PKTSIZE);
+
 	edev = xzalloc(sizeof(struct eth_device));
 	edev->priv = priv;
 	edev->parent = dev;
-- 
2.30.2



