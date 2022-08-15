Delivery-date: Mon, 15 Aug 2022 17:42:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcEI-006bHt-Su
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 17:42:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcEJ-0000iN-Du
	for lore@pengutronix.de; Mon, 15 Aug 2022 17:42:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xrqI5IGsnvinFMabmvgr1U99+6xD7I5uhDbom2tEAU8=; b=2ksaWf4aqH83oXTS5wPzUr//MD
	7ch5o/1QG1rzKaaH53ZS3jW+NFNy3v3zSmaDZyyeFlHZqqKK3JyPKfRx+q1GjXlq7ycVt+ph/N4/m
	e4iQT8iuzFn+UYXiAnlapaNpoBjsZZ+O4+b67vHP5e5PPXg5dsfD8I87emU7rvz6Ztw+p1quHVaLY
	D3aje0z8YMQxlG8FLYwXRDgwX8GJjz9SsioQEKd0AdUqCDI6054jrYBEKi3/8w1rHKFw1XODJOHT0
	yUTrwlH8ySt/IZEYdSXOZH7ULVFSSBy+tS2luzRF1Xj3NBKbtufy4JNK0bNc8L3T3F3xniq9PgtvI
	NVN02F2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNcCU-000z17-Kw; Mon, 15 Aug 2022 15:40:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4i-000uCe-CW
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 15:32:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4b-0007A9-PM; Mon, 15 Aug 2022 17:32:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Y-003wmj-O2; Mon, 15 Aug 2022 17:32:13 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-00AAGV-H7; Mon, 15 Aug 2022 17:32:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 17:32:08 +0200
Message-Id: <20220815153209.2422662-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_083220_688382_4A3B7055 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/10] ARM: early-mmu: don't cache/prefetch OPTEE_SIZE bytes from end of memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

OPTEE_SIZE is always defined in <asm-generic/memory_layout.h> either as
as CONFIG_OPTEE_SIZE or as 0 if the option is undefined.

There is never a reason to map the last OPTEE_SIZE bytes in the initial
memory as cached and executable:

 - OPTEE_SIZE == 0: no change
 - OPTEE_SIZE != 0 && CONFIG_PBL_OPTEE=y: cache must not be enabled for
   the region to avoid speculation
 - OPTEE_SIZE != 0 && CONFIG_BOOTM_OPTEE=y: we won't use this region
   for anything between MMU early init and normal init, so no harm
   in disabling caches.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c      | 2 +-
 arch/arm/cpu/uncompress.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 5861c15d43df..672f26e0063c 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -171,7 +171,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 		} else {
 			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 			arm_early_mmu_cache_invalidate();
-			mmu_early_enable(membase, memsize, ttb);
+			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
 		}
 	}
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 2250b8ccd375..537ee63229d7 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -84,7 +84,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		unsigned long ttb = arm_mem_ttb(membase, endmem);
 		pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
-		mmu_early_enable(membase, memsize, ttb);
+		mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
 	}
 
 	free_mem_ptr = arm_mem_early_malloc(membase, endmem);
-- 
2.30.2



