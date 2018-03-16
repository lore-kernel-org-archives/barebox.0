Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosh-0006TO-2R
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:51 +0100
Message-Id: <20180316125354.23462-76-s.hauer@pengutronix.de>
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
Subject: [PATCH 75/78] ARM: Create own cache.c file for aarch64
To: Barebox List <barebox@lists.infradead.org>

cache.c does not work properly for aarch64. We create a struct cache_fns
using C preprocessor foo which assumes the existence of cache
maintenance operations with a certain name. These functions have other
names on aarch64. While we could fix this we do not need the automatic
cache function selection on aarch64 since here we only have one function
set.
Create a separate file and be done with this issue.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile   |  4 ++--
 arch/arm/cpu/cache.c    | 16 ----------------
 arch/arm/cpu/cache_64.c | 35 +++++++++++++++++++++++++++++++++++
 3 files changed, 37 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/cpu/cache_64.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index edd4a290ca..f79cedd085 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -10,7 +10,7 @@ endif
 
 obj-y += start.o entry.o
 
-obj-pbl-y += setupc$(S64).o
+obj-pbl-y += setupc$(S64).o cache$(S64).o
 
 #
 # Any variants can be called as start-armxyz.S
@@ -44,4 +44,4 @@ pbl-y += entry.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
 pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o
 
-obj-pbl-y += common.o cache.o sections.o
+obj-pbl-y += common.o sections.o
diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 1a8f49d301..7047470f0c 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -101,11 +101,6 @@ int arm_set_cache_functions(void)
 	case CPU_ARCH_ARMv7:
 		cache_fns = &cache_fns_armv7;
 		break;
-#endif
-#ifdef CONFIG_CPU_64v8
-	case CPU_ARCH_ARMv8:
-		cache_fns = &cache_fns_armv8;
-		break;
 #endif
 	default:
 		while(1);
@@ -143,11 +138,6 @@ void arm_early_mmu_cache_flush(void)
 	case CPU_ARCH_ARMv7:
 		v7_mmu_cache_flush();
 		return;
-#endif
-#ifdef CONFIG_CPU_64v8
-	case CPU_ARCH_ARMv8:
-		v8_flush_dcache_all();
-		return;
 #endif
 	}
 }
@@ -171,12 +161,6 @@ void arm_early_mmu_cache_invalidate(void)
 		v7_mmu_cache_invalidate();
 		return;
 #endif
-#else
-#ifdef CONFIG_CPU_64v8
-	case CPU_ARCH_ARMv8:
-		v8_invalidate_icache_all();
-		return;
-#endif
 #endif
 	}
 }
diff --git a/arch/arm/cpu/cache_64.c b/arch/arm/cpu/cache_64.c
new file mode 100644
index 0000000000..45f01e8dc9
--- /dev/null
+++ b/arch/arm/cpu/cache_64.c
@@ -0,0 +1,35 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+#include <asm/system_info.h>
+
+int arm_set_cache_functions(void)
+{
+	return 0;
+}
+
+/*
+ * Early function to flush the caches. This is for use when the
+ * C environment is not yet fully initialized.
+ */
+void arm_early_mmu_cache_flush(void)
+{
+	v8_flush_dcache_all();
+}
+
+void arm_early_mmu_cache_invalidate(void)
+{
+	v8_invalidate_icache_all();
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
