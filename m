Delivery-date: Mon, 27 May 2024 12:28:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaJ-000f03-0l
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 12:28:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaI-0005nJ-Ee
	for lore@pengutronix.de; Mon, 27 May 2024 12:28:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGXkR2c5Gj8NC5DbF3wI4bC0skUB7iAdye955pRp/T0=; b=FJMzMbepUO7HiP
	QEWZvYwKOCNenkWOMxwTNH/jgyXrHUraCrOj3ckDIbb7KVzGb+dGL3/rnshcbyMEKyDmOPyL9bp1Z
	vDkg4CXscZuBd+TWvgkSyMLTesR995dnXm0dcg1ocuncl+AnkW7nccH9k0aunOsx8KK+gTG0XoC2E
	w0Ge6SFDh9pOSoPQ+YcR/3bVLS6fQ2OkKSlllJmMuATkWpPgC4JW/f6pjnbstRWGWE3BAFutr8NK1
	iq0HPI6MqtUuttwKsnV0P7qTUxAXLA++wQ+F/z95l+twm6awbg30rZrZTo4TfFpyMdJZumMCJGxN9
	0BG4OoMAW1Qw6EmwxFqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZn-0000000EaB0-0yQX;
	Mon, 27 May 2024 10:27:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZe-0000000Ea6q-2MDr
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 10:27:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-0005RQ-Hf; Mon, 27 May 2024 12:27:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-003At0-3r; Mon, 27 May 2024 12:27:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-00Ejyk-02;
	Mon, 27 May 2024 12:27:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 12:27:21 +0200
Message-Id: <20240527102723.3504270-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240527102723.3504270-1-s.hauer@pengutronix.de>
References: <20240527102723.3504270-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_032726_698677_7578E8F0 
X-CRM114-Status: GOOD (  11.35  )
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
Subject: [PATCH v2 5/7] net: smc911x: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hardware may report a packet longer than our receive buffer. Instead
of reading past the read buffer, discard too long packets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 767d51761b..4b2bd79392 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -460,13 +460,18 @@ static int smc911x_eth_rx(struct eth_device *edev)
 		smc911x_reg_write(priv, RX_CFG, 0);
 
 		tmplen = (pktlen + 2 + 3) / 4;
-		while(tmplen--)
-			*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
+		if (tmplen <= PKTSIZE / sizeof(u32)) {
+			while (tmplen--)
+				*data++ = smc911x_reg_read(priv, RX_DATA_FIFO);
+		} else {
+			while (tmplen--)
+				smc911x_reg_read(priv, RX_DATA_FIFO);
+		}
 
 		if(status & RX_STS_ES)
 			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
 				status);
-		else
+		else if (tmplen <= PKTSIZE / sizeof(u32))
 			net_receive(edev, priv->rx_buf, pktlen);
 	}
 
-- 
2.39.2



