Delivery-date: Mon, 19 Sep 2022 10:03:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkH-009ODK-3D
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkF-0000TS-FY
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J9UTDSjlkqFG03uMbQM1Ic02M2gkMzjvDmsmzmhSWlU=; b=QaebBbA+jSuOu3iiXLFS+65M93
	XXGofqpYt5QnDBm7Q18y+Vf7iviIvjDFvmMX3OGFdedvlz7pQHxxOX5Ape8Hrz61vLga1XP9DQmHv
	CurGlKZ67nPoiPgU4IkVShcINgGlLLNgjllSxmpdi8cpjacTSNB4ePkYnnX9yhNqsd2PmhUSb5vwJ
	9i1ir33Vxmo5uvN7Nujefk7+54YtbFksF/YwofK0KR18PK9OcxpxCdda1qhiqxJSGNPiAFz3k0O64
	fNnOAiStEpw3KX/8tnzGSCJ4gxyUwY4RBoSr3B6nwos6E7z6m2Btux7dQtwQLEINWTPe6Stj+sJCr
	63Xa+57g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBiv-009fY5-FP; Mon, 19 Sep 2022 08:01:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fP5-6C
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008Lc-VA; Mon, 19 Sep 2022 10:01:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXj-KT; Mon, 19 Sep 2022 10:01:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gf1-FV; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:28 +0200
Message-Id: <20220919080133.877651-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_327862_A6FFE1BD 
X-CRM114-Status: GOOD (  12.31  )
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
Subject: [PATCH 4/9] net: liteeth: Do not use NetRxPackets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/liteeth.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index 771f57eead..547f5486ae 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -73,6 +73,8 @@ struct liteeth {
 	int rx_slot;
 	int num_rx_slots;
 	void __iomem *rx_base;
+
+	void *rx_buf;
 };
 
 static inline void litex_write8(void __iomem *addr, u8 val)
@@ -230,9 +232,9 @@ static int liteeth_eth_rx(struct eth_device *edev)
 
 	rx_slot = litex_read8(priv->base + LITEETH_WRITER_SLOT);
 
-	memcpy(NetRxPackets[0], priv->rx_base + rx_slot * LITEETH_BUFFER_SIZE, len);
+	memcpy(priv->rx_buf, priv->rx_base + rx_slot * LITEETH_BUFFER_SIZE, len);
 
-	net_receive(edev, NetRxPackets[0], len);
+	net_receive(edev, priv->rx_buf, len);
 
 	litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
 
@@ -323,6 +325,8 @@ static int liteeth_probe(struct device_d *dev)
 	priv->tx_base = buf_base + priv->num_rx_slots * LITEETH_BUFFER_SIZE;
 	priv->tx_slot = 0;
 
+	priv->rx_buf = xmalloc(PKTSIZE);
+
 	edev->init = liteeth_init_dev;
 	edev->open = liteeth_eth_open;
 	edev->send = liteeth_eth_send;
-- 
2.30.2



