Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zc-0004P3-04
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:18 +0200
Message-Id: <1316769860-24549-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] ARM mmu: find second level descriptors by walking the
	page table
To: barebox@lists.infradead.org

By doing this we can remove the ptes field in struct arm_memory
which won't be present in a generic memory bank structure anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c            |   39 ++++++++++++++++++++-------------------
 arch/arm/include/asm/memory.h |    1 -
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index b669349..6fa600f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -76,28 +76,28 @@ static u32 *arm_create_pte(unsigned long virt)
 	return table;
 }
 
+static u32 *find_pte(unsigned long adr)
+{
+	u32 *table;
+
+	if ((ttb[adr >> 20] & PMD_TYPE_MASK) != PMD_TYPE_TABLE)
+		BUG();
+
+	/* find the coarse page table base address */
+	table = (u32 *)(ttb[adr >> 20] & ~0x3ff);
+
+	/* find second level descriptor */
+	return &table[(adr >> PAGE_SHIFT) & 0xff];
+}
+
 static void remap_range(void *_start, size_t size, uint32_t flags)
 {
-	u32 pteentry;
-	struct arm_memory *mem;
 	unsigned long start = (unsigned long)_start;
 	u32 *p;
 	int numentries, i;
 
-	for_each_sdram_bank(mem) {
-		if (start >= mem->start && start < mem->start + mem->size)
-			goto found;
-	}
-
-	BUG();
-	return;
-
-found:
-	pteentry = (start - mem->start) >> PAGE_SHIFT;
-
 	numentries = size >> PAGE_SHIFT;
-
-	p = mem->ptes + pteentry;
+	p = find_pte(start);
 
 	for (i = 0; i < numentries; i++) {
 		p[i] &= ~PTE_MASK;
@@ -121,6 +121,7 @@ static int arm_mmu_remap_sdram(struct arm_memory *mem)
 	unsigned long ttb_end = (phys + mem->size) >> 20;
 	unsigned long num_ptes = mem->size >> 10;
 	int i, pte;
+	u32 *ptes;
 
 	debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
 			phys, mem->size);
@@ -132,20 +133,20 @@ static int arm_mmu_remap_sdram(struct arm_memory *mem)
 	if ((phys & (SZ_1M - 1)) || (mem->size & (SZ_1M - 1)))
 		return -EINVAL;
 
-	mem->ptes = memalign(0x400, num_ptes * sizeof(u32));
+	ptes = memalign(0x400, num_ptes * sizeof(u32));
 
 	debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
-			mem->ptes, ttb_start, ttb_end);
+			ptes, ttb_start, ttb_end);
 
 	for (i = 0; i < num_ptes; i++) {
-		mem->ptes[i] = (phys + i * 4096) | PTE_TYPE_SMALL |
+		ptes[i] = (phys + i * 4096) | PTE_TYPE_SMALL |
 			PTE_FLAGS_CACHED;
 	}
 
 	pte = 0;
 
 	for (i = ttb_start; i < ttb_end; i++) {
-		ttb[i] = (unsigned long)(&mem->ptes[pte]) | PMD_TYPE_TABLE |
+		ttb[i] = (unsigned long)(&ptes[pte]) | PMD_TYPE_TABLE |
 			(0 << 4);
 		pte += 256;
 	}
diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 93c2fe6..0729886 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -4,7 +4,6 @@
 struct arm_memory {
 	struct list_head list;
 	struct device_d *dev;
-	u32 *ptes;
 	unsigned long start;
 	unsigned long size;
 };
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
