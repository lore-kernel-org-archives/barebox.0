Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbbQ-0005Yk-8O
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:03:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 21:03:04 +0100
Message-Id: <1362427389-2144-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: make cpu architecture detection available as static
 inline function
To: barebox@lists.infradead.org

When we have multi cpu support compiled in we need the cpu architecture
early so that we can pick the correct cacheflush function. Make it available
as static inline function and add a comment above it that this function
normally should not be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c                 | 34 +-----------------------------
 arch/arm/include/asm/system_info.h | 43 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 33 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 5f697d7..f2e698d 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -148,45 +148,13 @@ postcore_initcall(execute_init);
 #endif
 
 #ifdef ARM_MULTIARCH
-static int __get_cpu_architecture(void)
-{
-	int cpu_arch;
-
-	if ((read_cpuid_id() & 0x0008f000) == 0) {
-		cpu_arch = CPU_ARCH_UNKNOWN;
-	} else if ((read_cpuid_id() & 0x0008f000) == 0x00007000) {
-		cpu_arch = (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_ARMv3;
-	} else if ((read_cpuid_id() & 0x00080000) == 0x00000000) {
-		cpu_arch = (read_cpuid_id() >> 16) & 7;
-		if (cpu_arch)
-			cpu_arch += CPU_ARCH_ARMv3;
-	} else if ((read_cpuid_id() & 0x000f0000) == 0x000f0000) {
-		unsigned int mmfr0;
-
-		/* Revised CPUID format. Read the Memory Model Feature
-		 * Register 0 and check for VMSAv7 or PMSAv7 */
-		asm("mrc	p15, 0, %0, c0, c1, 4"
-		    : "=r" (mmfr0));
-		if ((mmfr0 & 0x0000000f) >= 0x00000003 ||
-		    (mmfr0 & 0x000000f0) >= 0x00000030)
-			cpu_arch = CPU_ARCH_ARMv7;
-		else if ((mmfr0 & 0x0000000f) == 0x00000002 ||
-			 (mmfr0 & 0x000000f0) == 0x00000020)
-			cpu_arch = CPU_ARCH_ARMv6;
-		else
-			cpu_arch = CPU_ARCH_UNKNOWN;
-	} else
-		cpu_arch = CPU_ARCH_UNKNOWN;
-
-	return cpu_arch;
-}
 
 int __cpu_architecture;
 
 int __pure cpu_architecture(void)
 {
 	if(__cpu_architecture == CPU_ARCH_UNKNOWN)
-		__cpu_architecture = __get_cpu_architecture();
+		__cpu_architecture = arm_early_get_cpu_architecture();
 
 	return __cpu_architecture;
 }
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 56ebb11..50769ec 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -110,8 +110,51 @@
 #ifndef __ASSEMBLY__
 
 #ifdef ARM_MULTIARCH
+/*
+ * Early version to get the ARM cpu architecture. Only needed during
+ * early startup when the C environment is not yet fully initialized.
+ * Normally you should use cpu_architecture() instead.
+ */
+static inline int arm_early_get_cpu_architecture(void)
+{
+	int cpu_arch;
+
+	if ((read_cpuid_id() & 0x0008f000) == 0) {
+		cpu_arch = CPU_ARCH_UNKNOWN;
+	} else if ((read_cpuid_id() & 0x0008f000) == 0x00007000) {
+		cpu_arch = (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_ARMv3;
+	} else if ((read_cpuid_id() & 0x00080000) == 0x00000000) {
+		cpu_arch = (read_cpuid_id() >> 16) & 7;
+		if (cpu_arch)
+			cpu_arch += CPU_ARCH_ARMv3;
+	} else if ((read_cpuid_id() & 0x000f0000) == 0x000f0000) {
+		unsigned int mmfr0;
+
+		/* Revised CPUID format. Read the Memory Model Feature
+		 * Register 0 and check for VMSAv7 or PMSAv7 */
+		asm("mrc	p15, 0, %0, c0, c1, 4"
+		    : "=r" (mmfr0));
+		if ((mmfr0 & 0x0000000f) >= 0x00000003 ||
+		    (mmfr0 & 0x000000f0) >= 0x00000030)
+			cpu_arch = CPU_ARCH_ARMv7;
+		else if ((mmfr0 & 0x0000000f) == 0x00000002 ||
+			 (mmfr0 & 0x000000f0) == 0x00000020)
+			cpu_arch = CPU_ARCH_ARMv6;
+		else
+			cpu_arch = CPU_ARCH_UNKNOWN;
+	} else
+		cpu_arch = CPU_ARCH_UNKNOWN;
+
+	return cpu_arch;
+}
+
 extern int __pure cpu_architecture(void);
 #else
+static inline int __pure arm_early_get_cpu_architecture(void)
+{
+	return ARM_ARCH;
+}
+
 static inline int __pure cpu_architecture(void)
 {
 	return ARM_ARCH;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
