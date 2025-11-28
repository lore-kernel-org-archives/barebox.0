Delivery-date: Fri, 28 Nov 2025 18:22:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2B3-005rHN-3D
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2B2-0001mi-Fo
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MkEeqbQJcg/dpxJpNMcUfAY61cRSXS4LRQWRdXJYM28=; b=OoQvmck6FnjJwr2kZVVofrD7TG
	fEQLmu0QpY431XGVhvBj6DWIveoyr/ZzSShv5GKf+8Yu5m4poAGO7fADE2H71TpMQnqAlWJ7Wtzz0
	MCHjSlhuOilENHwKYqHIcDs76+MtZ6lLzdlobxiQu4aXpXlQFFuShJF657GEmHk/k2KQvxM+tt072
	7lrVCWCu1FQbBkfLIB5i1SVMY8Ddl7hjjAMas7e8/WiKJEdqbCW3ewiWhALm5eF+aR/qTbkL4hA9N
	DgVNzhhcARi4YjiXudoMZhEmv3BxbxvVfKOClLdDGBP4NUYPqvHYjwi3vxZQpZHW0ygCW+jeKXP+1
	6Gt947Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2Ad-00000000j6c-1A1D;
	Fri, 28 Nov 2025 17:22:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2Aa-00000000j34-2LUW
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:22:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AZ-0001Ow-2V
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 18:22:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AY-002zVb-2q
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 18:22:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AY-000000009W0-3HoJ
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 18:22:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 18:22:05 +0100
Message-ID: <20251128172206.36551-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092208_759744_D1FDFCD1 
X-CRM114-Status: GOOD (  22.72  )
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
Subject: [PATCH] ARM: mmu: set up vectors prior to full MMU setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Interleaving vector table setup with zero page setup introduces an
unfortunate dependency: We need to call setup_pages after mapping the
SDRAM, so mapping the zero page as faulting is not overridden and we
need to do it before mapping the text area read-only, because the
vectors are relocated on ARM32.

Avoid this issue by setting up the vectors at core_initcall and only do
trap page setup during MMU init. This is already what is being done on
arm64.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/interrupts_32.c       | 83 ++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu-common.c          |  5 +-
 arch/arm/cpu/mmu_32.c              | 81 ++---------------------------
 arch/arm/cpu/mmu_32.h              |  2 +
 arch/arm/include/asm/barebox-arm.h |  5 ++
 5 files changed, 95 insertions(+), 81 deletions(-)

diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index 185646e38195..0b88db10fe48 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -15,6 +15,8 @@
 #include <asm/system_info.h>
 #include <init.h>
 
+#include "mmu_32.h"
+
 /* Avoid missing prototype warning, called from assembly */
 void do_undefined_instruction (struct pt_regs *pt_regs);
 void do_software_interrupt (struct pt_regs *pt_regs);
@@ -175,6 +177,87 @@ int data_abort_unmask(void)
 	return arm_data_abort_occurred != 0;
 }
 
+static unsigned long arm_vbar = ~0;
+
+unsigned long arm_get_vector_table(void)
+{
+	return arm_vbar;
+}
+
+#define ARM_HIGH_VECTORS	0xffff0000
+#define ARM_LOW_VECTORS		0x0
+
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
+		set_vbar(adr);
+	} else if (adr == ARM_HIGH_VECTORS) {
+		cr = get_cr();
+		cr |= CR_V;
+		set_cr(cr);
+		cr = get_cr();
+		if (!(cr & CR_V))
+			return -EINVAL;
+	} else if (adr == ARM_LOW_VECTORS) {
+		cr = get_cr();
+		cr &= ~CR_V;
+		set_cr(cr);
+		cr = get_cr();
+		if (cr & CR_V)
+			return -EINVAL;
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	pr_debug("Vectors are at 0x%08lx\n", adr);
+	arm_vbar = adr;
+
+	return 0;
+}
+
+static __maybe_unused int arm_init_vectors(void)
+{
+	/*
+	 * First try to use the vectors where they actually are, works
+	 * on ARMv7 and later.
+	 */
+	if (!set_vector_table((unsigned long)__exceptions_start)) {
+		arm_fixup_vectors();
+		return 0;
+	}
+
+	/*
+	 * Next try high vectors at 0xffff0000.
+	 */
+	if (!set_vector_table(ARM_HIGH_VECTORS)) {
+		create_vector_table(ARM_HIGH_VECTORS);
+		return 0;
+	}
+
+	/*
+	 * As a last resort use low vectors at 0x0. With this we can't
+	 * set the zero page to faulting and can't catch NULL pointer
+	 * exceptions.
+	 */
+	set_vector_table(ARM_LOW_VECTORS);
+	create_vector_table(ARM_LOW_VECTORS);
+
+	return 0;
+}
+#ifdef CONFIG_MMU
+core_initcall(arm_init_vectors);
+#endif
+
 #if IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL)
 void arm_pbl_init_exceptions(void)
 {
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 227ae4aa34e6..d193956ad359 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -157,11 +157,10 @@ static void mmu_remap_memory_banks(void)
 		remap_range_end_sans_text(pos, bank->res->end + 1, MAP_CACHED);
 	}
 
