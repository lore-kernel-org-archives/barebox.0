Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UriH2-0003iX-NN
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 05:28:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 07:27:42 +0200
Message-Id: <1372224463-13629-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372224463-13629-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
 <1372224463-13629-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: Allow to pass a devicetree via boarddata
To: barebox@lists.infradead.org

Addionally to having a builtin DTB provide the possibility for
the board to provide a dtb via boarddata.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile              |  2 +-
 arch/arm/cpu/dtb.c                 | 22 ++++++++++++++++++++--
 arch/arm/cpu/start.c               | 20 ++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h |  2 ++
 4 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index c442b35..99973ae 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -8,7 +8,7 @@ obj-y += start.o setupc.o
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
-obj-$(CONFIG_BUILTIN_DTB) += dtb.o
+obj-$(CONFIG_OFDEVICE) += dtb.o
 obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
 pbl-$(CONFIG_MMU) += cache.o mmu-early.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index 10b73bd..a5881dd 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -17,20 +17,38 @@
 #include <common.h>
 #include <init.h>
 #include <of.h>
+#include <asm/barebox-arm.h>
 
 extern char __dtb_start[];
 
 static int of_arm_init(void)
 {
 	struct device_node *root;
+	void *fdt;
 
+	/* See if we already have a dtb */
 	root = of_get_root_node();
 	if (root)
 		return 0;
 
-	root = of_unflatten_dtb(NULL, __dtb_start);
-	if (root) {
+	/* See if we are provided a dtb in boarddata */
+	fdt = barebox_arm_boot_dtb();
+	if (fdt)
+		pr_debug("using boarddata provided DTB\n");
+
+	/* Next see if we have a builtin dtb */
+	if (!fdt && IS_ENABLED(CONFIG_BUILTIN_DTB)) {
+		fdt = __dtb_start;
 		pr_debug("using internal DTB\n");
+	}
+
+	if (!fdt) {
+		pr_debug("No DTB found\n");
+		return 0;
+	}
+
+	root = of_unflatten_dtb(NULL, fdt);
+	if (root) {
 		of_set_root_node(root);
 		if (IS_ENABLED(CONFIG_OFDEVICE))
 			of_probe();
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 5a3c629..1f397ec 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -24,6 +24,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <asm/unaligned.h>
 #include <asm/cache.h>
 #include <memory.h>
 
@@ -40,6 +41,13 @@ unsigned long barebox_arm_boarddata(void)
 	return barebox_boarddata;
 }
 
+static void *barebox_boot_dtb;
+
+void *barebox_arm_boot_dtb(void)
+{
+	return barebox_boot_dtb;
+}
+
 static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
@@ -66,6 +74,18 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 			mmu_early_enable(membase, memsize, endmem);
 	}
 
+	/*
+	 * If boarddata is a pointer inside valid memory and contains a
+	 * FDT magic then use it as later to probe devices
+	 */
+	if (boarddata > membase && boarddata < membase + memsize &&
+			get_unaligned_be32((void *)boarddata) == FDT_MAGIC) {
+		uint32_t totalsize = get_unaligned_be32((void *)boarddata + 4);
+		endmem -= ALIGN(totalsize, 64);
+		barebox_boot_dtb = (void *)endmem;
+		memcpy(barebox_boot_dtb, (void *)boarddata, totalsize);
+	}
+
 	if ((unsigned long)_text > membase + memsize ||
 			(unsigned long)_text < membase)
 		/*
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index cd8decf..ddcafd1 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -54,6 +54,8 @@ static inline void arm_fixup_vectors(void)
 }
 #endif
 
+void *barebox_arm_boot_dtb(void);
+
 /*
  * For relocatable binaries find a suitable start address for the
  * relocated binary. Beginning at the memory end substract the reserved
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
