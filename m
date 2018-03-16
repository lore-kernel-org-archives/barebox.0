Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qH-2g
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 42/78] ARM: aarch64: mmu: Fix PTE_TYPE_* flags
Date: Fri, 16 Mar 2018 13:53:18 +0100
Message-Id: <20180316125354.23462-43-s.hauer@pengutronix.de>
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

When we reach level 3 page tables we set the PTE_TYPE_PAGE bit in attr.
This is wrong since in the outer loop we can fall back to a lower level
in which case the PTE_TYPE_PAGE may not be set.
Fix this by not modifying attr and instead compose the *pte value when
needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 2934ad12cd..c7590fa33c 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -208,13 +208,12 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 
 			pte = table + idx;
 
-			if (level == 3)
-				attr |= PTE_TYPE_PAGE;
-			else
-				attr |= PTE_TYPE_BLOCK;
-
 			if (size >= block_size && IS_ALIGNED(addr, block_size)) {
-				*pte = phys | attr;
+				if (level == 3)
+					*pte = phys | attr | PTE_TYPE_PAGE;
+				else
+					*pte = phys | attr | PTE_TYPE_BLOCK;
+
 				addr += block_size;
 				phys += block_size;
 				size -= block_size;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
