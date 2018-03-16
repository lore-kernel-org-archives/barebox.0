Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qL-6C
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 55/78] ARM: aarch64: Setup exception vectors in initcall
Date: Fri, 16 Mar 2018 13:53:31 +0100
Message-Id: <20180316125354.23462-56-s.hauer@pengutronix.de>
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

The vectors are currently configured in arm_cpu_lowlevel_init(). This
shall be callable from PBL, but here the vectors are not available so
calling it from PBL will result in a linker error.
Move the vector setup to an initcall.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c | 19 +++++++++++++++++++
 arch/arm/cpu/lowlevel_64.S   |  4 ----
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 81fd941cfa..b3bd0aa5a4 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -22,6 +22,7 @@
 #include <asm/ptrace.h>
 #include <asm/unwind.h>
 #include <init.h>
+#include <asm/system.h>
 
 /**
  * Display current register set content
@@ -114,3 +115,21 @@ int data_abort_unmask(void)
 
 	return arm_data_abort_occurred != 0;
 }
+
+extern unsigned long vectors;
+
+static int aarch64_init_vectors(void)
+{
+        unsigned int el;
+
+        el = current_el();
+        if (el == 1)
+                asm volatile("msr vbar_el1, %0" : : "r" (&vectors) : "cc");
+        else if (el == 2)
+                asm volatile("msr vbar_el2, %0" : : "r" (&vectors) : "cc");
+        else
+                asm volatile("msr vbar_el3, %0" : : "r" (&vectors) : "cc");
+
+	return 0;
+}
+pure_initcall(aarch64_init_vectors);
diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index 4850895169..a66556f1ad 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -4,7 +4,6 @@
 
 .section ".text_bare_init_","ax"
 ENTRY(arm_cpu_lowlevel_init)
-	adr	x0, vectors
 	mrs	x1, CurrentEL
 	cmp	x1, #0xC		/* Check EL3 state */
 	b.eq	1f
@@ -14,7 +13,6 @@ ENTRY(arm_cpu_lowlevel_init)
 	b.eq	3f
 
 1:
-	msr	vbar_el3, x0
 	mov	x0, #1			/* Non-Secure EL0/1 */
 	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
 	msr	scr_el3, x0
@@ -22,14 +20,12 @@ ENTRY(arm_cpu_lowlevel_init)
 	b	done
 
 2:
-	msr	vbar_el2, x0
 	mov	x0, #0x33ff		/* Enable FP/SIMD */
 	msr	cptr_el2, x0
 	b	done
 
 
 3:
-	msr	vbar_el1, x0
 	mov	x0, #(3 << 20)		/* Enable FP/SIMD */
 	msr	cpacr_el1, x0
 	b	done
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
