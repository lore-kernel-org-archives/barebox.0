Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ZNc-0004vj-5h
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:03:49 +0000
Received: from mail641.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1A29CDC12F2
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 17:14:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 10 Feb 2013 17:02:36 +0100
Message-Id: <1360512157-22161-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130210155819.GU19322@game.jcrosoft.org>
 <1360512157-22161-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] arm: add macro cpu_is_xxx
To: barebox@lists.infradead.org

so we can detect

ARM920
ARM926
ARM1176

PXA250
PXA255
PXA270

Cortex-A8
Cortex-A5
Cortex-A7
Cortex-A9
Cortex-A15

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/system_info.h |   63 ++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 5b67631..56ebb11 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -1,6 +1,8 @@
 #ifndef __ASM_ARM_SYSTEM_INFO_H
 #define __ASM_ARM_SYSTEM_INFO_H
 
+#include <asm/cputype.h>
+
 #define CPU_ARCH_UNKNOWN	0
 #define CPU_ARCH_ARMv3		1
 #define CPU_ARCH_ARMv4		2
@@ -12,12 +14,56 @@
 #define CPU_ARCH_ARMv6		8
 #define CPU_ARCH_ARMv7		9
 
+#define CPU_IS_ARM920		0x41009200
+#define CPU_IS_ARM920_MASK	0xff00fff0
+
+#define CPU_IS_ARM926		0x41069260
+#define CPU_IS_ARM926_MASK	0xff0ffff0
+
+#define CPU_IS_ARM1176		0x410fb767
+#define CPU_IS_ARM1176_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A8	0x410fc080
+#define CPU_IS_CORTEX_A8_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A5	0x410fc050
+#define CPU_IS_CORTEX_A5_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A9	0x410fc090
+#define CPU_IS_CORTEX_A9_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A7	0x410fc070
+#define CPU_IS_CORTEX_A7_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A15	0x410fc0f0
+#define CPU_IS_CORTEX_A15_MASK	0xff0ffff0
+
+#define CPU_IS_PXA250		0x69052100
+#define CPU_IS_PXA250_MASK	0xfffff7f0
+
+#define CPU_IS_PXA255		0x69052d00
+#define CPU_IS_PXA255_MASK	0xfffffff0
+
+#define CPU_IS_PXA270		0x69054110
+#define CPU_IS_PXA270_MASK	0xfffff7f0
+
+#define cpu_is_arm(core) ((read_cpuid_id() & CPU_IS_##core##_MASK) == CPU_IS_##core)
+
 #ifdef CONFIG_CPU_32v4T
 #ifdef ARM_ARCH
 #define ARM_MULTIARCH
 #else
 #define ARM_ARCH CPU_ARCH_ARMv4T
 #endif
+#define cpu_is_arm920()	cpu_is_arm(ARM920)
+#define cpu_is_pxa250() cpu_is_arm(PXA250)
+#define cpu_is_pxa255() cpu_is_arm(PXA255)
+#define cpu_is_pxa270() cpu_is_arm(PXA270)
+#else
+#define cpu_is_arm920() (0)
+#define cpu_is_pxa250() (0)
+#define cpu_is_pxa255() (0)
+#define cpu_is_pxa270() (0)
 #endif
 
 #ifdef CONFIG_CPU_32v5
@@ -26,6 +72,9 @@
 #else
 #define ARM_ARCH CPU_ARCH_ARMv5
 #endif
+#define cpu_is_arm926() cpu_is_arm(ARM926)
+#else
+#define cpu_is_arm926() (0)
 #endif
 
 #ifdef CONFIG_CPU_32v6
@@ -34,6 +83,9 @@
 #else
 #define ARM_ARCH CPU_ARCH_ARMv6
 #endif
+#define cpu_is_arm1176()	cpu_is_arm(ARM1176)
+#else
+#define cpu_is_arm1176()	(0)
 #endif
 
 #ifdef CONFIG_CPU_32v7
@@ -42,6 +94,17 @@
 #else
 #define ARM_ARCH CPU_ARCH_ARMv7
 #endif
+#define cpu_is_cortex_a8() cpu_is_arm(CORTEX_A8)
+#define cpu_is_cortex_a5() cpu_is_arm(CORTEX_A5)
+#define cpu_is_cortex_a9() cpu_is_arm(CORTEX_A9)
+#define cpu_is_cortex_a7() cpu_is_arm(CORTEX_A7)
+#define cpu_is_cortex_a15() cpu_is_arm(CORTEX_A15)
+#else
+#define cpu_is_cortex_a8() (0)
+#define cpu_is_cortex_a5() (0)
+#define cpu_is_cortex_a9() (0)
+#define cpu_is_cortex_a7() (0)
+#define cpu_is_cortex_a15() (0)
 #endif
 
 #ifndef __ASSEMBLY__
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
