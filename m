Delivery-date: Mon, 04 Aug 2025 19:23:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuB-0070zZ-08
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 19:23:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyu9-0001Km-Bs
	for lore@pengutronix.de; Mon, 04 Aug 2025 19:23:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sY9k0j8Xwdz37PmRbIEYJ49BF3etAP5fH/dKpL1o4bI=; b=Av6h6xTUqdx75Fu5+QYJdRtLJi
	reeqSntDqhL2buwsVReN5v2xCgDIrZesHeiIq/7uneiwT4c4Ys127k2si2fB3VTUFdobhH4me5oBE
	7pm0+Th9u9nrov8UcVWhJ1r5vTpDNmGGukmV6KxOdN88MBOrLoA2dIF7QY2uTuUpMl4gzmpCYpV65
	pj6FOCB3yMJbv3/UltgSo9pG+XWcZxZ3xPOVLqVT/reMaMshgVepouYXQVIuRdu7JGMj/fs8V6RZ1
	tN7mpeDlGyAnZ25A7eELoJqtZwoLFXDLimlzDrXqO7NgXG+IGsofO08jjAQ5Z+SCXTD3yIb2fb78q
	03Q1F+Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiyta-0000000B5Q8-38ei;
	Mon, 04 Aug 2025 17:22:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytX-0000000B5Lv-2Cca
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sY9k0j8Xwdz37PmRbIEYJ49BF3etAP5fH/dKpL1o4bI=; b=qxe87geba6BMzfNWzSMZT29Ce8
	Cd13uQ65EE8YqGwmf/uVUDmPHeHPR6SmV5LSUOYI8Qoz4yH6o/Hs2rNG3IGoS5CV00z5QMBJ0wcCF
	UQkgVMQzPhKAChGT/kLVvvCak5m74PythFjsuG0LkOJcMfoiDdJzf4asgZx9psK3hJl2YXOpawj44
	pn/CFi1vKBsYLlHCJNqSP9J8IiQYFfyuGaRgRW2DuaGe9qMkMYcrLNP4y2RbcoaSiyLE0JgEEhKLO
	Z8Ha1A4PyuQQc7TcrYoa5WBKi6X1nDL9nZc+xgRcGNoXsWBXZ0d2XYk9im3Q64TadqaBPoUWEI2Np
	uitaUVbA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytT-0000000Dtdc-08bG
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytR-0000su-U1; Mon, 04 Aug 2025 19:22:38 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:27 +0200
Message-Id: <20250804172233.2158462-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182239_257666_97D47205 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 07/13] ARM: mmu: share common memory bank remapping code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The code is identical between ARM32 and 64 and is going to get more
complex with the addition of finer grained MMU permissions.

Let's move it to a common code file in anticipation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.c | 31 +++++++++++++++++++++++++++++--
 arch/arm/cpu/mmu_32.c     | 22 ----------------------
 arch/arm/cpu/mmu_64.c     | 16 ----------------
 3 files changed, 29 insertions(+), 40 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index a55dce72a22d..85cb7cb007b9 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -69,6 +69,34 @@ void zero_page_faulting(void)
 	remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
+static void mmu_remap_memory_banks(void)
+{
+	struct memory_bank *bank;
+
+	/*
+	 * Early mmu init will have mapped everything but the initial memory area
+	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
+	 * all memory banks, so let's map all pages, excluding reserved memory areas,
+	 * cacheable and executable.
+	 */
+	for_each_memory_bank(bank) {
+		struct resource *rsv;
+		resource_size_t pos;
+
+		pos = bank->start;
+
+		/* Skip reserved regions */
+		for_each_reserved_region(bank, rsv) {
+			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			pos = rsv->end + 1;
+		}
+
+		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+	}
+
+	setup_trap_pages();
+}
+
 static int mmu_init(void)
 {
 	if (efi_is_payload())
@@ -94,8 +122,7 @@ static int mmu_init(void)
 	}
 
 	__mmu_init(get_cr() & CR_M);
-
-	setup_trap_pages();
+	mmu_remap_memory_banks();
 
 	return 0;
 }
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 3572fa70d13a..080e55a7ced6 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -555,7 +555,6 @@ void setup_trap_pages(void)
  */
 void __mmu_init(bool mmu_on)
 {
-	struct memory_bank *bank;
 	uint32_t *ttb = get_ttb();
 
 	// TODO: remap writable only while remapping?
@@ -574,27 +573,6 @@ void __mmu_init(bool mmu_on)
 					ttb);
 
 	pr_debug("ttb: 0x%p\n", ttb);
-
-	/*
-	 * Early mmu init will have mapped everything but the initial memory area
-	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
-	 * all memory banks, so let's map all pages, excluding reserved memory areas,
-	 * cacheable and executable.
-	 */
-	for_each_memory_bank(bank) {
-		struct resource *rsv;
-		resource_size_t pos;
-
-		pos = bank->start;
-
-		/* Skip reserved regions */
-		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
-			pos = rsv->end + 1;
-		}
-
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
-	}
 }
 
 /*
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index ba82528990fe..54d4a4e9c638 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -359,7 +359,6 @@ void setup_trap_pages(void)
 void __mmu_init(bool mmu_on)
 {
 	uint64_t *ttb = get_ttb();
-	struct memory_bank *bank;
 
 	// TODO: remap writable only while remapping?
 	// TODO: What memtype for ttb when barebox is EFI loader?
@@ -373,21 +372,6 @@ void __mmu_init(bool mmu_on)
 		 *   the ttb will get corrupted.
 		 */
 		pr_crit("Can't request SDRAM region for ttb at %p\n", ttb);
-
-	for_each_memory_bank(bank) {
-		struct resource *rsv;
-		resource_size_t pos;
-
-		pos = bank->start;
-
-		/* Skip reserved regions */
-		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
-			pos = rsv->end + 1;
-		}
-
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
-	}
 }
 
 void mmu_disable(void)
-- 
2.39.5



