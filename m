Delivery-date: Mon, 19 Sep 2022 10:03:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkg-009OIA-6i
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkd-0000mM-H7
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eVsYnD3SqoOXCutGdvu9pxgyAFzyirDhTXSow9gDyM8=; b=VihA9YnUJKhmoOgXs4tKr2PRAZ
	34gmUzzYkOTe3/rCqM6fwcg/cjdamNlX8Z1+y5FCcUcVHPWroCKNfhfE+36qHLj7Pb7GNxu9Ax1vG
	Juxbj1swta/issq2lCpcE01r/BwA9Uht8Lsb84v3niBDRbGUHKZ796U8dawYGKkXkjTB9tJ1l3EVg
	rF5H/ZLxMvLyOB6V/dAQiqPkY2GWIMtOcX+pQW3poxH1S2CBXita/sePvwp8Z6TNlsN9LzsppHu+h
	0GoVm1uPnOvi7h5t2/P7XJXf/rnRNFRZls/Rx0EqM4vHcENm5dWl/XSfYMG5c4kNNMCSw3RFKZkKU
	j8Y0rWow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBjI-009gBk-3w; Mon, 19 Sep 2022 08:02:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fP6-6Z
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008Ld-Vu; Mon, 19 Sep 2022 10:01:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXn-Lm; Mon, 19 Sep 2022 10:01:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gfA-HC; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:31 +0200
Message-Id: <20220919080133.877651-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_340190_C2429B67 
X-CRM114-Status: GOOD (  12.41  )
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
Subject: [PATCH 7/9] net: smc911x: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 1edc16ce44..7fd5c2aadb 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -32,6 +32,8 @@ struct smc911x_priv {
 	unsigned int using_extphy;
 	unsigned int phy_mask;
 
+	void *rx_buf;
+
 	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
 	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
 };
@@ -447,7 +449,7 @@ static void smc911x_eth_halt(struct eth_device *edev)
 static int smc911x_eth_rx(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
-	u32 *data = (u32 *)NetRxPackets[0];
+	u32 *data = priv->rx_buf;
 	u32 pktlen, tmplen;
 	u32 status;
 
@@ -465,7 +467,7 @@ static int smc911x_eth_rx(struct eth_device *edev)
 			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
 				status);
 		else
-			net_receive(edev, NetRxPackets[0], pktlen);
+			net_receive(edev, priv->rx_buf, pktlen);
 	}
 
 	return 0;
@@ -608,6 +610,8 @@ static int smc911x_probe(struct device_d *dev)
 	dev_info(dev, "LAN911x identified, idrev: 0x%08X, generation: %d\n",
 		   val, priv->generation);
 
+	priv->rx_buf = xmalloc(PKTSIZE);
+
 	edev = &priv->edev;
 	edev->priv = priv;
 
-- 
2.30.2



