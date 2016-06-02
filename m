Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8Nff-00047s-4Y
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 08:08:05 +0000
Received: by mail-wm0-x244.google.com with SMTP id a136so13546654wme.0
 for <barebox@lists.infradead.org>; Thu, 02 Jun 2016 01:07:45 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu,  2 Jun 2016 10:06:54 +0200
Message-Id: <1464854818-28653-9-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 08/12] arm: include: system_info: add armv8 identification
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/include/asm/system_info.h | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 0761848..25fffd2 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -13,6 +13,7 @@
 #define CPU_ARCH_ARMv5TEJ	7
 #define CPU_ARCH_ARMv6		8
 #define CPU_ARCH_ARMv7		9
+#define CPU_ARCH_ARMv8		10
 
 #define CPU_IS_ARM720		0x41007200
 #define CPU_IS_ARM720_MASK	0xff00fff0
@@ -41,6 +42,12 @@
 #define CPU_IS_CORTEX_A15	0x410fc0f0
 #define CPU_IS_CORTEX_A15_MASK	0xff0ffff0
 
+#define CPU_IS_CORTEX_A53	0x410fd034
+#define CPU_IS_CORTEX_A53_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A57	0x411fd070
+#define CPU_IS_CORTEX_A57_MASK	0xff0ffff0
+
 #define CPU_IS_PXA250		0x69052100
 #define CPU_IS_PXA250_MASK	0xfffff7f0
 
@@ -112,6 +119,19 @@
 #define cpu_is_cortex_a15() (0)
 #endif
 
+#ifdef CONFIG_CPU_64v8
+#ifdef ARM_ARCH
+#define ARM_MULTIARCH
+#else
+#define ARM_ARCH CPU_ARCH_ARMv8
+#endif
+#define cpu_is_cortex_a53() cpu_is_arm(CORTEX_A53)
+#define cpu_is_cortex_a57() cpu_is_arm(CORTEX_A57)
+#else
+#define cpu_is_cortex_a53() (0)
+#define cpu_is_cortex_a57() (0)
+#endif
+
 #ifndef __ASSEMBLY__
 
 #ifdef ARM_MULTIARCH
@@ -133,6 +153,23 @@ static inline int arm_early_get_cpu_architecture(void)
 		if (cpu_arch)
 			cpu_arch += CPU_ARCH_ARMv3;
 	} else if ((read_cpuid_id() & 0x000f0000) == 0x000f0000) {
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
@@ -149,6 +186,7 @@ static inline int arm_early_get_cpu_architecture(void)
 			cpu_arch = CPU_ARCH_UNKNOWN;
 	} else
 		cpu_arch = CPU_ARCH_UNKNOWN;
+#endif
 
 	return cpu_arch;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
