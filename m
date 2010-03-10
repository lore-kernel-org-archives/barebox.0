Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp01.online.nl ([194.134.41.31])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NpUji-00084c-Qn
	for barebox@lists.infradead.org; Wed, 10 Mar 2010 22:50:47 +0000
From: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
Date: Wed, 10 Mar 2010 23:50:36 +0100
Message-Id: <1268261436-3298-1-git-send-email-jaccon.bastiaansen@gmail.com>
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
Subject: [PATCH] Barebox does not boot on iMX21ADS board
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

Barebox crashes during startup, because the SDRAM controller has not been
initialized.

Signed-off-by: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
---
 board/imx21ads/lowlevel_init.S |  158 ++++++++++++++++++++++++++--------------
 1 files changed, 103 insertions(+), 55 deletions(-)

diff --git a/board/imx21ads/lowlevel_init.S b/board/imx21ads/lowlevel_init.S
index b13ec7b..5df6302 100644
--- a/board/imx21ads/lowlevel_init.S
+++ b/board/imx21ads/lowlevel_init.S
@@ -1,70 +1,118 @@
 /*
- * For clock initialization, see chapter 6 of the 
- * "i.MX21 Applications Processor Reference Manual, Rev. 3".
+ * Copyright (C) 2010 Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
+ * 
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
  */
 
 #include <config.h>
 #include <mach/imx-regs.h>
 
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
-.macro sdram_init_mx21ads
-#if 0
-	/* Set precharge command */
-	writel(0x92120300, SDCTL0);
-
-	/* Issue Precharge all Command */
-	ldr  r3, =0xC0200000;
-	ldr  r2, [r3];
-
-	/* Set AutoRefresh command */
-	writel(0x92120300, SDCTL0);
-
-	/* Issue AutoRefresh command */
-	ldr  r3, =0xC0000000;
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-	ldr  r2, [r3];
-
-	
-	/* Set Mode Register */
-	writel(0xB2120300, SDCTL0);
-#endif
-.endm
 
 .globl board_init_lowlevel
 board_init_lowlevel:
 
-	mov	r10, lr
+/* Save lr, because it is overwritten by the calls to mem_delay. */
+	mov	r5, lr
+
+/*
+ * Initialize the AHB-Lite IP Interface (AIPI) module (to enable access to
+ * on chip peripherals) as described in section 7.2 of rev3 of the i.MX21 
+ * reference manual. 
+ */
+	ldr	r0, =AIPI1_PSR0
+	ldr	r1, =0x00040304
+	str	r1, [r0]
+	ldr	r0, =AIPI1_PSR1
+	ldr     r1, =0xfffbfcfb
+	str	r1, [r0]
+
+	ldr	r0, =AIPI2_PSR0
+	ldr	r1, =0x3ffc0000
+	str	r1, [r0]
+	ldr	r0, =AIPI2_PSR1
+	ldr     r1, =0xffffffff
+	str	r1, [r0]
 
-	/* ahb lite ip interface */
-	writel(0x00040304, AIPI1_PSR0)
-	writel(0xFFFBFCFB, AIPI1_PSR1)
-	writel(0x00000000, AIPI2_PSR0)
-	writel(0xFFFFFFFF, AIPI2_PSR1)
+/* 
+ * Configure CPU core clock (266MHz), peripheral clock (133MHz) and enable 
+ * the clock to peripherals.
+ */
+	ldr	r0, =CSCR
+	ldr	r1, =0x17180607
+	str	r1, [r0]
+	
+	ldr	r0, =PCCR1
+	ldr	r1, =0x0e000000
+	str	r1, [r0]
 
-	/* Set MPLL to 266MHz */
-	writel(0x007B1C73, MPCTL0);
-	/* PLL 133MHz */
-	writel(0x17000607, CSCR);
 
-	/* skip sdram initialization if we run from ram */
-	/* (SDRAM is mapped from C0000000 to C3FFFFFF)  */
-	cmp	pc, #0xc0000000
-	bls	1f
-	cmp	pc, #0xc8000000
-	bhi	1f
+/*
+ * SDRAM and SDRAM controller configuration 
+ */ 
+
+	/* 
+	 * CSD1 not required, because the MX21ADS board only contains 64Mbyte.
+	 * CS3 can therefore be made available.
+	 */ 
+	ldr	r0, =FMCR
+	ldr	r1, =0xffffffc9
+	str	r1, [r0]
 
-	mov	pc,r10
-1:
-	sdram_init_mx21ads
+	/* Precharge */
+	ldr	r0, =SDCTL0
+	ldr	r1, =0x92120300
+	str	r1, [r0]
+	ldr	r2, =0xc0200000
+	ldr	r1, [r2]
+
+	bl	mem_delay
+
+	/* Auto refresh */
+	ldr	r1, =0xa2120300
+	str	r1, [r0]
+	ldr	r2, =0xc0000000
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+	ldr	r1, [r2]
+
+	/* Set mode register */
+	ldr	r1, =0xB2120300
+	str	r1, [r0]
+	ldr	r1, =0xC0119800
+	ldr	r2, [r1]
+
+	bl	mem_delay
+
+	/* Back to Normal Mode */
+	ldr	r1, =0x8212F339
+	str	r1, [r0]
+
+	mov	pc, r5
+
+/*
+ *  spin for a while.  we need to wait at least 200 usecs.
+ */
+mem_delay:
+	mov	r4, #0x4000
+spin:	subs	r4, r4, #1
+	bne	spin
+	mov	pc, lr
 
-	mov	pc,r10
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
