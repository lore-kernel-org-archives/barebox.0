Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0001qT-SH
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 32/78] ARM: aarch64: mmu: Allocate page tables dynamically
Date: Fri, 16 Mar 2018 13:53:08 +0100
Message-Id: <20180316125354.23462-33-s.hauer@pengutronix.de>
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

Current code allocates 16KiB for page tables. Whenever a new
table is needed an index is increased, but the bounds of this
index are never checked. Allocate the page tables dynamically
to solve this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 4803a85e4c..eb54097514 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -38,7 +38,6 @@
 #define UNCACHED_MEM    (PMD_ATTRINDX(MT_NORMAL_NC) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
 
 static uint64_t *ttb;
-static int free_idx;
 
 static void arm_mmu_not_initialized_error(void)
 {
@@ -108,13 +107,11 @@ static void set_table(uint64_t *pt, uint64_t *table_addr)
 
 static uint64_t *create_table(void)
 {
-	uint64_t *new_table = ttb + free_idx * GRANULE_SIZE;
+	uint64_t *new_table = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
 
 	/* Mark all entries as invalid */
 	memset(new_table, 0, GRANULE_SIZE);
 
-	free_idx++;
-
 	return new_table;
 }
 
@@ -253,8 +250,7 @@ static int mmu_init(void)
 			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
 				ttb);
 	} else {
-		ttb = memalign(GRANULE_SIZE, SZ_16K);
-		free_idx = 1;
+		ttb = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
 
 		memset(ttb, 0, GRANULE_SIZE);
 
@@ -312,7 +308,6 @@ void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
 	ttb = (uint64_t *)_ttb;
 
 	memset(ttb, 0, GRANULE_SIZE);
-	free_idx = 1;
 
 	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, UNCACHED_MEM);
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
