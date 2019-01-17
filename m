Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk1KF-0003wb-MH
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 06:38:56 +0000
Received: by mail-pf1-x441.google.com with SMTP id c123so4347993pfb.0
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 22:38:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 22:38:29 -0800
Message-Id: <20190117063840.13674-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190117063840.13674-1-andrew.smirnov@gmail.com>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/12] ARM: mmu: Drop custom virt_to_phys/phys_to_virt
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Neither ARM nor ARM64 define any address mapping functions that differ
from default provided for no-MMU configuration. Drop all the extra
code and just rely on functions provided in asm/io.h

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c        | 10 ----------
 arch/arm/cpu/mmu_64.c     | 10 ----------
 arch/arm/include/asm/io.h |  5 -----
 3 files changed, 25 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index fc48376f6..2b7b9e30a 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -524,16 +524,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-unsigned long virt_to_phys(volatile void *virt)
-{
-	return (unsigned long)virt;
-}
-
-void *phys_to_virt(unsigned long phys)
-{
-	return (void *)phys;
-}
-
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 99ddd5a44..b6f30d1b3 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -252,16 +252,6 @@ void mmu_disable(void)
 	isb();
 }
 
-unsigned long virt_to_phys(volatile void *virt)
-{
-	return (unsigned long)virt;
-}
-
-void *phys_to_virt(unsigned long phys)
-{
-	return (void *)phys;
-}
-
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret;
diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index d06ff8323..56db54634 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -69,10 +69,6 @@ extern void memset_io(volatile void __iomem *, int, size_t);
 #define setbits_8(addr, set) setbits(8, addr, set)
 #define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
 
-#ifdef CONFIG_MMU
-void *phys_to_virt(unsigned long phys);
-unsigned long virt_to_phys(volatile void *virt);
-#else
 static inline void *phys_to_virt(unsigned long phys)
 {
 	return (void *)phys;
@@ -82,6 +78,5 @@ static inline unsigned long virt_to_phys(volatile void *mem)
 {
 	return (unsigned long)mem;
 }
-#endif
 
 #endif	/* __ASM_ARM_IO_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
