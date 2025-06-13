Delivery-date: Fri, 13 Jun 2025 11:09:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q6-006oTc-1Y
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:09:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q5-0004qH-Oc
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:09:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TgmXMHTMet4PxNp08eIxYdDBJEsdOHgNGCHQbUYn+mY=; b=inwLggh8ULGzwn/9iIV4RWZG1W
	I3x07N/two5OuWv1tXvKTw320pzi6qDHJdds4OtocWvcMgZIgUraXdgM7nxLEsjHpf+0GlbGJWQDu
	m46Z6YT4hQhMjLTTJV/6vNcm9X1P2AeG1Y16solVtyuULEEASQtxfjeuNu5x2RDVbXlPwn92IMDL0
	9cjxlRrz9gZWqdWldwDxPqGQSI2iMnW3M8VstVfrWqZyfgcD9VLSldmbaeph52ZITr4pjdtWkCF0F
	ZVIBcr0JAAKag3HpJWqqRyqXQqPyvSiz1sBHDMUqaRapC3o9vUnYFbLLmXG5HMHOP+VUUxhoiY5ft
	NACog1sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Pr-0000000Fs96-2EeM;
	Fri, 13 Jun 2025 09:09:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJm-0000000FiFv-31WS
	for barebox@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=TgmXMHTMet4PxNp08eIxYdDBJEsdOHgNGCHQbUYn+mY=; b=dO2M+8jPcZ44QTKeUOOFgHLATG
	3oP5Egxo7McIntgmAxDhTxEioqvNTxGLGx03KapwR73eFirN2WF5rVobNtNIVovVP7IJ0gQVCi33d
	yRNaS1cRqP0QRdwLgqk9M9KvXJqvswJ3fu2BhWKzgNVs8RYoNakxbTCZ3JukYvFaKSsRAPwGndvNj
	7sAJYJchOvl8LTCXw8Uq3zh3RCJD/Ogyxi8yyp3WqmwdePkwFVMW4jfkd3kzhpytpXLzxMFez/wTV
	OhJzXQdIsVLEN3rPVLO29tQpg3tu2/UYesrzTcQ2QA5H1tUbhA+Z92QKe9MW+3ccJkWMZO14P90Vy
	EO7OyNwQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJk-00000002ueZ-3yrs
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 07:59:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-0004cl-MS; Fri, 13 Jun 2025 09:58:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-003Fnz-19;
	Fri, 13 Jun 2025 09:58:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-00CPUK-0l;
	Fri, 13 Jun 2025 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Jun 2025 09:58:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250613-arm-mmu-xn-ro-v1-4-60f05c6e7b4b@pengutronix.de>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749801531; l=4404;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HCYQYC3Ca2YehOYm05XiIzRqmcOV48uvW64c9Nyo3Ws=;
 b=/m/P0Ee/JFoadGCY3VZ31+Om4ItLimy323sLUsEtwqYZbZ83tUYd4Wbj/zKjVP7EJkn2pxG0Q
 Fk/SXl1fpB/BjuLOdpXw3xh7qVhPER1Bi1jiSd3Pe5pcSevSxlnwFS1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_085917_089558_817FAD35 
X-CRM114-Status: GOOD (  15.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] ARM: MMU: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Map the remainder of the memory explicitly with two level page tables. This is
the place where barebox proper ends at. In barebox proper we'll remap the code
segments readonly/executable and the ro segments readonly/execute never. For this
we need the memory being mapped pagewise. We can't do the split up from section
wise mapping to pagewise mapping later because that would require us to do
a break-before-make sequence which we can't do when barebox proper is running
at the location being remapped.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 37 +++++++++++++++++++++++++++++--------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 3e0c761cd43486d3193b80b5f79097bdd5cd333c..7ad66070260eae337773e3acd1bcbea4fcab12f3 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -241,7 +241,8 @@ static uint32_t get_pmd_flags(int map_type)
 	return pte_flags_to_pmd(get_pte_flags(map_type));
 }
 
-static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
+static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size,
+			       unsigned map_type, bool force_pages)
 {
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
@@ -262,7 +263,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
 		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
-		    !pgd_type_table(*pgd)) {
+		    !pgd_type_table(*pgd) && !force_pages) {
 			/*
 			 * TODO: Add code to discard a page table and
 			 * replace it with a section
@@ -325,14 +326,15 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 	tlb_invalidate();
 }
-static void early_remap_range(u32 addr, size_t size, unsigned map_type)
+
+static void early_remap_range(u32 addr, size_t size, unsigned map_type, bool force_pages)
 {
-	__arch_remap_range((void *)addr, addr, size, map_type);
+	__arch_remap_range((void *)addr, addr, size, map_type, force_pages);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
-	__arch_remap_range(virt_addr, phys_addr, size, map_type);
+	__arch_remap_range(virt_addr, phys_addr, size, map_type, false);
 
 	if (map_type == MAP_UNCACHED)
 		dma_inv_range(virt_addr, size);
@@ -593,6 +595,7 @@ void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_ha
 void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
 {
 	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
+	unsigned long barebox_size = SZ_8M, optee_start;
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
@@ -614,9 +617,27 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	create_flat_mapping();
 
 	/* maps main memory as cachable */
-	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
-	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+	optee_start = membase + memsize - OPTEE_SIZE;
+	barebox_size = optee_start - barebox_start;
+
+	/*
+	 * map the bulk of the memory as sections to avoid allocating too many page tables
+	 * at this early stage
+	 */
+	early_remap_range(membase, barebox_start - membase, MAP_CACHED, false);
+	/*
+	 * Map the remainder of the memory explicitly with two level page tables. This is
+	 * the place where barebox proper ends at. In barebox proper we'll remap the code
+	 * segments readonly/executable and the ro segments readonly/execute never. For this
+	 * we need the memory being mapped pagewise. We can't do the split up from section
+	 * wise mapping to pagewise mapping later because that would require us to do
+	 * a break-before-make sequence which we can't do when barebox proper is running
+	 * at the location being remapped.
+	 */
+	early_remap_range(barebox_start, barebox_size, MAP_CACHED, true);
+	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED, false);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
+			  MAP_CACHED, false);
 
 	__mmu_cache_on();
 }

-- 
2.39.5



