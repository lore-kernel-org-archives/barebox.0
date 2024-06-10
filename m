Delivery-date: Mon, 10 Jun 2024 09:51:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZor-003Zs0-16
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 09:51:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZoq-0003ae-Mc
	for lore@pengutronix.de; Mon, 10 Jun 2024 09:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9R+OoBMCxhZE8q9Thll/7vtliy1VuKaa8gpITNaXfk=; b=dj39GKRcEqBFx5Q6YeRxvJJucC
	LT2ymmdseipw68seUnQEDh8sJo8iYh4iCUOiCc6F/664E9FABoRq6PdCUL0fym0rG8tN0odPE2ezl
	pdCtD3R5/fBWp2xeUI1+htDTCQE/X1zU5JTIfnDHitlgWbXu5m6xxCzSlE+JeWm6zuankz/J8sDvy
	lOQMDLl1DHmTi9ewwYAbpoHC8MLy0qIAbMINAmajg4wJcpTqZKu19JhQPxTvOqiVAXzZrki1XM+I8
	8tGBRQ7MBdqhkFnpl8GUCSw00CuBtL+/Vb+lH4hUrzxdmLbN08U+uzP46dicjSuKpdPtmbrn1Z6Ha
	BeSXPbVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZoE-0000000482g-3in2;
	Mon, 10 Jun 2024 07:51:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZo6-0000000480F-38fK
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 07:51:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo3-0003Ji-3A; Mon, 10 Jun 2024 09:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-001Fei-Ft; Mon, 10 Jun 2024 09:51:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-003PNM-1F;
	Mon, 10 Jun 2024 09:51:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 09:51:01 +0200
Message-Id: <20240610075105.812496-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610075105.812496-1-s.hauer@pengutronix.de>
References: <20240610075105.812496-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_005110_837084_F116723D 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] net: virtio-net: allow to set current MAC address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently can't change the current MAC address when VIRTIO_F_VERSION_1
is set, which is always the case. The barebox ethernet code calls set_ethaddr
with this exact MAC address it has just read from the hardware. Just
return successfully when the core wants to set the MAC address we
already have.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/virtio.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index 8605f67ae2..1bc5e0cd90 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -135,29 +135,39 @@ static void virtio_net_stop(struct eth_device *dev)
 	 */
 }
 
+static int virtio_net_read_rom_hwaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct virtio_net_priv *priv = to_priv(edev);
+
+	virtio_cread_bytes(priv->vdev, offsetof(struct virtio_net_config, mac), adr, 6);
+
+	return 0;
+}
+
 static int virtio_net_write_hwaddr(struct eth_device *edev, const unsigned char *adr)
 {
 	struct virtio_net_priv *priv = to_priv(edev);
-	int i;
+	int i, ret;
 
 	/*
 	 * v1.0 compliant device's MAC address is set through control channel,
 	 * which we don't support for now.
 	 */
-	if (virtio_has_feature(priv->vdev, VIRTIO_F_VERSION_1))
-		return -ENOSYS;
-
-	for (i = 0; i < 6; i++)
-		virtio_cwrite8(priv->vdev, offsetof(struct virtio_net_config, mac) + i, adr[i]);
+	if (virtio_has_feature(priv->vdev, VIRTIO_F_VERSION_1)) {
+		char mac[6];
 
-	return 0;
-}
+		ret = virtio_net_read_rom_hwaddr(edev, mac);
+		if (ret)
+			return ret;
 
-static int virtio_net_read_rom_hwaddr(struct eth_device *edev, unsigned char *adr)
-{
-	struct virtio_net_priv *priv = to_priv(edev);
+		if (!memcmp(mac, adr, 5))
+			return 0;
+		else
+			return -ENOSYS;
+	}
 
-	virtio_cread_bytes(priv->vdev, offsetof(struct virtio_net_config, mac), adr, 6);
+	for (i = 0; i < 6; i++)
+		virtio_cwrite8(priv->vdev, offsetof(struct virtio_net_config, mac) + i, adr[i]);
 
 	return 0;
 }
-- 
2.39.2



