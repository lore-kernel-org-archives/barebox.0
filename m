Delivery-date: Wed, 17 May 2023 11:41:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfD-0049po-I1
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfA-0002fA-7r
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12ThUT6NQpLK484IP8fylqVr433TkYp4Z8H/HbO8z6g=; b=UXRiU/h8hPGO5F
	c7VWe/mHPjS1fKegFIkEV4IeDdNkRceGwP/PMEG+VZ22fXtTu+3yDeW9TwZMb7I6+KerBpvBxp0Np
	5EuSWmlBJj6u8IWyxS88Sv6zKb5ytmclqgY0aw5PMguxnB2hl9A6D5rm+pgF8tkH1DnoLo5CIhbba
	QRflE5ghrNA5kAtGd5HPxngm7oy1R/CQSILjbX1Fg/7C6zVb49MKPZwVzR2wBsZUpFZde0QiK55DJ
	QdICNrIY82Nwd8u6FYMj/apu+Dt+a1DI9m/vSBTsto/JQD0kbeChp++ZxiLhILijaXecuTq89ujXE
	FrReb5ap77FURZOC80Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe1-0096MX-1L;
	Wed, 17 May 2023 09:40:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdw-0096Gj-0B
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=12ThUT6NQpLK484IP8fylqVr433TkYp4Z8H/HbO8z6g=; b=SNhA+BuPFhrpSZxuHKFF6kSBVa
	iCvdpScWT4teZEqr/B2uphuHRzkZMZWQhWckHrvzV+/wf4CNjBwJly3nBH2SC19t5kwULwblLXqHu
	lu8JpTG+2tIMmZ4mXw/LISzL6jEHZQ3Dd/41ijEDCQwk1jgcmONoBK9CJ0sJqgcB869RQU/LrJIXl
	0gkt1X2dqmukdtxNKm23fm/u+gTcHDQv6qL8qzQQZh6yhhz0qvDFN+UcCo2DRWS59V9gQHGdZBoH0
	+cgMhEp5+mJ0Bytv3Inj0i9K44tGs1euBf4RrckCZz1PxZwTDOgBMkRzpxJcJVCGv0ZfO5m95ZMNo
	U2wM5Cmw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Z-00DAxy-0F
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040p-8y; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7h-KX; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gas0-Se; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:24 +0200
Message-Id: <20230517090340.3954615-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_454269_E997C5CF 
X-CRM114-Status: GOOD (  11.02  )
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
Subject: [PATCH v2 18/34] ARM: Move early MMU after malloc initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Initialize the MMU after malloc so that we can use malloc in the
MMU code, for example to allocate memory for page tables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 4841ee6043..87207822a0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -167,16 +167,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 	arm_barebox_size = barebox_size;
 	malloc_end = barebox_base;
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(endmem);
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
+		unsigned long ttb = arm_mem_ttb(endmem);
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



