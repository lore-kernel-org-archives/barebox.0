Delivery-date: Mon, 27 May 2024 09:30:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUoH-000d2r-39
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 09:30:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBUoH-0008V8-Ec
	for lore@pengutronix.de; Mon, 27 May 2024 09:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pyH8G5uc/N6zxtlKSnWEkBAsDhqVt7UVN6KHifKqaJU=; b=WeLnuapYu4WNR6
	SYWBJzOADmShblfHpjM0FVUwB6Nut4FNogonIjQxWGRtWJDN8rPC6uVPSL3k7DAxJoXDoMMdlHlSA
	yMWeG+cjypnwlqCJV044x3kToFldfNCNwlnhbRyouB8TSNLXYN0FbVImwmVF+oihVtth9Cvi1NLO1
	MuTi1BJ4WabAJuFNh98P0GuL7u4Ct9jyDlh+NMA/MMXWz0WpfNaj0TRAm3DXP16CiceiFSQC3m+H1
	GColxVb9XUwcRXSourZFEyLiQVz9mkO+4vhrlGbDvVOHF+5M85MyHHakq9ZQIGQJMYac4gvtRjw+f
	hzRDsPt+65L/QQJflyDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUnt-0000000E4KD-1vbk;
	Mon, 27 May 2024 07:29:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUnq-0000000E4Il-2UmX
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 07:29:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBUnJ-00088M-6P; Mon, 27 May 2024 09:29:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBUnI-0039jR-Ic; Mon, 27 May 2024 09:29:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBUnI-00DY4f-1U;
	Mon, 27 May 2024 09:29:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 09:29:11 +0200
Message-Id: <20240527072915.3229221-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_002954_655607_B09FDFCA 
X-CRM114-Status: GOOD (  11.21  )
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
Subject: [PATCH 1/5] net: cs8900: simplify buffer read loop
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



