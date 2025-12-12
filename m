Delivery-date: Fri, 12 Dec 2025 12:11:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU13O-00AeGj-2Z
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 12:11:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU13O-0003TR-4h
	for lore@pengutronix.de; Fri, 12 Dec 2025 12:11:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p5Lhd/u8dmU9ACXCIua9asYJxL6g4bpQL5+XW7FaxhU=; b=PlUNXRQX+Rsys1XZnDh4UNjqrn
	3x35YlVFI85l3ig3r2Lx+275em4u/MnUBDKVFeFmuOkCD6gfNph6R6VRw04SGQNU1C6N4uVMqDn0a
	Sb9HRECTdS1qSTkRbsjqIBMZ0816HeiKJrDe6khu7YnjZQFpSACvXfdBvg4ZRzgwss9oq2wDcDLk7
	4L2JKFv8KoaxXomVQMjQFBUHwA9VTRoo805MeE86Z95pxSY5rVXWqPnLMpUM83kouSCYcHcQ7J/4M
	6fp5YobsiISOXUXevG4tEqZrUXcm8I97HOpsFposcWJu7X0z4fBIcOHr/32J6PDDx7iZANRk+Ee/h
	gHYJwKQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU12c-00000000SSD-04AS;
	Fri, 12 Dec 2025 11:10:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU12Y-00000000SRn-2kpq
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 11:10:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU12U-0003IE-Ev; Fri, 12 Dec 2025 12:10:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU12U-005HVh-0t;
	Fri, 12 Dec 2025 12:10:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU12U-0000000B05L-0hcB;
	Fri, 12 Dec 2025 12:10:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Dec 2025 12:10:19 +0100
Message-ID: <20251212111021.2620877-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_031026_700195_AE0E8F5D 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM64: mmu: implement mmu_disable completely in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Splitting mmu_disable into two noinline function on a RK3568 leads to a
barebox crash, because the code has the implicit assumption that the
compiler won't generate memory accesses including spilling to stack.

We can't guarantee this in C code, so implement the procedure in
assembly.

While at it, drop mmu_early_disable(), which is unused, superfluous and
suffers from the same issue as old mmu_disable().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix copy-paste problem in some ELs (Ulrich)
---
 arch/arm/cpu/cache-armv8.S   | 54 ++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_64.c        | 27 +-----------------
 arch/arm/include/asm/cache.h |  1 +
 arch/arm/include/asm/mmu.h   |  1 -
 4 files changed, 56 insertions(+), 27 deletions(-)

diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
index 9d9e0fb585a1..130338d6034f 100644
--- a/arch/arm/cpu/cache-armv8.S
+++ b/arch/arm/cpu/cache-armv8.S
@@ -9,6 +9,7 @@
 
 #include <linux/linkage.h>
 #include <init.h>
+#include <asm/system.h>
 
 /*
  * void v8_flush_dcache_level(level)
@@ -120,6 +121,59 @@ ENTRY(v8_invalidate_dcache_all)
 	ret
 ENDPROC(v8_invalidate_dcache_all)
 
+/*
+ * void v8_mmu_disable(void)
+ *
+ * Implements the equivalent of following C code:
+ *
+ *	set_cr(get_cr() & ~(CR_M | CR_C))
+ *	v8_flush_dcache_all();
+ *	tlb_invalidate();
+ *
+ *	dsb();
+ *	isb();
+ *
+ * As D$ needs to be cleaned after it was disabled, this procedure
+ * is not permitted to trigger memory access, including spilling
+ * locals to stack. It's thus necessarily needs to be implemented
+ * in assembly.
+ */
+.section .text.v8_mmu_disable
+ENTRY(v8_mmu_disable)
+	mov	x14, lr
+	mov	x1, #~(CR_C | CR_M)
+	mrs	x0, currentel
+	lsr	w0, w0, #2		/* w0 <- current exception level */
+	cmp	w0, #0x1
+	b.eq	1f
+	cmp 	w0, #0x2
+	b.eq	2f
+3:	/* EL3 */
+	mrs	x0, sctlr_el3
+	and	x0, x0, x1
+	msr	sctlr_el3, x0
+	bl	v8_flush_dcache_all
+	tlbi	alle3
+	b	0f
+2:	/* EL2 */
+	mrs	x0, sctlr_el2
+	and	x0, x0, x1
+	msr	sctlr_el2, x0
+	bl	v8_flush_dcache_all
+	tlbi	alle2
+	b	0f
+1:	/* EL1 */
+	mrs	x0, sctlr_el1
+	and	x0, x0, x1
+	msr	sctlr_el1, x0
+	bl	v8_flush_dcache_all
+	tlbi	vmalle1
+0:	/* common prologue */
+	dsb 	sy
+	isb
+	ret	x14
+ENDPROC(v8_mmu_disable)
+
 /*
  * void v8_flush_dcache_range(start, end)
  *
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index f22fcb5f8ea4..56c6a21f2b2a 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -344,17 +344,7 @@ void __mmu_init(bool mmu_on)
 
 void mmu_disable(void)
 {
-	unsigned int cr;
-
-	cr = get_cr();
-	cr &= ~(CR_M | CR_C);
-
-	set_cr(cr);
-	v8_flush_dcache_all();
-	tlb_invalidate();
-
-	dsb();
-	isb();
+	v8_mmu_disable();
 }
 
 void dma_inv_range(void *ptr, size_t size)
@@ -436,18 +426,3 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 
 	mmu_enable();
 }
-
-void mmu_early_disable(void)
-{
-	unsigned int cr;
-
-	cr = get_cr();
-	cr &= ~(CR_M | CR_C);
-
-	set_cr(cr);
-	v8_flush_dcache_all();
-	tlb_invalidate();
-
-	dsb();
-	isb();
-}
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index dd022c1f23f2..ea78ae123aec 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -15,6 +15,7 @@ void v8_flush_dcache_all(void);
 void v8_invalidate_dcache_all(void);
 void v8_flush_dcache_range(unsigned long start, unsigned long end);
 void v8_inv_dcache_range(unsigned long start, unsigned long end);
+void v8_mmu_disable(void);
 
 static inline void icache_invalidate(void)
 {
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index eef6c53b5912..1fafbf9d77be 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -65,6 +65,5 @@ void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_base);
-void mmu_early_disable(void);
 
 #endif /* __ASM_MMU_H */
-- 
2.47.3



