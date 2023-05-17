Delivery-date: Wed, 17 May 2023 11:41:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfE-0049pv-4H
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfB-0002g2-BJ
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mcV15B8EX3PxZY4uweDnkJu5F/kTkdGPG4Pc4Mks8Qo=; b=l3qnplcVPByTOZpWdGZihaSd+B
	HP1iMu1FwD1ChnRabXvgykIyfUegJJNAMNPXk7TUf+yMWeLOnfBjmOKr0MSNd4Sc3RKHT/sCvPSdh
	iMxQYi1lfhwBPvEjjTpsgfrOd85sRw9Tcry/cv0y4TTswWWNAvUFUB+024/aYnsU+/+i+oXdGPMA8
	CPA/FAHgTngzQsQoqKKssC4REfWzHKG+Si8cxs3Pe9cRnJuyPUf3EWlj0chgHWZPo4bS77FRJsFCE
	yTJd1C5Cajq3540JKfAY1i8JEW+W4ilJqfboU0iCm0PovaR9gPbpPW0owwM5qizdB3anGY6I3pgDV
	NVY0OaUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe8-0096Tb-0Z;
	Wed, 17 May 2023 09:40:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe1-0096Lj-2X
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mcV15B8EX3PxZY4uweDnkJu5F/kTkdGPG4Pc4Mks8Qo=; b=IncshDl7d40d9QqgmhUt98TsD4
	EzxfXJBNTMWLvQ4l++hQHBbt1LMs9+3UN+u9IwMkBAiNx+fICN6x4dcrlLlMW2YhDYgTXbw1RdQX1
	AEY/lZRVwX6KwkGCIDJKB5GV0yYSmY0O6eRpkIHvXySYkyCiyceh4YG5VnC4UGSWYvcE18ONNook8
	y1gxCZpkB9+uJ8TFI9lyrbhlum0BkP2Cmu64zzjzS/ficTGVPyYtZ+/CQBeScM0YzfcCvG9j/7h4I
	cfLU/SQrC/Pc6GlcdtAFNM2aWVQkr6AJHEisQndtpMb9C81J8yFGV+g2lLCcqVJ/fkUPj733icbD6
	mr/9duPA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-00DAxt-30
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040R-09; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7N-84; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00GasW-2U; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:32 +0200
Message-Id: <20230517090340.3954615-27-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_142095_39235689 
X-CRM114-Status: GOOD (  16.16  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 26/34] ARM: mmu32: Assume MMU is on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As we now always enable the MMU during early initialization we can
safely assume that the MMU is already enabled in __mmu_init() and
drop the code path which enables the MMU.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 47 +++++++++----------------------------------
 1 file changed, 10 insertions(+), 37 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index bef4a01670..7cd732580e 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -24,12 +24,6 @@
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
 #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
-/*
- * We have a 4GiB address space split into 1MiB sections, with each
- * section header taking 4 bytes
- */
-#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
-
 static uint32_t *ttb;
 
 /*
@@ -457,38 +451,19 @@ void __mmu_init(bool mmu_on)
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
-	if (mmu_on) {
+	/* Clear unpredictable bits [13:0] */
+	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
+
+	if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
 		/*
-		 * Early MMU code has already enabled the MMU. We assume a
-		 * flat 1:1 section mapping in this case.
+		 * This can mean that:
+		 * - the early MMU code has put the ttb into a place
+		 *   which we don't have inside our available memory
+		 * - Somebody else has occupied the ttb region which means
+		 *   the ttb will get corrupted.
 		 */
-		/* Clear unpredictable bits [13:0] */
-		ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
-
-		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
-			/*
-			 * This can mean that:
-			 * - the early MMU code has put the ttb into a place
-			 *   which we don't have inside our available memory
-			 * - Somebody else has occupied the ttb region which means
-			 *   the ttb will get corrupted.
-			 */
-			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
+		pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
 					ttb);
-	} else {
-		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
-
-		set_ttbr(ttb);
-
-		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-		if (cpu_architecture() >= CPU_ARCH_ARMv7)
-			set_domain(DOMAIN_CLIENT);
-		else
-			set_domain(DOMAIN_MANAGER);
-
-		create_flat_mapping(ttb);
-		__mmu_cache_flush();
-	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
@@ -499,8 +474,6 @@ void __mmu_init(bool mmu_on)
 				PMD_SECT_DEF_CACHED);
 		__mmu_cache_flush();
 	}
-
-	__mmu_cache_on();
 }
 
 /*
-- 
2.39.2



