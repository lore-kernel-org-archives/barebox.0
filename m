Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIF0Z-0001Ji-0y
 for barebox@lists.infradead.org; Wed, 09 Oct 2019 16:40:16 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2019 18:40:08 +0200
Message-Id: <20191009164009.24265-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191009164009.24265-1-a.fatoum@pengutronix.de>
References: <20191009164009.24265-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: mmu: set R/W bits in ARMv7 translation table
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>

From: Ahmad Fatoum <ahmad@a3f.at>

With barebox using the manager permissions for domain 0 that's used for
all page table entries and directories, we never had the need so far to
explicitly set R/W bits. We did so anyway for sections in the early MMU
code, but later on in the normal MMU setup, we didn't do so consistently.

In preparation for switching to DOMAIN_CLIENT for ARMv7, configure R/W
everywhere in normal MMU code as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/mmu.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 123e19e9e55c..f7158871fe6f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -56,13 +56,14 @@ static inline void tlb_invalidate(void)
 	);
 }
 
-#define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE)
-#define PTE_FLAGS_WC_V7 (PTE_EXT_TEX(1) | PTE_EXT_XN)
-#define PTE_FLAGS_UNCACHED_V7 PTE_EXT_XN
+#define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
+			     PTE_EXT_AP_URW_SRW)
+#define PTE_FLAGS_WC_V7 (PTE_EXT_TEX(1) | PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
+#define PTE_FLAGS_UNCACHED_V7 (PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
-#define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_TYPE_SECT | PMD_SECT_BUFFERABLE | \
-			 PMD_SECT_XN)
+#define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_SECT_DEF_UNCACHED | \
+			 PMD_SECT_BUFFERABLE | PMD_SECT_XN)
 #define PGD_FLAGS_UNCACHED_V7 (PMD_SECT_DEF_UNCACHED | PMD_SECT_XN)
 
 /*
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
