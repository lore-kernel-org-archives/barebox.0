Delivery-date: Tue, 28 May 2024 10:58:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfW-000sin-1T
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:58:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsfU-0001GU-Ox
	for lore@pengutronix.de; Tue, 28 May 2024 10:58:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTwskdlMvP1VAZRhbcD7HTDteMjgVhyNfNGLUC/kzxU=; b=JmGkRJfaNJNxUq
	8O/Qsnv5R8/2V3zZds2ArL6OHtI8KLqBpVBFCFwtXynfEbBmnSwdq+7HeO41Wx1/tVlTTbvs+GfhQ
	/xbrAenqNLxg2YmFDwQG/Aq5WpqhuGBejiJhJsa/SIB7ePK7gu9ZbRp+dc8cmcLiIKbt399M4EqVW
	BRayoBuM4Djn/09Q2pcr+8uIKHbJOgtP0l5Ow+toMwaBQnW8WtFi9mIr75PDTjdCXM2S2k455l0rp
	cZulEMTTtRuzd/b68NAqQVa6wipkD0oeLiG48QQCh5lQDjqTclG08pBlsWaA+hxigFn5dgO7jHI8k
	CIfwD0LD7q/Za0ZvO6qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBseu-0000000HYjY-0ZLs;
	Tue, 28 May 2024 08:58:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsep-0000000HYgw-3ica
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-0000qL-O5; Tue, 28 May 2024 10:58:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-003IsL-AJ; Tue, 28 May 2024 10:58:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBsem-004v4p-0g;
	Tue, 28 May 2024 10:58:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 10:58:01 +0200
Message-Id: <20240528085806.1172689-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528085806.1172689-1-s.hauer@pengutronix.de>
References: <20240528085806.1172689-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_015812_023256_48EAF6C5 
X-CRM114-Status: GOOD (  12.82  )
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
Subject: [PATCH v3 4/9] net: liteeth: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver already discards packets bigger than 2048 bytes, but that is
already larger than the buffer we read the data into. Limit packet size
to PKTSIZE instead which matches our receive buffer size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/liteeth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index 1781e26348..0d63e1da16 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -223,7 +223,7 @@ static int liteeth_eth_rx(struct eth_device *edev)
 	}
 
 	len = litex_read32(priv->base + LITEETH_WRITER_LENGTH);
-	if (len == 0 || len > 2048) {
+	if (len == 0 || len > PKTSIZE) {
 		len = 0;
 		dev_err(priv->dev, "%s: invalid len %d\n", __func__, len);
 		litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
-- 
2.39.2



