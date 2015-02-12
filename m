Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1VJ-00082i-MN
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:40:58 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id BF6F926C2003
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:06 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:38 +0100
Message-Id: <1423777200-22965-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 02/24] ARM: move virt<->phys translation to io.h
To: barebox@lists.infradead.org

That's the place where Linux has them and other architectures would
implement this.

This will help in phasing out the direct usage of the ARM asm/mmu.h
header.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/include/asm/io.h  | 15 +++++++++++++++
 arch/arm/include/asm/mmu.h | 12 ------------
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 850a99c..0f938ec 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -69,4 +69,19 @@ extern void memset_io(volatile void __iomem *, int, size_t);
 #define setbits_8(addr, set) setbits(8, addr, set)
 #define clrsetbits_8(addr, clear, set) clrsetbits(8, addr, clear, set)
 
+#ifdef CONFIG_MMU
+unsigned long virt_to_phys(void *virt);
+void *phys_to_virt(unsigned long phys);
+#else
+static inline void *phys_to_virt(unsigned long phys)
+{
+	return (void *)phys;
+}
+
+static inline unsigned long virt_to_phys(void *mem)
+{
+	return (unsigned long)mem;
+}
+#endif
+
 #endif	/* __ASM_ARM_IO_H */
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 4234979..3d87588 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -39,8 +39,6 @@ void dma_free_coherent(void *mem, size_t size);
 void dma_clean_range(unsigned long, unsigned long);
 void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
-unsigned long virt_to_phys(void *virt);
-void *phys_to_virt(unsigned long phys);
 void remap_range(void *_start, size_t size, uint32_t flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
 uint32_t mmu_get_pte_cached_flags(void);
@@ -57,16 +55,6 @@ static inline void dma_free_coherent(void *mem, size_t size)
 	free(mem);
 }
 
-static inline void *phys_to_virt(unsigned long phys)
-{
-	return (void *)phys;
-}
-
-static inline unsigned long virt_to_phys(void *mem)
-{
-	return (unsigned long)mem;
-}
-
 static inline void dma_clean_range(unsigned long s, unsigned long e)
 {
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
