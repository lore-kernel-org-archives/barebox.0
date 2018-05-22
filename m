Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22b.google.com ([2607:f8b0:400e:c01::22b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmE-0002F0-4h
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:08 +0000
Received: by mail-pl0-x22b.google.com with SMTP id t12-v6so9984946plo.7
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:14:52 -0700
Message-Id: <20180522031510.25505-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 11/29] ARM: mmu: Share PMD_SECT_DEF_CACHED
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Share PMD_SECT_DEF_CACHED between mmu.c and mmu-early.c.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 3 +--
 arch/arm/cpu/mmu.h       | 1 +
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index d9aafdd8a..d39a03ed9 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -15,8 +15,7 @@ static void map_cachable(unsigned long start, unsigned long size)
 	start = ALIGN_DOWN(start, SZ_1M);
 	size  = ALIGN(size, SZ_1M);
 
-	create_sections(ttb, start, start + size - 1, PMD_SECT_AP_WRITE |
-			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
+	create_sections(ttb, start, start + size - 1, PMD_SECT_DEF_CACHED);
 }
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 0c9e44cd2..efe4091c6 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -42,6 +42,7 @@ create_sections(uint32_t *ttb, unsigned long first,
 }
 
 #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
+#define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 
 static inline void create_flat_mapping(uint32_t *ttb)
 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
