Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqtB-00013r-8y
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:27:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 22:27:34 +0200
Message-Id: <1372019254-23540-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372019254-23540-1-git-send-email-s.hauer@pengutronix.de>
References: <1372019254-23540-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: imx27ads: remove dead code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx27ads/lowlevel_init.S | 67 +-------------------------------
 1 file changed, 2 insertions(+), 65 deletions(-)

diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
index ce276a9..465f3eb 100644
--- a/arch/arm/boards/imx27ads/lowlevel_init.S
+++ b/arch/arm/boards/imx27ads/lowlevel_init.S
@@ -15,7 +15,7 @@
 
 #define CRM_PLL_PCTL_PARAM(pd, fd, fi, fn)  (((pd-1)<<26) + ((fd-1)<<16) + (fi<<10) + (fn<<0))
 
-.macro sdram_init_sha
+.macro sdram_init
 	/*
 	 * DDR on CSD0
 	 */
@@ -49,69 +49,6 @@
 	writel(0x82226080, 0xD8001000)
 .endm
 
-.macro sdram_init_mx27_manual
-	/*
-	 * sdram init sequence, as defined in 18.5.4 of the i.MX27 reference manual
-	 */
-1:
-	ldr r2, =ESD_ESDCTL0		/* base address of registers */
-	ldr r3, =PRE_ALL_CMD		/* SMODE=001 */
-	str r3,(r2,#0x0)		/* put CSD0 in precharge command mode */
-	ldr r4, =SDRAM_CSD0		/* CSD0 precharge address (A10=1) */
-	str r1,(r4,#0x0)		/* precharge CSD0 all banks */
-	ldr r3, =AUTO_REF_CMD		/* SMODE=010 */
-	str r3,(r2,#0x0)		/* put array 0 in auto-refresh mode */
-	ldr r4, =SDRAM_CSD0_BASE	/* CSD0 base address */
-	ldr r6,=0x7			/* load loop counter */
-1:	ldr r5,(r4,#0x0)		/* run auto-refresh cycle to array 0 */
-	subs r6,r6,#1			/* decrease counter value */
-	bne 1b
-	ldr r3, =SET_MODE_REG_CMD	/* SMODE=011 */
-	str r3,(r2,#0x0)		/* setup CSD0 for mode register write */
-	ldr r3, =MODE_REG_VAL0		/* array 0 mode register value */
-	ldrb r5,(r3,#0x0)		/* New mode register value on address bus */
-	ldr r3, =NORMAL_MODE		/* SMODE=000 */
-	str r3,(r2,#0x0)		/* setup CSD0 for normal operation */
-
-ESD_ESDCTL0		.long 0xD8001000 // system/external device dependent data
-SDRAM_CSD0		.long 0x00000000 // system/external device dependent data
-SDRAM_CSD0_BASE		.long 0x00000000 // system/external device dependent data
-PRE_ALL_CMD		.long 0x00000000 // system/external device dependent data (SMODE=001)
-AUTO_REF_CMD		.long 0x00000000 // system/external device dependent data (SMODE=010)
-SET_MODE_REG_CMD	.long 0x00000000 // system/external device dependent data (SMODE=011)
-MODE_REG_VAL0		.long 0x00000000 // system/external device dependent data
-NORMAL_MODE		.long 0x00000000 // system/external device dependent data (SMODE=000)
-.endm
-
-.macro sdram_init_barebox
-	/* configure 16 bit nor flash on cs0 */
-	writel(0x0000CC03, 0xd8002000)
-	writel(0xa0330D01, 0xd8002004)
-	writel(0x00220800, 0xd8002008)
-
-	/* ddr on csd0 - initial reset */
-	writel(0x00000008, 0xD8001010)
-
-	/* configure ddr on csd0 - wait 5000 cycles */
-	writel(0x00000004, 0xD8001010)
-	writel(0x006ac73a, 0xD8001004)
-	writel(0x92100000, 0xD8001000)
-	writel(0x12344321, 0xA0000f00)
-	writel(0xa2100000, 0xD8001000)
-	writel(0x12344321, 0xA0000000)
-	writel(0x12344321, 0xA0000000)
-	writel(0xb2100000, 0xD8001000)
-	ldr		r0, =0xA0000033
-	mov		r1, #0xda
-	strb		r1, [r0]
-	ldr		r0, =0xA1000000
-	mov		r1, #0xff
-	strb		r1, [r0]
-	writel(0x82226080, 0xD8001000)
-	writel(0xDEADBEEF, 0xA0000000)
-	writel(0x0000000c, 0xD8001010)
-.endm
-
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
@@ -169,7 +106,7 @@ barebox_arm_reset_vector:
 
 	b imx27_barebox_entry
 1:
-	sdram_init_sha
+	sdram_init
 
 	b imx27_barebox_entry
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
