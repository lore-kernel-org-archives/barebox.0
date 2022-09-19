Delivery-date: Mon, 19 Sep 2022 10:03:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkT-009OFc-Af
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkR-0000YY-3o
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X92670YJOaaxxDqwNc4Zt9FFFeu9X6PXtL84oAFdfL8=; b=Xx9aZQ7jciP4Gdru9mL+08gslN
	BdYfbHE3+CmU4uFrXdu5UxonIIlY5cUHlzOzYlt3P461AcP3LfzTch4/lNcF+zY/13TsMAdzpU4BD
	EEmqtzbsg7Et1GhxNO2+KPM/vhEfzE+v2wTEfI7aOJkwCBa5LICvB/GyoW2NyjHe+Xlj/8j3HBJfv
	9LPIyLgSGgq9MbEvCHchCLLX+i9LSH0xoDmiO84QXPRdWBxXUMYs3nP/IM+sOKKEH1LsF/lDD3jX9
	//tADrUYjHmDpg4YgJ8GTZIY2JN6JoIKKLfKm/3PZXLNS7V+8B5CMkgIUQXltkLKbJpU8+eQeiSV3
	lw3dyShQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBiy-009faw-AA; Mon, 19 Sep 2022 08:01:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fOq-3r
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008L5-KY; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXV-8H; Mon, 19 Sep 2022 10:01:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gf4-G3; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:29 +0200
Message-Id: <20220919080133.877651-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_239344_296A1812 
X-CRM114-Status: GOOD (  12.39  )
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
Subject: [PATCH 5/9] net: efi-snp: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/efi-snp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 9cb7144187..d30da820a0 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -120,6 +120,7 @@ struct efi_snp_priv {
 	struct device_d *dev;
 	struct eth_device edev;
 	struct efi_simple_network *snp;
+	void *rx_buf;
 };
 
 static inline struct efi_snp_priv *to_priv(struct eth_device *edev)
@@ -163,7 +164,7 @@ static int efi_snp_eth_rx(struct eth_device *edev)
 	long bufsize = PKTSIZE;
 	efi_status_t efiret;
 
-	efiret = priv->snp->receive(priv->snp, NULL, &bufsize, NetRxPackets[0], NULL, NULL, NULL);
+	efiret = priv->snp->receive(priv->snp, NULL, &bufsize, priv->rx_buf, NULL, NULL, NULL);
 	if (efiret == EFI_NOT_READY)
 		return 0;
 
@@ -172,7 +173,7 @@ static int efi_snp_eth_rx(struct eth_device *edev)
 		return -efi_errno(efiret);
 	}
 
-	net_receive(edev, NetRxPackets[0], bufsize);
+	net_receive(edev, priv->rx_buf, bufsize);
 
 	return 0;
 }
@@ -285,6 +286,7 @@ static int efi_snp_probe(struct efi_device *efidev)
 	priv = xzalloc(sizeof(struct efi_snp_priv));
 	priv->snp = efidev->protocol;
 	priv->dev = &efidev->dev;
+	priv->rx_buf = xmalloc(PKTSIZE);
 
 	dev_dbg(&efidev->dev, "perm: %02x:%02x:%02x:%02x:%02x:%02x\n",
 			priv->snp->Mode->PermanentAddress.Addr[0],
-- 
2.30.2



