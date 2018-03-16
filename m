Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0001qV-Vf
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 34/78] ARM: aarch64: mmu: fix creation of flat mapping
Date: Fri, 16 Mar 2018 13:53:10 +0100
Message-Id: <20180316125354.23462-35-s.hauer@pengutronix.de>
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

During initialization of the page tables we want to create a flat
uncached mapping for the whole address space. create_sections() takes
the size in bytes, not in MiB as assumed by the callees. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 6e22da9a26..fe1e5410f7 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -258,8 +258,8 @@ static int mmu_init(void)
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
-	/* create a flat mapping using 1MiB sections */
-	create_sections(0, 0, GRANULE_SIZE, UNCACHED_MEM);
+	/* create a flat mapping */
+	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
 
 	/* Map sdram cached. */
 	for_each_memory_bank(bank)
@@ -310,7 +310,7 @@ void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
 
 	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, UNCACHED_MEM);
 
-	create_sections(0, 0, 4096, UNCACHED_MEM);
+	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
 
 	create_sections(membase, membase, memsize, CACHED_MEM);
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
