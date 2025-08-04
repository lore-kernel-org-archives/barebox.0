Delivery-date: Mon, 04 Aug 2025 19:23:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuC-00710d-1v
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 19:23:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuB-0001Ly-Ky
	for lore@pengutronix.de; Mon, 04 Aug 2025 19:23:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CEwipdFrbr2TBqMAoFuf4YGfzA4NPOfD8i6Y8Z1GMAE=; b=rdHhuHaFCQschmKTOL4Sg59pFq
	WwutRECxcDGiX9tyRSgjBRHEqV4iQw3rUH0zAiQfreg3/F3Zs4XeXyzOkP8oLtYrXFeL8stMHC0P9
	0DbeCj+GwdcOsc7K/MkiHUNFun6AzAUHuH6v4E5PJCjVVyO1507cjIRjAZe8IyBtM2SP8L1U7zj4D
	InC8NEmcpaKiXSaIE1Wg9BIyaXpKR2xiWbGKCTw9imq/XskCqCPDRgTHzVDQAFt8iLff1Mc67r4KL
	xwhnHhG4/jvKEnWJcAU4Lbn4o/PNG5LwJQsky+aEXsdXLZVv1or7TFKreAnqhXdK76stCgCPZJHG5
	EIzztrig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiyta-0000000B5Pc-131n;
	Mon, 04 Aug 2025 17:22:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytX-0000000B5Lt-25xe
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CEwipdFrbr2TBqMAoFuf4YGfzA4NPOfD8i6Y8Z1GMAE=; b=QmeVPND38zqKWjCFHtPK4Jhw6W
	lRWMWcPqS/WoLk6MVxQd7KLlfJMzgZzfORpprro2NOBH7lkeQolhxJgSlVR2P+PZs7+1+PzuroF1c
	PRlTS+HIxlVNdDu3t60OGh1+l+GxFBe06NWdiBVdxuoW9uPM4w2VcqR/S2vr11X7yaxk4v2wceIoI
	4F1E0defxLRe7W7uR2EshsB0toIfPg02QVUR7J1+f7/XC3PIDYRyl+Vd/A5IyVoNTlyMKkwe25csk
	AOptU8tgMZXSIxK/MvFS+p+Fti27Yj+OUCTjk49cr4i/kN+zQbAJI8l2JkAvB5eEL2CT5jpc1L6N5
	+IZfZsng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytT-0000000DtdZ-08Ve
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytR-0000su-FE; Mon, 04 Aug 2025 19:22:37 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:25 +0200
Message-Id: <20250804172233.2158462-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182239_281024_D9A1C96A 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v4 05/13] ARM: mmu: skip TLB invalidation if remapping zero bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The loop that remaps memory banks can end up calling remap_range with
zero size, when a reserved region is at the very start of the memory
bank.

This is handled correctly by the code, but does an unnecessary
invalidation of the whole TLB. Let's early exit instead to skip that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu_32.c | 2 ++
 arch/arm/cpu/mmu_64.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index b21fc75f0ceb..80e302596890 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -261,6 +261,8 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
 	size = PAGE_ALIGN(size);
+	if (!size)
+		return;
 
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(virt_addr, PGDIR_SIZE);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 121dd136af33..db312daafdd2 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -145,6 +145,8 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	attr &= ~PTE_TYPE_MASK;
 
 	size = PAGE_ALIGN(size);
+	if (!size)
+		return;
 
 	while (size) {
 		table = ttb;
-- 
2.39.5



