Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosJ-0008BV-5X
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 35/78] ARM: aarch64: mmu: remove unused map_io_sections()
Date: Fri, 16 Mar 2018 13:53:11 +0100
Message-Id: <20180316125354.23462-36-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index fe1e5410f7..357e244042 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -202,16 +202,6 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size, uint64_
 	tlb_invalidate();
 }
 
-void *map_io_sections(unsigned long phys, void *_start, size_t size)
-{
-
-	map_region((uint64_t)_start, phys, (uint64_t)size, UNCACHED_MEM);
-
-	tlb_invalidate();
-	return _start;
-}
-
-
 int arch_remap_range(void *_start, size_t size, unsigned flags)
 {
 	map_region((uint64_t)_start, (uint64_t)_start, (uint64_t)size, flags);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
