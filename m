Delivery-date: Wed, 31 May 2023 12:03:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4IfY-0046kc-FQ
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:03:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4IfV-0007l1-Lh
	for lore@pengutronix.de; Wed, 31 May 2023 12:03:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rpAf7SUskN51QdGSKGXq7s88paQ10jyxqe6BhPTkGS8=; b=oGopIDS/R+lbpasGNRId8w/Vu1
	8cs1LQX4mJwr82BseQDaId5Ghbw4IkKqx/RQAMXOnlQ85YTp2XRKr4AMF32T+mM0t2OqKpqxl5R3B
	a9yfZc7QJ0wDfZryaPqK7DnpPJISYH6J6/cFOjlhlkwTQaiZ5KnxCaeDTE/JQrkMqyzZYLgWtnSCI
	4GqRmaXp90sGrrxdQnxs4bsDUNbmvzxmiWJI1vDD+KBmEZnLZJRTegjfMH8dHOd9CijLp+J7gPwpD
	KC5Cu2SVYZVb2j3ZYK46byWYlnyDdhYdK4mZl49GlLmUOVcte2GDsSbNyp1bOvHKaEBtrLzc18Fp4
	RhR0xZkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4IeJ-00GwXK-0M;
	Wed, 31 May 2023 10:01:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4IeF-00GwUr-2l
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:01:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4Ie3-0007NE-Fq; Wed, 31 May 2023 12:01:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4Ie2-0044mX-R2; Wed, 31 May 2023 12:01:30 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4Ie1-003RDP-Ql; Wed, 31 May 2023 12:01:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 May 2023 12:01:28 +0200
Message-Id: <20230531100128.819492-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531100128.819492-1-s.hauer@pengutronix.de>
References: <20230531100128.819492-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_030143_891247_CAF89482 
X-CRM114-Status: GOOD (  15.31  )
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
Subject: [PATCH 2/2] ARM: mmu_32: fix setting up zero page when it is in SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We used to skip setting the zero page to faulting when SDRAM starts
at 0x0. As bootm code now explicitly sets the zero page accessible
before copying ATAGs there this should no longer be necessary, so
unconditionally set the zero page to faulting during MMU startup.
This also moves the zero page setup after the point the SDRAM has
been mapped cachable, because otherwise the zero page setup would
be overwritten.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index c4e5a3bb0a..faebba42d0 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -459,23 +459,6 @@ static int set_vector_table(unsigned long adr)
 	return -EINVAL;
 }
 
-static void create_zero_page(void)
-{
-	struct resource *zero_sdram;
-
-	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);
-	if (zero_sdram) {
-		/*
-		 * Here we would need to set the second level page table
-		 * entry to faulting. This is not yet implemented.
-		 */
-		pr_debug("zero page is in SDRAM area, currently not supported\n");
-	} else {
-		zero_page_faulting();
-		pr_debug("Created zero page\n");
-	}
-}
-
 /*
  * Map vectors and zero page
  */
@@ -487,7 +470,6 @@ static void vectors_init(void)
 	 */
 	if (!set_vector_table((unsigned long)__exceptions_start)) {
 		arm_fixup_vectors();
-		create_zero_page();
 		return;
 	}
 
@@ -495,7 +477,6 @@ static void vectors_init(void)
 	 * Next try high vectors at 0xffff0000.
 	 */
 	if (!set_vector_table(ARM_HIGH_VECTORS)) {
-		create_zero_page();
 		create_vector_table(ARM_HIGH_VECTORS);
 		return;
 	}
@@ -552,6 +533,8 @@ void __mmu_init(bool mmu_on)
 
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
+
+	zero_page_faulting();
 }
 
 /*
-- 
2.39.2



