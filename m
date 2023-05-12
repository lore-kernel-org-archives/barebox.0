Delivery-date: Fri, 12 May 2023 13:11:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgY-00F2Ol-PZ
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgV-0004rQ-RP
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EAuM4oNeENOpBggFlI6lovveBA325QboUDWGzeRbXdE=; b=sFcl6GKD3H/I+8ue+i7SPi2Bka
	ZUcGwSavF/Efr92PzOO5cJk1u9T5qCiHu3aW4lYzN8sE3wGNrEe0/wG7gmKl5zsWKjX2bpEBgJh28
	I+NQVJMh6PB+F3P3TdSnNeV3rhfKons0VOsithBTHhUQ7UnXm4aiiFYyn6Zsxykolw6UjmARGV+dg
	51PjDbXhB/j5KjDCa6+nPUM4XTg3G7a7b+nP/ueZO4STV3EehSDkrGLcQ4VJ0iu7Q5sDamiswTpwe
	1pQU9748c2GBukiGuT4Eh05hV+YBRWq8SFEkaChcnIoeR5NvyKelKgD53XYYo0fS9e15farQGsZqH
	+cceSHMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfH-00Bjyq-13;
	Fri, 12 May 2023 11:10:23 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00Bju6-0r
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003f2-OE; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wjw-2Q; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Dm-3g; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:47 +0200
Message-Id: <20230512111008.1120833-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_308942_C217A919 
X-CRM114-Status: GOOD (  11.26  )
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
Subject: [PATCH 06/27] ARM: mmu32: rename mmu.h to mmu_32.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mmu.h is 32bit specific, so rename it to mmu32.h like the C files
have been renamed already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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



