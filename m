Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9O3-0006LN-Ai
 for barebox@lists.infradead.org; Mon, 13 May 2019 11:44:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 May 2019 13:44:47 +0200
Message-Id: <20190513114447.27807-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: unify asm/arm-smccc.h and linux/arm-smccc.h
To: Barebox List <barebox@lists.infradead.org>

Since 2c20674f0c ("ARM: Add code to support SMCCC on AArch64") we have
both arch/arm/include/asm/arm-smccc.h and include/linux/arm-smccc.h.
The latter was introduced with Kernel commit 680a0873e ("arm: kernel:
Add SMC structure parameter") included, so we have to add the parameter
for ARM32 aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/psci.c              |   2 +-
 arch/arm/cpu/sm.c                |   2 +-
 arch/arm/cpu/smccc-call.S        |  18 +++---
 arch/arm/include/asm/arm-smccc.h | 104 -------------------------------
 4 files changed, 12 insertions(+), 114 deletions(-)
 delete mode 100644 arch/arm/include/asm/arm-smccc.h

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index c4c8c64cbe..3a1abd1421 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -13,7 +13,7 @@
 
 #include <common.h>
 #include <asm/psci.h>
-#include <asm/arm-smccc.h>
+#include <linux/arm-smccc.h>
 #include <asm/secure.h>
 #include <asm/system.h>
 #include <restart.h>
diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index 633c9e8c83..d9d62fbd9d 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -16,7 +16,7 @@
 #include <asm/system.h>
 #include <init.h>
 #include <globalvar.h>
-#include <asm/arm-smccc.h>
+#include <linux/arm-smccc.h>
 #include <asm-generic/sections.h>
 #include <asm/secure.h>
 
diff --git a/arch/arm/cpu/smccc-call.S b/arch/arm/cpu/smccc-call.S
index c2781b1ab2..b6bdc8b3b5 100644
--- a/arch/arm/cpu/smccc-call.S
+++ b/arch/arm/cpu/smccc-call.S
@@ -46,19 +46,21 @@ UNWIND(	.fnend)
 	.endm
 
 /*
- * void smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
+ * void __smccc_smc(unsigned long a0, unsigned long a1, unsigned long a2,
  *		  unsigned long a3, unsigned long a4, unsigned long a5,
- *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(arm_smccc_smc)
+ENTRY(__arm_smccc_smc)
 	SMCCC SMCCC_SMC
-ENDPROC(arm_smccc_smc)
+ENDPROC(__arm_smccc_smc)
 
 /*
- * void smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
+ * void __smccc_hvc(unsigned long a0, unsigned long a1, unsigned long a2,
  *		  unsigned long a3, unsigned long a4, unsigned long a5,
- *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res)
+ *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
+ *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(arm_smccc_hvc)
+ENTRY(__arm_smccc_hvc)
 	SMCCC SMCCC_HVC
-ENDPROC(arm_smccc_hvc)
+ENDPROC(__arm_smccc_hvc)
diff --git a/arch/arm/include/asm/arm-smccc.h b/arch/arm/include/asm/arm-smccc.h
deleted file mode 100644
index b5abfda804..0000000000
--- a/arch/arm/include/asm/arm-smccc.h
+++ /dev/null
@@ -1,104 +0,0 @@
-/*
- * Copyright (c) 2015, Linaro Limited
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#ifndef __LINUX_ARM_SMCCC_H
-#define __LINUX_ARM_SMCCC_H
-
-#include <linux/linkage.h>
-#include <linux/types.h>
-
-/*
- * This file provides common defines for ARM SMC Calling Convention as
- * specified in
- * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
- */
-
-#define ARM_SMCCC_STD_CALL		0
-#define ARM_SMCCC_FAST_CALL		1
-#define ARM_SMCCC_TYPE_SHIFT		31
-
-#define ARM_SMCCC_SMC_32		0
-#define ARM_SMCCC_SMC_64		1
-#define ARM_SMCCC_CALL_CONV_SHIFT	30
-
-#define ARM_SMCCC_OWNER_MASK		0x3F
-#define ARM_SMCCC_OWNER_SHIFT		24
-
-#define ARM_SMCCC_FUNC_MASK		0xFFFF
-
-#define ARM_SMCCC_IS_FAST_CALL(smc_val)	\
-	((smc_val) & (ARM_SMCCC_FAST_CALL << ARM_SMCCC_TYPE_SHIFT))
-#define ARM_SMCCC_IS_64(smc_val) \
-	((smc_val) & (ARM_SMCCC_SMC_64 << ARM_SMCCC_CALL_CONV_SHIFT))
-#define ARM_SMCCC_FUNC_NUM(smc_val)	((smc_val) & ARM_SMCCC_FUNC_MASK)
-#define ARM_SMCCC_OWNER_NUM(smc_val) \
-	(((smc_val) >> ARM_SMCCC_OWNER_SHIFT) & ARM_SMCCC_OWNER_MASK)
-
-#define ARM_SMCCC_CALL_VAL(type, calling_convention, owner, func_num) \
-	(((type) << ARM_SMCCC_TYPE_SHIFT) | \
-	((calling_convention) << ARM_SMCCC_CALL_CONV_SHIFT) | \
-	(((owner) & ARM_SMCCC_OWNER_MASK) << ARM_SMCCC_OWNER_SHIFT) | \
-	((func_num) & ARM_SMCCC_FUNC_MASK))
-
-#define ARM_SMCCC_OWNER_ARCH		0
-#define ARM_SMCCC_OWNER_CPU		1
-#define ARM_SMCCC_OWNER_SIP		2
-#define ARM_SMCCC_OWNER_OEM		3
-#define ARM_SMCCC_OWNER_STANDARD	4
-#define ARM_SMCCC_OWNER_TRUSTED_APP	48
-#define ARM_SMCCC_OWNER_TRUSTED_APP_END	49
-#define ARM_SMCCC_OWNER_TRUSTED_OS	50
-#define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
-
-/**
- * struct arm_smccc_res - Result from SMC/HVC call
- * @a0-a3 result values from registers 0 to 3
- */
-struct arm_smccc_res {
-	unsigned long a0;
-	unsigned long a1;
-	unsigned long a2;
-	unsigned long a3;
-};
-
-/**
- * arm_smccc_smc() - make SMC calls
- * @a0-a7: arguments passed in registers 0 to 7
- * @res: result values from registers 0 to 3
- *
- * This function is used to make SMC calls following SMC Calling Convention.
- * The content of the supplied param are copied to registers 0 to 7 prior
- * to the SMC instruction. The return values are updated with the content
- * from register 0 to 3 on return from the SMC instruction.
- */
-asmlinkage void arm_smccc_smc(unsigned long a0, unsigned long a1,
-			unsigned long a2, unsigned long a3, unsigned long a4,
-			unsigned long a5, unsigned long a6, unsigned long a7,
-			struct arm_smccc_res *res);
-
-/**
- * arm_smccc_hvc() - make HVC calls
- * @a0-a7: arguments passed in registers 0 to 7
- * @res: result values from registers 0 to 3
- *
- * This function is used to make HVC calls following SMC Calling
- * Convention.  The content of the supplied param are copied to registers 0
- * to 7 prior to the HVC instruction. The return values are updated with
- * the content from register 0 to 3 on return from the HVC instruction.
- */
-asmlinkage void arm_smccc_hvc(unsigned long a0, unsigned long a1,
-			unsigned long a2, unsigned long a3, unsigned long a4,
-			unsigned long a5, unsigned long a6, unsigned long a7,
-			struct arm_smccc_res *res);
-
-#endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
