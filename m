Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosE-0008BK-Vf
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:32 +0100
Message-Id: <20180316125354.23462-57-s.hauer@pengutronix.de>
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
Subject: [PATCH 56/78] ARM: aarch64: lowlevel: Use switch_el
To: Barebox List <barebox@lists.infradead.org>

Use switch_el macro rather than open coded version. While at it rename the
labels so that the name matches the exception level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/lowlevel_64.S | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index a66556f1ad..af1cd8b5bc 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -1,18 +1,13 @@
 #include <linux/linkage.h>
 #include <init.h>
 #include <asm/system.h>
+#include <asm/assembler64.h>
 
 .section ".text_bare_init_","ax"
 ENTRY(arm_cpu_lowlevel_init)
-	mrs	x1, CurrentEL
-	cmp	x1, #0xC		/* Check EL3 state */
-	b.eq	1f
-	cmp	x1, #0x8		/* Check EL2 state */
-	b.eq	2f
-	cmp	x1, #0x4		/* Check EL1 state */
-	b.eq	3f
+	switch_el x1, 3f, 2f, 1f
 
-1:
+3:
 	mov	x0, #1			/* Non-Secure EL0/1 */
 	orr	x0, x0, #(1 << 10)	/* 64-bit EL2 */
 	msr	scr_el3, x0
@@ -25,7 +20,7 @@ ENTRY(arm_cpu_lowlevel_init)
 	b	done
 
 
-3:
+1:
 	mov	x0, #(3 << 20)		/* Enable FP/SIMD */
 	msr	cpacr_el1, x0
 	b	done
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
