Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCiRp-0001hQ-Bv
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 07:07:43 +0000
Received: by mail-wm0-x241.google.com with SMTP id k184so19925056wme.2
 for <barebox@lists.infradead.org>; Tue, 14 Jun 2016 00:07:25 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Tue, 14 Jun 2016 09:06:43 +0200
Message-Id: <1465888006-39463-10-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1465888006-39463-1-git-send-email-poggi.raph@gmail.com>
References: <1465888006-39463-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v2 09/12] arm: cpu: cpuinfo: add armv8 support
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/cpu/cpuinfo.c | 58 ++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 54 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 8b22e9b..86e19d9 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -30,12 +30,15 @@
 #define CPU_ARCH_ARMv5TEJ	7
 #define CPU_ARCH_ARMv6		8
 #define CPU_ARCH_ARMv7		9
+#define CPU_ARCH_ARMv8		10
 
 #define ARM_CPU_PART_CORTEX_A5      0xC050
 #define ARM_CPU_PART_CORTEX_A7      0xC070
 #define ARM_CPU_PART_CORTEX_A8      0xC080
 #define ARM_CPU_PART_CORTEX_A9      0xC090
 #define ARM_CPU_PART_CORTEX_A15     0xC0F0
+#define ARM_CPU_PART_CORTEX_A53	    0xD030
+#define ARM_CPU_PART_CORTEX_A57	    0xD070
 
 static void decode_cache(unsigned long size)
 {
@@ -60,6 +63,25 @@ static int do_cpuinfo(int argc, char *argv[])
 	int i;
 	int cpu_arch;
 
+#ifdef CONFIG_CPU_64v8
+	__asm__ __volatile__(
+		"mrs	%0, midr_el1\n"
+		: "=r" (mainid)
+		:
+		: "memory");
+
+	__asm__ __volatile__(
+		"mrs	%0, ctr_el0\n"
+		: "=r" (cache)
+		:
+		: "memory");
+
+	__asm__ __volatile__(
+		"mrs	%0, sctlr_el1\n"
+		: "=r" (cr)
+		:
+		: "memory");
+#else
 	__asm__ __volatile__(
 		"mrc    p15, 0, %0, c0, c0, 0   @ read control reg\n"
 		: "=r" (mainid)
@@ -74,9 +96,10 @@ static int do_cpuinfo(int argc, char *argv[])
 
 	__asm__ __volatile__(
 		"mrc    p15, 0, %0, c1, c0, 0   @ read control reg\n"
-			: "=r" (cr)
-			:
-			: "memory");
+		: "=r" (cr)
+		:
+		: "memory");
+#endif
 
 	switch (mainid >> 24) {
 	case 0x41:
@@ -107,6 +130,23 @@ static int do_cpuinfo(int argc, char *argv[])
 		if (cpu_arch)
 			cpu_arch += CPU_ARCH_ARMv3;
 	} else if ((mainid & 0x000f0000) == 0x000f0000) {
+#ifdef CONFIG_CPU_64v8
+		unsigned int isar2;
+
+		__asm__ __volatile__(
+			"mrs	%0, id_isar2_el1\n"
+			: "=r" (isar2)
+			:
+			: "memory");
+
+
+		/* Check Load/Store acquire to check if ARMv8 or not */
+
+		if (isar2 & 0x2)
+			cpu_arch = CPU_ARCH_ARMv8;
+		else
+			cpu_arch = CPU_ARCH_UNKNOWN;
+#else
 		unsigned int mmfr0;
 
 		/* Revised CPUID format. Read the Memory Model Feature
@@ -121,6 +161,7 @@ static int do_cpuinfo(int argc, char *argv[])
 			cpu_arch = CPU_ARCH_ARMv6;
 		else
 			cpu_arch = CPU_ARCH_UNKNOWN;
+#endif
 	} else
 		cpu_arch = CPU_ARCH_UNKNOWN;
 
@@ -152,6 +193,9 @@ static int do_cpuinfo(int argc, char *argv[])
 	case CPU_ARCH_ARMv7:
 		architecture = "v7";
 		break;
+	case CPU_ARCH_ARMv8:
+		architecture = "v8";
+		break;
 	case CPU_ARCH_UNKNOWN:
 	default:
 		architecture = "Unknown";
@@ -160,7 +204,7 @@ static int do_cpuinfo(int argc, char *argv[])
 	printf("implementer: %s\narchitecture: %s\n",
 			implementer, architecture);
 
-	if (cpu_arch == CPU_ARCH_ARMv7) {
+	if (cpu_arch >= CPU_ARCH_ARMv7) {
 		unsigned int major, minor;
 		char *part;
 		major = (mainid >> 20) & 0xf;
@@ -181,6 +225,12 @@ static int do_cpuinfo(int argc, char *argv[])
 		case ARM_CPU_PART_CORTEX_A15:
 			part = "Cortex-A15";
 			break;
+		case ARM_CPU_PART_CORTEX_A53:
+			part = "Cortex-A53";
+			break;
+		case ARM_CPU_PART_CORTEX_A57:
+			part = "Cortex-A57";
+			break;
 		default:
 			part = "unknown";
 		}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
