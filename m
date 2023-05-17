Delivery-date: Wed, 17 May 2023 11:05:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD64-0048b1-4J
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD61-0004px-4p
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7lTIo+6LJqNWIQnmfGdJ0Olbta1DtMf0EQHcl0ACGc=; b=UFDvNDcHmrukoS
	uzPOWChdbM3qHW/B5CuzU0IBS30UyuaRZdl1jp8vLNaXLCGPpHLfkj8IIXoP727wV2PaOVwMNxthE
	JuowvWyFudu8tqYTsKErG8x0iEMsg5YSuvC23n7t3B+6QMcZLzdPF9jJRwVlJ3r2ZVe6kHG2auB9X
	hB772qW9yFiOMDgB68p1lv8rbccE3fGdE3wtC9pfRdB+slg3FrCGyngmn+m2aC8iaY67VFX6TpnLN
	seViaudd/OorP0U/gZJi/aymrd+7V7YPx2LH9i6UENhCHMOKaBKqCXeWvqO/sykCzLImgJ83NAAvW
	laWTPFJQBo1UXdNYDstA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4j-008yVt-2t;
	Wed, 17 May 2023 09:04:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-008yMn-2V
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-0003zq-EM; Wed, 17 May 2023 11:03:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4T-000o7D-Jq; Wed, 17 May 2023 11:03:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Garg-P4; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:19 +0200
Message-Id: <20230517090340.3954615-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020350_853457_221ED78E 
X-CRM114-Status: GOOD (  10.99  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/34] ARM: mmu32: rename mmu.h to mmu_32.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mmu.h is AArch32 specific, so rename it to mmu_32.h like the C files
have been renamed already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cache_32.c          | 2 +-
 arch/arm/cpu/mmu-early_32.c      | 2 +-
 arch/arm/cpu/mmu_32.c            | 2 +-
 arch/arm/cpu/{mmu.h => mmu_32.h} | 0
 arch/arm/cpu/sm.c                | 3 +--
 5 files changed, 4 insertions(+), 5 deletions(-)
 rename arch/arm/cpu/{mmu.h => mmu_32.h} (100%)

diff --git a/arch/arm/cpu/cache_32.c b/arch/arm/cpu/cache_32.c
index 4202406d0d..0ac50c4d9a 100644
--- a/arch/arm/cpu/cache_32.c
+++ b/arch/arm/cpu/cache_32.c
@@ -6,7 +6,7 @@
 #include <asm/cache.h>
 #include <asm/system_info.h>
 
-#include "mmu.h"
+#include "mmu_32.h"
 
 struct cache_fns {
 	void (*dma_clean_range)(unsigned long start, unsigned long end);
diff --git a/arch/arm/cpu/mmu-early_32.c b/arch/arm/cpu/mmu-early_32.c
index 4895911cdb..07c5917e6a 100644
--- a/arch/arm/cpu/mmu-early_32.c
+++ b/arch/arm/cpu/mmu-early_32.c
@@ -9,7 +9,7 @@
 #include <asm/cache.h>
 #include <asm-generic/sections.h>
 
-#include "mmu.h"
+#include "mmu_32.h"
 
 static uint32_t *ttb;
 
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 78dd05577a..8ec21ee1d2 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -18,7 +18,7 @@
 #include <asm/system_info.h>
 #include <asm/sections.h>
 
-#include "mmu.h"
+#include "mmu_32.h"
 
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
 #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu_32.h
similarity index 100%
rename from arch/arm/cpu/mmu.h
rename to arch/arm/cpu/mmu_32.h
diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index f5a1edbd4f..53f5142b63 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -19,8 +19,7 @@
 #include <linux/arm-smccc.h>
 #include <asm-generic/sections.h>
 #include <asm/secure.h>
-
-#include "mmu.h"
+#include "mmu_32.h"
 
 static unsigned int read_id_pfr1(void)
 {
-- 
2.39.2



