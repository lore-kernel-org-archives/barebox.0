Delivery-date: Tue, 02 May 2023 11:15:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6f-002Abr-6w
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6c-00024F-W5
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=veQQ1jU+j8D/s7xI6E6EOJb2QMDA/2ML06tWw8DyQzA=; b=LGmF3Ro+T9h/DhcXXs0za0CkuC
	oyRVAIG+xidrSF1nnFvN61a2YzPhm2PXh1MXL6g9afbHBILE9nZ47Up2C983AHFksYMHeQebmE2r4
	f5dlcpBqIKms7B0S4Xqpa9McVxgiLGedFspo3GsQ1cVxpoGBisKIUK2fuCF+LCK+fnMyj32IK5d0D
	oIgeTlABGJMD/ZGezqR0uWTb8pcOURj/QWXj2ozq7sszEa3+ZWWeI22c6t/kC4I4ka9fkpYjMVyGn
	sLkBhUPt5Rj6IdSoSfmlBjQKjp7OVmVOOg76Wo5DajRhcQkAz1jxQwQsyoukBK37KA95itat6bhMy
	ExNV+ohQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5h-000jQE-2R;
	Tue, 02 May 2023 09:14:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGw-2s
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001AU-Mr; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yjk-7a; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Ar0B-AA; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:17 +0200
Message-Id: <20230502091419.2551228-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_942295_5514CC17 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/12] ARM: versatile: move over to multi arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Versatile is safe for multi arch support, move the Kconfig snippet
over to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 088146894b..ef3adbbe9d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -155,16 +155,6 @@ config ARCH_SOCFPGA
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 
-config ARCH_VERSATILE
-	bool "ARM Versatile boards (ARM926EJ-S)"
-	depends on 32BIT
-	select GPIOLIB
-	select HAVE_CLK
-	select HAS_DEBUG_LL
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select HAVE_PBL_MULTI_IMAGES
-
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	depends on 32BIT
@@ -281,6 +271,16 @@ config ARCH_STM32MP
 	select ARM_SMCCC
 	select ARM_USE_COMPRESSED_DTB
 
+config ARCH_VERSATILE
+	bool "ARM Versatile boards (ARM926EJ-S)"
+	depends on 32BIT
+	select GPIOLIB
+	select HAVE_CLK
+	select HAS_DEBUG_LL
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select HAVE_PBL_MULTI_IMAGES
+
 config ARCH_VEXPRESS
 	bool "ARM Vexpress & virt boards"
 	depends on 32BIT
-- 
2.39.2