-	/* Do this while interrupt vectors are still writable */
-	setup_trap_pages();
-
 	remap_range((void *)code_start, code_size, MAP_CODE);
 	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
+
+	setup_trap_pages();
 }
 
 static int mmu_init(void)
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 63c412873ec8..912d14e8cf82 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -489,9 +489,6 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	return _start;
 }
 
-#define ARM_HIGH_VECTORS	0xffff0000
-#define ARM_LOW_VECTORS		0x0
-
 /**
  * create_vector_table - create a vector table at given address
  * @adr - The address where the vector table should be created
@@ -499,7 +496,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
  * After executing this function the vector table is found at the
  * virtual address @adr.
  */
-static void create_vector_table(unsigned long adr)
+void create_vector_table(unsigned long adr)
 {
 	struct resource *vectors_sdram;
 	void *vectors;
@@ -537,53 +534,6 @@ static void create_vector_table(unsigned long adr)
 	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
 }
 
-/**
- * set_vector_table - let CPU use the vector table at given address
- * @adr - The address of the vector table
- *
- * Depending on the CPU the possibilities differ. ARMv7 and later allow
- * to map the vector table to arbitrary addresses. Other CPUs only allow
- * vectors at 0xffff0000 or at 0x0.
- */
-static int set_vector_table(unsigned long adr)
-{
-	u32 cr;
-
-	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
-		pr_debug("Vectors are at 0x%08lx\n", adr);
-		set_vbar(adr);
-		return 0;
-	}
-
-	if (adr == ARM_HIGH_VECTORS) {
-		cr = get_cr();
-		cr |= CR_V;
-		set_cr(cr);
-		cr = get_cr();
-		if (cr & CR_V) {
-			pr_debug("Vectors are at 0x%08lx\n", adr);
-			return 0;
-		} else {
-			return -EINVAL;
-		}
-	}
-
-	if (adr == ARM_LOW_VECTORS) {
-		cr = get_cr();
-		cr &= ~CR_V;
-		set_cr(cr);
-		cr = get_cr();
-		if (cr & CR_V) {
-			return -EINVAL;
-		} else {
-			pr_debug("Vectors are at 0x%08lx\n", adr);
-			return 0;
-		}
-	}
-
-	return -EINVAL;
-}
-
 static void create_zero_page(void)
 {
 	/*
@@ -616,34 +566,9 @@ static void create_guard_page(void)
  */
 void setup_trap_pages(void)
 {
+	if (arm_get_vector_table() != 0x0)
+		create_zero_page();
 	create_guard_page();
-
-	/*
-	 * First try to use the vectors where they actually are, works
-	 * on ARMv7 and later.
-	 */
-	if (!set_vector_table((unsigned long)__exceptions_start)) {
-		arm_fixup_vectors();
-		create_zero_page();
-		return;
-	}
-
-	/*
-	 * Next try high vectors at 0xffff0000.
-	 */
-	if (!set_vector_table(ARM_HIGH_VECTORS)) {
-		create_zero_page();
-		create_vector_table(ARM_HIGH_VECTORS);
-		return;
-	}
-
-	/*
-	 * As a last resort use low vectors at 0x0. With this we can't
-	 * set the zero page to faulting and can't catch NULL pointer
-	 * exceptions.
-	 */
-	set_vector_table(ARM_LOW_VECTORS);
-	create_vector_table(ARM_LOW_VECTORS);
 }
 
 /*
diff --git a/arch/arm/cpu/mmu_32.h b/arch/arm/cpu/mmu_32.h
index 7a58a819f08a..195e677bad2e 100644
--- a/arch/arm/cpu/mmu_32.h
+++ b/arch/arm/cpu/mmu_32.h
@@ -71,4 +71,6 @@ static inline unsigned long attrs_uncached_mem(void)
 	return flags;
 }
 
+void create_vector_table(unsigned long adr);
+
 #endif /* __ARM_MMU_H */
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 11be8b85837e..e1d89d5684d3 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -46,10 +46,15 @@ unsigned long arm_mem_endmem_get(void);
 
 #ifdef CONFIG_ARM_EXCEPTIONS
 void arm_fixup_vectors(void);
+ulong arm_get_vector_table(void);
 #else
 static inline void arm_fixup_vectors(void)
 {
 }
+static inline ulong arm_get_vector_table(void)
+{
+	return ~0;
+}
 #endif
 
 #if IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL)
-- 
2.47.3



