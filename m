Delivery-date: Tue, 28 May 2024 10:58:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfZ-000skl-2s
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfZ-0001Kb-8C
	for lore@pengutronix.de; Tue, 28 May 2024 10:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSadKUZji1ITqp8qQwdoi0konU+JSwcCXaZD8BevIQU=; b=NX6fwiJ1fusB3H
	rxCF2Q1t5PwrsN5zgUCPjTL8DH3xsSJ9bey4LuYTwFhvQStRJx1y8fcnBChr90BfXEjYWeSL/hLF5
	IkBJmIQvIR2F50Fe+NXHqgZIxj8My2MZP947zSMqTzN/DcLY0GY369+8SeV/amDWXBmVIVkd453Ki
	Q2yBvEX35V7l2Un7g8W4ezegZ2J6fX+Kmfe4MJdNlGiXXmQbL7jMikDRriwX/l/XM/o8UM4knM5+2
	oaXXJJjR5eok1YirHi1UzNinIfQUk7AKQ9YxM93A3y9H/VzeLfcZwuLO/lRiwFq4q9RzyjuhWg9b7
	f3eyo4es2ge1ipLtoXDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsf3-0000000HYoc-2pVm;
	Tue, 28 May 2024 08:58:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsew-0000000HYjz-0HsX
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-0000qO-Tl; Tue, 28 May 2024 10:58:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-003IsU-Fp; Tue, 28 May 2024 10:58:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-004v4p-1D;
	Tue, 28 May 2024 10:58:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 10:58:04 +0200
Message-Id: <20240528085806.1172689-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528085806.1172689-1-s.hauer@pengutronix.de>
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_015818_130967_0C500C55 
X-CRM114-Status: GOOD (  11.71  )
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
Cc: jianqiang wang <wjq.sec@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 7/9] net: smc911x: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hardware may report a packet longer than our receive buffer. Instead
of reading past the read buffer, discard too long packets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 1fca58ab84..8a0fa5cc25 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -460,14 +460,14 @@ static int smc911x_eth_rx(struct eth_device *edev)
 		smc911x_reg_write(priv, RX_CFG, 0);
 
 		tmplen = (pktlen + 3) / 4;
-		while(tmplen--)
-			*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
-
-		if(status & RX_STS_ES)
-			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
-				status);
-		else
-			net_receive(edev, priv->rx_buf, pktlen);
+
+		if (pktlen > PKTSIZE || (status & RX_STS_ES)) {
+			while (tmplen--)
+				smc911x_reg_read(priv, RX_DATA_FIFO);
+		} else {
+			while (tmplen--)
+				*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
+		}
 	}
 
 	return 0;
-- 
2.39.2



