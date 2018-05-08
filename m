Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABp-0006IK-Cw
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:32 +0000
Received: by mail-pl0-x244.google.com with SMTP id f7-v6so2977526plr.4
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:39 -0700
Message-Id: <20180508212951.6446-17-andrew.smirnov@gmail.com>
In-Reply-To: <20180508212951.6446-1-andrew.smirnov@gmail.com>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/28] ARM: mmu: Use PAGE_SIZE when specifying size of one page
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 228fef433..b4cc474d8 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -271,7 +271,7 @@ static void create_vector_table(unsigned long adr)
 	u32 *exc;
 	int idx;
 
-	vectors_sdram = request_sdram_region("vector table", adr, SZ_4K);
+	vectors_sdram = request_sdram_region("vector table", adr, PAGE_SIZE);
 	if (vectors_sdram) {
 		/*
 		 * The vector table address is inside the SDRAM physical
@@ -352,7 +352,7 @@ static void create_zero_page(void)
 	struct resource *zero_sdram;
 	u32 *zero;
 
-	zero_sdram = request_sdram_region("zero page", 0x0, SZ_4K);
+	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);
 	if (zero_sdram) {
 		/*
 		 * Here we would need to set the second level page table
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
