Delivery-date: Mon, 08 Nov 2021 08:54:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTi-0005rt-0M
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTf-0004Ah-Df
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Jb7o1FY6GEs16ZcebSnILTUWsWKj5PrJq0PBkftxPQ=; b=sF3hs4M53L3TXh
	1PV9U9fiE4oZVDPq9qqZm0zcyaF67x97QQO6I5q32q8vkZEwP71u89e4oyiHrimLhF8O+gryoKlLk
	durR52nQeVLMO+32hRcamjyLH55z2/mu+svI4b72i4Clg5a44/ivjodAidawAkdv8ITGwcGqTOBKq
	Pca4+hsU7SJy54KvZ/BGLxpPsdwzn/ywPuxy/0SFP9KmxGDfDUhWArZ6c5AI86weG4z+ICcw3QGDm
	gCl5AhDI7xOpay73IlyaxSgjln3033c4nrUgTH9kDupvj1qBb0TTGops7dNAr0wwU/UKdt8h79Ti/
	UIvJeZSyxEuc7cPMZLeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzSO-00Fdl0-Rs; Mon, 08 Nov 2021 07:52:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzS4-00FdcQ-R0
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003km-Iq; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009vih-SI; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:04 +0100
Message-Id: <20211108075209.2366770-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235224_906009_29D19ABF 
X-CRM114-Status: GOOD (  10.80  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] ARM: Rockchip: rk3568: make rk3568_lowlevel_init void
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The lowlevel_init can't fail and there's no sane way to deal with an
error that early anyway, so make return type void.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/include/mach/rockchip.h | 2 +-
 arch/arm/mach-rockchip/rk3568.c                | 4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
index 722b73d6f88f..269d113bc39f 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip.h
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -28,6 +28,6 @@ static inline int rk3568_init(void)
 }
 #endif
 
-int rk3568_lowlevel_init(void);
+void rk3568_lowlevel_init(void);
 
 #endif /* __MACH_ROCKCHIP_H */
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 4e6d3eef8802..234c6d22d171 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -90,7 +90,7 @@ static void qos_priority_init(void)
 	writel(0x303, EBC_PRIORITY_REG);
 }
 
-int rk3568_lowlevel_init(void)
+void rk3568_lowlevel_init(void)
 {
 	/*
 	 * When perform idle operation, corresponding clock can
@@ -135,8 +135,6 @@ int rk3568_lowlevel_init(void)
 	writel(0x01ff01d1, USBPHY_U2_GRF_CON1);
 
 	qos_priority_init();
-
-	return 0;
 }
 
 struct rk_bootsource {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

