Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmD-0002ES-0p
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:01 +0000
Received: by mail-pf0-x235.google.com with SMTP id p12-v6so8020378pff.13
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:15:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:14:51 -0700
Message-Id: <20180522031510.25505-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 10/29] ARM: mmu: Share code for initial flat mapping
 creation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Code creating inital 4GiB flat mapping is identical between mmu.c and
mmu-early.c, so move it to mmu.h and share.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 4 +---
 arch/arm/cpu/mmu.c       | 6 +-----
 arch/arm/cpu/mmu.h       | 8 ++++++++
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index b10aa6fde..d9aafdd8a 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -5,7 +5,6 @@
 #include <asm/memory.h>
 #include <asm/system.h>
 #include <asm/cache.h>
-#include <asm/pgtable.h>
 
 #include "mmu.h"
 
@@ -30,8 +29,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	set_ttbr(ttb);
 	set_domain(DOMAIN_MANAGER);
 
-	create_sections(ttb, 0, SZ_4G - 1, PMD_SECT_AP_WRITE |
-			PMD_SECT_AP_READ | PMD_TYPE_SECT);
+	create_flat_mapping(ttb);
 
 	map_cachable(membase, memsize);
 
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index a9a5f2f8c..f0f279ffa 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -27,14 +27,12 @@
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <asm/cache.h>
-#include <asm/pgtable.h>
 #include <memory.h>
 #include <asm/system_info.h>
 #include <asm/sections.h>
 
 #include "mmu.h"
 
-#define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 
 static uint32_t *ttb;
@@ -459,9 +457,7 @@ static int mmu_init(void)
 	set_ttbr(ttb);
 	set_domain(DOMAIN_MANAGER);
 
-	/* create a flat mapping using 1MiB sections */
-	create_sections(ttb, 0, SZ_4G - 1, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
-			PMD_TYPE_SECT);
+	create_flat_mapping(ttb);
 	__mmu_cache_flush();
 
 	vectors_init();
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index fa01cbe4e..0c9e44cd2 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -1,6 +1,7 @@
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 
+#include <asm/pgtable.h>
 #include <linux/sizes.h>
 
 #ifdef CONFIG_MMU
@@ -40,5 +41,12 @@ create_sections(uint32_t *ttb, unsigned long first,
 	}
 }
 
+#define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
+
+static inline void create_flat_mapping(uint32_t *ttb)
+{
+	/* create a flat mapping using 1MiB sections */
+	create_sections(ttb, 0, SZ_4G - 1, PMD_SECT_DEF_UNCACHED);
+}
 
 #endif /* __ARM_MMU_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
