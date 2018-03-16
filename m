Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosJ-0008BO-5S
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 41/78] ARM: aarch64: mmu: Fix adding additional page table
 levels
Date: Fri, 16 Mar 2018 13:53:17 +0100
Message-Id: <20180316125354.23462-42-s.hauer@pengutronix.de>
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

When we create a higher level page table we have to initialize it
with the settings from the previous lower level page table so that
we do not modify unrelated mappings. split_block() is taken from
U-Boot code and does this job.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index baa443f9e2..2934ad12cd 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -123,10 +123,8 @@ static uint64_t *get_level_table(uint64_t *pte)
 {
 	uint64_t *table = (uint64_t *)(*pte & XLAT_ADDR_MASK);
 
-	if (pte_type(pte) != PTE_TYPE_TABLE) {
-		table = create_table();
-		set_table(pte, table);
-	}
+	if (pte_type(pte) != PTE_TYPE_TABLE)
+		BUG();
 
 	return table;
 }
@@ -154,6 +152,36 @@ static __maybe_unused uint64_t *find_pte(uint64_t addr)
 	return pte;
 }
 
+#define MAX_PTE_ENTRIES 512
+
+/* Splits a block PTE into table with subpages spanning the old block */
+static void split_block(uint64_t *pte, int level)
+{
+	uint64_t old_pte = *pte;
+	uint64_t *new_table;
+	uint64_t i = 0;
+	int levelshift;
+
+	if ((*pte & PTE_TYPE_MASK) == PTE_TYPE_TABLE)
+		return;
+
+	/* level describes the parent level, we need the child ones */
+	levelshift = level2shift(level + 1);
+
+	new_table = create_table();
+
+	for (i = 0; i < MAX_PTE_ENTRIES; i++) {
+		new_table[i] = old_pte | (i << levelshift);
+
+		/* Level 3 block PTEs have the table type */
+		if ((level + 1) == 3)
+			new_table[i] |= PTE_TYPE_TABLE;
+	}
+
+	/* Set the new table into effect */
+	set_table(pte, new_table);
+}
+
 static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t attr)
 {
 	uint64_t block_size;
@@ -191,7 +219,8 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 				phys += block_size;
 				size -= block_size;
 				break;
-
+			} else {
+				split_block(pte, level);
 			}
 
 			table = get_level_table(pte);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
