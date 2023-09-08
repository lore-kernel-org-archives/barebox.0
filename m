Delivery-date: Fri, 08 Sep 2023 15:12:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebI0-008GLD-QI
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 15:12:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebHy-0007fz-Ox
	for lore@pengutronix.de; Fri, 08 Sep 2023 15:12:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdk5ctuDlA7RY9PzNWcMPuMBwzP6S37Jk/Kncyok0YU=; b=A2yjm4csrv4lVw
	S5rG+ALojs0Q93THiEB9jqkgRZxR60A+Ge93EzFVA4bfbtHaavMgjMGbswBanmPsvarM+0pxbcd1O
	w/JtVH0Dq2p5yJcIOHXNvX3CAdTRPdJabUs3Ri3CyhBxm4W4iBg1qYqUHt/UX4VVJbZH2FQ1K9Ecq
	BPy+WmQFL/VrqgjBnD5udLyI87WZynhYvvouQe7/WboA2PwEOHdHBu4fsB6emG0p1ppeml4SzErKb
	2WvHAjiWnPC82cX92o4zAUXedZoWpTqUeYOkWpR0uXPiySdU8cg/SoyvhPvJ04ikrxFmHuKv8VAT6
	qdP9U/zOYVoRh0MVQoXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qebGs-00Dp2U-2x;
	Fri, 08 Sep 2023 13:11:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qebGo-00Dp0L-0t
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 13:11:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qebGm-0007Gr-U9; Fri, 08 Sep 2023 15:11:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qebGm-004tJ6-GA; Fri, 08 Sep 2023 15:11:32 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qebGl-007QS4-CS; Fri, 08 Sep 2023 15:11:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  8 Sep 2023 15:11:17 +0200
Message-Id: <20230908131117.1769957-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230908131117.1769957-1-s.hauer@pengutronix.de>
References: <20230908131117.1769957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_061134_316674_1285FE74 
X-CRM114-Status: GOOD (  10.62  )
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
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] net: ksz9477: Add mdio bus slice dependency to i2c/spi device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On mdio busses the attached phys check for link status in a poller.
Add a slice dependency from the mdio bus to the I2C/SPI controller
so that we do not end up doing bus accesses while we are in a
I2C/SPI access on the same bus already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ksz9477.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 9665e0f723..1abea9d040 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -464,6 +464,13 @@ static int microchip_switch_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	if (priv->i2c)
+		slice_depends_on(mdiobus_slice(ds->slave_mii_bus),
+				 i2c_client_slice(priv->i2c));
+	else
+		slice_depends_on(mdiobus_slice(ds->slave_mii_bus),
+				 spi_device_slice(priv->spi));
+
 	return regmap_multi_register_cdev(priv->regmap[0], priv->regmap[1],
 					  priv->regmap[2], NULL);
 }
-- 
2.39.2



