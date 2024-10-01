Delivery-date: Tue, 01 Oct 2024 21:26:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sviVg-00550p-07
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 21:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sviVg-00029O-HS
	for lore@pengutronix.de; Tue, 01 Oct 2024 21:26:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yax9Xy4PIhzupU6Onyd5zjel8Ao8VUdC5FVy/+wWjzs=; b=oJh2dzn2K4nxyd/3nm6Zppk9Kk
	2vJZHRVFAg9inDaVz1nrDRDAI5cRNftx9nvZzgL42Z8eeVWHlZJF0wbZRKoSp2t8dhmWmdkJeyC3O
	pVYxHgH9uQNo6/qDkvO/STTy9AEzA2PelW/tyuyKwoKDv2iUB7hopSgXka71FH///OXnXoBvnkwiX
	Qzf32QIFpzLXjQo1/fw5f7slwoJdwg/2tZVH8tN19cNzlPaaAMHXpNqpy5tDEJhsmCNnks3y/ITdx
	MRsYaK+rvEucd1WQ4OKULHzbEr3ob+A2QFLOTD/wWMdk3Xr9VWI9qEkxbxjGtV0wIL2ULsauS1BF3
	Zttyy6KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sviV0-00000003sxd-2lHL;
	Tue, 01 Oct 2024 19:25:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sviPi-00000003sHh-12Wm
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 19:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sviPf-0006T8-0A; Tue, 01 Oct 2024 21:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sviPe-002wSy-Jz; Tue, 01 Oct 2024 21:19:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sviPe-00BbVK-1g;
	Tue, 01 Oct 2024 21:19:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Oct 2024 21:19:56 +0200
Message-Id: <20241001191956.2765504-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_122002_351969_A269B464 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: mipi-dbi: reword Kconfig prompt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't (yet? ;) have a Direct Rendering Manager subsystem as in Linux,
so let's rename the option to avoid confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index b23ddfdb1e50..60adc7f30ec3 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -196,7 +196,7 @@ config DRIVER_VIDEO_PANEL_SITRONIX_ST7789V
 	  ST7789V controller for 240x320 LCD panels
 
 config DRIVER_VIDEO_PANEL_MIPI_DBI
-	tristate "DRM support for MIPI DBI compatible panels"
+	tristate "MIPI DBI compatible panels"
 	depends on OFTREE && SPI
 	select DRIVER_VIDEO_MIPI_DBI
 	select FIRMWARE
-- 
2.39.5



