Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZM2-0008Iu-2E
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:17:56 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 10:17:21 +0100
Message-Id: <1324286241-23083-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
References: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arch/arm: mmu: add map_io_range()
To: barebox@lists.infradead.org

Add a function to remap an IO range into a virtual addresses
range. This is particulary usefull for the few devices
mapped at physical address 0, as the MTD boot devices.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/cpu/mmu.c         |   12 ++++++++++++
 arch/arm/include/asm/mmu.h |    6 ++++++
 2 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 8e4e81a..c6c91df 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -111,6 +111,18 @@ static void remap_range(void *_start, size_t size, uint32_t flags)
 	tlb_invalidate();
 }
 
+void *map_io_sections(unsigned long phys, void *_start, size_t size)
+{
+	unsigned long start = (unsigned long)_start, sec;
+
+	phys >>= 20;
+	for (sec = start; sec < start + size; sec += (1 << 20))
+		ttb[sec >> 20] = (phys++ << 20) | PMD_SECT_DEF_UNCACHED;
+
+	tlb_invalidate();
+	return _start;
+}
+
 /*
  * remap the memory bank described by mem cachable and
  * bufferable
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 9ca5e2a..f5ae7a8 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -32,6 +32,7 @@ void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
 unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
+void *map_io_sections(unsigned long physaddr, void *start, size_t size);
 
 #else
 static inline void *dma_alloc_coherent(size_t size)
@@ -66,6 +67,11 @@ static inline void dma_inv_range(unsigned long s, unsigned long e)
 {
 }
 
+static inline void *map_io_sections(unsigned long phys, void *start, size_t size)
+{
+	return (void *)phys;
+}
+
 #endif
 
 #ifdef CONFIG_CACHE_L2X0
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
