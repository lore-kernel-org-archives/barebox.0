Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6sx-0003gH-Rn
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:21 +0000
Received: by mail-pf0-x244.google.com with SMTP id a11-v6so5044863pff.8
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:51 -0700
Message-Id: <20180630034900.3324-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/11] ARM: Add code to support SMCCC on AArch64
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port SMCCC code from Linux kernel. To accomodate that:

  - Introduce CONFIG_ARM_SMCCC, to allow enabling the code
    independent of CONFIG_ARM_SECURE_MONITOR

  - Bring <linux/arm-smccc.h> in

  - Add necessary constants to arch/arm/asm-offsets.c

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Kconfig                   |   4 +
 arch/arm/cpu/Makefile              |   4 +-
 arch/arm/cpu/smccc-call_64.S       |  52 +++++++++++
 arch/arm/include/asm/asm-offsets.h |   1 +
 arch/arm/lib/asm-offsets.c         |   7 +-
 include/linux/arm-smccc.h          | 135 +++++++++++++++++++++++++++++
 6 files changed, 200 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/cpu/smccc-call_64.S
 create mode 100644 arch/arm/include/asm/asm-offsets.h
 create mode 100644 include/linux/arm-smccc.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3555b4ee5..6f8eec708 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -388,7 +388,11 @@ config ARM_SEMIHOSTING
 	  the data on the host computer connected to the target via
 	  debugging channel (JTAG, SWD). If unsure say N
 
+config ARM_SMCCC
+	bool
+
 config ARM_SECURE_MONITOR
+        select ARM_SMCCC
 	bool
 
 config ARM_PSCI
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 5b4b832e8..874d723e2 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -21,8 +21,8 @@ obj-$(CONFIG_CPU_32v7) += no-mmu.o
 endif
 
 obj-$(CONFIG_ARM_PSCI) += psci.o
-obj-$(CONFIG_ARM_SECURE_MONITOR) += smccc-call.o
-AFLAGS_smccc-call.o	:=-Wa,-march=armv7-a
+obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
+AFLAGS_smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
 obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
 AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
 
