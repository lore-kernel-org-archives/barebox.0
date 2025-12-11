Delivery-date: Thu, 11 Dec 2025 21:35:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnNj-00AQFu-2d
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:35:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnNj-0007dz-4x
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:35:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cp/wYk0OFnO52ASPq0rFpJEhikg6W1RqM9YmBQumS2Y=; b=En8xKHD4i07amr9DnRZpI6YPnb
	FGPM6i1O3C9oeCLF42XYIViXlxF828MpamIcdzhxRv0FUbrrbbxnU68BTsh/AHwBQIWWcqtvrawV7
	h/oz0Us6cvgLY2D7M7R/RV8TEPEthKCwZBHydwj8YkeZQSjZv63ZtR1USHEpIbbBNErdjs74mAs8H
	pEI7/aodw/Kte0zzaoR1M5NjAnso7qem6keCIqxZwqjxR3zy3WWCH7JR1cMDLSYVRucG6CbIk14HV
	rznR81Gt8Tow3494ZO3kSEsesUyj48Lfeo8zuV+Zcph3eUV0heUay4nWYucVMM9pOOJHxbEYuHTF7
	J8I7JOlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnND-0000000HF3F-07b9;
	Thu, 11 Dec 2025 20:34:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnNB-0000000HF2l-2EXJ
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=cp/wYk0OFnO52ASPq0rFpJEhikg6W1RqM9YmBQumS2Y=; b=GwLMXus1zZpkdRy31YeXie+pvn
	072adKYe4dDXsQ/py3Zr61w/ymSRkIHbDmCe/H3U6tp/I3Doqt09QTwSU8kluPJaLlBGss9y99sxU
	Mpge4rhDhWNhzBgyo3kLd2U/1NcVufmcOtNk5ES5yjL9Pb4z/nWm5FtUHletZyaL4ttNTUVtWcZ+g
	6qFuBlysd9K6/8fPjwDYMT2RQBbVDJbZLS+WqCS/toEQSG/dC4N1dI72DpSNK2w9noEohTSofN7Xc
	83UgBkfH1VA+x8ukHyokMkw0Zvl7GJpfhRPGMXKtl1xiv5vL6emZyafbis6k/Vm+2BDH76pKwy9bp
	18Ns38Eg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmVd-0000000FZQx-3Gv0
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:39:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnN8-0007V4-BW; Thu, 11 Dec 2025 21:34:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnN8-005BWB-0X;
	Thu, 11 Dec 2025 21:34:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnN8-00000009dBe-0Fww;
	Thu, 11 Dec 2025 21:34:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:34:44 +0100
Message-ID: <20251211203445.2293696-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193929_942415_FFF72579 
X-CRM114-Status: GOOD (  13.32  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: mmu: implement mmu_disable completely in assembly
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
 arch/arm/cpu/cache-armv8.S   | 54 ++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_64.c        | 27 +-----------------
 arch/arm/include/asm/cache.h |  1 +
 arch/arm/include/asm/mmu.h   |  1 -
 4 files changed, 56 insertions(+), 27 deletions(-)

diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
index 9d9e0fb585a1..b1847a2b9d1b 100644
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
+	msr	sctlr_el1, x0
+	bl	v8_flush_dcache_all
+	tlbi	alle3
+	b	0f
+2:	/* EL2 */
+	mrs	x0, sctlr_el2
+	and	x0, x0, x1
+	msr	sctlr_el1, x0
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



