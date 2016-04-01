Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxpe-0005IU-GV
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:05:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:05:19 +0200
Message-Id: <1459512319-32073-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
References: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: Rework vector table setup
To: Barebox List <barebox@lists.infradead.org>

The current vector table setup has some shortcomings. First of all
currently the case when the high vectors are inside SDRAM (that is,
SDRAM reaches the end of the address space) is not supported. In this
case we create a secondary page table for the section containing the
vectors which gets overwritten by the general SDRAM secondary page
table entries creation afterwards. On ARMv7 and later the exception
table setup can be improved: Here the vector table address is configurable
in the VBAR register. We can use this register to skip remapping the
vector table.

With this patch we first try to use the VBAR register before doing
something else. Also, when we have to use the high vectors we first
try a request_sdram_region to test if the vector table memory is already
mapped. While at it sprinkle some comments into the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c         | 164 +++++++++++++++++++++++++++++++++++----------
 arch/arm/lib/barebox.lds.S |   1 +
 2 files changed, 128 insertions(+), 37 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index bc5325f..a31bce4 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -272,59 +272,149 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
  */
 #define ARM_VECTORS_SIZE	(sizeof(u32) * 8 * 2)
 
-/*
- * Map vectors and zero page
+#define ARM_HIGH_VECTORS	0xffff0000
+#define ARM_LOW_VECTORS		0x0
+
+/**
+ * create_vector_table - create a vector table at given address
+ * @adr - The address where the vector table should be created
+ *
+ * After executing this function the vector table is found at the
+ * virtual address @adr.
  */
-static void vectors_init(void)
+static void create_vector_table(unsigned long adr)
 {
-	u32 *exc, *zero = NULL;
+	struct resource *vectors_sdram;
 	void *vectors;
-	u32 cr;
+	u32 *exc;
+	int idx;
 
-	cr = get_cr();
-	cr |= CR_V;
-	set_cr(cr);
-	cr = get_cr();
-
-	if (cr & CR_V) {
+	vectors_sdram = request_sdram_region("vector table", adr, SZ_4K);
+	if (vectors_sdram) {
 		/*
-		 * If we can use high vectors, create the second level
-		 * page table for the high vectors and zero page
+		 * The vector table address is inside the SDRAM physical
+		 * address space. Use the existing identity mapping for
+		 * the vector table.
 		 */
-		exc = arm_create_pte(0xfff00000);
-		zero = arm_create_pte(0x0);
-
-		/* Set the zero page to faulting */
-		zero[0] = 0;
+		pr_debug("Creating vector table, virt = phys = 0x%08lx\n", adr);
+		vectors = (void *)vectors_sdram->start;
 	} else {
 		/*
-		 * Otherwise map the vectors to the zero page. We have to
-		 * live without being able to catch NULL pointer dereferences
+		 * The vector table address is outside of SDRAM. Create
+		 * a secondary page table for the section and map
+		 * allocated memory to the vector address.
 		 */
-		exc = arm_create_pte(0x0);
-
-		if (cpu_architecture() >= CPU_ARCH_ARMv7) {
-			/*
-			 * ARMv7 CPUs allow to remap low vectors from
-			 * 0x0 to an arbitrary address using VBAR
-			 * register, so let's make sure we have it
-			 * pointing to the correct address
-			 */
-			set_vbar(0x0);
-		}
+		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
+		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
+			 vectors, adr);
+		exc = arm_create_pte(adr);
+		idx = (adr & (SZ_1M - 1)) >> PAGE_SHIFT;
+		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
 
 	arm_fixup_vectors();
 
-	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 	memset(vectors, 0, PAGE_SIZE);
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
+}
 
-	if (cr & CR_V)
-		exc[256 - 16] = (u32)vectors | PTE_TYPE_SMALL |
-			pte_flags_cached;
-	else
-		exc[0] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
+/**
+ * set_vector_table - let CPU use the vector table at given address
+ * @adr - The address of the vector table
+ *
+ * Depending on the CPU the possibilities differ. ARMv7 and later allow
+ * to map the vector table to arbitrary addresses. Other CPUs only allow
+ * vectors at 0xffff0000 or at 0x0.
+ */
+static int set_vector_table(unsigned long adr)
+{
+	u32 cr;
+
+	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+		pr_debug("Vectors are at 0x%08lx\n", adr);
+		set_vbar(adr);
+		return 0;
+	}
+
+	if (adr == ARM_HIGH_VECTORS) {
+		cr = get_cr();
+		cr |= CR_V;
+		set_cr(cr);
+		cr = get_cr();
+		if (cr & CR_V) {
+			pr_debug("Vectors are at 0x%08lx\n", adr);
+			return 0;
+		} else {
+			return -EINVAL;
+		}
+	}
+
+	if (adr == ARM_LOW_VECTORS) {
+		cr = get_cr();
+		cr &= ~CR_V;
+		set_cr(cr);
+		cr = get_cr();
+		if (cr & CR_V) {
+			return -EINVAL;
+		} else {
+			pr_debug("Vectors are at 0x%08lx\n", adr);
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static void create_zero_page(void)
+{
+	struct resource *zero_sdram;
+	u32 *zero;
+
+	zero_sdram = request_sdram_region("zero page", 0x0, SZ_4K);
+	if (zero_sdram) {
+		/*
+		 * Here we would need to set the second level page table
+		 * entry to faulting. This is not yet implemented.
+		 */
+		pr_debug("zero page is in SDRAM area, currently not supported\n");
+	} else {
+		zero = arm_create_pte(0x0);
+		zero[0] = 0;
+		pr_debug("Created zero page\n");
+	}
+}
+
+/*
+ * Map vectors and zero page
+ */
+static void vectors_init(void)
+{
+	/*
+	 * First try to use the vectors where they actually are, works
+	 * on ARMv7 and later.
+	 */
+	if (!set_vector_table((unsigned long)__exceptions_start)) {
+		arm_fixup_vectors();
+		create_zero_page();
+		return;
+	}
+
+	/*
+	 * Next try high vectors at 0xffff0000.
+	 */
+	if (!set_vector_table(ARM_HIGH_VECTORS)) {
+		create_zero_page();
+		create_vector_table(ARM_HIGH_VECTORS);
+		return;
+	}
+
+	/*
+	 * As a last resort use low vectors at 0x0. With this we can't
+	 * set the zero page to faulting and can't catch NULL pointer
+	 * exceptions.
+	 */
+	set_vector_table(ARM_LOW_VECTORS);
+	create_vector_table(ARM_LOW_VECTORS);
 }
 
 /*
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 5344557..6dc8bd2 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -43,6 +43,7 @@ SECTIONS
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
+		. = ALIGN(4);
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
