Delivery-date: Mon, 26 Sep 2022 10:19:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL1-00F9j9-Pd
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjKz-0001eX-OC
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zu7/UoxmnjkGQ1H2MZhzQ6nbYEOQrJ+ceV6VhoaGc7Y=; b=sBR/ETaXqf4FFv5qN55TStX5Ds
	6AvU6ipzjpRPg+LdDPJyXsZ0ueehZ4YEMX24Mfl0V8jEhZHfwUV8oWgsdXVM9u/iWvWf0jK2c9/C0
	6xMzJ2GFvH+7NnuPBPi5OJVdpVqNRXTjW+wrgAWNEKG3sNry2PUSpVA1c407lLg8vAlJfnrgxfLp9
	Y4V9FfpS+7RZAruQ2OhhBEf0PBjwZqTayQ2UeGxenAxwWUQ5CMHMmq7lnPcbw1WYI3hS8+GdLmMTt
	HOs6iVUum3K00AYTOAjP9QpXn/pa8rJk1LcIGTYF7Yx7jhVyBVeF+mMTOqA+TJD33K6aXDwrWNrgH
	hbM/CoSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJQ-0034Hh-Nz; Mon, 26 Sep 2022 08:18:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347l-6n
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-0001Do-A0; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJC-002zkH-18; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2Y-5s; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:38 +0200
Message-Id: <20220926081740.76968-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_328213_9272B282 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 6/8] ARM: boards: Skov-i.MX6: select KSZ8873 switch driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The board code depends now on the switch driver probe functionality. If
this driver is not enabled, we will make wrong decision.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dcb70c8c1a..c78c950357 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -646,6 +646,8 @@ config MACH_SKOV_IMX6
 	select ARCH_IMX6
 	select ARM_USE_COMPRESSED_DTB
 	select MCI_IMX_ESDHC_PBL
+	select DSA
+	select DRIVER_NET_KSZ8873
 
 endif
 
-- 
2.30.2



