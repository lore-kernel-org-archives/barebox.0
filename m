Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmU-0002PN-TV
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:32 +0000
Received: by mail-pl0-x241.google.com with SMTP id u6-v6so9985385pls.9
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:16:00 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:15:05 -0700
Message-Id: <20180522031510.25505-25-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 24/29] ARM: mmu: Use find_pte() to find PTE in
 create_vector_table()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's already a function that implement necessary arithemtic to find
offset within page table for a given address, so make use of it
instead of re-implementing it again.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 21394deb1..f9e4d1a50 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -272,8 +272,7 @@ static void create_vector_table(unsigned long adr)
 {
 	struct resource *vectors_sdram;
 	void *vectors;
-	u32 *exc;
-	int idx;
+	u32 *pte;
 
 	vectors_sdram = request_sdram_region("vector table", adr, PAGE_SIZE);
 	if (vectors_sdram) {
@@ -293,9 +292,9 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		exc = arm_create_pte(adr, pte_flags_uncached);
-		idx = (adr & (PGDIR_SIZE - 1)) >> PAGE_SHIFT;
-		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
+		arm_create_pte(adr, pte_flags_uncached);
+		pte = find_pte(adr);
+		*pte = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
 	}
 
 	arm_fixup_vectors();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
