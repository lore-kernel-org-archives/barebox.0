Delivery-date: Thu, 12 Jun 2025 08:59:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbu7-006QJq-2l
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 08:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbu6-0007Wh-TF
	for lore@pengutronix.de; Thu, 12 Jun 2025 08:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vHta00w/HLGN1TYQaO8NYmEwH3gmiCpb2A/+DznWuW4=; b=xAMwiy8cBXe96gIOo2OvcPoPot
	TfPrwjItiRrT49vbWj9cfIjfdttvonsiePFGUb7QLoLuimOwc3AFzS+JUwyg49+9mN8BOijvwCS1A
	0Iw1GzfmWT2KIg8GbUvx11p0Who0eTuOZLC6jaGVB+okUKb4tuWj9jzsp/vatHY6yED4mQDx/JuzZ
	gpTnBgY+yG6DTSLesBw+Qyrvu1sAndqNUuBkLzjflpCOIJeNgPV+IzRM9pOBttGWiVYWGkLq9u4JM
	ZHPesIUq57yOIEFYTEdOc89TP0R9BZuuD1mnFi5A9yDSDyHy+9C2fuh7e6MB2NyJFBC9li7pVUZEE
	f4wroTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtE-0000000CNC4-2NsL;
	Thu, 12 Jun 2025 06:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtA-0000000CN8Q-0V5P
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 06:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt8-0006sr-8e; Thu, 12 Jun 2025 08:58:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-0034nY-31;
	Thu, 12 Jun 2025 08:58:13 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-008UzS-2k;
	Thu, 12 Jun 2025 08:58:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 12 Jun 2025 08:58:10 +0200
Message-Id: <20250612065812.2025665-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612065812.2025665-1-o.rempel@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_235816_201627_E9535894 
X-CRM114-Status: GOOD (  10.93  )
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
Subject: [PATCH v3 7/9] nvmem: rmem: ensure unique device name per instance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without a unique name, the nvmem framework creates identical character
device names for all instances, preventing creation of additional
devices.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v3:
- fix types in the commit message
---
 drivers/nvmem/rmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index fd742b69861b..378a93110d3f 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -118,7 +118,7 @@ static int rmem_probe(struct device *dev)
 
 	config.dev = priv->dev = dev;
 	config.priv = priv;
-	config.name = "rmem";
+	config.name = dev_name(dev);
 	config.size = resource_size(mem);
 	priv->size = config.size;
 
-- 
2.39.5



