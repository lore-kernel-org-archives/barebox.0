Delivery-date: Tue, 28 May 2024 10:58:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfU-000shu-1r
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:58:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfT-0001FX-SF
	for lore@pengutronix.de; Tue, 28 May 2024 10:58:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTlw/dkmsNeuCf5vmj7JuDD1dk3cIYWP2xG7yVeLg+4=; b=a4aJLXFBvEge8f
	OWF7dXnBTmHzdb4yT4Tved671FsMMK5t06c8L2fe0LlSD6L3XcjkHFccmgSwyhnfqXYsw1MlX3X3e
	AfJ5PPv1pBFW0fhWOFUV51Yv8LJe5DpNkmBCuJ3OkbgQdy5B3KqrrC2Tg7TPO8dbKoOMwEOBXHyc7
	Y+HIM7UGbm/M+Veyu3NHE00GMiOtXKp+04knt4GTxJSgzxIK4DUxgvXnIdHtcX8ocoZr2ASySiF/p
	B/MIF8G7WLU73nbQg8jOejSBvJaOEv6JWEbxaeDfZjao7kQzA/5Zc3/VMW5UQqvsynI9c7jivlaf0
	Sec0uKnkChf0bGq9TkSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsf2-0000000HYny-2gwd;
	Tue, 28 May 2024 08:58:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsev-0000000HYjv-3niv
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-0000qI-O8; Tue, 28 May 2024 10:58:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-003IsF-7A; Tue, 28 May 2024 10:58:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-004v4p-0M;
	Tue, 28 May 2024 10:58:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 10:57:59 +0200
Message-Id: <20240528085806.1172689-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528085806.1172689-1-s.hauer@pengutronix.de>
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_015818_029323_54221457 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: [PATCH v3 2/9] net: cs8900: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

the hardware may report a packet longer than our receive buffer. Instead
of reading past the read buffer, discard too long packets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cs8900.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index afb0f3e26e..bce26d4def 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -295,10 +295,14 @@ static int cs8900_recv(struct eth_device *dev)
 	status = readw(priv->regs + CS8900_RTDATA0);
 	len = readw(priv->regs + CS8900_RTDATA0);
 
-	for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
-		*addr++ = readw(priv->regs + CS8900_RTDATA0);
-
-	net_receive(dev, priv->rx_buf, len);
+	if (len <= PKTSIZE) {
+		for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
+			*addr++ = readw(priv->regs + CS8900_RTDATA0);
+		net_receive(dev, priv->rx_buf, len);
+	} else {
+		for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
+			(void)readw(priv->regs + CS8900_RTDATA0);
+	}
 
 	return len;
 }
-- 
2.39.2



