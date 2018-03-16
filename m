Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067n-4X
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:40 +0100
Message-Id: <20180316125354.23462-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/78] ARM: mmu: include pgtable header from where it's needed
To: Barebox List <barebox@lists.infradead.org>

Instead of #ifdefing the correct pgtable header file to include,
include it where it's needed. Also, move the memory type attributes
into there consumers, namely the mmu.c files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/qemu-virt64/init.c |  5 ++++-
 arch/arm/cpu/common.c              |  1 -
 arch/arm/cpu/mmu-early.c           |  1 +
 arch/arm/cpu/mmu.c                 |  4 ++++
 arch/arm/cpu/mmu_64.c              |  4 ++++
 arch/arm/cpu/start-pbl.c           |  1 -
 arch/arm/cpu/uncompress.c          |  1 -
 arch/arm/include/asm/mmu.h         | 15 ---------------
 8 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/qemu-virt64/init.c b/arch/arm/boards/qemu-virt64/init.c
index a85bd84db7..18831755df 100644
--- a/arch/arm/boards/qemu-virt64/init.c
+++ b/arch/arm/boards/qemu-virt64/init.c
@@ -8,6 +8,7 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
+#include <asm/pgtable64.h>
 #include <mach/devices.h>
 #include <environment.h>
 #include <linux/sizes.h>
@@ -66,7 +67,9 @@ postcore_initcall(virt_core_init);
 static int virt_mmu_enable(void)
 {
 	/* Mapping all periph and flash range */
-	arch_remap_range((void *)0x00000000, 0x40000000, DEV_MEM);
+	arch_remap_range((void *)0x00000000, 0x40000000,
+			 PMD_ATTRINDX(MT_DEVICE_nGnRnE) | PMD_SECT_AF |
+			 PMD_TYPE_SECT);
 
 	mmu_enable();
 
diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 6670f4b9f8..3c9864c0db 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -23,7 +23,6 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
-#include <asm/pgtable.h>
 #include <asm/cache.h>
 
 /*
diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 2e4d316924..1549f08985 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -5,6 +5,7 @@
 #include <asm/memory.h>
 #include <asm/system.h>
 #include <asm/cache.h>
+#include <asm/pgtable.h>
 
 #include "mmu.h"
 
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 459abe56ba..2c16579d79 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -27,11 +27,15 @@
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <asm/cache.h>
+#include <asm/pgtable.h>
 #include <memory.h>
 #include <asm/system_info.h>
 
 #include "mmu.h"
 
+#define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
+#define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
+
 static unsigned long *ttb;
 
 static void create_sections(unsigned long virt, unsigned long phys, int size_m,
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index bfd80c0913..fd41435746 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -25,6 +25,7 @@
 #include <errno.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
+#include <asm/pgtable64.h>
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <asm/cache.h>
@@ -33,6 +34,9 @@
 
 #include "mmu.h"
 
+#define CACHED_MEM      (PMD_ATTRINDX(MT_NORMAL) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
+#define UNCACHED_MEM    (PMD_ATTRINDX(MT_NORMAL_NC) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
+
 static uint64_t *ttb;
 static int free_idx;
 
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 865aa1b1c4..68b2bbf6fb 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -26,7 +26,6 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
-#include <asm/pgtable.h>
 #include <asm/cache.h>
 #include <asm/unaligned.h>
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 5530919118..2588e84b66 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -27,7 +27,6 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
-#include <asm/pgtable.h>
 #include <asm/cache.h>
 #include <asm/unaligned.h>
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index f68ab37143..2a1daeafe3 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -6,21 +6,6 @@
 #include <malloc.h>
 #include <xfuncs.h>
 
-#ifdef CONFIG_CPU_64v8
-#include <asm/pgtable64.h>
-
-#define DEV_MEM		(PMD_ATTRINDX(MT_DEVICE_nGnRnE) | PMD_SECT_AF | PMD_TYPE_SECT)
-#define CACHED_MEM	(PMD_ATTRINDX(MT_NORMAL) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
-#define UNCACHED_MEM	(PMD_ATTRINDX(MT_NORMAL_NC) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
-#else
-#include <asm/pgtable.h>
-
-#define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
-#define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
-#endif
-
-
-
 struct arm_memory;
 
 void mmu_enable(void);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
