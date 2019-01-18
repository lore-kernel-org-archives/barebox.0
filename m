Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBF-0004Kr-Hb
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id a14so5497291plm.12
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:18 -0800
Message-Id: <20190118003827.17517-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/12] ARM: mmu: Share code for dma_(un)map_single()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Both ARM and ARM64 define DMA mapping/unmapping functions that are
exactly the same. Introduce mmu-common.c and move the code there so it
can be shared.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/Makefile     |  2 +-
 arch/arm/cpu/mmu-common.c | 25 +++++++++++++++++++++++++
 arch/arm/cpu/mmu.c        | 16 ----------------
 arch/arm/cpu/mmu_64.c     | 16 ----------------
 4 files changed, 26 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/cpu/mmu-common.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index a35db435c..8e1af8bf8 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,7 @@
 obj-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
-obj-$(CONFIG_MMU) += mmu$(S64).o
+obj-$(CONFIG_MMU) += mmu$(S64).o mmu-common.o
 lwl-y += lowlevel$(S64).o
 obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
new file mode 100644
index 000000000..5d5812974
--- /dev/null
+++ b/arch/arm/cpu/mmu-common.c
@@ -0,0 +1,25 @@
+
+#define pr_fmt(fmt)	"mmu: " fmt
+
+#include <common.h>
+#include <dma-dir.h>
+#include <dma.h>
+#include <mmu.h>
+
+#include "mmu.h"
+
+dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+			  enum dma_data_direction dir)
+{
+	unsigned long addr = (unsigned long)ptr;
+
+	dma_sync_single_for_device(addr, size, dir);
+
+	return addr;
+}
+
+void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+		      enum dma_data_direction dir)
+{
+	dma_sync_single_for_cpu(addr, size, dir);
+}
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 390ccc581..f134e8bb3 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -555,19 +555,3 @@ void dma_sync_single_for_device(dma_addr_t address, size_t size,
 			outer_cache.clean_range(address, address + size);
 	}
 }
-
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir)
-{
-	unsigned long addr = (unsigned long)ptr;
-
-	dma_sync_single_for_device(addr, size, dir);
-
-	return addr;
-}
-
-void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
-		      enum dma_data_direction dir)
-{
-	dma_sync_single_for_cpu(addr, size, dir);
-}
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index b6f30d1b3..e2dd5b4d8 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -291,19 +291,3 @@ void dma_sync_single_for_device(dma_addr_t address, size_t size,
 	else
 		v8_flush_dcache_range(address, address + size - 1);
 }
-
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir)
-{
-	unsigned long addr = (unsigned long)ptr;
-
-	dma_sync_single_for_device(addr, size, dir);
-
-	return addr;
-}
-
-void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
-		      enum dma_data_direction dir)
-{
-	dma_sync_single_for_cpu(addr, size, dir);
-}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
