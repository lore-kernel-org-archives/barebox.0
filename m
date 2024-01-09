Delivery-date: Tue, 09 Jan 2024 17:17:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmj-00AUGp-0k
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmh-0000NQ-CR
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QdO+HZZp/TH79psXQqjwdS1U6hNN7JEFqSjox0cI2QA=; b=LoW92aIkDyI8iF+WguZVrwRqKY
	Xai0d7rW5s9uj601vR6C9+bmCOYbzfYG7jYM7dZ286rkSBndGI7XBAJZEHVdDsS64qbsJh19xXPoM
	gJ0+AS0b8cDN0Kd67Fua7VJXRPQ4lkAxuDSS7WNtry71UhgFfv2Q6KQZUs8VyLHpggvVUg6wxobzL
	w9fDi47tumqDqZmVo1hIqgGogyp4yhFUY66bx70DOi0XJztPvty0RIisCaZcHhJh3OaWLw6pV9Zx/
	4ShDtV8qucrOzcrALe3bF/8NZ3c9a9pMJA3ofNxKA7AX/3QxFcnggWklq9ldXi3Wd3KRO9og85XrD
	vfMbPWIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElW-008nsR-1x;
	Tue, 09 Jan 2024 16:15:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElL-008niv-2I
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lY-Ga; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCn-Nm; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7RA-26;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:20 +0100
Message-Id: <20240109161527.3237581-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081535_756905_446928D0 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 14/21] ARM: Layerscape: move over to MULTIARCH
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Layerscape doesn't contain any unprotected initcalls anymore, so we can
safely move it over to MULTIARCH.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ee3914620e..0557567a59 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -90,19 +90,6 @@ config ARCH_EP93XX
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
-config ARCH_LAYERSCAPE
-	bool "NXP Layerscape based"
-	select GPIOLIB
-	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select COMMON_CLK_OF_PROVIDER
-	select HW_HAS_PCI
-	select OFTREE
-	select OFDEVICE
-	select ARM_USE_COMPRESSED_DTB
-
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	depends on 32BIT
@@ -246,6 +233,20 @@ config ARCH_K3
 	select COMMON_CLK_OF_PROVIDER
 	select PM_GENERIC_DOMAINS
 
+config ARCH_LAYERSCAPE
+	bool "NXP Layerscape based"
+	depends on ARCH_MULTIARCH
+	select GPIOLIB
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select COMMON_CLK_OF_PROVIDER
+	select HW_HAS_PCI
+	select OFTREE
+	select OFDEVICE
+	select ARM_USE_COMPRESSED_DTB
+
 config ARCH_OMAP_MULTI
 	bool "TI OMAP"
 	depends on 32BIT
-- 
2.39.2



