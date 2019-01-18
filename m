Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBH-0004M1-Uf
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id y126so5667543pfb.4
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:20 -0800
Message-Id: <20190118003827.17517-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190118003827.17517-1-andrew.smirnov@gmail.com>
References: <20190118003827.17517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/12] ARM64: mmu: Merge create_sections() and map_region()
 together
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Since map_region() is never called without being followed by
tlb_invalidate(), merge it with create_sections() to simplify the
code.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index d7c2542d1..ad94ff14d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -119,7 +119,8 @@ static void split_block(uint64_t *pte, int level)
 	set_table(pte, new_table);
 }
 
-static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t attr)
+static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
+			    uint64_t attr)
 {
 	uint64_t block_size;
 	uint64_t block_shift;
@@ -162,11 +163,7 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 		}
 
 	}
-}
 
-static void create_sections(uint64_t virt, uint64_t phys, uint64_t size, uint64_t flags)
-{
-	map_region(virt, phys, size, flags);
 	tlb_invalidate();
 }
 
@@ -183,9 +180,8 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 		return -EINVAL;
 	}
 
-	map_region((uint64_t)_start, (uint64_t)_start, (uint64_t)size, flags);
-	tlb_invalidate();
-
+	create_sections((uint64_t)_start, (uint64_t)_start, (uint64_t)size,
+			flags);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