diff --git a/arch/arm/cpu/smccc-call_64.S b/arch/arm/cpu/smccc-call_64.S
new file mode 100644
index 000000000..44888fb59
--- /dev/null
+++ b/arch/arm/cpu/smccc-call_64.S
@@ -0,0 +1,52 @@
+/*
+ * Copyright (c) 2015, Linaro Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License Version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <linux/linkage.h>
+#include <linux/arm-smccc.h>
+#include <asm/asm-offsets.h>
+
+	.macro SMCCC instr
+	.cfi_startproc
+	\instr	#0
+	ldr	x4, [sp]
+	stp	x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
+	stp	x2, x3, [x4, #ARM_SMCCC_RES_X2_OFFS]
+	ldr	x4, [sp, #8]
+	cbz	x4, 1f /* no quirk structure */
+	ldr	x9, [x4, #ARM_SMCCC_QUIRK_ID_OFFS]
+	cmp	x9, #ARM_SMCCC_QUIRK_QCOM_A6
+	b.ne	1f
+	str	x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
+1:	ret
+	.cfi_endproc
+	.endm
+
+/*
+ * void arm_smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
+ *		  unsigned long a3, unsigned long a4, unsigned long a5,
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
+ */
+ENTRY(__arm_smccc_smc)
+	SMCCC	smc
+ENDPROC(__arm_smccc_smc)
+
+/*
+ * void arm_smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
+ *		  unsigned long a3, unsigned long a4, unsigned long a5,
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
+ */
+ENTRY(__arm_smccc_hvc)
+	SMCCC	hvc
+ENDPROC(__arm_smccc_hvc)
\ No newline at end of file
diff --git a/arch/arm/include/asm/asm-offsets.h b/arch/arm/include/asm/asm-offsets.h
new file mode 100644
index 000000000..2f84e8399
--- /dev/null
+++ b/arch/arm/include/asm/asm-offsets.h
@@ -0,0 +1 @@
+#include <generated/asm-offsets.h>
\ No newline at end of file
diff --git a/arch/arm/lib/asm-offsets.c b/arch/arm/lib/asm-offsets.c
index 7bf6d129c..cdff6f782 100644
--- a/arch/arm/lib/asm-offsets.c
+++ b/arch/arm/lib/asm-offsets.c
@@ -9,8 +9,13 @@
  */
 
 #include <linux/kbuild.h>
+#include <linux/arm-smccc.h>
 
 int main(void)
 {
-	return 0;
+  DEFINE(ARM_SMCCC_RES_X0_OFFS,		offsetof(struct arm_smccc_res, a0));
+  DEFINE(ARM_SMCCC_RES_X2_OFFS,		offsetof(struct arm_smccc_res, a2));
+  DEFINE(ARM_SMCCC_QUIRK_ID_OFFS,	offsetof(struct arm_smccc_quirk, id));
+  DEFINE(ARM_SMCCC_QUIRK_STATE_OFFS,	offsetof(struct arm_smccc_quirk, state));
+  return 0;
 }
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
new file mode 100644
index 000000000..1b38b7b37
--- /dev/null
+++ b/include/linux/arm-smccc.h
@@ -0,0 +1,135 @@
+/*
+ * Copyright (c) 2015, Linaro Limited
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#ifndef __LINUX_ARM_SMCCC_H
+#define __LINUX_ARM_SMCCC_H
+
+/*
+ * This file provides common defines for ARM SMC Calling Convention as
+ * specified in
+ * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
+ */
+
+/* This constant is shifted by 31, make sure it's of an unsigned type */
+#define ARM_SMCCC_STD_CALL		0UL
+#define ARM_SMCCC_FAST_CALL		1UL
+#define ARM_SMCCC_TYPE_SHIFT		31
+
+#define ARM_SMCCC_SMC_32		0
+#define ARM_SMCCC_SMC_64		1
+#define ARM_SMCCC_CALL_CONV_SHIFT	30
+
+#define ARM_SMCCC_OWNER_MASK		0x3F
+#define ARM_SMCCC_OWNER_SHIFT		24
+
+#define ARM_SMCCC_FUNC_MASK		0xFFFF
+
+#define ARM_SMCCC_IS_FAST_CALL(smc_val)	\
+	((smc_val) & (ARM_SMCCC_FAST_CALL << ARM_SMCCC_TYPE_SHIFT))
+#define ARM_SMCCC_IS_64(smc_val) \
+	((smc_val) & (ARM_SMCCC_SMC_64 << ARM_SMCCC_CALL_CONV_SHIFT))
+#define ARM_SMCCC_FUNC_NUM(smc_val)	((smc_val) & ARM_SMCCC_FUNC_MASK)
+#define ARM_SMCCC_OWNER_NUM(smc_val) \
+	(((smc_val) >> ARM_SMCCC_OWNER_SHIFT) & ARM_SMCCC_OWNER_MASK)
+
+#define ARM_SMCCC_CALL_VAL(type, calling_convention, owner, func_num) \
+	(((type) << ARM_SMCCC_TYPE_SHIFT) | \
+	((calling_convention) << ARM_SMCCC_CALL_CONV_SHIFT) | \
+	(((owner) & ARM_SMCCC_OWNER_MASK) << ARM_SMCCC_OWNER_SHIFT) | \
+	((func_num) & ARM_SMCCC_FUNC_MASK))
+
+#define ARM_SMCCC_OWNER_ARCH		0
+#define ARM_SMCCC_OWNER_CPU		1
+#define ARM_SMCCC_OWNER_SIP		2
+#define ARM_SMCCC_OWNER_OEM		3
+#define ARM_SMCCC_OWNER_STANDARD	4
+#define ARM_SMCCC_OWNER_TRUSTED_APP	48
+#define ARM_SMCCC_OWNER_TRUSTED_APP_END	49
+#define ARM_SMCCC_OWNER_TRUSTED_OS	50
+#define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
+
+#define ARM_SMCCC_QUIRK_NONE		0
+#define ARM_SMCCC_QUIRK_QCOM_A6		1 /* Save/restore register a6 */
+
+#ifndef __ASSEMBLY__
+
+#include <linux/linkage.h>
+#include <linux/types.h>
+/**
+ * struct arm_smccc_res - Result from SMC/HVC call
+ * @a0-a3 result values from registers 0 to 3
+ */
+struct arm_smccc_res {
+	unsigned long a0;
+	unsigned long a1;
+	unsigned long a2;
+	unsigned long a3;
+};
+
+/**
+ * struct arm_smccc_quirk - Contains quirk information
+ * @id: quirk identification
+ * @state: quirk specific information
+ * @a6: Qualcomm quirk entry for returning post-smc call contents of a6
+ */
+struct arm_smccc_quirk {
+	int	id;
+	union {
+		unsigned long a6;
+	} state;
+};
+
+/**
+ * __arm_smccc_smc() - make SMC calls
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ * @quirk: points to an arm_smccc_quirk, or NULL when no quirks are required.
+ *
+ * This function is used to make SMC calls following SMC Calling Convention.
+ * The content of the supplied param are copied to registers 0 to 7 prior
+ * to the SMC instruction. The return values are updated with the content
+ * from register 0 to 3 on return from the SMC instruction.  An optional
+ * quirk structure provides vendor specific behavior.
+ */
+asmlinkage void __arm_smccc_smc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3, unsigned long a4,
+			unsigned long a5, unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
+
+/**
+ * __arm_smccc_hvc() - make HVC calls
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ * @quirk: points to an arm_smccc_quirk, or NULL when no quirks are required.
+ *
+ * This function is used to make HVC calls following SMC Calling
+ * Convention.  The content of the supplied param are copied to registers 0
+ * to 7 prior to the HVC instruction. The return values are updated with
+ * the content from register 0 to 3 on return from the HVC instruction.  An
+ * optional quirk structure provides vendor specific behavior.
+ */
+asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
+			unsigned long a2, unsigned long a3, unsigned long a4,
+			unsigned long a5, unsigned long a6, unsigned long a7,
+			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
+
+#define arm_smccc_smc(...) __arm_smccc_smc(__VA_ARGS__, NULL)
+
+#define arm_smccc_smc_quirk(...) __arm_smccc_smc(__VA_ARGS__)
+
+#define arm_smccc_hvc(...) __arm_smccc_hvc(__VA_ARGS__, NULL)
+
+#define arm_smccc_hvc_quirk(...) __arm_smccc_hvc(__VA_ARGS__)
+
+#endif /*__ASSEMBLY__*/
+#endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
