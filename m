Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIF0Z-0001Jk-3E
 for barebox@lists.infradead.org; Wed, 09 Oct 2019 16:40:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2019 18:40:09 +0200
Message-Id: <20191009164009.24265-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191009164009.24265-1-a.fatoum@pengutronix.de>
References: <20191009164009.24265-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] ARM: mmu: use client domain permissions to support ARMv7
 eXecute Never
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>

From: Ahmad Fatoum <ahmad@a3f.at>

The ARM Architecture Reference Manual notes[1]:
> When using the Short-descriptor translation table format, the XN
> attribute is not checked for domains marked as Manager.
> Therefore, the system must not include read-sensitive memory in
> domains marked as Manager, because the XN bit does not prevent
> speculative fetches from a Manager domain.

To avoid speculative access to read-sensitive memory-mapped peripherals
on ARMv7, let's use client domain permissions for all memory, so the XN
bit (and also R/W bits) can function.
This aligns us with what Linux is doing on ARMv7.

This fixes cache corruption instances that had been observed on the
i.MX6UL(L) when the instruction prefetcher speculates into memory following
the end of a 512M SDRAM[2].

While this is not necessary to avoid speculative accesses on < ARMv7,
we could probably have everything there in client domain as well, but
due to lack of test coverage, we'll restrict the change to ARMv7.

[1]: B3.7.2 - Execute-never restrictions on instruction fetching
[2]: "Cache Corruption on MX6UL(L)": https://community.nxp.com/thread/511925

Fixes: 0198567c4 ("ARM: mmu: mark uncached regions as eXecute never on v7")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/mmu-early.c | 7 ++++++-
 arch/arm/cpu/mmu.c       | 7 ++++++-
 arch/arm/cpu/mmu.h       | 1 +
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 2f5876fc46d8..7c30526b9499 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -29,7 +29,12 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	arm_set_cache_functions();
 
 	set_ttbr(ttb);
-	set_domain(DOMAIN_MANAGER);
+
+	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
+	if (cpu_architecture() >= CPU_ARCH_ARMv7)
+		set_domain(DOMAIN_CLIENT);
+	else
+		set_domain(DOMAIN_MANAGER);
 
 	/*
 	 * This marks the whole address space as uncachable as well as
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index f7158871fe6f..2c5c4b574928 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -446,7 +446,12 @@ void __mmu_init(bool mmu_on)
 		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
 
 		set_ttbr(ttb);
-		set_domain(DOMAIN_MANAGER);
+
+		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
+		if (cpu_architecture() >= CPU_ARCH_ARMv7)
+			set_domain(DOMAIN_CLIENT);
+		else
+			set_domain(DOMAIN_MANAGER);
 
 		create_flat_mapping(ttb);
 		__mmu_cache_flush();
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index c911ee209f51..6e7a4c0350a1 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -36,6 +36,7 @@ static inline void set_ttbr(void *ttb)
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
 }
 
+#define DOMAIN_CLIENT	1
 #define DOMAIN_MANAGER	3
 
 static inline void set_domain(unsigned val)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
