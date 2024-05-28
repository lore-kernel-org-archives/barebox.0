Delivery-date: Tue, 28 May 2024 16:24:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBxkW-000wHW-0M
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 16:24:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBxkV-0000Pa-JF
	for lore@pengutronix.de; Tue, 28 May 2024 16:24:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F1K5EVUlGvDPcyMi0hBJEKP2YL01//DfIwIjA1RFxts=; b=u1pRu9/Zd9rPE5aXL5na0izPwY
	eCdv0GiyHTURAwYr6XcF4fTVdBA3VIw3hUgt2BW8lmGPOWM39FI7x8hqIW4YcmUCXzpw91uOYaLKj
	VB81YR7bX21hiXOIupNGMMMb28l6WDf4IPmUlsWfpGdStvslDZqtTFCUdHmKlQYbBlpqdCBxvfR3/
	BqODIb1CCo3u9aYOmeRemdJy8CzFPkzbRheW3tVdnKcwIOsynv8Us/8eO8VNn/Vb5sXcLA7b+Ob6C
	EHJQR9YTCsILtJwAHQgIy4u1Tb4eYKlONof49QomfU/+PFqTY8jojv1Ycz53NM2hb+qkTdPWsUzLS
	GM72nXbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxjw-000000010GP-137h;
	Tue, 28 May 2024 14:23:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxjt-000000010Fa-1vLA
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 14:23:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBxjs-0000Ir-9I; Tue, 28 May 2024 16:23:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBxjr-003L7p-SX; Tue, 28 May 2024 16:23:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBxjr-002v8m-2U;
	Tue, 28 May 2024 16:23:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 16:23:42 +0200
Message-Id: <20240528142342.696115-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <D1LBBBUVTEKQ.21VMXYL98EK08@zdiv.net>
References: <D1LBBBUVTEKQ.21VMXYL98EK08@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_072345_518889_4AD6B2C1 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! net: smc911x: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

---
 drivers/net/smc911x.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index cb2e57da5e..8ae71ea81f 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -467,6 +467,8 @@ static void smc911x_eth_rx(struct eth_device *edev)
 		} else {
 			while (tmplen--)
 				*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
+
+			net_receive(edev, priv->rx_buf, pktlen);
 		}
 	}
 }
-- 
2.39.2



