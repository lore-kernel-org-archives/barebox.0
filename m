Delivery-date: Mon, 19 Sep 2022 10:03:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkV-009OGI-Pu
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkT-0000a3-Nc
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/nk2i4t56g1wV+lKsSw6bSYvjIPKJ5EingtxIN//U5c=; b=M9Ll/TL1kinYXugLXQSfjIWt+Q
	V6+BbygdiuU8AZXC8Hf/TPQceXdjd9UPhbIuNX/gNo+bvtcV7nOUD4GZ6bkFfDmYGco9MGLDtR7dg
	k1noPSgHXOmWLJYLqUXpv/b+y4ztDA0Yn5SH0CPnO6/NRwzVaqvqjX0uYfxUgwB6Jx1EhBCUZTnZs
	kvrLgY4OiY68WkQm/VFd1z8AcejWkgxO4AKqgAI8mnzfrfjIG0d7Q5Z79nD1g+4GwkgwnoaFfZiww
	qKBmjvpq4cf+cOQv/Rurf3mUtnMaEdoFlDZa1gaZBo9IPn1BWiTCZFQZweaoXm2EhLdbKuPHKMYBq
	rUOYtOyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBjE-009g5j-4X; Mon, 19 Sep 2022 08:02:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fP1-3t
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008L6-Md; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXa-AM; Mon, 19 Sep 2022 10:01:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gey-Eq; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:27 +0200
Message-Id: <20220919080133.877651-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_357149_718C92A5 
X-CRM114-Status: GOOD (  13.16  )
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
Subject: [PATCH 3/9] net: cs8900: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cs8900.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 75bbbd79e1..16e1d498c7 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -180,6 +180,7 @@ struct cs8900_priv {
 	void *regs;
 	struct cs89x0_product *product;
 	struct cs89x0_chip *chip;
+	void *rx_buf;
 };
 
 /* Read a 16-bit value from PacketPage Memory using I/O Space operation */
@@ -294,13 +295,13 @@ static int cs8900_recv(struct eth_device *dev)
 	status = readw(priv->regs + CS8900_RTDATA0);
 	len = readw(priv->regs + CS8900_RTDATA0);
 
-	for (addr = (u16 *) NetRxPackets[0], i = len >> 1; i > 0; i--) {
+	for (addr = (u16 *)priv->rx_buf, i = len >> 1; i > 0; i--) {
 		*addr++ = readw(priv->regs + CS8900_RTDATA0);
 	}
 	if (len & 1) {
 		*addr++ = readw(priv->regs + CS8900_RTDATA0);
 	}
-	net_receive(dev, NetRxPackets[0], len);
+	net_receive(dev, priv->rx_buf, len);
 
 	return len;
 }
@@ -442,6 +443,8 @@ static int cs8900_probe(struct device_d *dev)
 		return -1;
 	}
 
+	priv->rx_buf = xmalloc(PKTSIZE);
+
 	edev = (struct eth_device *)xmalloc(sizeof(struct eth_device));
 	edev->priv = priv;
 
-- 
2.30.2



