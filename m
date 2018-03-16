Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0001qG-Tr
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:19 +0100
Message-Id: <20180316125354.23462-44-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 43/78] ARM: aarch64: mmu: Fix TCR setting
To: Barebox List <barebox@lists.infradead.org>

A BITS_PER_VA value of 33 is a little small. Increase it to 39 which is
the maximum size we can do with 3 level page tables. The TCR value
depends on the current exception level, so we have to calculate the
value during runtime. To do this use a function derived from U-Boots
get_tcr function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.h               |  7 -------
 arch/arm/cpu/mmu_64.c            | 31 ++++++++++++++++++++++++++++---
 arch/arm/include/asm/pgtable64.h |  3 ++-
 3 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 186d408ead..5803cb6a83 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -3,13 +3,6 @@
 
 #ifdef CONFIG_CPU_64v8
 
-#define TCR_FLAGS		(TCR_TG0_4K | \
-		TCR_SHARED_OUTER | \
-		TCR_SHARED_INNER | \
-		TCR_IRGN_WBWA | \
-		TCR_ORGN_WBWA | \
-		TCR_T0SZ(BITS_PER_VA))
-
 #ifndef __ASSEMBLY__
 
 static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint64_t attr)
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index c7590fa33c..7932185885 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -54,6 +54,27 @@ static void arm_mmu_not_initialized_error(void)
 	panic("MMU not initialized\n");
 }
 
+static uint64_t calc_tcr(int el)
+{
+	u64 ips, va_bits;
+	u64 tcr;
+
+	ips = 2;
+	va_bits = BITS_PER_VA;
+
+	if (el == 1)
+		tcr = (ips << 32) | TCR_EPD1_DISABLE;
+	else if (el == 2)
+		tcr = (ips << 16);
+	else
+		tcr = (ips << 16);
+
+	/* PTWs cacheable, inner/outer WBWA and inner shareable */
+	tcr |= TCR_TG0_4K | TCR_SHARED_INNER | TCR_ORGN_WBWA | TCR_IRGN_WBWA;
+	tcr |= TCR_T0SZ(va_bits);
+
+	return tcr;
+}
 
 /*
  * Do it the simple way for now and invalidate the entire
@@ -254,6 +275,7 @@ static void mmu_enable(void)
 static int mmu_init(void)
 {
 	struct memory_bank *bank;
+	unsigned int el;
 
 	if (list_empty(&memory_banks))
 		/*
@@ -281,8 +303,8 @@ static int mmu_init(void)
 
 		memset(ttb, 0, GRANULE_SIZE);
 
-		set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS,
-				  MEMORY_ATTRIBUTES);
+		el = current_el();
+		set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
 	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
@@ -323,11 +345,14 @@ void mmu_disable(void)
 
 void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
 {
+	int el;
+
 	ttb = (uint64_t *)_ttb;
 
 	memset(ttb, 0, GRANULE_SIZE);
 
-	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, MEMORY_ATTRIBUTES);
+	el = current_el();
+	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
 
 	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
 
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index f2888c3ccd..d8382505d0 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -21,7 +21,7 @@
 #define UNUSED_DESC                0x6EbAAD0BBADbA6E0
 
 #define VA_START                   0x0
-#define BITS_PER_VA                33
+#define BITS_PER_VA                39
 
 /* Granule size of 4KB is being used */
 #define GRANULE_SIZE_SHIFT         12
@@ -116,6 +116,7 @@
 #define TCR_EL1_IPS_BITS	(UL(3) << 32)	/* 42 bits physical address */
 #define TCR_EL2_IPS_BITS	(3 << 16)	/* 42 bits physical address */
 #define TCR_EL3_IPS_BITS	(3 << 16)	/* 42 bits physical address */
+#define TCR_EPD1_DISABLE	(1 << 23)
 
 #define TCR_EL1_RSVD		(1 << 31)
 #define TCR_EL2_RSVD		(1 << 31 | 1 << 23)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
