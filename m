Delivery-date: Sat, 22 Jun 2024 19:49:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sL4rR-00ATzz-26
	for lore@lore.pengutronix.de;
	Sat, 22 Jun 2024 19:49:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sL4rR-0006HM-2X
	for lore@pengutronix.de; Sat, 22 Jun 2024 19:49:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sVFMHWkVs5EVWDGKt599LerybHG28bl0sCT/ih3vAHo=; b=5GyAsy1AihyLW69PeKZQ/STYU8
	3zuyxUbrAhmppDKZ0sakmjzEvt9L30VhkZFotJWi3HX+6UvKEWuzVbsoTz53HFUreLLkJnQtxUwqs
	ta5AzZi8cASQlW95SPgqJBXoIKDGFegrQNcC3G/Gp2bYqJqGD3jncQoj3h2G2jNJ1m9LEe+PBR9MB
	FrJcg0T1LTQKPtaQQfO2Kx1CPI+Jx8i/9dnRBCLTrOdytcvwtCdeIGglGo2rXwpLibZjF94RBOEoz
	UFxtJSDXg+70ys8xq/pSULb/uRLZ3q7y45TuEj5/olFBOxAJo1u8jne0j5eJCTq+EJaQMpDZieKbr
	/67sLakg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL4qe-0000000CXdp-1i3W;
	Sat, 22 Jun 2024 17:48:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL4qa-0000000CXck-13JG
	for barebox@lists.infradead.org;
	Sat, 22 Jun 2024 17:48:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sL4qW-0006BM-Uc; Sat, 22 Jun 2024 19:48:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sL4qW-004E9e-IO; Sat, 22 Jun 2024 19:48:16 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sL4qW-00D8VB-1h;
	Sat, 22 Jun 2024 19:48:16 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 22 Jun 2024 19:48:14 +0200
Message-Id: <20240622174815.3130885-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_104820_311065_84F9F036 
X-CRM114-Status: GOOD (  11.70  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] spi: atmel_spi: Fix GPIO-based chip select handling to support multiple valid entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Current implementation of GPIO-based chip select configuration in this
driver only considers the first valid GPIO and ignores
subsequent entries. This patch ensures that all valid GPIO entries are
processed correctly, enabling configurations with multiple valid and
invalid entries.

Specifically, this change addresses the issue where configurations like
`cs-gpios = <&pioC 25 0>, <0>, <0>, <&pioC 28 0>;` are not handled
correctly, leading to the last valid GPIO being ignored.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/spi/atmel_spi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 90f655dc3e..4adad241b4 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -414,11 +414,7 @@ static int atmel_spi_probe(struct device *dev)
 		for (i = 0; i < master->num_chipselect; i++) {
 			as->cs_pins[i] = of_get_named_gpio(node, "cs-gpios", i);
 
-			if (!gpio_is_valid(as->cs_pins[i]))
-			    break;
 		}
-
-		master->num_chipselect = i;
 	}
 
 	as->clk = clk_get(dev, "spi_clk");
@@ -438,9 +434,10 @@ static int atmel_spi_probe(struct device *dev)
 	atmel_get_caps(as);
 
 	for (i = 0; i < master->num_chipselect; i++) {
-		ret = gpio_request(as->cs_pins[i], dev_name(dev));
-		if (ret)
-			goto out_gpio;
+		if (gpio_is_valid(as->cs_pins[i]))
+			ret = gpio_request(as->cs_pins[i], dev_name(dev));
+			if (ret)
+				goto out_gpio;
 	}
 
 	/* Initialize the hardware */
-- 
2.39.2



