Delivery-date: Tue, 10 May 2022 14:14:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOl8-008Hhx-UN
	for lore@lore.pengutronix.de; Tue, 10 May 2022 14:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOl7-0008W6-6u
	for lore@pengutronix.de; Tue, 10 May 2022 14:14:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KKaQqPZ6beb6CErTS0Or1MHBUjO18mjgJ7M+CQImcw=; b=mKa75dyCTxrNew
	HqJ39aFVjNjZ8rL3kWuYjwIuj1l65Rcc5g5aZZhSnP/fmj/PGLlfFTsmoLr/idcOGYk7wtruY/l0D
	J6APsQ4TopQujxLIzeDRVgbr3ah2NYJ3oFcgrk8heMcYadJZ1qT9p7U6bty+lQhQsF7nCpu5UBJCo
	xa7RwGRIt3jega8R1qe6ryeAmPQTqZ+qCdGaNdHQ7B7d/f8YnN7SCgdBO2eBhPSd3NY4YBqPgGq8h
	GIKaQIqAQy7Id8b5zVsKKhtpniMIjhZhzFSr4vh96udFGZpOzJBm6Ef/wJJyE74WlARBtBHfFQA+3
	bCF/PAFovjzS50IVCVlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noOjZ-001mXi-69; Tue, 10 May 2022 12:12:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noOjT-001mVp-As
 for barebox@lists.infradead.org; Tue, 10 May 2022 12:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1noOjO-0008IC-8j; Tue, 10 May 2022 14:12:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOjO-001TpW-59; Tue, 10 May 2022 14:12:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOjL-000uDl-TW; Tue, 10 May 2022 14:12:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 10 May 2022 14:12:42 +0200
Message-Id: <20220510121242.216065-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220510121242.216065-1-o.rempel@pengutronix.de>
References: <20220510121242.216065-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_051251_407009_01395A1A 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/2] phy: stm32-usphyc: Add dummy driver for child node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To satisfy deep probe mechanism

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/phy/phy-stm32-usbphyc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 4c1d7bfa48..2fa1f0fd01 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -423,10 +423,17 @@ static int stm32_usbphyc_probe(struct device_d *dev)
 
 	for_each_child_of_node(np, child) {
 		struct stm32_usbphyc_phy *usbphyc_phy;
+		struct device_d *phydev;
 		struct phy *phy;
 		u32 index;
 
-		phy = phy_create(dev, child, &stm32_usbphyc_phy_ops);
+		phydev = of_platform_device_create(child, dev);
+		if (!phydev)
+			continue;
+
+		of_platform_device_dummy_drv(phydev);
+
+		phy = phy_create(phydev, child, &stm32_usbphyc_phy_ops);
 		if (IS_ERR(phy)) {
 			ret = PTR_ERR(phy);
 			if (ret != -EPROBE_DEFER)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

