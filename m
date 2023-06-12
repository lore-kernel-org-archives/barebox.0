Delivery-date: Mon, 12 Jun 2023 14:54:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4D-003qAc-Tn
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:54:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4B-0006UY-5C
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WHlGtOdviDQyCCVulhz/doVwSyF+xPG2WdHyWpqbccE=; b=ua8t4lC74/XJqP7OSoMeK55uXe
	fzWD3JYRQhIBOaH3BomrQiviH11hAIqU2HRHSCVSSFan1ZqJNszo3A7zFHSm+gvwoYV5Z+sSB+Ltg
	Seq7EcvuzjfP5baazFZ6ulQntepwDIf+sUEOlQBUceH5mmWRLYZq3wN8xrRzGRIeSCvHjB+6oUOhT
	y00zlvzgTashP7LHa5cyHS/nnD0MU5I1vaXzSJTmZcvj9sMII01VqF4IP+gHEEqydyphIYt0m9YvP
	Y/7n3XME+PBSpbRPW+HFpURlR0RKoJLGWbdorhxKbTofIwlW+FHI9rZmoWuyMWROE/xKHgfI8qM8e
	N1Edp2Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h3F-0045M2-2T;
	Mon, 12 Jun 2023 12:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h39-0045HI-11
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:53:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h38-0006BN-4C; Mon, 12 Jun 2023 14:53:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-006tTb-Ek; Mon, 12 Jun 2023 14:53:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-004YHW-6V; Mon, 12 Jun 2023 14:53:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:53:27 +0200
Message-Id: <20230612125331.1085059-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
References: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055335_358669_313C21F7 
X-CRM114-Status: GOOD (  11.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/6] scripts: remove openssl dependency in multi_v7_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The 32-bit rockchip support doesn't use the rkimage tool and instead
depends on mkimage to wrap the barebox binary. There's thus no need to
compile the rkimage utility for 32-bit barebox builds. This is a good
thing, because it removes the openssl dependency as the library is used
for sha256/sha512 calculation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Kconfig b/scripts/Kconfig
index dcd5f32d1df1..26c6a3c19806 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -51,8 +51,8 @@ config STM32_IMAGE
 
 config RK_IMAGE
 	bool "Rockchip image tool" if COMPILE_HOST_TOOLS
-	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
-	default y if ARCH_ROCKCHIP
+	depends on ARCH_ROCKCHIP_V8 || COMPILE_HOST_TOOLS
+	default y if ARCH_ROCKCHIP_V8
 	help
 	  This enables building the image creation tool for Rockchip SoCs
 
-- 
2.39.2



