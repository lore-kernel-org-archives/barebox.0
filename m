Delivery-date: Mon, 07 Nov 2022 12:19:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os09b-000NE2-WF
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 12:19:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os09a-00068q-LM
	for lore@pengutronix.de; Mon, 07 Nov 2022 12:18:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YZq/lytFsHvdYEGkogCU1khAwzuonxRcwIB+14cU2zk=; b=qfDLNsW1x9Z0r3fyRU5BjoeMQt
	mMSVZDainTtqknJ9363Bx27R2oowuUuL4sr3GO6RT7+DDie5xB2nPT0NdBWHr7NxC3WXh+HpVzRVb
	OQ9oQkyNYqiINr8UKyFs3hqm+Fa1xdIhorrG/vRQOJapvwY1i/qaaPNtETOt+/LkSnGzUAFqhzWxS
	aEJLKlyOpQhjfLTye1+mt8bbak0UCHlS3cM5GdtQGw45UWbbGA5tFhxT46uk+Ydcc8trk1Cu829ff
	4pRs3T+EOSBnxCNwdWDe9SUAIvMdF+A4cqrjrqk73nS4jPYVNUxKE8ASNFacAHhTCUvfooTmMn6W0
	Px/8BDHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os08N-00E5G4-4V; Mon, 07 Nov 2022 11:17:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os07o-00E4xi-Ci
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 11:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1os07l-0005b9-G9; Mon, 07 Nov 2022 12:17:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1os07j-002qIJ-TR; Mon, 07 Nov 2022 12:17:04 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1os07i-00AmfY-VV; Mon, 07 Nov 2022 12:17:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  7 Nov 2022 12:16:55 +0100
Message-Id: <20221107111701.2570303-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107111701.2570303-1-o.rempel@pengutronix.de>
References: <20221107111701.2570303-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_031708_443244_1AD4658F 
X-CRM114-Status: GOOD (  10.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/8] net: usb: asix: add promisc mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add promisc mode configuration support

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/usb/asix.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 28a3534bcf..2d7114e5b1 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -427,6 +427,25 @@ static int asix_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 	return 0;
 }
 
+static int asix_set_promisc(struct eth_device *edev, bool enable)
+{
+	struct usbnet *dev = container_of(edev, struct usbnet, edev);
+	u16 rx_ctl;
+	int ret;
+
+	rx_ctl = asix_read_rx_ctl(dev);
+
+	if (enable)
+		rx_ctl |= AX_RX_CTL_PRO;
+	else
+		rx_ctl &= ~AX_RX_CTL_PRO;
+
+	if ((ret = asix_write_rx_ctl(dev, rx_ctl)) < 0)
+		return ret;
+
+	return 0;
+}
+
 static int ax88172_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
 	struct usbnet *udev = container_of(edev, struct usbnet, edev);
@@ -664,6 +683,7 @@ static int ax88772_bind(struct usbnet *dev)
 
 	dev->edev.get_ethaddr = asix_get_ethaddr;
 	dev->edev.set_ethaddr = asix_set_ethaddr;
+	dev->edev.set_promisc = asix_set_promisc;
 	asix_init_mii(dev);
 
 	if ((ret = asix_sw_reset(dev, AX_SWRESET_PRL)) < 0)
-- 
2.30.2



