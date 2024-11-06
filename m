Delivery-date: Wed, 06 Nov 2024 23:16:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8oKV-005gm3-2B
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 23:16:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8oKW-0007Wu-CW
	for lore@pengutronix.de; Wed, 06 Nov 2024 23:16:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3uB6kT/n75jYflhkQizrZQFwbWZQInd04Zys6QPRLFk=; b=4THFSIN5yIFuq1TipVfTIskFvn
	+wN8qCMT+jD0+3Ze3WF+TlDrwtgzY0sMs36h7Xw7GUGvgwSUkFZFM0hU/VqsU6qmVHRoBhuCdX+NG
	t7wI6pAuvo4bMKpA0I+hUS1RShrnAKRYF+pRpiruY6qMdgorPL4e+T8EfJiWzt0rf/ET90vFSe+fE
	Roftogo1NsNuoPL37TwSObxpI+vYDQLhXoN/GlD8lzwzkNmzrLazy4eCuPZdf92P5+bqBOD/e0NCN
	8EczglkXa7ZmPUCGGjzZDugcVPFBY7HyYprgcOBEDOKsREKk4gnT7fEGubPzY1kYAdmHEfp7dZRYn
	DilW24xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8oJt-00000004tXN-1ztr;
	Wed, 06 Nov 2024 22:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8oHr-00000004swJ-3alH
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 22:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8oHp-0007Fx-5t; Wed, 06 Nov 2024 23:14:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8oHo-002MnU-3C;
	Wed, 06 Nov 2024 23:14:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8oHo-000Ypm-2u;
	Wed, 06 Nov 2024 23:14:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 23:13:58 +0100
Message-Id: <20241106221358.131149-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-2-a.fatoum@pengutronix.de>
References: <20241106185724.2526-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_141403_915682_F7F1622F 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! firmware: rockchip: rename from rk3xxx-op-tee.bin to rk3xxx-bl32.bin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 4069ad4ca138..51d81deca97a 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -137,7 +137,7 @@ config ARCH_ROCKCHIP_ATF
 
 config ARCH_ROCKCHIP_OPTEE
 	bool "Build rockchip OP-TEE binary into barebox"
-	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3399
+	depends on ARCH_ROCKCHIP_ATF
 	select PBL_OPTEE
 	help
 	  With this option enabled the OP-TEE binary is compiled
-- 
2.39.5



