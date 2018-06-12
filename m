Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x231.google.com ([2607:f8b0:400e:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJE-0007Fe-Hd
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:33 +0000
Received: by mail-pl0-x231.google.com with SMTP id w17-v6so165503pll.9
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:53:00 -0700
Message-Id: <20180612205310.25745-45-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 44/54] ARM: mmu64: Trivial code simplification
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
