Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosE-0008BV-VC
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:30 +0100
Message-Id: <20180316125354.23462-55-s.hauer@pengutronix.de>
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
Subject: [PATCH 54/78] ARM: aarch64: fix exception level mixup
To: Barebox List <barebox@lists.infradead.org>

When entering an exception the we currently jump to the code handling
EL1 when we are actually at EL3 and the other way round. Fix this by
introducing and using the switch_el macro from U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions_64.S       | 10 ++--------
 arch/arm/include/asm/assembler64.h | 21 +++++++++++++++++++++
 2 files changed, 23 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/include/asm/assembler64.h

diff --git a/arch/arm/cpu/exceptions_64.S b/arch/arm/cpu/exceptions_64.S
index 58120253a1..a7069a8475 100644
--- a/arch/arm/cpu/exceptions_64.S
+++ b/arch/arm/cpu/exceptions_64.S
@@ -7,6 +7,7 @@
 
 #include <config.h>
 #include <asm/ptrace.h>
+#include <asm/assembler64.h>
 #include <linux/linkage.h>
 
 /*
@@ -31,14 +32,7 @@
 	stp	x3, x4, [sp, #-16]!
 	stp	x1, x2, [sp, #-16]!
 
-	/* Could be running at EL3/EL2/EL1 */
-	mrs	x11, CurrentEL
-	cmp	x11, #0xC		/* Check EL3 state */
-	b.eq	1f
-	cmp	x11, #0x8		/* Check EL2 state */
-	b.eq	2f
-	cmp	x11, #0x4		/* Check EL1 state */
-	b.eq	3f
+	switch_el x11, 3f, 2f, 1f
 3:	mrs	x1, esr_el3
 	mrs	x2, elr_el3
 	b	0f
diff --git a/arch/arm/include/asm/assembler64.h b/arch/arm/include/asm/assembler64.h
new file mode 100644
index 0000000000..26182aa5f6
--- /dev/null
+++ b/arch/arm/include/asm/assembler64.h
@@ -0,0 +1,21 @@
+#ifndef __ASM_ARCH_ASSEMBLY_H
+#define __ASM_ARCH_ASSEMBLY_H
+
+#ifndef __ASSEMBLY__
+#error "Only include this from assembly code"
+#endif
+
+/*
+ * Branch according to exception level
+ */
+.macro  switch_el, xreg, el3_label, el2_label, el1_label
+	mrs	\xreg, CurrentEL
+	cmp	\xreg, 0xc
+	b.eq	\el3_label
+	cmp	\xreg, 0x8
+	b.eq	\el2_label
+	cmp	\xreg, 0x4
+	b.eq	\el1_label
+.endm
+
+#endif /* __ASM_ARCH_ASSEMBLY_H */
\ No newline at end of file
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
