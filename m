Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqSp-000241-JK
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:12:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Oct 2012 09:12:15 +0200
Message-Id: <1349853136-18371-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349853136-18371-1-git-send-email-s.hauer@pengutronix.de>
References: <1349853136-18371-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: Add cpu_architecture() function
To: barebox@lists.infradead.org

Once we run on multiple SoCs we must know which arm architecture we
are on. Add cpu_architecture() from the kernel to detect it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c                 |   47 +++++++++++++++++
 arch/arm/include/asm/cputype.h     |  100 ++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/system_info.h |   60 ++++++++++++++++++++++
 3 files changed, 207 insertions(+)
 create mode 100644 arch/arm/include/asm/cputype.h
 create mode 100644 arch/arm/include/asm/system_info.h

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 87ba877..0a96d2d 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -28,6 +28,8 @@
 #include <asm/mmu.h>
 #include <asm/system.h>
 #include <asm/memory.h>
+#include <asm/system_info.h>
+#include <asm/cputype.h>
 
 /**
  * Enable processor's instruction cache
@@ -112,3 +114,48 @@ static int execute_init(void)
 }
 postcore_initcall(execute_init);
 #endif
+
+#ifdef ARM_MULTIARCH
+static int __get_cpu_architecture(void)
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
+int __cpu_architecture;
+
+int __pure cpu_architecture(void)
+{
+	if(__cpu_architecture == CPU_ARCH_UNKNOWN)
+		__cpu_architecture = __get_cpu_architecture();
+
+	return __cpu_architecture;
+}
+#endif
diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
new file mode 100644
index 0000000..f39939b
--- /dev/null
+++ b/arch/arm/include/asm/cputype.h
@@ -0,0 +1,100 @@
+#ifndef __ASM_ARM_CPUTYPE_H
+#define __ASM_ARM_CPUTYPE_H
+
+#include <linux/stringify.h>
+#include <linux/kernel.h>
+
+#define CPUID_ID	0
+#define CPUID_CACHETYPE	1
+#define CPUID_TCM	2
+#define CPUID_TLBTYPE	3
+#define CPUID_MPIDR	5
+
+#define CPUID_EXT_PFR0	"c1, 0"
+#define CPUID_EXT_PFR1	"c1, 1"
+#define CPUID_EXT_DFR0	"c1, 2"
+#define CPUID_EXT_AFR0	"c1, 3"
+#define CPUID_EXT_MMFR0	"c1, 4"
+#define CPUID_EXT_MMFR1	"c1, 5"
+#define CPUID_EXT_MMFR2	"c1, 6"
+#define CPUID_EXT_MMFR3	"c1, 7"
+#define CPUID_EXT_ISAR0	"c2, 0"
+#define CPUID_EXT_ISAR1	"c2, 1"
+#define CPUID_EXT_ISAR2	"c2, 2"
+#define CPUID_EXT_ISAR3	"c2, 3"
+#define CPUID_EXT_ISAR4	"c2, 4"
+#define CPUID_EXT_ISAR5	"c2, 5"
+
+extern unsigned int processor_id;
+
+#define read_cpuid(reg)							\
+	({								\
+		unsigned int __val;					\
+		asm("mrc	p15, 0, %0, c0, c0, " __stringify(reg)	\
+		    : "=r" (__val)					\
+		    :							\
+		    : "cc");						\
+		__val;							\
+	})
+#define read_cpuid_ext(ext_reg)						\
+	({								\
+		unsigned int __val;					\
+		asm("mrc	p15, 0, %0, c0, " ext_reg		\
+		    : "=r" (__val)					\
+		    :							\
+		    : "cc");						\
+		__val;							\
+	})
+
+/*
+ * The CPU ID never changes at run time, so we might as well tell the
+ * compiler that it's constant.  Use this function to read the CPU ID
+ * rather than directly reading processor_id or read_cpuid() directly.
+ */
+static inline unsigned int __attribute_const__ read_cpuid_id(void)
+{
+	return read_cpuid(CPUID_ID);
+}
+
+static inline unsigned int __attribute_const__ read_cpuid_cachetype(void)
+{
+	return read_cpuid(CPUID_CACHETYPE);
+}
+
+static inline unsigned int __attribute_const__ read_cpuid_tcmstatus(void)
+{
+	return read_cpuid(CPUID_TCM);
+}
+
+static inline unsigned int __attribute_const__ read_cpuid_mpidr(void)
+{
+	return read_cpuid(CPUID_MPIDR);
+}
+
+/*
+ * Intel's XScale3 core supports some v6 features (supersections, L2)
+ * but advertises itself as v5 as it does not support the v6 ISA.  For
+ * this reason, we need a way to explicitly test for this type of CPU.
+ */
+#ifndef CONFIG_CPU_XSC3
+#define cpu_is_xsc3()	0
+#else
+static inline int cpu_is_xsc3(void)
+{
+	unsigned int id;
+	id = read_cpuid_id() & 0xffffe000;
+	/* It covers both Intel ID and Marvell ID */
+	if ((id == 0x69056000) || (id == 0x56056000))
+		return 1;
+
+	return 0;
+}
+#endif
+
+#if !defined(CONFIG_CPU_XSCALE) && !defined(CONFIG_CPU_XSC3)
+#define	cpu_is_xscale()	0
+#else
+#define	cpu_is_xscale()	1
+#endif
+
+#endif
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
new file mode 100644
index 0000000..5b67631
--- /dev/null
+++ b/arch/arm/include/asm/system_info.h
@@ -0,0 +1,60 @@
+#ifndef __ASM_ARM_SYSTEM_INFO_H
+#define __ASM_ARM_SYSTEM_INFO_H
+
+#define CPU_ARCH_UNKNOWN	0
+#define CPU_ARCH_ARMv3		1
+#define CPU_ARCH_ARMv4		2
+#define CPU_ARCH_ARMv4T		3
+#define CPU_ARCH_ARMv5		4
+#define CPU_ARCH_ARMv5T		5
+#define CPU_ARCH_ARMv5TE	6
+#define CPU_ARCH_ARMv5TEJ	7
+#define CPU_ARCH_ARMv6		8
+#define CPU_ARCH_ARMv7		9
+
+#ifdef CONFIG_CPU_32v4T
+#ifdef ARM_ARCH
+#define ARM_MULTIARCH
+#else
+#define ARM_ARCH CPU_ARCH_ARMv4T
+#endif
+#endif
+
+#ifdef CONFIG_CPU_32v5
+#ifdef ARM_ARCH
+#define ARM_MULTIARCH
+#else
+#define ARM_ARCH CPU_ARCH_ARMv5
+#endif
+#endif
+
+#ifdef CONFIG_CPU_32v6
+#ifdef ARM_ARCH
+#define ARM_MULTIARCH
+#else
+#define ARM_ARCH CPU_ARCH_ARMv6
+#endif
+#endif
+
+#ifdef CONFIG_CPU_32v7
+#ifdef ARM_ARCH
+#define ARM_MULTIARCH
+#else
+#define ARM_ARCH CPU_ARCH_ARMv7
+#endif
+#endif
+
+#ifndef __ASSEMBLY__
+
+#ifdef ARM_MULTIARCH
+extern int __pure cpu_architecture(void);
+#else
+static inline int __pure cpu_architecture(void)
+{
+	return ARM_ARCH;
+}
+#endif
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_ARM_SYSTEM_INFO_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
