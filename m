Delivery-date: Fri, 12 May 2023 13:11:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgZ-00F2P6-J4
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgV-0004rB-GS
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hHznu6WESRWP4P1xZR+rkWXBgi+ibCx3YoBtf5XlRzM=; b=FKpqBuDBxChZecHrMLeim4VLpQ
	q2lw+3Lf6goCt67a2IOP7dxPGPmfOB6tvaQZSccfZMFr/lrd3nAxE+HzfrphSUhsOrx78GfFvAF51
	PMA2IKgIjvPGEHyKnZ9yApLRGIEHkI/GQPT8F/Ddlbp1+kj3SqoC877Z+U0Mq18BMXB6xHjEBlx+y
	51yaw9JN6jUMMgbzVmkiQjKMFgl5lVCXCpVQzhv+T9Upo/bE4S94gFtsBQSCWo0OKhV2+w2vqQfdj
	m4cDo30hdoz5AIWTMoWuz+78jHYsVY20OJNecAMym0B/BjauDRH3iqWNskHPHrjGZzvFnIFD82Xt7
	gwDs2n1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfN-00Bk3c-2j;
	Fri, 12 May 2023 11:10:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00BjtI-2n
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-0003b5-1h; Fri, 12 May 2023 13:10:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf6-002wj5-6l; Fri, 12 May 2023 13:10:12 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055E6-6x; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:52 +0200
Message-Id: <20230512111008.1120833-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_914289_E968A398 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [PATCH 11/27] ARM: Move early MMU after malloc initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Initialize the MMU after malloc so that we can use malloc in the
MMU code, for example to allocate memory for page tables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index bcfc630f3b..9d788eba2b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -167,16 +167,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 	arm_barebox_size = barebox_size;
 	malloc_end = barebox_base;
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(membase, endmem);
-
-		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
-			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
-			arm_early_mmu_cache_invalidate();
-			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
-		}
-	}
-
 	if (boarddata) {
 		uint32_t totalsize = 0;
 		const char *name;
@@ -226,6 +216,16 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
+		unsigned long ttb = arm_mem_ttb(membase, endmem);
+
+		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
+			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
+			arm_early_mmu_cache_invalidate();
+			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
+		}
+	}
+
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
 		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
 
-- 
2.39.2



