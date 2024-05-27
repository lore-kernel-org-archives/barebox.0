Delivery-date: Mon, 27 May 2024 12:28:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaH-000ezW-3A
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 12:28:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaG-0005ln-Id
	for lore@pengutronix.de; Mon, 27 May 2024 12:28:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyH8G5uc/N6zxtlKSnWEkBAsDhqVt7UVN6KHifKqaJU=; b=wr+zVZdsAZHFAi
	OTOs1wAkbFipjAZ98PtxTCAT1C3wvFUP2vTO2fOcjGisWrSjbbluyUlFTeDKOATiosJOe9+S5PRla
	yh5cSu8josPRsRe0bMJYkShipMt222EqLVTH5AWWjm00qdoGIaNkQm+H6Ymnh1vsMFNd4tvEj6alW
	g2qy+beYfNnEQyIuIQtAMb7pXIe1Y9fK0RK6dFc2zuETf+Mj99F8xcCoIPLQiud1DZr2otNeFZpoA
	U2lZxMpB1lEPCLOd1lxCC+Z2HfjIU0Q4AcqFt+A3FitBpBc387NRlMmoxsadZ0LZ5uJ5xFgp1i4Xn
	Evi161iRfz8BSWcKlTHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZj-0000000Ea9T-0faa;
	Mon, 27 May 2024 10:27:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZe-0000000Ea6n-2MW5
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 10:27:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-0005RG-As; Mon, 27 May 2024 12:27:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZb-003Aso-To; Mon, 27 May 2024 12:27:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZb-00Ejyk-2b;
	Mon, 27 May 2024 12:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 12:27:17 +0200
Message-Id: <20240527102723.3504270-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240527102723.3504270-1-s.hauer@pengutronix.de>
References: <20240527102723.3504270-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_032726_658119_3263DB05 
X-CRM114-Status: GOOD (  11.98  )
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
Subject: [PATCH v2 1/7] net: cs8900: simplify buffer read loop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of doing an extra read after the buffer read loop when the
packet length is odd, add another iteration to the loop if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cs8900.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 0dfd3f1303..afb0f3e26e 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -295,12 +295,9 @@ static int cs8900_recv(struct eth_device *dev)
 	status = readw(priv->regs + CS8900_RTDATA0);
 	len = readw(priv->regs + CS8900_RTDATA0);
 
-	for (addr = (u16 *)priv->rx_buf, i = len >> 1; i > 0; i--) {
+	for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
 		*addr++ = readw(priv->regs + CS8900_RTDATA0);
-	}
-	if (len & 1) {
-		*addr++ = readw(priv->regs + CS8900_RTDATA0);
-	}
+
 	net_receive(dev, priv->rx_buf, len);
 
 	return len;
-- 
2.39.2



