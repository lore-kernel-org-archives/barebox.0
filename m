Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2c6-0005zB-UZ
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:32 +0000
Received: by mail-pl0-x244.google.com with SMTP id e6-v6so1036364plt.11
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:20 -0700
Message-Id: <20180516200036.29829-13-andrew.smirnov@gmail.com>
In-Reply-To: <20180516200036.29829-1-andrew.smirnov@gmail.com>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/28] ARM: mmu: Drop needless shifting in map_io_sections()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of shifting phys right by 20 and then again left by the same
amount, just convert the code to expect it to be in unit of bytes all
the time.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 5600cfbe2..40bef016b 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -196,9 +196,8 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
 	unsigned long start = (unsigned long)_start, sec;
 
-	phys >>= 20;
-	for (sec = start; sec < start + size; sec += (1 << 20))
-		ttb[sec >> 20] = (phys++ << 20) | PMD_SECT_DEF_UNCACHED;
+	for (sec = start; sec < start + size; sec += (1 << 20), phys += SZ_1M)
+		ttb[sec >> 20] = phys | PMD_SECT_DEF_UNCACHED;
 
 	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
 	tlb_invalidate();
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
