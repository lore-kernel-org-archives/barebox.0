Delivery-date: Thu, 16 Mar 2023 14:43:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnt6-002jHm-86
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 14:43:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnt6-0004vT-7g
	for lore@pengutronix.de; Thu, 16 Mar 2023 14:43:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=29a4WJZApisBMGvPwXvEMVHevm/XMTP9LjySmukr7TI=; b=r+gzFuRUvMvlsAFvqT82I7gEfQ
	4/AQJAmTnh/zGCBwdnqYZFZSke0hIjLoFxFiLir9+r6eFUXXplUUTyM7j30uHsEyyM6FLzu2o19BJ
	IwEsX6I5o6Xo3aZAYw4fhfnFOY5WUMfSfBDUvSwlIVBfs02tGs6BVAtakqz57nWxBafxjWrM7ZgRs
	O4HIUEthFVV8VPV0TCcrnvg3D+zvUceAqkUr9/9jHh4jsQug0rALctIj+c1nPuweIzMC3d9G7R7Fa
	l8auuhcSMCs8NUSo7YTRpV15qLwc5NT8Be0MRqFV7K81R6Lx1eBMnFLdKoCBTGT0HKIfKsK2etIpJ
	G2GvzOEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcns3-00GZHV-2U;
	Thu, 16 Mar 2023 13:42:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnrx-00GZFH-1x
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 13:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrw-0004cu-CY; Thu, 16 Mar 2023 14:42:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrv-004YsT-PD; Thu, 16 Mar 2023 14:42:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnru-00H4Uj-Vh; Thu, 16 Mar 2023 14:42:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 16 Mar 2023 14:42:09 +0100
Message-Id: <20230316134209.4068801-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230316134209.4068801-1-o.rempel@pengutronix.de>
References: <20230316134209.4068801-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_064213_644006_9A014F29 
X-CRM114-Status: GOOD (  10.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/3] net: dsa: sja1105: fall back to default speed configuration if no link was detected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rather than generating an error, revert to the default link
configuration. Some configuration is performed during the port pre-enable
sequence.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/sja1105.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index 693730f96c..328e5a6369 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -2778,8 +2778,7 @@ static void sja1105_adjust_link(struct eth_device *edev)
 		mac[port].speed =
 			priv->dcfg->port_speed[SJA1105_SPEED_10MBPS];
 	} else {
-		dev_err(priv->dev, "Invalid PHY speed %d on port %d\n",
-			phy->speed, port);
+		mac[port].speed = priv->dcfg->port_speed[SJA1105_SPEED_AUTO];
 		return;
 	}
 
-- 
2.30.2



