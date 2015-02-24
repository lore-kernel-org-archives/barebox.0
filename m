Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YQMba-0000iW-8o
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 21:01:23 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 76CE418B4122
 for <barebox@lists.infradead.org>; Tue, 24 Feb 2015 22:00:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 24 Feb 2015 22:00:18 +0100
Message-Id: <1424811619-12636-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 1/2] arm: virt_to_phys should take a volatile ptr
To: barebox@lists.infradead.org

So users can pass in device memory pointers without provoking
warnings.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/cpu/mmu.c         | 2 +-
 arch/arm/include/asm/mmu.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index e733ec4..aaf66d4 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -393,7 +393,7 @@ void *dma_alloc_coherent(size_t size)
 	return ret;
 }
 
-unsigned long virt_to_phys(void *virt)
+unsigned long virt_to_phys(volatile void *virt)
 {
 	return (unsigned long)virt;
 }
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 4234979..c6e425f 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -39,7 +39,7 @@ void dma_free_coherent(void *mem, size_t size);
 void dma_clean_range(unsigned long, unsigned long);
 void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
-unsigned long virt_to_phys(void *virt);
+unsigned long virt_to_phys(volatile void *virt);
 void *phys_to_virt(unsigned long phys);
 void remap_range(void *_start, size_t size, uint32_t flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
@@ -62,7 +62,7 @@ static inline void *phys_to_virt(unsigned long phys)
 	return (void *)phys;
 }
 
-static inline unsigned long virt_to_phys(void *mem)
+static inline unsigned long virt_to_phys(volatile void *mem)
 {
 	return (unsigned long)mem;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
