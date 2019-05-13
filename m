Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9r9-0008DQ-Cf
 for barebox@lists.infradead.org; Mon, 13 May 2019 12:15:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 May 2019 14:14:55 +0200
Message-Id: <20190513121456.13853-2-s.hauer@pengutronix.de>
In-Reply-To: <20190513121456.13853-1-s.hauer@pengutronix.de>
References: <20190513121456.13853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: psci: factor out of_psci_fixup() to separate file
To: Barebox List <barebox@lists.infradead.org>

of_psci_fixup() can be used by code which doesn't use the barebox
psci implementation, but provides its own PSCI compatible firmware.
Factor it out to a separate file to compile it independently of the
barebox PSCI implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig            |  4 +++
 arch/arm/cpu/Makefile       |  1 +
 arch/arm/cpu/psci-of.c      | 54 +++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/psci.c         | 27 +++++--------------
 arch/arm/include/asm/psci.h |  2 ++
 5 files changed, 67 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/cpu/psci-of.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a683c9c866..480c6f0117 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -428,10 +428,14 @@ config ARM_SECURE_MONITOR
 	select ARM_SMCCC
 	bool
 
+config ARM_PSCI_OF
+	bool
+
 config ARM_PSCI
 	bool "enable Power State Coordination Interface (PSCI) support"
 	depends on CPU_V7
 	select ARM_SECURE_MONITOR
+	select ARM_PSCI_OF
 	help
 	  PSCI is used for controlling secondary CPU cores on some systems. Say
 	  yes here if you have one of these.
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 8e1af8bf8d..d2f1e7a90b 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -24,6 +24,7 @@ obj-$(CONFIG_CPU_32v7) += no-mmu.o
 endif
 
 obj-$(CONFIG_ARM_PSCI) += psci.o
+obj-$(CONFIG_ARM_PSCI_OF) += psci-of.o
 obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
 AFLAGS_smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
 AFLAGS_pbl-smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
diff --git a/arch/arm/cpu/psci-of.c b/arch/arm/cpu/psci-of.c
new file mode 100644
index 0000000000..ef83b0edee
--- /dev/null
+++ b/arch/arm/cpu/psci-of.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define pr_fmt(fmt) "psci-of: " fmt
+
+#include <common.h>
+#include <of.h>
+#include <asm/psci.h>
+#include <linux/arm-smccc.h>
+
+int of_psci_fixup(struct device_node *root, unsigned long psci_version)
+{
+	struct device_node *psci;
+	int ret;
+	const char *compat;
+	struct device_node *cpus, *cpu;
+
+	psci = of_create_node(root, "/psci");
+	if (!psci)
+		return -EINVAL;
+
+	if (psci_version >= ARM_PSCI_VER_1_0) {
+		compat = "arm,psci-1.0";
+	} else if (psci_version >= ARM_PSCI_VER_0_2) {
+		compat = "arm,psci-0.2";
+	} else {
+		pr_err("Unsupported PSCI version %ld\n", psci_version);
+		return -EINVAL;
+	}
+
+	cpus = of_find_node_by_path_from(root, "/cpus");
+	if (!cpus) {
+		pr_err("Cannot find /cpus node, PSCI fixup aborting\n");
+		return -EINVAL;
+	}
+
+	cpu = cpus;
+	while (1) {
+		cpu = of_find_node_by_type(cpu, "cpu");
+		if (!cpu)
+			break;
+		of_property_write_string(cpu, "enable-method", "psci");
+		pr_debug("Fixed %s\n", cpu->full_name);
+	}
+
+	ret = of_property_write_string(psci, "compatible", compat);
+	if (ret)
+		return ret;
+
+	ret = of_property_write_string(psci, "method", "smc");
+	if (ret)
+		return ret;
+
+	return 0;
+}
diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 3a1abd1421..5c662cd0b9 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -190,32 +190,17 @@ void psci_entry(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 r5, u32 r6,
 	}
 }
 
-static int of_psci_fixup(struct device_node *root, void *unused)
-{
-	struct device_node *psci;
-	int ret;
+/* Avoid missing prototype warning, called from assembly */
+int psci_cpu_entry_c(void);
 
+static int of_psci_do_fixup(struct device_node *root, void *unused)
+{
 	if (bootm_arm_security_state() < ARM_STATE_NONSECURE)
 		return 0;
 
-	psci = of_create_node(root, "/psci");
-	if (!psci)
-		return -EINVAL;
-
-	ret = of_property_write_string(psci, "compatible", "arm,psci-1.0");
-	if (ret)
-		return ret;
-
-	ret = of_property_write_string(psci, "method", "smc");
-	if (ret)
-		return ret;
-
-	return 0;
+	return of_psci_fixup(root, ARM_PSCI_VER_1_0);
 }
 
-/* Avoid missing prototype warning, called from assembly */
-int psci_cpu_entry_c(void);
-
 int psci_cpu_entry_c(void)
 {
 	void (*entry)(u32 context);
@@ -239,7 +224,7 @@ int psci_cpu_entry_c(void)
 
 static int armv7_psci_init(void)
 {
-	return of_register_fixup(of_psci_fixup, NULL);
+	return of_register_fixup(of_psci_do_fixup, NULL);
 }
 device_initcall(armv7_psci_init);
 
diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index e0c4525389..f2db967f3a 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -137,4 +137,6 @@ static inline int psci_printf(const char *fmt, ...)
 
 int psci_get_cpu_id(void);
 
+int of_psci_fixup(struct device_node *root, unsigned long psci_version);
+
 #endif /* __ARM_PSCI_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
