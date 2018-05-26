Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22c.google.com ([2607:f8b0:400e:c05::22c])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg6J-0005z5-81
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:47:44 +0000
Received: by mail-pg0-x22c.google.com with SMTP id 15-v6so3353655pge.2
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:47:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:46 -0700
Message-Id: <20180526204451.16530-44-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 43/48] ARM: mmu64: Trivial code simplification
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index d5a3d2223..80cf240d3 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -126,6 +126,7 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 	uint64_t idx;
 	uint64_t addr;
 	uint64_t *table;
+	uint64_t type;
 	int level;
 
 	if (!ttb)
@@ -145,11 +146,9 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 			pte = table + idx;
 
 			if (size >= block_size && IS_ALIGNED(addr, block_size)) {
-				if (level == 3)
-					*pte = phys | attr | PTE_TYPE_PAGE;
-				else
-					*pte = phys | attr | PTE_TYPE_BLOCK;
-
+				type = (level == 3) ?
+					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
+				*pte = phys | attr | type;
 				addr += block_size;
 				phys += block_size;
 				size -= block_size;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
