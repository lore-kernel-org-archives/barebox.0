Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZf-0008QW-Pj
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:37 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6E8F5E0007
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:10 +0200
Message-Id: <20200330143915.663705-3-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
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
Subject: [PATCH 3/8] ARM: stm32mp: init: fix up CPU device tree nodes
To: barebox@lists.infradead.org

To facilitate using the same barebox binary for multiple variants of the
STM32MP15x, have it fix up the CPU device tree nodes.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-stm32mp/init.c | 45 ++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 8a50657664b1..d687e44af1ff 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -75,6 +75,9 @@
 #define TAMP_BOOT_FORCED_MASK           GENMASK(7, 0)
 #define TAMP_BOOT_DEBUG_ON              BIT(16)
 
+#define FIXUP_CPU_MASK(num, mhz) (((num) << 16) | (mhz))
+#define FIXUP_CPU_NUM(mask) ((mask) >> 16)
+#define FIXUP_CPU_HZ(mask) (((mask) & GENMASK(15, 0)) * 1000UL * 1000UL)
 
 static enum stm32mp_forced_boot_mode __stm32mp_forced_boot_mode;
 enum stm32mp_forced_boot_mode st32mp_get_forced_boot_mode(void)
@@ -192,48 +195,87 @@ static int get_cpu_package(u32 *pkg)
 	return 0;
 }
 
+static int stm32mp15_fixup_cpus(struct device_node *root, void *_ctx)
+{
+	unsigned long ctx = (unsigned long)_ctx;
+	struct device_node *cpus_node, *np, *tmp;
+
+	cpus_node = of_find_node_by_name(root, "cpus");
+	if (!cpus_node)
+		return 0;
+
+	for_each_child_of_node_safe(cpus_node, tmp, np) {
+		u32 cpu_index;
+
+		if (of_property_read_u32(np, "reg", &cpu_index))
+			continue;
+
+		if (cpu_index >= FIXUP_CPU_NUM(ctx)) {
+			of_delete_node(np);
+			continue;
+		}
+
+		of_property_write_u32(np, "clock-frequency", FIXUP_CPU_HZ(ctx));
+	}
+
+	return 0;
+}
+
 static int setup_cpu_type(void)
 {
 	const char *cputypestr, *cpupkgstr, *cpurevstr;
+	unsigned long fixupctx = 0;
 	u32 pkg;
 
 	get_cpu_type(&__stm32mp_cputype);
 	switch (__stm32mp_cputype) {
 	case CPU_STM32MP157Fxx:
 		cputypestr = "157F";
+		fixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP157Dxx:
 		cputypestr = "157D";
+		fixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP157Cxx:
 		cputypestr = "157C";
+		fixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP157Axx:
 		cputypestr = "157A";
+		fixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP153Fxx:
 		cputypestr = "153F";
+		fixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP153Dxx:
 		cputypestr = "153D";
+		fixupctx = FIXUP_CPU_MASK(2, 800);
 		break;
 	case CPU_STM32MP153Cxx:
 		cputypestr = "153C";
+		fixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP153Axx:
 		cputypestr = "153A";
+		fixupctx = FIXUP_CPU_MASK(2, 650);
 		break;
 	case CPU_STM32MP151Cxx:
 		cputypestr = "151C";
+		fixupctx = FIXUP_CPU_MASK(1, 650);
 		break;
 	case CPU_STM32MP151Axx:
 		cputypestr = "151A";
+		fixupctx = FIXUP_CPU_MASK(1, 650);
 		break;
 	case CPU_STM32MP151Fxx:
 		cputypestr = "151F";
+		fixupctx = FIXUP_CPU_MASK(1, 800);
 		break;
 	case CPU_STM32MP151Dxx:
 		cputypestr = "151D";
+		fixupctx = FIXUP_CPU_MASK(1, 800);
 		break;
 	default:
 		cputypestr = "????";
@@ -278,6 +320,9 @@ static int setup_cpu_type(void)
 		 __stm32mp_cputype, pkg, __stm32mp_silicon_revision);
 	pr_info("detected STM32MP%s%s Rev.%s\n", cputypestr, cpupkgstr, cpurevstr);
 
+	if (fixupctx)
+		return of_register_fixup(stm32mp15_fixup_cpus, (void*)fixupctx);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
