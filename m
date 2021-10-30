Delivery-date: Sat, 30 Oct 2021 19:59:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsdl-0001BH-Gv
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:59:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsdk-0002R9-IA
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:59:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DgQhs8Y/jAzy4vGGHyNjocSGIGZA5zk1r3WQ9rd1LA=; b=2fSVtHWSxIag44
	XG6Sioio7dX0ODE2BqxMLLTc9+IqBd3wlXJVEI1wCOwM99nHgm0ok3nWoAxt8PSJbw2I7Ed0QzcIO
	xb3yEVav1/sTu8yC7Aw/krNwv0My+RNX0Z0FWFNpnsBdGE1lS9Zc8znAm7zvuSk4NlzFpT6sXV6b8
	3Yue5JdFi3qv4ecI77tuhvRa07KFCR0IIA0KO71nxPTNjndB96YYKRSQRnjyiMqqytGmT+zQk7MVB
	p2tl4gwCjFjVD22hQ1L8QpuyBs6lDnMWTy+Ti4dV7hx3GYJxf56KW4p5NFLBPn1aC6f/RSgpXHM03
	E3hhTcP9nMBZuPmBvE4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsca-00DNHK-5D; Sat, 30 Oct 2021 17:58:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgscR-00DNDx-7v
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:58:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscP-00020T-Sx; Sat, 30 Oct 2021 19:58:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscP-009YIH-6b; Sat, 30 Oct 2021 19:58:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:58:04 +0200
Message-Id: <20211030175812.2276705-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
References: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105815_300182_10B6A766 
X-CRM114-Status: UNSURE (   9.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: Rockchip: move ARCH_RK3568_OPTEE into ARCH_ROCKCHIP
 menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, it's selectable for others as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 2786fadeafe3..b2376c18d034 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -1,4 +1,3 @@
-
 menu "Rockchip Features"
 	depends on ARCH_ROCKCHIP
 
@@ -51,10 +50,10 @@ config MACH_RK3568_EVB
 	help
 	  Say Y here if you are using a RK3568 EVB
 
-endmenu
-
 config ARCH_RK3568_OPTEE
 	bool "Build OP-TEE binary into barebox"
 	help
 	  With this option enabled the RK3568 OP-TEE binary is compiled
 	  into barebox and started along with the BL31 trusted firmware.
+
+endmenu
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

