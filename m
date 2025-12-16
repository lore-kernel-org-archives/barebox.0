Delivery-date: Tue, 16 Dec 2025 11:53:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSg9-00C57O-09
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 11:53:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSg8-0007jG-CW
	for lore@pengutronix.de; Tue, 16 Dec 2025 11:53:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2aNV+OPv/dwyQqiztJi6/CYKG1rEqUi/+KmcBIJlPzg=; b=sOETKZ+I9tlCtFhf58CGQNb//Y
	eFC0LxP4cZ/NiTzKZg8TCWDh/veelCkt6FqrH7YPYBoUtwt5LBxy0rhfLgfS0tr/NmExVg3YEz92G
	RXecfLSWCuaojAf0Mjbbg2Ka+D1tcFW4JdGeSg71GvM5jugUzb8jCI0qEg1Lbey+8/JrWQfzS5F4D
	04IV1wU2jtMA+0zI0LpIG4DPHnEioOj6T3FWMhRwEzfAXN6kri04YiqkCbeXUZCUvJXY2/MglkL9G
	neEAutsx4R3QLbD+NizJ603ntKlQjtZezWq1Ec4hF08/Nxtx7zi7SgginW047EpoIIA4naOPwWLY5
	k8AehU0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSff-0000000547s-33EA;
	Tue, 16 Dec 2025 10:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSfd-0000000547W-0pwY
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVSfb-0007b5-H2; Tue, 16 Dec 2025 11:52:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVSfb-005vx0-14;
	Tue, 16 Dec 2025 11:52:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVSfb-0000000BQgd-0xn5;
	Tue, 16 Dec 2025 11:52:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Dec 2025 11:52:40 +0100
Message-ID: <20251216105242.2722918-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_025245_240244_64B33F5F 
X-CRM114-Status: GOOD (  14.39  )
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
Subject: [PATCH v3] ARM64: mmu: implement mmu_disable completely in assembly
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
v2 -> v3:
  - use switch_el (Sascha)
  - fix typo: s/prologue/epilogue/ at the end
v1 -> v2:
  - fix copy-paste problem in some ELs (Ulrich)
---
 arch/arm/cpu/cache-armv8.S   | 50 ++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_64.c        | 27 +------------------
 arch/arm/include/asm/cache.h |  1 +
 arch/arm/include/asm/mmu.h   |  1 -
 4 files changed, 52 insertions(+), 27 deletions(-)

diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
index 9d9e0fb585a1..e6f50886f924 100644
--- a/arch/arm/cpu/cache-armv8.S
+++ b/arch/arm/cpu/cache-armv8.S
@@ -9,6 +9,8 @@
 
 #include <linux/linkage.h>
 #include <init.h>
+#include <asm/system.h>
+#include <asm/assembler64.h>
 
 /*
  * void v8_flush_dcache_level(level)
@@ -120,6 +122,54 @@ ENTRY(v8_invalidate_dcache_all)
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
+	switch_el x0, 3f, 2f, 1f
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
+0:	/* common epilogue */
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
index 6fd1ff0d122a..bcaa984a40ed 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -70,6 +70,5 @@ void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_base);
-void mmu_early_disable(void);
 
 #endif /* __ASM_MMU_H */
-- 
2.47.3



