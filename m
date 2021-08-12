Delivery-date: Thu, 12 Aug 2021 14:22:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9jA-00011o-UL
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 14:22:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9j5-0000i2-9J
	for lore@pengutronix.de; Thu, 12 Aug 2021 14:22:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuDA8Xlax+xDHlkZRek16onI3VV7TLvQS6PGZ3s8aco=; b=fj4g2AT4y6gWmi
	DbmTmeElql81r5n5wguXBRVglL2QYw3MqUtVYFmHeG4G7IMUlsnAE+M0mt5PiHC2nJXsLYCvvxqUM
	ApPejWJpuG6eTJtQLHBeej2zT9vgL5tX/OZkJR3aXpXTL+HoyuUlppgwU5o8Ap8CjhoJ5eJBb/exW
	PSTR5csCCkveRnCIykQR6t7/zs8ZsLxuzXf+sLUoPCXhUK6ySo1K15aLxPBFO2MLg6chofSRscZ4C
	+lCmVG5MUJAwVy0YmqWObt/KK4s7Mh9NSAWX6CfZeIn9UIHhXqSBz8NRX0MiziXrfkjOcifp891VH
	XbB0sQUpYHkqJr1kUR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE9gt-009yrr-Kl; Thu, 12 Aug 2021 12:20:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE9go-009yr3-VQ
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 12:20:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-0008WV-Np; Thu, 12 Aug 2021 14:19:45 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-0001AR-Dv; Thu, 12 Aug 2021 14:19:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Aug 2021 14:19:41 +0200
Message-Id: <20210812121944.4419-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210812121944.4419-1-a.fatoum@pengutronix.de>
References: <20210812121944.4419-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_052003_058586_59B7C0B3 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] net: make ARC MAC driver 32-bit only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver assumes 32-bit pointers and only matches against 32-bit
rockchip device trees. Make this official in the kconfig, so it's
not selectable on 64 bit, where it would issue build warnings and
probably not work anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 4a290bebbd75..397164f3f175 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -28,7 +28,7 @@ config DRIVER_NET_AR231X
 
 config DRIVER_NET_ARC_EMAC
 	bool "ARC Ethernet MAC driver"
-	depends on HAS_DMA
+	depends on HAS_DMA && 32BIT
 	select PHYLIB
 	help
 	  This option enables support for the ARC EMAC ethernet
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

