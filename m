Delivery-date: Mon, 27 May 2024 09:30:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUoA-000d2T-1K
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 09:30:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUo9-0008SZ-2K
	for lore@pengutronix.de; Mon, 27 May 2024 09:30:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTwskdlMvP1VAZRhbcD7HTDteMjgVhyNfNGLUC/kzxU=; b=ZKL54nT0id0RrF
	0Ao2/mwUfV7+6YJTtC3eNC+Rrmdii5Brx/HmJH8fYWh7W0EGcaOawtXUZzjDyR1ssventb5CQO3tt
	zkylXO7flpuJVpAgJpny0PHYRdIAnwKpRD4lnuWEkrEf10QjNw47eHmOvOuQfMp7M9BwaXD2HUgrO
	b6DGmNDRR+/8uo/6CxVrd1XERmC135fLZ8LrwFg/xbvJBaXyPQEil3D7PAR0fCaCMnHHw9ANMdDW/
	jxIBLzhcK/51Y8JkVOPlUzxUk7Pmi2aWGUYT6sLb+fUwD0N1YkLLWEqe9lMq66xbfDhWQKr8bGtrA
	4zKPz/Pes7SbVGFucUyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUnl-0000000E4Gy-3qdp;
	Mon, 27 May 2024 07:29:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUni-0000000E4Fo-1X6r
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 07:29:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBUnJ-00088P-6P; Mon, 27 May 2024 09:29:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBUnI-0039jY-NC; Mon, 27 May 2024 09:29:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBUnI-00DY4f-1x;
	Mon, 27 May 2024 09:29:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 09:29:14 +0200
Message-Id: <20240527072915.3229221-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240527072915.3229221-1-s.hauer@pengutronix.de>
References: <20240527072915.3229221-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_002946_437032_B2396688 
X-CRM114-Status: GOOD (  12.74  )
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
Subject: [PATCH 4/5] net: liteeth: do not read past the receive buffer
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



