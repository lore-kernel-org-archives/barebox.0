Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BW-PV
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 63/78] ARM: aarch64: Add esr strings
Date: Fri, 16 Mar 2018 13:53:39 +0100
Message-Id: <20180316125354.23462-64-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

The Exception Syndrome Register (ESR) holds information over an
exception. This adds the strings necessary to dispatch this information.
Based on Linux code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c |  46 +++++++++++++++++
 arch/arm/include/asm/esr.h   | 117 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 163 insertions(+)
 create mode 100644 arch/arm/include/asm/esr.h

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 9ed6ed9761..c32cd4f051 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -23,6 +23,52 @@
 #include <asm/unwind.h>
 #include <init.h>
 #include <asm/system.h>
+#include <asm/esr.h>
+
+static const char *esr_class_str[] = {
+	[0 ... ESR_ELx_EC_MAX]		= "UNRECOGNIZED EC",
+	[ESR_ELx_EC_UNKNOWN]		= "Unknown/Uncategorized",
+	[ESR_ELx_EC_WFx]		= "WFI/WFE",
+	[ESR_ELx_EC_CP15_32]		= "CP15 MCR/MRC",
+	[ESR_ELx_EC_CP15_64]		= "CP15 MCRR/MRRC",
+	[ESR_ELx_EC_CP14_MR]		= "CP14 MCR/MRC",
+	[ESR_ELx_EC_CP14_LS]		= "CP14 LDC/STC",
+	[ESR_ELx_EC_FP_ASIMD]		= "ASIMD",
+	[ESR_ELx_EC_CP10_ID]		= "CP10 MRC/VMRS",
+	[ESR_ELx_EC_CP14_64]		= "CP14 MCRR/MRRC",
+	[ESR_ELx_EC_ILL]		= "PSTATE.IL",
+	[ESR_ELx_EC_SVC32]		= "SVC (AArch32)",
+	[ESR_ELx_EC_HVC32]		= "HVC (AArch32)",
+	[ESR_ELx_EC_SMC32]		= "SMC (AArch32)",
+	[ESR_ELx_EC_SVC64]		= "SVC (AArch64)",
+	[ESR_ELx_EC_HVC64]		= "HVC (AArch64)",
+	[ESR_ELx_EC_SMC64]		= "SMC (AArch64)",
+	[ESR_ELx_EC_SYS64]		= "MSR/MRS (AArch64)",
+	[ESR_ELx_EC_IMP_DEF]		= "EL3 IMP DEF",
+	[ESR_ELx_EC_IABT_LOW]		= "IABT (lower EL)",
+	[ESR_ELx_EC_IABT_CUR]		= "IABT (current EL)",
+	[ESR_ELx_EC_PC_ALIGN]		= "PC Alignment",
+	[ESR_ELx_EC_DABT_LOW]		= "DABT (lower EL)",
+	[ESR_ELx_EC_DABT_CUR]		= "DABT (current EL)",
+	[ESR_ELx_EC_SP_ALIGN]		= "SP Alignment",
+	[ESR_ELx_EC_FP_EXC32]		= "FP (AArch32)",
+	[ESR_ELx_EC_FP_EXC64]		= "FP (AArch64)",
+	[ESR_ELx_EC_SERROR]		= "SError",
+	[ESR_ELx_EC_BREAKPT_LOW]	= "Breakpoint (lower EL)",
+	[ESR_ELx_EC_BREAKPT_CUR]	= "Breakpoint (current EL)",
+	[ESR_ELx_EC_SOFTSTP_LOW]	= "Software Step (lower EL)",
+	[ESR_ELx_EC_SOFTSTP_CUR]	= "Software Step (current EL)",
+	[ESR_ELx_EC_WATCHPT_LOW]	= "Watchpoint (lower EL)",
+	[ESR_ELx_EC_WATCHPT_CUR]	= "Watchpoint (current EL)",
+	[ESR_ELx_EC_BKPT32]		= "BKPT (AArch32)",
+	[ESR_ELx_EC_VECTOR32]		= "Vector catch (AArch32)",
+	[ESR_ELx_EC_BRK64]		= "BRK (AArch64)",
+};
+
+const char *esr_get_class_string(u32 esr)
+{
+	return esr_class_str[esr >> ESR_ELx_EC_SHIFT];
+}
 
 /**
  * Display current register set content
diff --git a/arch/arm/include/asm/esr.h b/arch/arm/include/asm/esr.h
new file mode 100644
index 0000000000..77eeb2cc64
--- /dev/null
+++ b/arch/arm/include/asm/esr.h
@@ -0,0 +1,117 @@
+/*
+ * Copyright (C) 2013 - ARM Ltd
+ * Author: Marc Zyngier <marc.zyngier@arm.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef __ASM_ESR_H
+#define __ASM_ESR_H
+
+#include <asm/memory.h>
+
+#define ESR_ELx_EC_UNKNOWN	(0x00)
+#define ESR_ELx_EC_WFx		(0x01)
+/* Unallocated EC: 0x02 */
+#define ESR_ELx_EC_CP15_32	(0x03)
+#define ESR_ELx_EC_CP15_64	(0x04)
+#define ESR_ELx_EC_CP14_MR	(0x05)
+#define ESR_ELx_EC_CP14_LS	(0x06)
+#define ESR_ELx_EC_FP_ASIMD	(0x07)
+#define ESR_ELx_EC_CP10_ID	(0x08)
+/* Unallocated EC: 0x09 - 0x0B */
+#define ESR_ELx_EC_CP14_64	(0x0C)
+/* Unallocated EC: 0x0d */
+#define ESR_ELx_EC_ILL		(0x0E)
+/* Unallocated EC: 0x0F - 0x10 */
+#define ESR_ELx_EC_SVC32	(0x11)
+#define ESR_ELx_EC_HVC32	(0x12)
+#define ESR_ELx_EC_SMC32	(0x13)
+/* Unallocated EC: 0x14 */
+#define ESR_ELx_EC_SVC64	(0x15)
+#define ESR_ELx_EC_HVC64	(0x16)
+#define ESR_ELx_EC_SMC64	(0x17)
+#define ESR_ELx_EC_SYS64	(0x18)
+/* Unallocated EC: 0x19 - 0x1E */
+#define ESR_ELx_EC_IMP_DEF	(0x1f)
+#define ESR_ELx_EC_IABT_LOW	(0x20)
+#define ESR_ELx_EC_IABT_CUR	(0x21)
+#define ESR_ELx_EC_PC_ALIGN	(0x22)
+/* Unallocated EC: 0x23 */
+#define ESR_ELx_EC_DABT_LOW	(0x24)
+#define ESR_ELx_EC_DABT_CUR	(0x25)
+#define ESR_ELx_EC_SP_ALIGN	(0x26)
+/* Unallocated EC: 0x27 */
+#define ESR_ELx_EC_FP_EXC32	(0x28)
+/* Unallocated EC: 0x29 - 0x2B */
+#define ESR_ELx_EC_FP_EXC64	(0x2C)
+/* Unallocated EC: 0x2D - 0x2E */
+#define ESR_ELx_EC_SERROR	(0x2F)
+#define ESR_ELx_EC_BREAKPT_LOW	(0x30)
+#define ESR_ELx_EC_BREAKPT_CUR	(0x31)
+#define ESR_ELx_EC_SOFTSTP_LOW	(0x32)
+#define ESR_ELx_EC_SOFTSTP_CUR	(0x33)
+#define ESR_ELx_EC_WATCHPT_LOW	(0x34)
+#define ESR_ELx_EC_WATCHPT_CUR	(0x35)
+/* Unallocated EC: 0x36 - 0x37 */
+#define ESR_ELx_EC_BKPT32	(0x38)
+/* Unallocated EC: 0x39 */
+#define ESR_ELx_EC_VECTOR32	(0x3A)
+/* Unallocted EC: 0x3B */
+#define ESR_ELx_EC_BRK64	(0x3C)
+/* Unallocated EC: 0x3D - 0x3F */
+#define ESR_ELx_EC_MAX		(0x3F)
+
+#define ESR_ELx_EC_SHIFT	(26)
+#define ESR_ELx_EC_MASK		(UL(0x3F) << ESR_ELx_EC_SHIFT)
+
+#define ESR_ELx_IL		(UL(1) << 25)
+#define ESR_ELx_ISS_MASK	(ESR_ELx_IL - 1)
+#define ESR_ELx_ISV		(UL(1) << 24)
+#define ESR_ELx_SAS_SHIFT	(22)
+#define ESR_ELx_SAS		(UL(3) << ESR_ELx_SAS_SHIFT)
+#define ESR_ELx_SSE		(UL(1) << 21)
+#define ESR_ELx_SRT_SHIFT	(16)
+#define ESR_ELx_SRT_MASK	(UL(0x1F) << ESR_ELx_SRT_SHIFT)
+#define ESR_ELx_SF 		(UL(1) << 15)
+#define ESR_ELx_AR 		(UL(1) << 14)
+#define ESR_ELx_EA 		(UL(1) << 9)
+#define ESR_ELx_CM 		(UL(1) << 8)
+#define ESR_ELx_S1PTW 		(UL(1) << 7)
+#define ESR_ELx_WNR		(UL(1) << 6)
+#define ESR_ELx_FSC		(0x3F)
+#define ESR_ELx_FSC_TYPE	(0x3C)
+#define ESR_ELx_FSC_EXTABT	(0x10)
+#define ESR_ELx_FSC_ACCESS	(0x08)
+#define ESR_ELx_FSC_FAULT	(0x04)
+#define ESR_ELx_FSC_PERM	(0x0C)
+#define ESR_ELx_CV		(UL(1) << 24)
+#define ESR_ELx_COND_SHIFT	(20)
+#define ESR_ELx_COND_MASK	(UL(0xF) << ESR_ELx_COND_SHIFT)
+#define ESR_ELx_WFx_ISS_WFE	(UL(1) << 0)
+#define ESR_ELx_xVC_IMM_MASK	((1UL << 16) - 1)
+
+/* ESR value templates for specific events */
+
+/* BRK instruction trap from AArch64 state */
+#define ESR_ELx_VAL_BRK64(imm)					\
+	((ESR_ELx_EC_BRK64 << ESR_ELx_EC_SHIFT) | ESR_ELx_IL |	\
+	 ((imm) & 0xffff))
+
+#ifndef __ASSEMBLY__
+#include <asm/types.h>
+
+const char *esr_get_class_string(u32 esr);
+#endif /* __ASSEMBLY */
+
+#endif /* __ASM_ESR_H */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
