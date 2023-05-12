Delivery-date: Fri, 12 May 2023 13:11:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgh-00F2Sw-Ol
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgf-00052h-Kj
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tvjysACf85V8GQDJidB1/1AU5Tp2B5F58VONek1O2zs=; b=39A1Ylm8vJHwVFsxHWN0/mnUSh
	eMFaXb36+M5IlgFQi0TP4+S9y9zXII1+Aua0Xvf7gaZcCBxheu+wFUYynFQH0kR0Flwbbt3CnzwQY
	BsXGaD165M9BflUyqmmCKi2l1+Y8X+qD+a5JNWZiXaMiz02SQ6+llU8sRHwpPoZqJyObYXM25XsTu
	4kVSVB67thECKDmqF3dwPwNTNieUSZPHdo/btV0/d24aaq4jGYowfbNv74t/jzACv5JWQnF/zJ8pf
	YUAtzAPAYKtinKg+z/4+sjv21BGzrt7EOA9tmzKT6Y+orPq501Ij3d7uRfQDVfs7MXm/voBeRy+mQ
	eKHEhkWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfT-00Bk8C-0r;
	Fri, 12 May 2023 11:10:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00BjtM-2i
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-0003b8-5B; Fri, 12 May 2023 13:10:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf6-002wj9-AD; Fri, 12 May 2023 13:10:12 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055EY-Bj; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:59 +0200
Message-Id: <20230512111008.1120833-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_951683_6A991B76 
X-CRM114-Status: GOOD (  13.77  )
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
Subject: [PATCH 18/27] ARM: mmu: always do MMU initialization early when MMU is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Drop the CONFIG_MMU_EARLY and make early MMU initialization the default.

Doing so allows us for some simplifications in the MMU code as we have
less code pathes to care and think about.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c      | 2 +-
 arch/arm/cpu/uncompress.c | 2 +-
 common/Kconfig            | 9 ---------
 3 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0b08af0176..4ce4579903 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -216,7 +216,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
+	if (IS_ENABLED(CONFIG_MMU) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
 		arm_early_mmu_cache_invalidate();
 		mmu_early_enable(membase, memsize);
 	}
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 7c85f5a1fe..0bfce8853d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -81,7 +81,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY))
+	if (IS_ENABLED(CONFIG_MMU))
 		mmu_early_enable(membase, memsize);
 
 	free_mem_ptr = arm_mem_early_malloc(membase, endmem);
diff --git a/common/Kconfig b/common/Kconfig
index ac3df75acb..c6008f125b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -185,15 +185,6 @@ config MMU
 	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
 	  for further information.
 
-config MMU_EARLY
-	bool "Enable MMU early"
-	depends on ARM
-	depends on MMU
-	default y
-	help
-	  This enables the MMU during early startup. This speeds up things during startup
-	  of barebox, but may lead to harder to debug code. If unsure say yes here.
-
 config HAVE_CONFIGURABLE_TEXT_BASE
 	bool
 
-- 
2.39.2



