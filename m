Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmOKi-0001Yp-On
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 11:01:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 13:00:45 +0200
Message-Id: <1311850847-5140-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
References: <1311850847-5140-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mx51: rename clock-imx51.h -> clock-imx51_53.h
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

...and update all users. The header file can be used on mx51 and mx53.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S    |  110 ++--
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  110 ++--
 arch/arm/mach-imx/include/mach/clock-imx51.h       |  696 --------------------
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |  619 +++++++++++++++++
 arch/arm/mach-imx/speed-imx51.c                    |   60 +-
 5 files changed, 759 insertions(+), 836 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/clock-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx51_53.h

diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
index 793104c..0b3726f 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
@@ -19,29 +19,29 @@
 
 #include <config.h>
 #include <mach/imx-regs.h>
-#include <mach/clock-imx51.h>
+#include <mach/clock-imx51_53.h>
 
 #define ROM_SI_REV_OFFSET                   0x48
 
 .macro setup_pll pll, freq
 	ldr r2, =\pll
 	ldr r1, =0x00001232
-	str r1, [r2, #MX51_PLL_DP_CTL] /* Set DPLL ON (set UPEN bit): BRMO=1 */
+	str r1, [r2, #MX5_PLL_DP_CTL] /* Set DPLL ON (set UPEN bit): BRMO=1 */
 	mov r1, #0x2
-	str r1, [r2, #MX51_PLL_DP_CONFIG] /* Enable auto-restart AREN bit */
+	str r1, [r2, #MX5_PLL_DP_CONFIG] /* Enable auto-restart AREN bit */
 
-	str r3, [r2, #MX51_PLL_DP_OP]
-	str r3, [r2, #MX51_PLL_DP_HFS_OP]
+	str r3, [r2, #MX5_PLL_DP_OP]
+	str r3, [r2, #MX5_PLL_DP_HFS_OP]
 
-	str r4, [r2, #MX51_PLL_DP_MFD]
-	str r4, [r2, #MX51_PLL_DP_HFS_MFD]
+	str r4, [r2, #MX5_PLL_DP_MFD]
+	str r4, [r2, #MX5_PLL_DP_HFS_MFD]
 
-	str r5, [r2, #MX51_PLL_DP_MFN]
-	str r5, [r2, #MX51_PLL_DP_HFS_MFN]
+	str r5, [r2, #MX5_PLL_DP_MFN]
+	str r5, [r2, #MX5_PLL_DP_HFS_MFN]
 
 	ldr r1, =0x00001232
-	str r1, [r2, #MX51_PLL_DP_CTL]
-1:	ldr r1, [r2, #MX51_PLL_DP_CTL]
+	str r1, [r2, #MX5_PLL_DP_CTL]
+1:	ldr r1, [r2, #MX5_PLL_DP_CTL]
 	ands r1, r1, #0x1
 	beq 1b
 .endm
@@ -80,67 +80,67 @@ board_init_lowlevel:
 
 	/* Gate of clocks to the peripherals first */
 	ldr r1, =0x3FFFFFFF
-	str r1, [r0, #MX51_CCM_CCGR0]
+	str r1, [r0, #MX5_CCM_CCGR0]
 	ldr r1, =0x0
-	str r1, [r0, #MX51_CCM_CCGR1]
-	str r1, [r0, #MX51_CCM_CCGR2]
-	str r1, [r0, #MX51_CCM_CCGR3]
+	str r1, [r0, #MX5_CCM_CCGR1]
+	str r1, [r0, #MX5_CCM_CCGR2]
+	str r1, [r0, #MX5_CCM_CCGR3]
 
 	ldr r1, =0x00030000
-	str r1, [r0, #MX51_CCM_CCGR4]
+	str r1, [r0, #MX5_CCM_CCGR4]
 	ldr r1, =0x00FFF030
-	str r1, [r0, #MX51_CCM_CCGR5]
+	str r1, [r0, #MX5_CCM_CCGR5]
 	ldr r1, =0x00000300
-	str r1, [r0, #MX51_CCM_CCGR6]
+	str r1, [r0, #MX5_CCM_CCGR6]
 
 	/* Disable IPU and HSC dividers */
 	mov r1, #0x60000
-	str r1, [r0, #MX51_CCM_CCDR]
+	str r1, [r0, #MX5_CCM_CCDR]
 
 #ifdef IMX51_TO_2
 	/* Make sure to switch the DDR away from PLL 1 */
 	ldr r1, =0x19239145
-	str r1, [r0, #MX51_CCM_CBCDR]
+	str r1, [r0, #MX5_CCM_CBCDR]
 	/* make sure divider effective */
-1:	ldr r1, [r0, #MX51_CCM_CDHIPR]
+1:	ldr r1, [r0, #MX5_CCM_CDHIPR]
 	cmp r1, #0x0
 	bne 1b
 #endif
 
 	/* Switch ARM to step clock */
 	mov r1, #0x4
-	str r1, [r0, #MX51_CCM_CCSR]
+	str r1, [r0, #MX5_CCM_CCSR]
 
-	mov r3, #MX51_PLL_DP_OP_800
-	mov r4, #MX51_PLL_DP_MFD_800
-	mov r5, #MX51_PLL_DP_MFN_800
+	mov r3, #MX5_PLL_DP_OP_800
+	mov r4, #MX5_PLL_DP_MFD_800
+	mov r5, #MX5_PLL_DP_MFN_800
 	setup_pll MX51_PLL1_BASE_ADDR
 
-	mov r3, #MX51_PLL_DP_OP_665
-	mov r4, #MX51_PLL_DP_MFD_665
-	mov r5, #MX51_PLL_DP_MFN_665
+	mov r3, #MX5_PLL_DP_OP_665
+	mov r4, #MX5_PLL_DP_MFD_665
+	mov r5, #MX5_PLL_DP_MFN_665
 	setup_pll MX51_PLL3_BASE_ADDR
 
 	/* Switch peripheral to PLL 3 */
 	ldr r1, =0x000010C0
-	str r1, [r0, #MX51_CCM_CBCMR]
+	str r1, [r0, #MX5_CCM_CBCMR]
 	ldr r1, =0x13239145
-	str r1, [r0, #MX51_CCM_CBCDR]
+	str r1, [r0, #MX5_CCM_CBCDR]
 
-	mov r3, #MX51_PLL_DP_OP_665
-	mov r4, #MX51_PLL_DP_MFD_665
-	mov r5, #MX51_PLL_DP_MFN_665
+	mov r3, #MX5_PLL_DP_OP_665
+	mov r4, #MX5_PLL_DP_MFD_665
+	mov r5, #MX5_PLL_DP_MFN_665
 	setup_pll MX51_PLL2_BASE_ADDR
 
 	/* Switch peripheral to PLL2 */
 	ldr r1, =0x19239145
-	str r1, [r0, #MX51_CCM_CBCDR]
+	str r1, [r0, #MX5_CCM_CBCDR]
 	ldr r1, =0x000020C0
-	str r1, [r0, #MX51_CCM_CBCMR]
+	str r1, [r0, #MX5_CCM_CBCMR]
 
-	mov r3, #MX51_PLL_DP_OP_216
-	mov r4, #MX51_PLL_DP_MFD_216
-	mov r5, #MX51_PLL_DP_MFN_216
+	mov r3, #MX5_PLL_DP_OP_216
+	mov r4, #MX5_PLL_DP_MFD_216
+	mov r5, #MX5_PLL_DP_MFN_216
 	setup_pll MX51_PLL3_BASE_ADDR
 
 	/* Set the platform clock dividers */
@@ -154,52 +154,52 @@ board_init_lowlevel:
 	cmp r3, #0x10
 	movls r1, #0x1
 	movhi r1, #0
-	str r1, [r0, #MX51_CCM_CACRR]
+	str r1, [r0, #MX5_CCM_CACRR]
 
 	/* Switch ARM back to PLL 1 */
 	mov r1, #0
-	str r1, [r0,  #MX51_CCM_CCSR]
+	str r1, [r0,  #MX5_CCM_CCSR]
 
         /* setup the rest */
         /* Use lp_apm (24MHz) source for perclk */
 #ifdef IMX51_TO_2
         ldr r1, =0x000020C2
-        str r1, [r0, #MX51_CCM_CBCMR]
+        str r1, [r0, #MX5_CCM_CBCMR]
         // ddr clock from PLL 1, all perclk dividers are 1 since using 24MHz
         ldr r1, =0x59239100
-        str r1, [r0, #MX51_CCM_CBCDR]
+        str r1, [r0, #MX5_CCM_CBCDR]
 #else
         ldr r1, =0x0000E3C2
-        str r1, [r0, #MX51_CCM_CBCMR]
+        str r1, [r0, #MX5_CCM_CBCMR]
         // emi=ahb, all perclk dividers are 1 since using 24MHz
         // DDR divider=6 to have 665/6=110MHz
         ldr r1, =0x013B9100
-        str r1, [r0, #MX51_CCM_CBCDR]
+        str r1, [r0, #MX5_CCM_CBCDR]
 #endif
 
         /* Restore the default values in the Gate registers */
         ldr r1, =0xFFFFFFFF
-        str r1, [r0, #MX51_CCM_CCGR0]
-        str r1, [r0, #MX51_CCM_CCGR1]
-        str r1, [r0, #MX51_CCM_CCGR2]
-        str r1, [r0, #MX51_CCM_CCGR3]
-        str r1, [r0, #MX51_CCM_CCGR4]
-        str r1, [r0, #MX51_CCM_CCGR5]
-        str r1, [r0, #MX51_CCM_CCGR6]
+        str r1, [r0, #MX5_CCM_CCGR0]
+        str r1, [r0, #MX5_CCM_CCGR1]
+        str r1, [r0, #MX5_CCM_CCGR2]
+        str r1, [r0, #MX5_CCM_CCGR3]
+        str r1, [r0, #MX5_CCM_CCGR4]
+        str r1, [r0, #MX5_CCM_CCGR5]
+        str r1, [r0, #MX5_CCM_CCGR6]
 
         /* Use PLL 2 for UART's, get 66.5MHz from it */
         ldr r1, =0xA5A2A020
-        str r1, [r0, #MX51_CCM_CSCMR1]
+        str r1, [r0, #MX5_CCM_CSCMR1]
         ldr r1, =0x00C30321
-        str r1, [r0, #MX51_CCM_CSCDR1]
+        str r1, [r0, #MX5_CCM_CSCDR1]
 
         /* make sure divider effective */
-    1:  ldr r1, [r0, #MX51_CCM_CDHIPR]
+    1:  ldr r1, [r0, #MX5_CCM_CDHIPR]
         cmp r1, #0x0
         bne 1b
 
 	mov r1, #0x0
-	str r1, [r0, #MX51_CCM_CCDR]
+	str r1, [r0, #MX5_CCM_CCDR]
 
 	writel(0x1, 0x73fa8074)
 	ldr	r0, =0x73f88000
diff --git a/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S b/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
index 793104c..0b3726f 100644
--- a/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S
@@ -19,29 +19,29 @@
 
 #include <config.h>
 #include <mach/imx-regs.h>
-#include <mach/clock-imx51.h>
+#include <mach/clock-imx51_53.h>
 
 #define ROM_SI_REV_OFFSET                   0x48
 
 .macro setup_pll pll, freq
 	ldr r2, =\pll
 	ldr r1, =0x00001232
-	str r1, [r2, #MX51_PLL_DP_CTL] /* Set DPLL ON (set UPEN bit): BRMO=1 */
+	str r1, [r2, #MX5_PLL_DP_CTL] /* Set DPLL ON (set UPEN bit): BRMO=1 */
 	mov r1, #0x2
-	str r1, [r2, #MX51_PLL_DP_CONFIG] /* Enable auto-restart AREN bit */
+	str r1, [r2, #MX5_PLL_DP_CONFIG] /* Enable auto-restart AREN bit */
 
-	str r3, [r2, #MX51_PLL_DP_OP]
-	str r3, [r2, #MX51_PLL_DP_HFS_OP]
+	str r3, [r2, #MX5_PLL_DP_OP]
+	str r3, [r2, #MX5_PLL_DP_HFS_OP]
 
-	str r4, [r2, #MX51_PLL_DP_MFD]
-	str r4, [r2, #MX51_PLL_DP_HFS_MFD]
+	str r4, [r2, #MX5_PLL_DP_MFD]
+	str r4, [r2, #MX5_PLL_DP_HFS_MFD]
 
-	str r5, [r2, #MX51_PLL_DP_MFN]
-	str r5, [r2, #MX51_PLL_DP_HFS_MFN]
+	str r5, [r2, #MX5_PLL_DP_MFN]
+	str r5, [r2, #MX5_PLL_DP_HFS_MFN]
 
 	ldr r1, =0x00001232
-	str r1, [r2, #MX51_PLL_DP_CTL]
-1:	ldr r1, [r2, #MX51_PLL_DP_CTL]
+	str r1, [r2, #MX5_PLL_DP_CTL]
+1:	ldr r1, [r2, #MX5_PLL_DP_CTL]
 	ands r1, r1, #0x1
 	beq 1b
 .endm
@@ -80,67 +80,67 @@ board_init_lowlevel:
 
 	/* Gate of clocks to the peripherals first */
 	ldr r1, =0x3FFFFFFF
-	str r1, [r0, #MX51_CCM_CCGR0]
+	str r1, [r0, #MX5_CCM_CCGR0]
 	ldr r1, =0x0
-	str r1, [r0, #MX51_CCM_CCGR1]
-	str r1, [r0, #MX51_CCM_CCGR2]
-	str r1, [r0, #MX51_CCM_CCGR3]
+	str r1, [r0, #MX5_CCM_CCGR1]
+	str r1, [r0, #MX5_CCM_CCGR2]
+	str r1, [r0, #MX5_CCM_CCGR3]
 
 	ldr r1, =0x00030000
-	str r1, [r0, #MX51_CCM_CCGR4]
+	str r1, [r0, #MX5_CCM_CCGR4]
 	ldr r1, =0x00FFF030
-	str r1, [r0, #MX51_CCM_CCGR5]
+	str r1, [r0, #MX5_CCM_CCGR5]
 	ldr r1, =0x00000300
-	str r1, [r0, #MX51_CCM_CCGR6]
+	str r1, [r0, #MX5_CCM_CCGR6]
 
 	/* Disable IPU and HSC dividers */
 	mov r1, #0x60000
-	str r1, [r0, #MX51_CCM_CCDR]
+	str r1, [r0, #MX5_CCM_CCDR]
 
 #ifdef IMX51_TO_2
 	/* Make sure to switch the DDR away from PLL 1 */
 	ldr r1, =0x19239145
-	str r1, [r0, #MX51_CCM_CBCDR]
+	str r1, [r0, #MX5_CCM_CBCDR]
 	/* make sure divider effective */
-1:	ldr r1, [r0, #MX51_CCM_CDHIPR]
+1:	ldr r1, [r0, #MX5_CCM_CDHIPR]
 	cmp r1, #0x0
 	bne 1b
 #endif
 
 	/* Switch ARM to step clock */
 	mov r1, #0x4
-	str r1, [r0, #MX51_CCM_CCSR]
+	str r1, [r0, #MX5_CCM_CCSR]
 
-	mov r3, #MX51_PLL_DP_OP_800
-	mov r4, #MX51_PLL_DP_MFD_800
-	mov r5, #MX51_PLL_DP_MFN_800
+	mov r3, #MX5_PLL_DP_OP_800
+	mov r4, #MX5_PLL_DP_MFD_800
+	mov r5, #MX5_PLL_DP_MFN_800
 	setup_pll MX51_PLL1_BASE_ADDR
 
-	mov r3, #MX51_PLL_DP_OP_665
-	mov r4, #MX51_PLL_DP_MFD_665
-	mov r5, #MX51_PLL_DP_MFN_665
+	mov r3, #MX5_PLL_DP_OP_665
+	mov r4, #MX5_PLL_DP_MFD_665
+	mov r5, #MX5_PLL_DP_MFN_665
 	setup_pll MX51_PLL3_BASE_ADDR
 
 	/* Switch peripheral to PLL 3 */
 	ldr r1, =0x000010C0
-	str r1, [r0, #MX51_CCM_CBCMR]
+	str r1, [r0, #MX5_CCM_CBCMR]
 	ldr r1, =0x13239145
-	str r1, [r0, #MX51_CCM_CBCDR]
+	str r1, [r0, #MX5_CCM_CBCDR]
 
-	mov r3, #MX51_PLL_DP_OP_665
-	mov r4, #MX51_PLL_DP_MFD_665
-	mov r5, #MX51_PLL_DP_MFN_665
+	mov r3, #MX5_PLL_DP_OP_665
+	mov r4, #MX5_PLL_DP_MFD_665
+	mov r5, #MX5_PLL_DP_MFN_665
 	setup_pll MX51_PLL2_BASE_ADDR
 
 	/* Switch peripheral to PLL2 */
 	ldr r1, =0x19239145
-	str r1, [r0, #MX51_CCM_CBCDR]
+	str r1, [r0, #MX5_CCM_CBCDR]
 	ldr r1, =0x000020C0
-	str r1, [r0, #MX51_CCM_CBCMR]
+	str r1, [r0, #MX5_CCM_CBCMR]
 
-	mov r3, #MX51_PLL_DP_OP_216
-	mov r4, #MX51_PLL_DP_MFD_216
-	mov r5, #MX51_PLL_DP_MFN_216
+	mov r3, #MX5_PLL_DP_OP_216
+	mov r4, #MX5_PLL_DP_MFD_216
+	mov r5, #MX5_PLL_DP_MFN_216
 	setup_pll MX51_PLL3_BASE_ADDR
 
 	/* Set the platform clock dividers */
@@ -154,52 +154,52 @@ board_init_lowlevel:
 	cmp r3, #0x10
 	movls r1, #0x1
 	movhi r1, #0
-	str r1, [r0, #MX51_CCM_CACRR]
+	str r1, [r0, #MX5_CCM_CACRR]
 
 	/* Switch ARM back to PLL 1 */
 	mov r1, #0
-	str r1, [r0,  #MX51_CCM_CCSR]
+	str r1, [r0,  #MX5_CCM_CCSR]
 
         /* setup the rest */
         /* Use lp_apm (24MHz) source for perclk */
 #ifdef IMX51_TO_2
         ldr r1, =0x000020C2
-        str r1, [r0, #MX51_CCM_CBCMR]
+        str r1, [r0, #MX5_CCM_CBCMR]
         // ddr clock from PLL 1, all perclk dividers are 1 since using 24MHz
         ldr r1, =0x59239100
-        str r1, [r0, #MX51_CCM_CBCDR]
+        str r1, [r0, #MX5_CCM_CBCDR]
 #else
         ldr r1, =0x0000E3C2
-        str r1, [r0, #MX51_CCM_CBCMR]
+        str r1, [r0, #MX5_CCM_CBCMR]
         // emi=ahb, all perclk dividers are 1 since using 24MHz
         // DDR divider=6 to have 665/6=110MHz
         ldr r1, =0x013B9100
-        str r1, [r0, #MX51_CCM_CBCDR]
+        str r1, [r0, #MX5_CCM_CBCDR]
 #endif
 
         /* Restore the default values in the Gate registers */
         ldr r1, =0xFFFFFFFF
-        str r1, [r0, #MX51_CCM_CCGR0]
-        str r1, [r0, #MX51_CCM_CCGR1]
-        str r1, [r0, #MX51_CCM_CCGR2]
-        str r1, [r0, #MX51_CCM_CCGR3]
-        str r1, [r0, #MX51_CCM_CCGR4]
-        str r1, [r0, #MX51_CCM_CCGR5]
-        str r1, [r0, #MX51_CCM_CCGR6]
+        str r1, [r0, #MX5_CCM_CCGR0]
+        str r1, [r0, #MX5_CCM_CCGR1]
+        str r1, [r0, #MX5_CCM_CCGR2]
+        str r1, [r0, #MX5_CCM_CCGR3]
+        str r1, [r0, #MX5_CCM_CCGR4]
+        str r1, [r0, #MX5_CCM_CCGR5]
+        str r1, [r0, #MX5_CCM_CCGR6]
 
         /* Use PLL 2 for UART's, get 66.5MHz from it */
         ldr r1, =0xA5A2A020
-        str r1, [r0, #MX51_CCM_CSCMR1]
+        str r1, [r0, #MX5_CCM_CSCMR1]
         ldr r1, =0x00C30321
-        str r1, [r0, #MX51_CCM_CSCDR1]
+        str r1, [r0, #MX5_CCM_CSCDR1]
 
         /* make sure divider effective */
-    1:  ldr r1, [r0, #MX51_CCM_CDHIPR]
+    1:  ldr r1, [r0, #MX5_CCM_CDHIPR]
         cmp r1, #0x0
         bne 1b
 
 	mov r1, #0x0
-	str r1, [r0, #MX51_CCM_CCDR]
+	str r1, [r0, #MX5_CCM_CCDR]
 
 	writel(0x1, 0x73fa8074)
 	ldr	r0, =0x73f88000
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51.h b/arch/arm/mach-imx/include/mach/clock-imx51.h
deleted file mode 100644
index 0dee7c3..0000000
--- a/arch/arm/mach-imx/include/mach/clock-imx51.h
+++ /dev/null
@@ -1,696 +0,0 @@
-/*
- * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
- */
-
-/*
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-#ifndef __ARCH_ARM_MACH_MX51_CRM_REGS_H__
-#define __ARCH_ARM_MACH_MX51_CRM_REGS_H__
-
-/* PLL Register Offsets */
-#define MX51_PLL_DP_CTL			0x00
-#define MX51_PLL_DP_CONFIG		0x04
-#define MX51_PLL_DP_OP			0x08
-#define MX51_PLL_DP_MFD			0x0C
-#define MX51_PLL_DP_MFN			0x10
-#define MX51_PLL_DP_MFNMINUS		0x14
-#define MX51_PLL_DP_MFNPLUS		0x18
-#define MX51_PLL_DP_HFS_OP		0x1C
-#define MX51_PLL_DP_HFS_MFD		0x20
-#define MX51_PLL_DP_HFS_MFN		0x24
-#define MX51_PLL_DP_MFN_TOGC		0x28
-#define MX51_PLL_DP_DESTAT		0x2c
-
-/* PLL Register Bit definitions */
-#define MX51_PLL_DP_CTL_MUL_CTRL		0x2000
-#define MX51_PLL_DP_CTL_DPDCK0_2_EN	0x1000
-#define MX51_PLL_DP_CTL_DPDCK0_2_OFFSET	12
-#define MX51_PLL_DP_CTL_ADE		0x800
-#define MX51_PLL_DP_CTL_REF_CLK_DIV	0x400
-#define MX51_PLL_DP_CTL_REF_CLK_SEL_MASK	(3 << 8)
-#define MX51_PLL_DP_CTL_REF_CLK_SEL_OFFSET	8
-#define MX51_PLL_DP_CTL_HFSM		0x80
-#define MX51_PLL_DP_CTL_PRE		0x40
-#define MX51_PLL_DP_CTL_UPEN		0x20
-#define MX51_PLL_DP_CTL_RST		0x10
-#define MX51_PLL_DP_CTL_RCP		0x8
-#define MX51_PLL_DP_CTL_PLM		0x4
-#define MX51_PLL_DP_CTL_BRM0		0x2
-#define MX51_PLL_DP_CTL_LRF		0x1
-
-#define MX51_PLL_DP_CONFIG_BIST		0x8
-#define MX51_PLL_DP_CONFIG_SJC_CE	0x4
-#define MX51_PLL_DP_CONFIG_AREN		0x2
-#define MX51_PLL_DP_CONFIG_LDREQ		0x1
-
-#define MX51_PLL_DP_OP_MFI_OFFSET	4
-#define MX51_PLL_DP_OP_MFI_MASK		(0xF << 4)
-#define MX51_PLL_DP_OP_PDF_OFFSET	0
-#define MX51_PLL_DP_OP_PDF_MASK		0xF
-
-#define MX51_PLL_DP_MFD_OFFSET		0
-#define MX51_PLL_DP_MFD_MASK		0x07FFFFFF
-
-#define MX51_PLL_DP_MFN_OFFSET		0x0
-#define MX51_PLL_DP_MFN_MASK		0x07FFFFFF
-
-#define MX51_PLL_DP_MFN_TOGC_TOG_DIS	(1 << 17)
-#define MX51_PLL_DP_MFN_TOGC_TOG_EN	(1 << 16)
-#define MX51_PLL_DP_MFN_TOGC_CNT_OFFSET	0x0
-#define MX51_PLL_DP_MFN_TOGC_CNT_MASK	0xFFFF
-
-#define MX51_PLL_DP_DESTAT_TOG_SEL	(1 << 31)
-#define MX51_PLL_DP_DESTAT_MFN		0x07FFFFFF
-
-/* Assuming 24MHz input clock with doubler ON */
-/*                            MFI         PDF */
-#define MX51_PLL_DP_OP_850	((8 << 4) + ((1 - 1)  << 0))
-#define MX51_PLL_DP_MFD_850	(48 - 1)
-#define MX51_PLL_DP_MFN_850	41
-
-#define MX51_PLL_DP_OP_800	((8 << 4) + ((1 - 1)  << 0))
-#define MX51_PLL_DP_MFD_800	(3 - 1)
-#define MX51_PLL_DP_MFN_800	1
-
-#define MX51_PLL_DP_OP_700	((7 << 4) + ((1 - 1)  << 0))
-#define MX51_PLL_DP_MFD_700	(24 - 1)
-#define MX51_PLL_DP_MFN_700	7
-
-#define MX51_PLL_DP_OP_665	((6 << 4) + ((1 - 1)  << 0))
-#define MX51_PLL_DP_MFD_665	(96 - 1)
-#define MX51_PLL_DP_MFN_665	89
-
-#define MX51_PLL_DP_OP_532	((5 << 4) + ((1 - 1)  << 0))
-#define MX51_PLL_DP_MFD_532	(24 - 1)
-#define MX51_PLL_DP_MFN_532	13
-
-#define MX51_PLL_DP_OP_400	((8 << 4) + ((2 - 1)  << 0))
-#define MX51_PLL_DP_MFD_400	(3 - 1)
-#define MX51_PLL_DP_MFN_400	1
-
-#define MX51_PLL_DP_OP_216	((6 << 4) + ((3 - 1)  << 0))
-#define MX51_PLL_DP_MFD_216	(4 - 1)
-#define MX51_PLL_DP_MFN_216	3
-
-/* Register addresses of CCM*/
-#define MX51_CCM_CCR		0x00
-#define MX51_CCM_CCDR		0x04
-#define MX51_CCM_CSR		0x08
-#define MX51_CCM_CCSR		0x0C
-#define MX51_CCM_CACRR		0x10
-#define MX51_CCM_CBCDR		0x14
-#define MX51_CCM_CBCMR		0x18
-#define MX51_CCM_CSCMR1		0x1C
-#define MX51_CCM_CSCMR2		0x20
-#define MX51_CCM_CSCDR1		0x24
-#define MX51_CCM_CS1CDR		0x28
-#define MX51_CCM_CS2CDR		0x2C
-#define MX51_CCM_CDCDR		0x30
-#define MX51_CCM_CHSCDR		0x34
-#define MX51_CCM_CSCDR2		0x38
-#define MX51_CCM_CSCDR3		0x3C
-#define MX51_CCM_CSCDR4		0x40
-#define MX51_CCM_CWDR		0x44
-#define MX51_CCM_CDHIPR		0x48
-#define MX51_CCM_CDCR		0x4C
-#define MX51_CCM_CTOR		0x50
-#define MX51_CCM_CLPCR		0x54
-#define MX51_CCM_CISR		0x58
-#define MX51_CCM_CIMR		0x5C
-#define MX51_CCM_CCOSR		0x60
-#define MX51_CCM_CGPR		0x64
-#define MX51_CCM_CCGR0		0x68
-#define MX51_CCM_CCGR1		0x6C
-#define MX51_CCM_CCGR2		0x70
-#define MX51_CCM_CCGR3		0x74
-#define MX51_CCM_CCGR4		0x78
-#define MX51_CCM_CCGR5		0x7C
-#define MX51_CCM_CCGR6		0x80
-#define MX51_CCM_CMEOR		0x84
-
-/* Define the bits in register CCR */
-#define MX51_CCM_CCR_COSC_EN		(1 << 12)
-#define MX51_CCM_CCR_FPM_MULT_MASK	(1 << 11)
-#define MX51_CCM_CCR_CAMP2_EN		(1 << 10)
-#define MX51_CCM_CCR_CAMP1_EN		(1 << 9)
-#define MX51_CCM_CCR_FPM_EN		(1 << 8)
-#define MX51_CCM_CCR_OSCNT_OFFSET	(0)
-#define MX51_CCM_CCR_OSCNT_MASK	(0xFF)
-
-/* Define the bits in register CCDR */
-#define MX51_CCM_CCDR_HSC_HS_MASK	(0x1 << 18)
-#define MX51_CCM_CCDR_IPU_HS_MASK	(0x1 << 17)
-#define MX51_CCM_CCDR_EMI_HS_MASK	(0x1 << 16)
-
-/* Define the bits in register CSR */
-#define MX51_CCM_CSR_COSR_READY	(1 << 5)
-#define MX51_CCM_CSR_LVS_VALUE		(1 << 4)
-#define MX51_CCM_CSR_CAMP2_READY	(1 << 3)
-#define MX51_CCM_CSR_CAMP1_READY	(1 << 2)
-#define MX51_CCM_CSR_FPM_READY	(1 << 1)
-#define MX51_CCM_CSR_REF_EN_B		(1 << 0)
-
-/* Define the bits in register CCSR */
-#define MX51_CCM_CCSR_LP_APM_SEL		(0x1 << 9)
-#define MX51_CCM_CCSR_STEP_SEL_OFFSET		(7)
-#define MX51_CCM_CCSR_STEP_SEL_MASK		(0x3 << 7)
-#define MX51_CCM_CCSR_PLL2_PODF_OFFSET	(5)
-#define MX51_CCM_CCSR_PLL2_PODF_MASK		(0x3 << 5)
-#define MX51_CCM_CCSR_PLL3_PODF_OFFSET	(3)
-#define MX51_CCM_CCSR_PLL3_PODF_MASK		(0x3 << 3)
-#define MX51_CCM_CCSR_PLL1_SW_CLK_SEL		(1 << 2)
-#define MX51_CCM_CCSR_PLL2_SW_CLK_SEL		(1 << 1)
-#define MX51_CCM_CCSR_PLL3_SW_CLK_SEL		(1 << 0)
-
-/* Define the bits in register CACRR */
-#define MX51_CCM_CACRR_ARM_PODF_OFFSET	(0)
-#define MX51_CCM_CACRR_ARM_PODF_MASK		(0x7)
-
-/* Define the bits in register CBCDR */
-#define MX51_CCM_CBCDR_EMI_CLK_SEL			(0x1 << 26)
-#define MX51_CCM_CBCDR_PERIPH_CLK_SEL			(0x1 << 25)
-#define MX51_CCM_CBCDR_DDR_HF_SEL_OFFSET		(30)
-#define MX51_CCM_CBCDR_DDR_HF_SEL			(0x1 << 30)
-#define MX51_CCM_CBCDR_DDR_PODF_OFFSET		(27)
-#define MX51_CCM_CBCDR_DDR_PODF_MASK			(0x7 << 27)
-#define MX51_CCM_CBCDR_EMI_PODF_OFFSET		(22)
-#define MX51_CCM_CBCDR_EMI_PODF_MASK			(0x7 << 22)
-#define MX51_CCM_CBCDR_AXI_B_PODF_OFFSET		(19)
-#define MX51_CCM_CBCDR_AXI_B_PODF_MASK		(0x7 << 19)
-#define MX51_CCM_CBCDR_AXI_A_PODF_OFFSET		(16)
-#define MX51_CCM_CBCDR_AXI_A_PODF_MASK		(0x7 << 16)
-#define MX51_CCM_CBCDR_NFC_PODF_OFFSET		(13)
-#define MX51_CCM_CBCDR_NFC_PODF_MASK			(0x7 << 13)
-#define MX51_CCM_CBCDR_AHB_PODF_OFFSET		(10)
-#define MX51_CCM_CBCDR_AHB_PODF_MASK			(0x7 << 10)
-#define MX51_CCM_CBCDR_IPG_PODF_OFFSET		(8)
-#define MX51_CCM_CBCDR_IPG_PODF_MASK			(0x3 << 8)
-#define MX51_CCM_CBCDR_PERCLK_PRED1_OFFSET		(6)
-#define MX51_CCM_CBCDR_PERCLK_PRED1_MASK		(0x3 << 6)
-#define MX51_CCM_CBCDR_PERCLK_PRED2_OFFSET		(3)
-#define MX51_CCM_CBCDR_PERCLK_PRED2_MASK		(0x7 << 3)
-#define MX51_CCM_CBCDR_PERCLK_PODF_OFFSET		(0)
-#define MX51_CCM_CBCDR_PERCLK_PODF_MASK		(0x7)
-
-/* Define the bits in register CBCMR */
-#define MX51_CCM_CBCMR_VPU_AXI_CLK_SEL_OFFSET	(14)
-#define MX51_CCM_CBCMR_VPU_AXI_CLK_SEL_MASK		(0x3 << 14)
-#define MX51_CCM_CBCMR_PERIPH_CLK_SEL_OFFSET		(12)
-#define MX51_CCM_CBCMR_PERIPH_CLK_SEL_MASK		(0x3 << 12)
-#define MX51_CCM_CBCMR_DDR_CLK_SEL_OFFSET		(10)
-#define MX51_CCM_CBCMR_DDR_CLK_SEL_MASK		(0x3 << 10)
-#define MX51_CCM_CBCMR_ARM_AXI_CLK_SEL_OFFSET	(8)
-#define MX51_CCM_CBCMR_ARM_AXI_CLK_SEL_MASK		(0x3 << 8)
-#define MX51_CCM_CBCMR_IPU_HSP_CLK_SEL_OFFSET	(6)
-#define MX51_CCM_CBCMR_IPU_HSP_CLK_SEL_MASK		(0x3 << 6)
-#define MX51_CCM_CBCMR_GPU_CLK_SEL_OFFSET		(4)
-#define MX51_CCM_CBCMR_GPU_CLK_SEL_MASK		(0x3 << 4)
-#define MX51_CCM_CBCMR_GPU2D_CLK_SEL_OFFSET        (14)
-#define MX51_CCM_CBCMR_GPU2D_CLK_SEL_MASK      (0x3 << 14)
-#define MX51_CCM_CBCMR_PERCLK_LP_APM_CLK_SEL		(0x1 << 1)
-#define MX51_CCM_CBCMR_PERCLK_IPG_CLK_SEL		(0x1 << 0)
-
-/* Define the bits in register CSCMR1 */
-#define MX51_CCM_CSCMR1_SSI_EXT2_CLK_SEL_OFFSET		(30)
-#define MX51_CCM_CSCMR1_SSI_EXT2_CLK_SEL_MASK		(0x3 << 30)
-#define MX51_CCM_CSCMR1_SSI_EXT1_CLK_SEL_OFFSET		(28)
-#define MX51_CCM_CSCMR1_SSI_EXT1_CLK_SEL_MASK		(0x3 << 28)
-#define MX51_CCM_CSCMR1_USB_PHY_CLK_SEL_OFFSET		(26)
-#define MX51_CCM_CSCMR1_USB_PHY_CLK_SEL			(0x1 << 26)
-#define MX51_CCM_CSCMR1_UART_CLK_SEL_OFFSET			(24)
-#define MX51_CCM_CSCMR1_UART_CLK_SEL_MASK			(0x3 << 24)
-#define MX51_CCM_CSCMR1_USBOH3_CLK_SEL_OFFSET		(22)
-#define MX51_CCM_CSCMR1_USBOH3_CLK_SEL_MASK			(0x3 << 22)
-#define MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_OFFSET	(20)
-#define MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_MASK		(0x3 << 20)
-#define MX51_CCM_CSCMR1_ESDHC3_CLK_SEL			(0x1 << 19)
-#define MX51_CCM_CSCMR1_ESDHC4_CLK_SEL			(0x1 << 18)
-#define MX51_CCM_CSCMR1_ESDHC2_MSHC2_CLK_SEL_OFFSET	(16)
-#define MX51_CCM_CSCMR1_ESDHC2_MSHC2_CLK_SEL_MASK		(0x3 << 16)
-#define MX51_CCM_CSCMR1_SSI1_CLK_SEL_OFFSET			(14)
-#define MX51_CCM_CSCMR1_SSI1_CLK_SEL_MASK			(0x3 << 14)
-#define MX51_CCM_CSCMR1_SSI2_CLK_SEL_OFFSET			(12)
-#define MX51_CCM_CSCMR1_SSI2_CLK_SEL_MASK			(0x3 << 12)
-#define MX51_CCM_CSCMR1_SSI3_CLK_SEL				(0x1 << 11)
-#define MX51_CCM_CSCMR1_VPU_RCLK_SEL				(0x1 << 10)
-#define MX51_CCM_CSCMR1_SSI_APM_CLK_SEL_OFFSET		(8)
-#define MX51_CCM_CSCMR1_SSI_APM_CLK_SEL_MASK		(0x3 << 8)
-#define MX51_CCM_CSCMR1_TVE_CLK_SEL				(0x1 << 7)
-#define MX51_CCM_CSCMR1_TVE_EXT_CLK_SEL			(0x1 << 6)
-#define MX51_CCM_CSCMR1_CSPI_CLK_SEL_OFFSET			(4)
-#define MX51_CCM_CSCMR1_CSPI_CLK_SEL_MASK			(0x3 << 4)
-#define MX51_CCM_CSCMR1_SPDIF_CLK_SEL_OFFSET			(2)
-#define MX51_CCM_CSCMR1_SPDIF_CLK_SEL_MASK			(0x3 << 2)
-#define MX51_CCM_CSCMR1_SSI_EXT2_COM_CLK_SEL			(0x1 << 1)
-#define MX51_CCM_CSCMR1_SSI_EXT1_COM_CLK_SEL			(0x1)
-
-/* Define the bits in register CSCMR2 */
-#define MX51_CCM_CSCMR2_DI_CLK_SEL_OFFSET(n)		(26+n*3)
-#define MX51_CCM_CSCMR2_DI_CLK_SEL_MASK(n)		(0x7 << (26+n*3))
-#define MX51_CCM_CSCMR2_CSI_MCLK2_CLK_SEL_OFFSET	(24)
-#define MX51_CCM_CSCMR2_CSI_MCLK2_CLK_SEL_MASK	(0x3 << 24)
-#define MX51_CCM_CSCMR2_CSI_MCLK1_CLK_SEL_OFFSET	(22)
-#define MX51_CCM_CSCMR2_CSI_MCLK1_CLK_SEL_MASK	(0x3 << 22)
-#define MX51_CCM_CSCMR2_ESC_CLK_SEL_OFFSET		(20)
-#define MX51_CCM_CSCMR2_ESC_CLK_SEL_MASK		(0x3 << 20)
-#define MX51_CCM_CSCMR2_HSC2_CLK_SEL_OFFSET		(18)
-#define MX51_CCM_CSCMR2_HSC2_CLK_SEL_MASK		(0x3 << 18)
-#define MX51_CCM_CSCMR2_HSC1_CLK_SEL_OFFSET		(16)
-#define MX51_CCM_CSCMR2_HSC1_CLK_SEL_MASK		(0x3 << 16)
-#define MX51_CCM_CSCMR2_HSI2C_CLK_SEL_OFFSET		(14)
-#define MX51_CCM_CSCMR2_HSI2C_CLK_SEL_MASK		(0x3 << 14)
-#define MX51_CCM_CSCMR2_FIRI_CLK_SEL_OFFSET		(12)
-#define MX51_CCM_CSCMR2_FIRI_CLK_SEL_MASK		(0x3 << 12)
-#define MX51_CCM_CSCMR2_SIM_CLK_SEL_OFFSET		(10)
-#define MX51_CCM_CSCMR2_SIM_CLK_SEL_MASK		(0x3 << 10)
-#define MX51_CCM_CSCMR2_SLIMBUS_COM			(0x1 << 9)
-#define MX51_CCM_CSCMR2_SLIMBUS_CLK_SEL_OFFSET	(6)
-#define MX51_CCM_CSCMR2_SLIMBUS_CLK_SEL_MASK		(0x7 << 6)
-#define MX51_CCM_CSCMR2_SPDIF1_COM			(1 << 5)
-#define MX51_CCM_CSCMR2_SPDIF0_COM			(1 << 4)
-#define MX51_CCM_CSCMR2_SPDIF1_CLK_SEL_OFFSET	(2)
-#define MX51_CCM_CSCMR2_SPDIF1_CLK_SEL_MASK		(0x3 << 2)
-#define MX51_CCM_CSCMR2_SPDIF0_CLK_SEL_OFFSET	(0)
-#define MX51_CCM_CSCMR2_SPDIF0_CLK_SEL_MASK		(0x3)
-
-/* Define the bits in register CSCDR1 */
-#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_OFFSET	(22)
-#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_MASK		(0x7 << 22)
-#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_OFFSET	(19)
-#define MX51_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_MASK		(0x7 << 19)
-#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET	(16)
-#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK		(0x7 << 16)
-#define MX51_CCM_CSCDR1_PGC_CLK_PODF_OFFSET			(14)
-#define MX51_CCM_CSCDR1_PGC_CLK_PODF_MASK			(0x3 << 14)
-#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET	(11)
-#define MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK		(0x7 << 11)
-#define MX51_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET		(8)
-#define MX51_CCM_CSCDR1_USBOH3_CLK_PRED_MASK		(0x7 << 8)
-#define MX51_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET		(6)
-#define MX51_CCM_CSCDR1_USBOH3_CLK_PODF_MASK		(0x3 << 6)
-#define MX51_CCM_CSCDR1_UART_CLK_PRED_OFFSET		(3)
-#define MX51_CCM_CSCDR1_UART_CLK_PRED_MASK			(0x7 << 3)
-#define MX51_CCM_CSCDR1_UART_CLK_PODF_OFFSET		(0)
-#define MX51_CCM_CSCDR1_UART_CLK_PODF_MASK			(0x7)
-
-/* Define the bits in register CS1CDR and CS2CDR */
-#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PRED_OFFSET	(22)
-#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PRED_MASK	(0x7 << 22)
-#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PODF_OFFSET	(16)
-#define MX51_CCM_CS1CDR_SSI_EXT1_CLK_PODF_MASK	(0x3F << 16)
-#define MX51_CCM_CS1CDR_SSI1_CLK_PRED_OFFSET		(6)
-#define MX51_CCM_CS1CDR_SSI1_CLK_PRED_MASK		(0x7 << 6)
-#define MX51_CCM_CS1CDR_SSI1_CLK_PODF_OFFSET		(0)
-#define MX51_CCM_CS1CDR_SSI1_CLK_PODF_MASK		(0x3F)
-
-#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PRED_OFFSET	(22)
-#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PRED_MASK	(0x7 << 22)
-#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PODF_OFFSET	(16)
-#define MX51_CCM_CS2CDR_SSI_EXT2_CLK_PODF_MASK	(0x3F << 16)
-#define MX51_CCM_CS2CDR_SSI2_CLK_PRED_OFFSET		(6)
-#define MX51_CCM_CS2CDR_SSI2_CLK_PRED_MASK		(0x7 << 6)
-#define MX51_CCM_CS2CDR_SSI2_CLK_PODF_OFFSET		(0)
-#define MX51_CCM_CS2CDR_SSI2_CLK_PODF_MASK		(0x3F)
-
-/* Define the bits in register CDCDR */
-#define MX51_CCM_CDCDR_TVE_CLK_PRED_OFFSET		(28)
-#define MX51_CCM_CDCDR_TVE_CLK_PRED_MASK		(0x7 << 28)
-#define MX51_CCM_CDCDR_SPDIF0_CLK_PRED_OFFSET	(25)
-#define MX51_CCM_CDCDR_SPDIF0_CLK_PRED_MASK		(0x7 << 25)
-#define MX51_CCM_CDCDR_SPDIF0_CLK_PODF_OFFSET	(19)
-#define MX51_CCM_CDCDR_SPDIF0_CLK_PODF_MASK		(0x3F << 19)
-#define MX51_CCM_CDCDR_SPDIF1_CLK_PRED_OFFSET	(16)
-#define MX51_CCM_CDCDR_SPDIF1_CLK_PRED_MASK		(0x7 << 16)
-#define MX51_CCM_CDCDR_SPDIF1_CLK_PODF_OFFSET	(9)
-#define MX51_CCM_CDCDR_SPDIF1_CLK_PODF_MASK		(0x3F << 9)
-#define MX51_CCM_CDCDR_DI_CLK_PRED_OFFSET		(6)
-#define MX51_CCM_CDCDR_DI_CLK_PRED_MASK		(0x7 << 6)
-#define MX51_CCM_CDCDR_USB_PHY_PRED_OFFSET		(3)
-#define MX51_CCM_CDCDR_USB_PHY_PRED_MASK		(0x7 << 3)
-#define MX51_CCM_CDCDR_USB_PHY_PODF_OFFSET		(0)
-#define MX51_CCM_CDCDR_USB_PHY_PODF_MASK		(0x7)
-
-/* Define the bits in register CHSCCDR */
-#define MX51_CCM_CHSCCDR_ESC_CLK_PRED_OFFSET		(12)
-#define MX51_CCM_CHSCCDR_ESC_CLK_PRED_MASK		(0x7 << 12)
-#define MX51_CCM_CHSCCDR_ESC_CLK_PODF_OFFSET	(6)
-#define MX51_CCM_CHSCCDR_ESC_CLK_PODF_MASK		(0x3F << 6)
-#define MX51_CCM_CHSCCDR_HSC2_CLK_PODF_OFFSET	(3)
-#define MX51_CCM_CHSCCDR_HSC2_CLK_PODF_MASK		(0x7 << 3)
-#define MX51_CCM_CHSCCDR_HSC1_CLK_PODF_OFFSET	(0)
-#define MX51_CCM_CHSCCDR_HSC1_CLK_PODF_MASK		(0x7)
-
-/* Define the bits in register CSCDR2 */
-#define MX51_CCM_CSCDR2_CSPI_CLK_PRED_OFFSET		(25)
-#define MX51_CCM_CSCDR2_CSPI_CLK_PRED_MASK		(0x7 << 25)
-#define MX51_CCM_CSCDR2_CSPI_CLK_PODF_OFFSET		(19)
-#define MX51_CCM_CSCDR2_CSPI_CLK_PODF_MASK		(0x3F << 19)
-#define MX51_CCM_CSCDR2_SIM_CLK_PRED_OFFSET		(16)
-#define MX51_CCM_CSCDR2_SIM_CLK_PRED_MASK		(0x7 << 16)
-#define MX51_CCM_CSCDR2_SIM_CLK_PODF_OFFSET		(9)
-#define MX51_CCM_CSCDR2_SIM_CLK_PODF_MASK		(0x3F << 9)
-#define MX51_CCM_CSCDR2_SLIMBUS_CLK_PRED_OFFSET	(6)
-#define MX51_CCM_CSCDR2_SLIMBUS_PRED_MASK		(0x7 << 6)
-#define MX51_CCM_CSCDR2_SLIMBUS_PODF_OFFSET		(0)
-#define MX51_CCM_CSCDR2_SLIMBUS_PODF_MASK		(0x3F)
-
-/* Define the bits in register CSCDR3 */
-#define MX51_CCM_CSCDR3_HSI2C_CLK_PRED_OFFSET	(16)
-#define MX51_CCM_CSCDR3_HSI2C_CLK_PRED_MASK		(0x7 << 16)
-#define MX51_CCM_CSCDR3_HSI2C_CLK_PODF_OFFSET	(9)
-#define MX51_CCM_CSCDR3_HSI2C_CLK_PODF_MASK		(0x3F << 9)
-#define MX51_CCM_CSCDR3_FIRI_CLK_PRED_OFFSET		(6)
-#define MX51_CCM_CSCDR3_FIRI_CLK_PRED_MASK		(0x7 << 6)
-#define MX51_CCM_CSCDR3_FIRI_CLK_PODF_OFFSET		(0)
-#define MX51_CCM_CSCDR3_FIRI_CLK_PODF_MASK		(0x3F)
-
-/* Define the bits in register CSCDR4 */
-#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PRED_OFFSET	(16)
-#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PRED_MASK	(0x7 << 16)
-#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PODF_OFFSET	(9)
-#define MX51_CCM_CSCDR4_CSI_MCLK2_CLK_PODF_MASK	(0x3F << 9)
-#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PRED_OFFSET	(6)
-#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PRED_MASK	(0x7 << 6)
-#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PODF_OFFSET	(0)
-#define MX51_CCM_CSCDR4_CSI_MCLK1_CLK_PODF_MASK	(0x3F)
-
-/* Define the bits in register CDHIPR */
-#define MX51_CCM_CDHIPR_ARM_PODF_BUSY			(1 << 16)
-#define MX51_CCM_CDHIPR_DDR_HF_CLK_SEL_BUSY		(1 << 8)
-#define MX51_CCM_CDHIPR_DDR_PODF_BUSY			(1 << 7)
-#define MX51_CCM_CDHIPR_EMI_CLK_SEL_BUSY			(1 << 6)
-#define MX51_CCM_CDHIPR_PERIPH_CLK_SEL_BUSY		(1 << 5)
-#define MX51_CCM_CDHIPR_NFC_IPG_INT_MEM_PODF_BUSY	(1 << 4)
-#define MX51_CCM_CDHIPR_AHB_PODF_BUSY			(1 << 3)
-#define MX51_CCM_CDHIPR_EMI_PODF_BUSY			(1 << 2)
-#define MX51_CCM_CDHIPR_AXI_B_PODF_BUSY			(1 << 1)
-#define MX51_CCM_CDHIPR_AXI_A_PODF_BUSY			(1 << 0)
-
-/* Define the bits in register CDCR */
-#define MX51_CCM_CDCR_ARM_FREQ_SHIFT_DIVIDER			(0x1 << 2)
-#define MX51_CCM_CDCR_PERIPH_CLK_DVFS_PODF_OFFSET		(0)
-#define MX51_CCM_CDCR_PERIPH_CLK_DVFS_PODF_MASK		(0x3)
-
-/* Define the bits in register CLPCR */
-#define MX51_CCM_CLPCR_BYPASS_HSC_LPM_HS		(0x1 << 23)
-#define MX51_CCM_CLPCR_BYPASS_SCC_LPM_HS		(0x1 << 22)
-#define MX51_CCM_CLPCR_BYPASS_MAX_LPM_HS		(0x1 << 21)
-#define MX51_CCM_CLPCR_BYPASS_SDMA_LPM_HS		(0x1 << 20)
-#define MX51_CCM_CLPCR_BYPASS_EMI_LPM_HS		(0x1 << 19)
-#define MX51_CCM_CLPCR_BYPASS_IPU_LPM_HS		(0x1 << 18)
-#define MX51_CCM_CLPCR_BYPASS_RTIC_LPM_HS		(0x1 << 17)
-#define MX51_CCM_CLPCR_BYPASS_RNGC_LPM_HS		(0x1 << 16)
-#define MX51_CCM_CLPCR_COSC_PWRDOWN			(0x1 << 11)
-#define MX51_CCM_CLPCR_STBY_COUNT_OFFSET		(9)
-#define MX51_CCM_CLPCR_STBY_COUNT_MASK		(0x3 << 9)
-#define MX51_CCM_CLPCR_VSTBY				(0x1 << 8)
-#define MX51_CCM_CLPCR_DIS_REF_OSC			(0x1 << 7)
-#define MX51_CCM_CLPCR_SBYOS				(0x1 << 6)
-#define MX51_CCM_CLPCR_ARM_CLK_DIS_ON_LPM		(0x1 << 5)
-#define MX51_CCM_CLPCR_LPSR_CLK_SEL_OFFSET		(3)
-#define MX51_CCM_CLPCR_LPSR_CLK_SEL_MASK		(0x3 << 3)
-#define MX51_CCM_CLPCR_LPM_OFFSET			(0)
-#define MX51_CCM_CLPCR_LPM_MASK			(0x3)
-
-/* Define the bits in register CISR */
-#define MX51_CCM_CISR_ARM_PODF_LOADED			(0x1 << 25)
-#define MX51_CCM_CISR_NFC_IPG_INT_MEM_PODF_LOADED		(0x1 << 21)
-#define MX51_CCM_CISR_AHB_PODF_LOADED			(0x1 << 20)
-#define MX51_CCM_CISR_EMI_PODF_LOADED				(0x1 << 19)
-#define MX51_CCM_CISR_AXI_B_PODF_LOADED			(0x1 << 18)
-#define MX51_CCM_CISR_AXI_A_PODF_LOADED			(0x1 << 17)
-#define MX51_CCM_CISR_DIVIDER_LOADED				(0x1 << 16)
-#define MX51_CCM_CISR_COSC_READY				(0x1 << 6)
-#define MX51_CCM_CISR_CKIH2_READY				(0x1 << 5)
-#define MX51_CCM_CISR_CKIH_READY				(0x1 << 4)
-#define MX51_CCM_CISR_FPM_READY				(0x1 << 3)
-#define MX51_CCM_CISR_LRF_PLL3					(0x1 << 2)
-#define MX51_CCM_CISR_LRF_PLL2					(0x1 << 1)
-#define MX51_CCM_CISR_LRF_PLL1					(0x1)
-
-/* Define the bits in register CIMR */
-#define MX51_CCM_CIMR_MASK_ARM_PODF_LOADED		(0x1 << 25)
-#define MX51_CCM_CIMR_MASK_NFC_IPG_INT_MEM_PODF_LOADED	(0x1 << 21)
-#define MX51_CCM_CIMR_MASK_EMI_PODF_LOADED		(0x1 << 20)
-#define MX51_CCM_CIMR_MASK_AXI_C_PODF_LOADED		(0x1 << 19)
-#define MX51_CCM_CIMR_MASK_AXI_B_PODF_LOADED		(0x1 << 18)
-#define MX51_CCM_CIMR_MASK_AXI_A_PODF_LOADED		(0x1 << 17)
-#define MX51_CCM_CIMR_MASK_DIVIDER_LOADED		(0x1 << 16)
-#define MX51_CCM_CIMR_MASK_COSC_READY			(0x1 << 5)
-#define MX51_CCM_CIMR_MASK_CKIH_READY			(0x1 << 4)
-#define MX51_CCM_CIMR_MASK_FPM_READY			(0x1 << 3)
-#define MX51_CCM_CIMR_MASK_LRF_PLL3			(0x1 << 2)
-#define MX51_CCM_CIMR_MASK_LRF_PLL2			(0x1 << 1)
-#define MX51_CCM_CIMR_MASK_LRF_PLL1			(0x1)
-
-/* Define the bits in register CCOSR */
-#define MX51_CCM_CCOSR_CKO2_EN_OFFSET			(0x1 << 24)
-#define MX51_CCM_CCOSR_CKO2_DIV_OFFSET			(21)
-#define MX51_CCM_CCOSR_CKO2_DIV_MASK			(0x7 << 21)
-#define MX51_CCM_CCOSR_CKO2_SEL_OFFSET			(16)
-#define MX51_CCM_CCOSR_CKO2_SEL_MASK			(0x1F << 16)
-#define MX51_CCM_CCOSR_CKOL_EN				(0x1 << 7)
-#define MX51_CCM_CCOSR_CKOL_DIV_OFFSET			(4)
-#define MX51_CCM_CCOSR_CKOL_DIV_MASK			(0x7 << 4)
-#define MX51_CCM_CCOSR_CKOL_SEL_OFFSET			(0)
-#define MX51_CCM_CCOSR_CKOL_SEL_MASK			(0xF)
-
-/* Define the bits in registers CGPR */
-#define MX51_CCM_CGPR_EFUSE_PROG_SUPPLY_GATE		(0x1 << 4)
-#define MX51_CCM_CGPR_FPM_SEL				(0x1 << 3)
-#define MX51_CCM_CGPR_VL_L2BIST_CLKDIV_OFFSET		(0)
-#define MX51_CCM_CGPR_VL_L2BIST_CLKDIV_MASK		(0x7)
-
-/* Define the bits in registers CCGRx */
-#define MX51_CCM_CCGR_CG_MASK				0x3
-#define MX51_CCM_CCGR_MOD_OFF				0x0
-#define MX51_CCM_CCGR_MOD_ON				0x3
-#define MX51_CCM_CCGR_MOD_IDLE				0x1
-
-#define MX51_CCM_CCGR0_CG15_OFFSET			30
-#define MX51_CCM_CCGR0_CG15_MASK			(0x3 << 30)
-#define MX51_CCM_CCGR0_CG14_OFFSET			28
-#define MX51_CCM_CCGR0_CG14_MASK			(0x3 << 28)
-#define MX51_CCM_CCGR0_CG13_OFFSET			26
-#define MX51_CCM_CCGR0_CG13_MASK			(0x3 << 26)
-#define MX51_CCM_CCGR0_CG12_OFFSET			24
-#define MX51_CCM_CCGR0_CG12_MASK			(0x3 << 24)
-#define MX51_CCM_CCGR0_CG11_OFFSET			22
-#define MX51_CCM_CCGR0_CG11_MASK			(0x3 << 22)
-#define MX51_CCM_CCGR0_CG10_OFFSET			20
-#define MX51_CCM_CCGR0_CG10_MASK			(0x3 << 20)
-#define MX51_CCM_CCGR0_CG9_OFFSET			18
-#define MX51_CCM_CCGR0_CG9_MASK			(0x3 << 18)
-#define MX51_CCM_CCGR0_CG8_OFFSET			16
-#define MX51_CCM_CCGR0_CG8_MASK			(0x3 << 16)
-#define MX51_CCM_CCGR0_CG7_OFFSET			14
-#define MX51_CCM_CCGR0_CG6_OFFSET			12
-#define MX51_CCM_CCGR0_CG5_OFFSET			10
-#define MX51_CCM_CCGR0_CG5_MASK			(0x3 << 10)
-#define MX51_CCM_CCGR0_CG4_OFFSET			8
-#define MX51_CCM_CCGR0_CG4_MASK			(0x3 << 8)
-#define MX51_CCM_CCGR0_CG3_OFFSET			6
-#define MX51_CCM_CCGR0_CG3_MASK			(0x3 << 6)
-#define MX51_CCM_CCGR0_CG2_OFFSET			4
-#define MX51_CCM_CCGR0_CG2_MASK			(0x3 << 4)
-#define MX51_CCM_CCGR0_CG1_OFFSET			2
-#define MX51_CCM_CCGR0_CG1_MASK			(0x3 << 2)
-#define MX51_CCM_CCGR0_CG0_OFFSET			0
-#define MX51_CCM_CCGR0_CG0_MASK			0x3
-
-#define MX51_CCM_CCGR1_CG15_OFFSET			30
-#define MX51_CCM_CCGR1_CG14_OFFSET			28
-#define MX51_CCM_CCGR1_CG13_OFFSET			26
-#define MX51_CCM_CCGR1_CG12_OFFSET			24
-#define MX51_CCM_CCGR1_CG11_OFFSET			22
-#define MX51_CCM_CCGR1_CG10_OFFSET			20
-#define MX51_CCM_CCGR1_CG9_OFFSET			18
-#define MX51_CCM_CCGR1_CG8_OFFSET			16
-#define MX51_CCM_CCGR1_CG7_OFFSET			14
-#define MX51_CCM_CCGR1_CG6_OFFSET			12
-#define MX51_CCM_CCGR1_CG5_OFFSET			10
-#define MX51_CCM_CCGR1_CG4_OFFSET			8
-#define MX51_CCM_CCGR1_CG3_OFFSET			6
-#define MX51_CCM_CCGR1_CG2_OFFSET			4
-#define MX51_CCM_CCGR1_CG1_OFFSET			2
-#define MX51_CCM_CCGR1_CG0_OFFSET			0
-
-#define MX51_CCM_CCGR2_CG15_OFFSET			30
-#define MX51_CCM_CCGR2_CG14_OFFSET			28
-#define MX51_CCM_CCGR2_CG13_OFFSET			26
-#define MX51_CCM_CCGR2_CG12_OFFSET			24
-#define MX51_CCM_CCGR2_CG11_OFFSET			22
-#define MX51_CCM_CCGR2_CG10_OFFSET			20
-#define MX51_CCM_CCGR2_CG9_OFFSET			18
-#define MX51_CCM_CCGR2_CG8_OFFSET			16
-#define MX51_CCM_CCGR2_CG7_OFFSET			14
-#define MX51_CCM_CCGR2_CG6_OFFSET			12
-#define MX51_CCM_CCGR2_CG5_OFFSET			10
-#define MX51_CCM_CCGR2_CG4_OFFSET			8
-#define MX51_CCM_CCGR2_CG3_OFFSET			6
-#define MX51_CCM_CCGR2_CG2_OFFSET			4
-#define MX51_CCM_CCGR2_CG1_OFFSET			2
-#define MX51_CCM_CCGR2_CG0_OFFSET			0
-
-#define MX51_CCM_CCGR3_CG15_OFFSET			30
-#define MX51_CCM_CCGR3_CG14_OFFSET			28
-#define MX51_CCM_CCGR3_CG13_OFFSET			26
-#define MX51_CCM_CCGR3_CG12_OFFSET			24
-#define MX51_CCM_CCGR3_CG11_OFFSET			22
-#define MX51_CCM_CCGR3_CG10_OFFSET			20
-#define MX51_CCM_CCGR3_CG9_OFFSET			18
-#define MX51_CCM_CCGR3_CG8_OFFSET			16
-#define MX51_CCM_CCGR3_CG7_OFFSET			14
-#define MX51_CCM_CCGR3_CG6_OFFSET			12
-#define MX51_CCM_CCGR3_CG5_OFFSET			10
-#define MX51_CCM_CCGR3_CG4_OFFSET			8
-#define MX51_CCM_CCGR3_CG3_OFFSET			6
-#define MX51_CCM_CCGR3_CG2_OFFSET			4
-#define MX51_CCM_CCGR3_CG1_OFFSET			2
-#define MX51_CCM_CCGR3_CG0_OFFSET			0
-
-#define MX51_CCM_CCGR4_CG15_OFFSET			30
-#define MX51_CCM_CCGR4_CG14_OFFSET			28
-#define MX51_CCM_CCGR4_CG13_OFFSET			26
-#define MX51_CCM_CCGR4_CG12_OFFSET			24
-#define MX51_CCM_CCGR4_CG11_OFFSET			22
-#define MX51_CCM_CCGR4_CG10_OFFSET			20
-#define MX51_CCM_CCGR4_CG9_OFFSET			18
-#define MX51_CCM_CCGR4_CG8_OFFSET			16
-#define MX51_CCM_CCGR4_CG7_OFFSET			14
-#define MX51_CCM_CCGR4_CG6_OFFSET			12
-#define MX51_CCM_CCGR4_CG5_OFFSET			10
-#define MX51_CCM_CCGR4_CG4_OFFSET			8
-#define MX51_CCM_CCGR4_CG3_OFFSET			6
-#define MX51_CCM_CCGR4_CG2_OFFSET			4
-#define MX51_CCM_CCGR4_CG1_OFFSET			2
-#define MX51_CCM_CCGR4_CG0_OFFSET			0
-
-#define MX51_CCM_CCGR5_CG15_OFFSET			30
-#define MX51_CCM_CCGR5_CG14_OFFSET			28
-#define MX51_CCM_CCGR5_CG14_MASK			(0x3 << 28)
-#define MX51_CCM_CCGR5_CG13_OFFSET			26
-#define MX51_CCM_CCGR5_CG13_MASK			(0x3 << 26)
-#define MX51_CCM_CCGR5_CG12_OFFSET			24
-#define MX51_CCM_CCGR5_CG12_MASK			(0x3 << 24)
-#define MX51_CCM_CCGR5_CG11_OFFSET			22
-#define MX51_CCM_CCGR5_CG11_MASK			(0x3 << 22)
-#define MX51_CCM_CCGR5_CG10_OFFSET			20
-#define MX51_CCM_CCGR5_CG10_MASK			(0x3 << 20)
-#define MX51_CCM_CCGR5_CG9_OFFSET			18
-#define MX51_CCM_CCGR5_CG9_MASK			(0x3 << 18)
-#define MX51_CCM_CCGR5_CG8_OFFSET			16
-#define MX51_CCM_CCGR5_CG8_MASK			(0x3 << 16)
-#define MX51_CCM_CCGR5_CG7_OFFSET			14
-#define MX51_CCM_CCGR5_CG7_MASK			(0x3 << 14)
-#define MX51_CCM_CCGR5_CG6_OFFSET			12
-#define MX51_CCM_CCGR5_CG5_OFFSET			10
-#define MX51_CCM_CCGR5_CG4_OFFSET			8
-#define MX51_CCM_CCGR5_CG3_OFFSET			6
-#define MX51_CCM_CCGR5_CG2_OFFSET			4
-#define MX51_CCM_CCGR5_CG2_MASK			(0x3 << 4)
-#define MX51_CCM_CCGR5_CG1_OFFSET			2
-#define MX51_CCM_CCGR5_CG0_OFFSET			0
-#define MX51_CCM_CCGR6_CG7_OFFSET            14
-#define MX51_CCM_CCGR6_CG7_MASK          (0x3 << 14)
-#define MX51_CCM_CCGR6_CG6_OFFSET			12
-#define MX51_CCM_CCGR6_CG6_MASK			(0x3 << 12)
-#define MX51_CCM_CCGR6_CG5_OFFSET			10
-#define MX51_CCM_CCGR6_CG5_MASK			(0x3 << 10)
-#define MX51_CCM_CCGR6_CG4_OFFSET			8
-#define MX51_CCM_CCGR6_CG4_MASK			(0x3 << 8)
-#define MX51_CCM_CCGR6_CG3_OFFSET			6
-#define MX51_CCM_CCGR6_CG2_OFFSET			4
-#define MX51_CCM_CCGR6_CG1_OFFSET			2
-#define MX51_CCM_CCGR6_CG0_OFFSET			0
-
-/* CORTEXA8 platform */
-#define MX51_CORTEXA8_PLAT_PVID		(MX51_CORTEXA8_BASE + 0x0)
-#define MX51_CORTEXA8_PLAT_GPC		(MX51_CORTEXA8_BASE + 0x4)
-#define MX51_CORTEXA8_PLAT_PIC		(MX51_CORTEXA8_BASE + 0x8)
-#define MX51_CORTEXA8_PLAT_LPC		(MX51_CORTEXA8_BASE + 0xC)
-#define MX51_CORTEXA8_PLAT_NEON_LPC	(MX51_CORTEXA8_BASE + 0x10)
-#define MX51_CORTEXA8_PLAT_ICGC		(MX51_CORTEXA8_BASE + 0x14)
-#define MX51_CORTEXA8_PLAT_AMC		(MX51_CORTEXA8_BASE + 0x18)
-#define MX51_CORTEXA8_PLAT_NMC		(MX51_CORTEXA8_BASE + 0x20)
-#define MX51_CORTEXA8_PLAT_NMS		(MX51_CORTEXA8_BASE + 0x24)
-
-/* DVFS CORE */
-#define MX51_DVFSTHRS		(MX51_DVFS_CORE_BASE + 0x00)
-#define MX51_DVFSCOUN		(MX51_DVFS_CORE_BASE + 0x04)
-#define MX51_DVFSSIG1		(MX51_DVFS_CORE_BASE + 0x08)
-#define MX51_DVFSSIG0		(MX51_DVFS_CORE_BASE + 0x0C)
-#define MX51_DVFSGPC0		(MX51_DVFS_CORE_BASE + 0x10)
-#define MX51_DVFSGPC1		(MX51_DVFS_CORE_BASE + 0x14)
-#define MX51_DVFSGPBT		(MX51_DVFS_CORE_BASE + 0x18)
-#define MX51_DVFSEMAC		(MX51_DVFS_CORE_BASE + 0x1C)
-#define MX51_DVFSCNTR		(MX51_DVFS_CORE_BASE + 0x20)
-#define MX51_DVFSLTR0_0		(MX51_DVFS_CORE_BASE + 0x24)
-#define MX51_DVFSLTR0_1		(MX51_DVFS_CORE_BASE + 0x28)
-#define MX51_DVFSLTR1_0		(MX51_DVFS_CORE_BASE + 0x2C)
-#define MX51_DVFSLTR1_1		(MX51_DVFS_CORE_BASE + 0x30)
-#define MX51_DVFSPT0 		(MX51_DVFS_CORE_BASE + 0x34)
-#define MX51_DVFSPT1 		(MX51_DVFS_CORE_BASE + 0x38)
-#define MX51_DVFSPT2 		(MX51_DVFS_CORE_BASE + 0x3C)
-#define MX51_DVFSPT3 		(MX51_DVFS_CORE_BASE + 0x40)
-
-/* GPC */
-#define MX51_GPC_CNTR		(MX51_GPC_BASE + 0x0)
-#define MX51_GPC_PGR		(MX51_GPC_BASE + 0x4)
-#define MX51_GPC_VCR		(MX51_GPC_BASE + 0x8)
-#define MX51_GPC_ALL_PU		(MX51_GPC_BASE + 0xC)
-#define MX51_GPC_NEON		(MX51_GPC_BASE + 0x10)
-#define MX51_GPC_PGR_ARMPG_OFFSET	8
-#define MX51_GPC_PGR_ARMPG_MASK		(3 << 8)
-
-/* PGC */
-#define MX51_PGC_IPU_PGCR	(MX51_PGC_IPU_BASE + 0x0)
-#define MX51_PGC_IPU_PGSR	(MX51_PGC_IPU_BASE + 0xC)
-#define MX51_PGC_VPU_PGCR	(MX51_PGC_VPU_BASE + 0x0)
-#define MX51_PGC_VPU_PGSR	(MX51_PGC_VPU_BASE + 0xC)
-#define MX51_PGC_GPU_PGCR	(MX51_PGC_GPU_BASE + 0x0)
-#define MX51_PGC_GPU_PGSR	(MX51_PGC_GPU_BASE + 0xC)
-
-#define MX51_PGCR_PCR		1
-#define MX51_SRPGCR_PCR		1
-#define MX51_EMPGCR_PCR		1
-#define MX51_PGSR_PSR		1
-
-
-#define MX51_CORTEXA8_PLAT_LPC_DSM	(1 << 0)
-#define MX51_CORTEXA8_PLAT_LPC_DBG_DSM	(1 << 1)
-
-/* SRPG */
-#define MX51_SRPG_NEON_SRPGCR	(MX51_SRPG_NEON_BASE + 0x0)
-#define MX51_SRPG_NEON_PUPSCR	(MX51_SRPG_NEON_BASE + 0x4)
-#define MX51_SRPG_NEON_PDNSCR	(MX51_SRPG_NEON_BASE + 0x8)
-
-#define MX51_SRPG_ARM_SRPGCR	(MX51_SRPG_ARM_BASE + 0x0)
-#define MX51_SRPG_ARM_PUPSCR	(MX51_SRPG_ARM_BASE + 0x4)
-#define MX51_SRPG_ARM_PDNSCR	(MX51_SRPG_ARM_BASE + 0x8)
-
-#define MX51_SRPG_EMPGC0_SRPGCR	(MX51_SRPG_EMPGC0_BASE + 0x0)
-#define MX51_SRPG_EMPGC0_PUPSCR	(MX51_SRPG_EMPGC0_BASE + 0x4)
-#define MX51_SRPG_EMPGC0_PDNSCR	(MX51_SRPG_EMPGC0_BASE + 0x8)
-
-#define MX51_SRPG_EMPGC1_SRPGCR	(MX51_SRPG_EMPGC1_BASE + 0x0)
-#define MX51_SRPG_EMPGC1_PUPSCR	(MX51_SRPG_EMPGC1_BASE + 0x4)
-#define MX51_SRPG_EMPGC1_PDNSCR	(MX51_SRPG_EMPGC1_BASE + 0x8)
-
-#define MX51_SRPG_MEGAMIX_SRPGCR		(MX51_SRPG_MEGAMIX_BASE + 0x0)
-#define MX51_SRPG_MEGAMIX_PUPSCR		(MX51_SRPG_MEGAMIX_BASE + 0x4)
-#define MX51_SRPG_MEGAMIX_PDNSCR		(MX51_SRPG_MEGAMIX_BASE + 0x8)
-
-#define MX51_SRPGC_EMI_SRPGCR	(MX51_SRPGC_EMI_BASE + 0x0)
-#define MX51_SRPGC_EMI_PUPSCR	(MX51_SRPGC_EMI_BASE + 0x4)
-#define MX51_SRPGC_EMI_PDNSCR	(MX51_SRPGC_EMI_BASE + 0x8)
-
-#endif				/* __ARCH_ARM_MACH_MX51_CRM_REGS_H__ */
-
-
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51_53.h b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
new file mode 100644
index 0000000..89aa5e2
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
@@ -0,0 +1,619 @@
+/*
+ * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ */
+
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+#ifndef __ARCH_ARM_MACH_MX51_CRM_REGS_H__
+#define __ARCH_ARM_MACH_MX51_CRM_REGS_H__
+
+/* PLL Register Offsets */
+#define MX5_PLL_DP_CTL			0x00
+#define MX5_PLL_DP_CONFIG		0x04
+#define MX5_PLL_DP_OP			0x08
+#define MX5_PLL_DP_MFD			0x0C
+#define MX5_PLL_DP_MFN			0x10
+#define MX5_PLL_DP_MFNMINUS		0x14
+#define MX5_PLL_DP_MFNPLUS		0x18
+#define MX5_PLL_DP_HFS_OP		0x1C
+#define MX5_PLL_DP_HFS_MFD		0x20
+#define MX5_PLL_DP_HFS_MFN		0x24
+#define MX5_PLL_DP_MFN_TOGC		0x28
+#define MX5_PLL_DP_DESTAT		0x2c
+
+/* PLL Register Bit definitions */
+#define MX5_PLL_DP_CTL_MUL_CTRL		0x2000
+#define MX5_PLL_DP_CTL_DPDCK0_2_EN	0x1000
+#define MX5_PLL_DP_CTL_DPDCK0_2_OFFSET	12
+#define MX5_PLL_DP_CTL_ADE		0x800
+#define MX5_PLL_DP_CTL_REF_CLK_DIV	0x400
+#define MX5_PLL_DP_CTL_REF_CLK_SEL_MASK	(3 << 8)
+#define MX5_PLL_DP_CTL_REF_CLK_SEL_OFFSET	8
+#define MX5_PLL_DP_CTL_HFSM		0x80
+#define MX5_PLL_DP_CTL_PRE		0x40
+#define MX5_PLL_DP_CTL_UPEN		0x20
+#define MX5_PLL_DP_CTL_RST		0x10
+#define MX5_PLL_DP_CTL_RCP		0x8
+#define MX5_PLL_DP_CTL_PLM		0x4
+#define MX5_PLL_DP_CTL_BRM0		0x2
+#define MX5_PLL_DP_CTL_LRF		0x1
+
+#define MX5_PLL_DP_CONFIG_BIST		0x8
+#define MX5_PLL_DP_CONFIG_SJC_CE	0x4
+#define MX5_PLL_DP_CONFIG_AREN		0x2
+#define MX5_PLL_DP_CONFIG_LDREQ		0x1
+
+#define MX5_PLL_DP_OP_MFI_OFFSET	4
+#define MX5_PLL_DP_OP_MFI_MASK		(0xF << 4)
+#define MX5_PLL_DP_OP_PDF_OFFSET	0
+#define MX5_PLL_DP_OP_PDF_MASK		0xF
+
+#define MX5_PLL_DP_MFD_OFFSET		0
+#define MX5_PLL_DP_MFD_MASK		0x07FFFFFF
+
+#define MX5_PLL_DP_MFN_OFFSET		0x0
+#define MX5_PLL_DP_MFN_MASK		0x07FFFFFF
+
+#define MX5_PLL_DP_MFN_TOGC_TOG_DIS	(1 << 17)
+#define MX5_PLL_DP_MFN_TOGC_TOG_EN	(1 << 16)
+#define MX5_PLL_DP_MFN_TOGC_CNT_OFFSET	0x0
+#define MX5_PLL_DP_MFN_TOGC_CNT_MASK	0xFFFF
+
+#define MX5_PLL_DxP_DESTAT_TOG_SEL	(1 << 31)
+#define MX5_PLL_DP_DESTAT_MFN		0x07FFFFFF
+
+/* Register addresses of CCM */
+#define MX5_CCM_CCR		0x00
+#define MX5_CCM_CCDR		0x04
+#define MX5_CCM_CSR		0x08
+#define MX5_CCM_CCSR		0x0C
+#define MX5_CCM_CACRR		0x10
+#define MX5_CCM_CBCDR		0x14
+#define MX5_CCM_CBCMR		0x18
+#define MX5_CCM_CSCMR1		0x1C
+#define MX5_CCM_CSCMR2		0x20
+#define MX5_CCM_CSCDR1		0x24
+#define MX5_CCM_CS1CDR		0x28
+#define MX5_CCM_CS2CDR		0x2C
+#define MX5_CCM_CDCDR		0x30
+#define MX5_CCM_CHSCDR		0x34
+#define MX5_CCM_CSCDR2		0x38
+#define MX5_CCM_CSCDR3		0x3C
+#define MX5_CCM_CSCDR4		0x40
+#define MX5_CCM_CWDR		0x44
+#define MX5_CCM_CDHIPR		0x48
+#define MX5_CCM_CDCR		0x4C
+#define MX5_CCM_CTOR		0x50
+#define MX5_CCM_CLPCR		0x54
+#define MX5_CCM_CISR		0x58
+#define MX5_CCM_CIMR		0x5C
+#define MX5_CCM_CCOSR		0x60
+#define MX5_CCM_CGPR		0x64
+#define MX5_CCM_CCGR0		0x68
+#define MX5_CCM_CCGR1		0x6C
+#define MX5_CCM_CCGR2		0x70
+#define MX5_CCM_CCGR3		0x74
+#define MX5_CCM_CCGR4		0x78
+#define MX5_CCM_CCGR5		0x7C
+#define MX5_CCM_CCGR6		0x80
+#define MX5_CCM_CMEOR		0x84
+
+/* Define the bits in register CCR */
+#define MX5_CCM_CCR_COSC_EN		(1 << 12)
+#define MX5_CCM_CCR_FPM_MULT_MASK	(1 << 11)
+#define MX5_CCM_CCR_CAMP2_EN		(1 << 10)
+#define MX5_CCM_CCR_CAMP1_EN		(1 << 9)
+#define MX5_CCM_CCR_FPM_EN		(1 << 8)
+#define MX5_CCM_CCR_OSCNT_OFFSET	(0)
+#define MX5_CCM_CCR_OSCNT_MASK	(0xFF)
+
+/* Define the bits in register CCDR */
+#define MX5_CCM_CCDR_HSC_HS_MASK	(0x1 << 18)
+#define MX5_CCM_CCDR_IPU_HS_MASK	(0x1 << 17)
+#define MX5_CCM_CCDR_EMI_HS_MASK	(0x1 << 16)
+
+/* Define the bits in register CSR */
+#define MX5_CCM_CSR_COSR_READY	(1 << 5)
+#define MX5_CCM_CSR_LVS_VALUE	(1 << 4)
+#define MX5_CCM_CSR_CAMP2_READY	(1 << 3)
+#define MX5_CCM_CSR_CAMP1_READY	(1 << 2)
+#define MX5_CCM_CSR_FPM_READY	(1 << 1)
+#define MX5_CCM_CSR_REF_EN_B	(1 << 0)
+
+/* Define the bits in register CCSR */
+#define MX5_CCM_CCSR_LP_APM_SEL		(0x1 << 9)
+#define MX5_CCM_CCSR_STEP_SEL_OFFSET	(7)
+#define MX5_CCM_CCSR_STEP_SEL_MASK	(0x3 << 7)
+#define MX5_CCM_CCSR_STEP_SEL_LP_APM	   0
+#define MX5_CCM_CCSR_STEP_SEL_PLL1_BYPASS  1 /* Only when JTAG connected? */
+#define MX5_CCM_CCSR_STEP_SEL_PLL2_DIVIDED 2
+#define MX5_CCM_CCSR_STEP_SEL_PLL3_DIVIDED 3
+#define MX5_CCM_CCSR_PLL2_PODF_OFFSET	(5)
+#define MX5_CCM_CCSR_PLL2_PODF_MASK	(0x3 << 5)
+#define MX5_CCM_CCSR_PLL3_PODF_OFFSET	(3)
+#define MX5_CCM_CCSR_PLL3_PODF_MASK	(0x3 << 3)
+#define MX5_CCM_CCSR_PLL1_SW_CLK_SEL	(1 << 2) /* 0: pll1_main_clk,
+						    1: step_clk */
+#define MX5_CCM_CCSR_PLL2_SW_CLK_SEL	(1 << 1)
+#define MX5_CCM_CCSR_PLL3_SW_CLK_SEL	(1 << 0)
+
+/* Define the bits in register CACRR */
+#define MX5_CCM_CACRR_ARM_PODF_OFFSET	(0)
+#define MX5_CCM_CACRR_ARM_PODF_MASK	(0x7)
+
+/* Define the bits in register CBCDR */
+#define MX5_CCM_CBCDR_EMI_CLK_SEL		(0x1 << 26)
+#define MX5_CCM_CBCDR_PERIPH_CLK_SEL		(0x1 << 25)
+#define MX5_CCM_CBCDR_DDR_HF_SEL_OFFSET		(30)
+#define MX5_CCM_CBCDR_DDR_HF_SEL		(0x1 << 30)
+#define MX5_CCM_CBCDR_DDR_PODF_OFFSET		(27)
+#define MX5_CCM_CBCDR_DDR_PODF_MASK		(0x7 << 27)
+#define MX5_CCM_CBCDR_EMI_PODF_OFFSET		(22)
+#define MX5_CCM_CBCDR_EMI_PODF_MASK		(0x7 << 22)
+#define MX5_CCM_CBCDR_AXI_B_PODF_OFFSET		(19)
+#define MX5_CCM_CBCDR_AXI_B_PODF_MASK		(0x7 << 19)
+#define MX5_CCM_CBCDR_AXI_A_PODF_OFFSET		(16)
+#define MX5_CCM_CBCDR_AXI_A_PODF_MASK		(0x7 << 16)
+#define MX5_CCM_CBCDR_NFC_PODF_OFFSET		(13)
+#define MX5_CCM_CBCDR_NFC_PODF_MASK		(0x7 << 13)
+#define MX5_CCM_CBCDR_AHB_PODF_OFFSET		(10)
+#define MX5_CCM_CBCDR_AHB_PODF_MASK		(0x7 << 10)
+#define MX5_CCM_CBCDR_IPG_PODF_OFFSET		(8)
+#define MX5_CCM_CBCDR_IPG_PODF_MASK		(0x3 << 8)
+#define MX5_CCM_CBCDR_PERCLK_PRED1_OFFSET	(6)
+#define MX5_CCM_CBCDR_PERCLK_PRED1_MASK		(0x3 << 6)
+#define MX5_CCM_CBCDR_PERCLK_PRED2_OFFSET	(3)
+#define MX5_CCM_CBCDR_PERCLK_PRED2_MASK		(0x7 << 3)
+#define MX5_CCM_CBCDR_PERCLK_PODF_OFFSET	(0)
+#define MX5_CCM_CBCDR_PERCLK_PODF_MASK		(0x7)
+
+/* Define the bits in register CBCMR */
+#define MX5_CCM_CBCMR_VPU_AXI_CLK_SEL_OFFSET	(14)
+#define MX5_CCM_CBCMR_VPU_AXI_CLK_SEL_MASK	(0x3 << 14)
+#define MX5_CCM_CBCMR_PERIPH_CLK_SEL_OFFSET	(12)
+#define MX5_CCM_CBCMR_PERIPH_CLK_SEL_MASK	(0x3 << 12)
+#define MX5_CCM_CBCMR_DDR_CLK_SEL_OFFSET	(10)
+#define MX5_CCM_CBCMR_DDR_CLK_SEL_MASK		(0x3 << 10)
+#define MX5_CCM_CBCMR_ARM_AXI_CLK_SEL_OFFSET	(8)
+#define MX5_CCM_CBCMR_ARM_AXI_CLK_SEL_MASK	(0x3 << 8)
+#define MX5_CCM_CBCMR_IPU_HSP_CLK_SEL_OFFSET	(6)
+#define MX5_CCM_CBCMR_IPU_HSP_CLK_SEL_MASK	(0x3 << 6)
+#define MX5_CCM_CBCMR_GPU_CLK_SEL_OFFSET	(4)
+#define MX5_CCM_CBCMR_GPU_CLK_SEL_MASK		(0x3 << 4)
+#define MX5_CCM_CBCMR_GPU2D_CLK_SEL_OFFSET	(14)
+#define MX5_CCM_CBCMR_GPU2D_CLK_SEL_MASK	(0x3 << 14)
+#define MX5_CCM_CBCMR_PERCLK_LP_APM_CLK_SEL	(0x1 << 1)
+#define MX5_CCM_CBCMR_PERCLK_IPG_CLK_SEL	(0x1 << 0)
+
+/* Define the bits in register CSCMR1 */
+#define MX5_CCM_CSCMR1_SSI_EXT2_CLK_SEL_OFFSET		(30)
+#define MX5_CCM_CSCMR1_SSI_EXT2_CLK_SEL_MASK		(0x3 << 30)
+#define MX5_CCM_CSCMR1_SSI_EXT1_CLK_SEL_OFFSET		(28)
+#define MX5_CCM_CSCMR1_SSI_EXT1_CLK_SEL_MASK		(0x3 << 28)
+#define MX5_CCM_CSCMR1_USB_PHY_CLK_SEL_OFFSET		(26)
+#define MX5_CCM_CSCMR1_USB_PHY_CLK_SEL			(0x1 << 26)
+#define MX5_CCM_CSCMR1_UART_CLK_SEL_OFFSET		(24)
+#define MX5_CCM_CSCMR1_UART_CLK_SEL_MASK		(0x3 << 24)
+#define MX5_CCM_CSCMR1_USBOH3_CLK_SEL_OFFSET		(22)
+#define MX5_CCM_CSCMR1_USBOH3_CLK_SEL_MASK		(0x3 << 22)
+#define MX5_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_OFFSET	(20)
+#define MX5_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_MASK	(0x3 << 20)
+#define MX5_CCM_CSCMR1_ESDHC3_CLK_SEL			(0x1 << 19)
+#define MX5_CCM_CSCMR1_ESDHC2_MSHC2_MX53_CLK_SEL	(0x1 << 19)
+#define MX5_CCM_CSCMR1_ESDHC4_CLK_SEL			(0x1 << 18)
+#define MX5_CCM_CSCMR1_ESDHC2_MSHC2_CLK_SEL_OFFSET	(16)
+#define MX5_CCM_CSCMR1_ESDHC2_MSHC2_CLK_SEL_MASK	(0x3 << 16)
+#define MX5_CCM_CSCMR1_ESDHC3_MX53_CLK_SEL_OFFSET	(16)
+#define MX5_CCM_CSCMR1_ESDHC3_MX53_CLK_SEL_MASK		(0x3 << 16)
+#define MX5_CCM_CSCMR1_SSI1_CLK_SEL_OFFSET		(14)
+#define MX5_CCM_CSCMR1_SSI1_CLK_SEL_MASK		(0x3 << 14)
+#define MX5_CCM_CSCMR1_SSI2_CLK_SEL_OFFSET		(12)
+#define MX5_CCM_CSCMR1_SSI2_CLK_SEL_MASK		(0x3 << 12)
+#define MX5_CCM_CSCMR1_SSI3_CLK_SEL			(0x1 << 11)
+#define MX5_CCM_CSCMR1_VPU_RCLK_SEL			(0x1 << 10)
+#define MX5_CCM_CSCMR1_SSI_APM_CLK_SEL_OFFSET		(8)
+#define MX5_CCM_CSCMR1_SSI_APM_CLK_SEL_MASK		(0x3 << 8)
+#define MX5_CCM_CSCMR1_TVE_CLK_SEL			(0x1 << 7)
+#define MX5_CCM_CSCMR1_TVE_EXT_CLK_SEL			(0x1 << 6)
+#define MX5_CCM_CSCMR1_CSPI_CLK_SEL_OFFSET		(4)
+#define MX5_CCM_CSCMR1_CSPI_CLK_SEL_MASK		(0x3 << 4)
+#define MX5_CCM_CSCMR1_SPDIF_CLK_SEL_OFFSET		(2)
+#define MX5_CCM_CSCMR1_SPDIF_CLK_SEL_MASK		(0x3 << 2)
+#define MX5_CCM_CSCMR1_SSI_EXT2_COM_CLK_SEL		(0x1 << 1)
+#define MX5_CCM_CSCMR1_SSI_EXT1_COM_CLK_SEL		(0x1)
+
+/* Define the bits in register CSCMR2 */
+#define MX5_CCM_CSCMR2_DI_CLK_SEL_OFFSET(n)		(26+n*3)
+#define MX5_CCM_CSCMR2_DI_CLK_SEL_MASK(n)		(0x7 << (26+n*3))
+#define MX5_CCM_CSCMR2_CSI_MCLK2_CLK_SEL_OFFSET		(24)
+#define MX5_CCM_CSCMR2_CSI_MCLK2_CLK_SEL_MASK		(0x3 << 24)
+#define MX5_CCM_CSCMR2_CSI_MCLK1_CLK_SEL_OFFSET		(22)
+#define MX5_CCM_CSCMR2_CSI_MCLK1_CLK_SEL_MASK		(0x3 << 22)
+#define MX5_CCM_CSCMR2_ESC_CLK_SEL_OFFSET		(20)
+#define MX5_CCM_CSCMR2_ESC_CLK_SEL_MASK			(0x3 << 20)
+#define MX5_CCM_CSCMR2_HSC2_CLK_SEL_OFFSET		(18)
+#define MX5_CCM_CSCMR2_HSC2_CLK_SEL_MASK		(0x3 << 18)
+#define MX5_CCM_CSCMR2_HSC1_CLK_SEL_OFFSET		(16)
+#define MX5_CCM_CSCMR2_HSC1_CLK_SEL_MASK		(0x3 << 16)
+#define MX5_CCM_CSCMR2_HSI2C_CLK_SEL_OFFSET		(14)
+#define MX5_CCM_CSCMR2_HSI2C_CLK_SEL_MASK		(0x3 << 14)
+#define MX5_CCM_CSCMR2_FIRI_CLK_SEL_OFFSET		(12)
+#define MX5_CCM_CSCMR2_FIRI_CLK_SEL_MASK		(0x3 << 12)
+#define MX5_CCM_CSCMR2_SIM_CLK_SEL_OFFSET		(10)
+#define MX5_CCM_CSCMR2_SIM_CLK_SEL_MASK			(0x3 << 10)
+#define MX5_CCM_CSCMR2_SLIMBUS_COM			(0x1 << 9)
+#define MX5_CCM_CSCMR2_SLIMBUS_CLK_SEL_OFFSET		(6)
+#define MX5_CCM_CSCMR2_SLIMBUS_CLK_SEL_MASK		(0x7 << 6)
+#define MX5_CCM_CSCMR2_SPDIF1_COM			(1 << 5)
+#define MX5_CCM_CSCMR2_SPDIF0_COM			(1 << 4)
+#define MX5_CCM_CSCMR2_SPDIF1_CLK_SEL_OFFSET		(2)
+#define MX5_CCM_CSCMR2_SPDIF1_CLK_SEL_MASK		(0x3 << 2)
+#define MX5_CCM_CSCMR2_SPDIF0_CLK_SEL_OFFSET		(0)
+#define MX5_CCM_CSCMR2_SPDIF0_CLK_SEL_MASK		(0x3)
+
+/* Define the bits in register CSCDR1 */
+#define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_OFFSET	(22)
+#define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PRED_MASK	(0x7 << 22)
+#define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_OFFSET	(19)
+#define MX5_CCM_CSCDR1_ESDHC2_MSHC2_CLK_PODF_MASK	(0x7 << 19)
+#define MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PRED_OFFSET	(22)
+#define MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PRED_MASK	(0x7 << 22)
+#define MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_OFFSET	(19)
+#define MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_MASK	(0x7 << 19)
+#define MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET	(16)
+#define MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK	(0x7 << 16)
+#define MX5_CCM_CSCDR1_PGC_CLK_PODF_OFFSET		(14)
+#define MX5_CCM_CSCDR1_PGC_CLK_PODF_MASK		(0x3 << 14)
+#define MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET	(11)
+#define MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK	(0x7 << 11)
+#define MX5_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET		(8)
+#define MX5_CCM_CSCDR1_USBOH3_CLK_PRED_MASK		(0x7 << 8)
+#define MX5_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET		(6)
+#define MX5_CCM_CSCDR1_USBOH3_CLK_PODF_MASK		(0x3 << 6)
+#define MX5_CCM_CSCDR1_UART_CLK_PRED_OFFSET		(3)
+#define MX5_CCM_CSCDR1_UART_CLK_PRED_MASK		(0x7 << 3)
+#define MX5_CCM_CSCDR1_UART_CLK_PODF_OFFSET		(0)
+#define MX5_CCM_CSCDR1_UART_CLK_PODF_MASK		(0x7)
+
+/* Define the bits in register CS1CDR and CS2CDR */
+#define MX5_CCM_CS1CDR_SSI_EXT1_CLK_PRED_OFFSET		(22)
+#define MX5_CCM_CS1CDR_SSI_EXT1_CLK_PRED_MASK		(0x7 << 22)
+#define MX5_CCM_CS1CDR_SSI_EXT1_CLK_PODF_OFFSET		(16)
+#define MX5_CCM_CS1CDR_SSI_EXT1_CLK_PODF_MASK		(0x3F << 16)
+#define MX5_CCM_CS1CDR_SSI1_CLK_PRED_OFFSET		(6)
+#define MX5_CCM_CS1CDR_SSI1_CLK_PRED_MASK		(0x7 << 6)
+#define MX5_CCM_CS1CDR_SSI1_CLK_PODF_OFFSET		(0)
+#define MX5_CCM_CS1CDR_SSI1_CLK_PODF_MASK		(0x3F)
+
+#define MX5_CCM_CS2CDR_SSI_EXT2_CLK_PRED_OFFSET		(22)
+#define MX5_CCM_CS2CDR_SSI_EXT2_CLK_PRED_MASK		(0x7 << 22)
+#define MX5_CCM_CS2CDR_SSI_EXT2_CLK_PODF_OFFSET		(16)
+#define MX5_CCM_CS2CDR_SSI_EXT2_CLK_PODF_MASK		(0x3F << 16)
+#define MX5_CCM_CS2CDR_SSI2_CLK_PRED_OFFSET		(6)
+#define MX5_CCM_CS2CDR_SSI2_CLK_PRED_MASK		(0x7 << 6)
+#define MX5_CCM_CS2CDR_SSI2_CLK_PODF_OFFSET		(0)
+#define MX5_CCM_CS2CDR_SSI2_CLK_PODF_MASK		(0x3F)
+
+/* Define the bits in register CDCDR */
+#define MX5_CCM_CDCDR_TVE_CLK_PRED_OFFSET		(28)
+#define MX5_CCM_CDCDR_TVE_CLK_PRED_MASK			(0x7 << 28)
+#define MX5_CCM_CDCDR_SPDIF0_CLK_PRED_OFFSET		(25)
+#define MX5_CCM_CDCDR_SPDIF0_CLK_PRED_MASK		(0x7 << 25)
+#define MX5_CCM_CDCDR_SPDIF0_CLK_PODF_OFFSET		(19)
+#define MX5_CCM_CDCDR_SPDIF0_CLK_PODF_MASK		(0x3F << 19)
+#define MX5_CCM_CDCDR_SPDIF1_CLK_PRED_OFFSET		(16)
+#define MX5_CCM_CDCDR_SPDIF1_CLK_PRED_MASK		(0x7 << 16)
+#define MX5_CCM_CDCDR_SPDIF1_CLK_PODF_OFFSET		(9)
+#define MX5_CCM_CDCDR_SPDIF1_CLK_PODF_MASK		(0x3F << 9)
+#define MX5_CCM_CDCDR_DI_CLK_PRED_OFFSET		(6)
+#define MX5_CCM_CDCDR_DI_CLK_PRED_MASK			(0x7 << 6)
+#define MX5_CCM_CDCDR_USB_PHY_PRED_OFFSET		(3)
+#define MX5_CCM_CDCDR_USB_PHY_PRED_MASK			(0x7 << 3)
+#define MX5_CCM_CDCDR_USB_PHY_PODF_OFFSET		(0)
+#define MX5_CCM_CDCDR_USB_PHY_PODF_MASK			(0x7)
+
+/* Define the bits in register CHSCCDR */
+#define MX5_CCM_CHSCCDR_ESC_CLK_PRED_OFFSET		(12)
+#define MX5_CCM_CHSCCDR_ESC_CLK_PRED_MASK		(0x7 << 12)
+#define MX5_CCM_CHSCCDR_ESC_CLK_PODF_OFFSET		(6)
+#define MX5_CCM_CHSCCDR_ESC_CLK_PODF_MASK		(0x3F << 6)
+#define MX5_CCM_CHSCCDR_HSC2_CLK_PODF_OFFSET		(3)
+#define MX5_CCM_CHSCCDR_HSC2_CLK_PODF_MASK		(0x7 << 3)
+#define MX5_CCM_CHSCCDR_HSC1_CLK_PODF_OFFSET		(0)
+#define MX5_CCM_CHSCCDR_HSC1_CLK_PODF_MASK		(0x7)
+
+/* Define the bits in register CSCDR2 */
+#define MX5_CCM_CSCDR2_CSPI_CLK_PRED_OFFSET		(25)
+#define MX5_CCM_CSCDR2_CSPI_CLK_PRED_MASK		(0x7 << 25)
+#define MX5_CCM_CSCDR2_CSPI_CLK_PODF_OFFSET		(19)
+#define MX5_CCM_CSCDR2_CSPI_CLK_PODF_MASK		(0x3F << 19)
+#define MX5_CCM_CSCDR2_SIM_CLK_PRED_OFFSET		(16)
+#define MX5_CCM_CSCDR2_SIM_CLK_PRED_MASK		(0x7 << 16)
+#define MX5_CCM_CSCDR2_SIM_CLK_PODF_OFFSET		(9)
+#define MX5_CCM_CSCDR2_SIM_CLK_PODF_MASK		(0x3F << 9)
+#define MX5_CCM_CSCDR2_SLIMBUS_CLK_PRED_OFFSET		(6)
+#define MX5_CCM_CSCDR2_SLIMBUS_PRED_MASK		(0x7 << 6)
+#define MX5_CCM_CSCDR2_SLIMBUS_PODF_OFFSET		(0)
+#define MX5_CCM_CSCDR2_SLIMBUS_PODF_MASK		(0x3F)
+
+/* Define the bits in register CSCDR3 */
+#define MX5_CCM_CSCDR3_HSI2C_CLK_PRED_OFFSET		(16)
+#define MX5_CCM_CSCDR3_HSI2C_CLK_PRED_MASK		(0x7 << 16)
+#define MX5_CCM_CSCDR3_HSI2C_CLK_PODF_OFFSET		(9)
+#define MX5_CCM_CSCDR3_HSI2C_CLK_PODF_MASK		(0x3F << 9)
+#define MX5_CCM_CSCDR3_FIRI_CLK_PRED_OFFSET		(6)
+#define MX5_CCM_CSCDR3_FIRI_CLK_PRED_MASK		(0x7 << 6)
+#define MX5_CCM_CSCDR3_FIRI_CLK_PODF_OFFSET		(0)
+#define MX5_CCM_CSCDR3_FIRI_CLK_PODF_MASK		(0x3F)
+
+/* Define the bits in register CSCDR4 */
+#define MX5_CCM_CSCDR4_CSI_MCLK2_CLK_PRED_OFFSET	(16)
+#define MX5_CCM_CSCDR4_CSI_MCLK2_CLK_PRED_MASK		(0x7 << 16)
+#define MX5_CCM_CSCDR4_CSI_MCLK2_CLK_PODF_OFFSET	(9)
+#define MX5_CCM_CSCDR4_CSI_MCLK2_CLK_PODF_MASK		(0x3F << 9)
+#define MX5_CCM_CSCDR4_CSI_MCLK1_CLK_PRED_OFFSET	(6)
+#define MX5_CCM_CSCDR4_CSI_MCLK1_CLK_PRED_MASK		(0x7 << 6)
+#define MX5_CCM_CSCDR4_CSI_MCLK1_CLK_PODF_OFFSET	(0)
+#define MX5_CCM_CSCDR4_CSI_MCLK1_CLK_PODF_MASK		(0x3F)
+
+/* Define the bits in register CDHIPR */
+#define MX5_CCM_CDHIPR_ARM_PODF_BUSY			(1 << 16)
+#define MX5_CCM_CDHIPR_DDR_HF_CLK_SEL_BUSY		(1 << 8)
+#define MX5_CCM_CDHIPR_DDR_PODF_BUSY			(1 << 7)
+#define MX5_CCM_CDHIPR_EMI_CLK_SEL_BUSY			(1 << 6)
+#define MX5_CCM_CDHIPR_PERIPH_CLK_SEL_BUSY		(1 << 5)
+#define MX5_CCM_CDHIPR_NFC_IPG_INT_MEM_PODF_BUSY	(1 << 4)
+#define MX5_CCM_CDHIPR_AHB_PODF_BUSY			(1 << 3)
+#define MX5_CCM_CDHIPR_EMI_PODF_BUSY			(1 << 2)
+#define MX5_CCM_CDHIPR_AXI_B_PODF_BUSY			(1 << 1)
+#define MX5_CCM_CDHIPR_AXI_A_PODF_BUSY			(1 << 0)
+
+/* Define the bits in register CDCR */
+#define MX5_CCM_CDCR_ARM_FREQ_SHIFT_DIVIDER		(0x1 << 2)
+#define MX5_CCM_CDCR_PERIPH_CLK_DVFS_PODF_OFFSET	(0)
+#define MX5_CCM_CDCR_PERIPH_CLK_DVFS_PODF_MASK		(0x3)
+
+/* Define the bits in register CLPCR */
+#define MX5_CCM_CLPCR_BYPASS_HSC_LPM_HS		(0x1 << 23)
+#define MX5_CCM_CLPCR_BYPASS_SCC_LPM_HS		(0x1 << 22)
+#define MX51_CCM_CLPCR_BYPASS_MAX_LPM_HS		(0x1 << 21)
+#define MX53_CCM_CLPCR_BYPASS_MAX_LPM_HS		(0x1 << 25)
+#define MX5_CCM_CLPCR_BYPASS_SDMA_LPM_HS	(0x1 << 20)
+#define MX5_CCM_CLPCR_BYPASS_EMI_LPM_HS		(0x1 << 19)
+#define MX5_CCM_CLPCR_BYPASS_IPU_LPM_HS		(0x1 << 18)
+#define MX5_CCM_CLPCR_BYPASS_RTIC_LPM_HS	(0x1 << 17)
+#define MX5_CCM_CLPCR_BYPASS_RNGC_LPM_HS	(0x1 << 16)
+#define MX5_CCM_CLPCR_COSC_PWRDOWN		(0x1 << 11)
+#define MX5_CCM_CLPCR_STBY_COUNT_OFFSET		(9)
+#define MX5_CCM_CLPCR_STBY_COUNT_MASK		(0x3 << 9)
+#define MX5_CCM_CLPCR_VSTBY			(0x1 << 8)
+#define MX5_CCM_CLPCR_DIS_REF_OSC		(0x1 << 7)
+#define MX5_CCM_CLPCR_SBYOS			(0x1 << 6)
+#define MX5_CCM_CLPCR_ARM_CLK_DIS_ON_LPM	(0x1 << 5)
+#define MX5_CCM_CLPCR_LPSR_CLK_SEL_OFFSET	(3)
+#define MX5_CCM_CLPCR_LPSR_CLK_SEL_MASK		(0x3 << 3)
+#define MX5_CCM_CLPCR_LPM_OFFSET		(0)
+#define MX5_CCM_CLPCR_LPM_MASK			(0x3)
+
+/* Define the bits in register CISR */
+#define MX5_CCM_CISR_ARM_PODF_LOADED			(0x1 << 25)
+#define MX5_CCM_CISR_NFC_IPG_INT_MEM_PODF_LOADED	(0x1 << 21)
+#define MX5_CCM_CISR_AHB_PODF_LOADED			(0x1 << 20)
+#define MX5_CCM_CISR_EMI_PODF_LOADED			(0x1 << 19)
+#define MX5_CCM_CISR_AXI_B_PODF_LOADED			(0x1 << 18)
+#define MX5_CCM_CISR_AXI_A_PODF_LOADED			(0x1 << 17)
+#define MX5_CCM_CISR_DIVIDER_LOADED			(0x1 << 16)
+#define MX5_CCM_CISR_COSC_READY				(0x1 << 6)
+#define MX5_CCM_CISR_CKIH2_READY			(0x1 << 5)
+#define MX5_CCM_CISR_CKIH_READY				(0x1 << 4)
+#define MX5_CCM_CISR_FPM_READY				(0x1 << 3)
+#define MX5_CCM_CISR_LRF_PLL3				(0x1 << 2)
+#define MX5_CCM_CISR_LRF_PLL2				(0x1 << 1)
+#define MX5_CCM_CISR_LRF_PLL1				(0x1)
+
+/* Define the bits in register CIMR */
+#define MX5_CCM_CIMR_MASK_ARM_PODF_LOADED		(0x1 << 25)
+#define MX5_CCM_CIMR_MASK_NFC_IPG_INT_MEM_PODF_LOADED	(0x1 << 21)
+#define MX5_CCM_CIMR_MASK_EMI_PODF_LOADED		(0x1 << 20)
+#define MX5_CCM_CIMR_MASK_AXI_C_PODF_LOADED		(0x1 << 19)
+#define MX5_CCM_CIMR_MASK_AXI_B_PODF_LOADED		(0x1 << 18)
+#define MX5_CCM_CIMR_MASK_AXI_A_PODF_LOADED		(0x1 << 17)
+#define MX5_CCM_CIMR_MASK_DIVIDER_LOADED		(0x1 << 16)
+#define MX5_CCM_CIMR_MASK_COSC_READY			(0x1 << 5)
+#define MX5_CCM_CIMR_MASK_CKIH_READY			(0x1 << 4)
+#define MX5_CCM_CIMR_MASK_FPM_READY			(0x1 << 3)
+#define MX5_CCM_CIMR_MASK_LRF_PLL3			(0x1 << 2)
+#define MX5_CCM_CIMR_MASK_LRF_PLL2			(0x1 << 1)
+#define MX5_CCM_CIMR_MASK_LRF_PLL1			(0x1)
+
+/* Define the bits in register CCOSR */
+#define MX5_CCM_CCOSR_CKO2_EN_OFFSET			(0x1 << 24)
+#define MX5_CCM_CCOSR_CKO2_DIV_OFFSET			(21)
+#define MX5_CCM_CCOSR_CKO2_DIV_MASK			(0x7 << 21)
+#define MX5_CCM_CCOSR_CKO2_SEL_OFFSET			(16)
+#define MX5_CCM_CCOSR_CKO2_SEL_MASK			(0x1F << 16)
+#define MX5_CCM_CCOSR_CKOL_EN				(0x1 << 7)
+#define MX5_CCM_CCOSR_CKOL_DIV_OFFSET			(4)
+#define MX5_CCM_CCOSR_CKOL_DIV_MASK			(0x7 << 4)
+#define MX5_CCM_CCOSR_CKOL_SEL_OFFSET			(0)
+#define MX5_CCM_CCOSR_CKOL_SEL_MASK			(0xF)
+
+/* Define the bits in registers CGPR */
+#define MX5_CCM_CGPR_EFUSE_PROG_SUPPLY_GATE		(0x1 << 4)
+#define MX5_CCM_CGPR_FPM_SEL				(0x1 << 3)
+#define MX5_CCM_CGPR_VL_L2BIST_CLKDIV_OFFSET		(0)
+#define MX5_CCM_CGPR_VL_L2BIST_CLKDIV_MASK		(0x7)
+
+/* Define the bits in registers CCGRx */
+#define MX5_CCM_CCGRx_CG_MASK				0x3
+#define MX5_CCM_CCGRx_MOD_OFF				0x0
+#define MX5_CCM_CCGRx_MOD_ON				0x3
+#define MX5_CCM_CCGRx_MOD_IDLE				0x1
+
+#define MX5_CCM_CCGRx_CG15_MASK				(0x3 << 30)
+#define MX5_CCM_CCGRx_CG14_MASK				(0x3 << 28)
+#define MX5_CCM_CCGRx_CG13_MASK				(0x3 << 26)
+#define MX5_CCM_CCGRx_CG12_MASK				(0x3 << 24)
+#define MX5_CCM_CCGRx_CG11_MASK				(0x3 << 22)
+#define MX5_CCM_CCGRx_CG10_MASK				(0x3 << 20)
+#define MX5_CCM_CCGRx_CG9_MASK				(0x3 << 18)
+#define MX5_CCM_CCGRx_CG8_MASK				(0x3 << 16)
+#define MX5_CCM_CCGRx_CG5_MASK				(0x3 << 10)
+#define MX5_CCM_CCGRx_CG4_MASK				(0x3 << 8)
+#define MX5_CCM_CCGRx_CG3_MASK				(0x3 << 6)
+#define MX5_CCM_CCGRx_CG2_MASK				(0x3 << 4)
+#define MX5_CCM_CCGRx_CG1_MASK				(0x3 << 2)
+#define MX5_CCM_CCGRx_CG0_MASK				(0x3 << 0)
+
+#define MX5_CCM_CCGRx_CG15_OFFSET			30
+#define MX5_CCM_CCGRx_CG14_OFFSET			28
+#define MX5_CCM_CCGRx_CG13_OFFSET			26
+#define MX5_CCM_CCGRx_CG12_OFFSET			24
+#define MX5_CCM_CCGRx_CG11_OFFSET			22
+#define MX5_CCM_CCGRx_CG10_OFFSET			20
+#define MX5_CCM_CCGRx_CG9_OFFSET			18
+#define MX5_CCM_CCGRx_CG8_OFFSET			16
+#define MX5_CCM_CCGRx_CG7_OFFSET			14
+#define MX5_CCM_CCGRx_CG6_OFFSET			12
+#define MX5_CCM_CCGRx_CG5_OFFSET			10
+#define MX5_CCM_CCGRx_CG4_OFFSET			8
+#define MX5_CCM_CCGRx_CG3_OFFSET			6
+#define MX5_CCM_CCGRx_CG2_OFFSET			4
+#define MX5_CCM_CCGRx_CG1_OFFSET			2
+#define MX5_CCM_CCGRx_CG0_OFFSET			0
+
+#define MX5_DPTC_LP_BASE	(MX51_GPC_BASE + 0x80)
+#define MX5_DPTC_GP_BASE	(MX51_GPC_BASE + 0x100)
+#define MX5_DVFS_CORE_BASE	(MX51_GPC_BASE + 0x180)
+#define MX5_DPTC_PER_BASE	(MX51_GPC_BASE + 0x1C0)
+#define MX5_PGC_IPU_BASE	(MX51_GPC_BASE + 0x220)
+#define MX5_PGC_VPU_BASE	(MX51_GPC_BASE + 0x240)
+#define MX5_PGC_GPU_BASE	(MX51_GPC_BASE + 0x260)
+#define MX5_SRPG_NEON_BASE	(MX51_GPC_BASE + 0x280)
+#define MX5_SRPG_ARM_BASE	(MX51_GPC_BASE + 0x2A0)
+#define MX5_SRPG_EMPGC0_BASE	(MX51_GPC_BASE + 0x2C0)
+#define MX5_SRPG_EMPGC1_BASE	(MX51_GPC_BASE + 0x2D0)
+#define MX5_SRPG_MEGAMIX_BASE	(MX51_GPC_BASE + 0x2E0)
+#define MX5_SRPG_EMI_BASE	(MX51_GPC_BASE + 0x300)
+
+/* CORTEXA8 platform */
+#define MX5_CORTEXA8_PLAT_PVID		(MX51_CORTEXA8_BASE + 0x0)
+#define MX5_CORTEXA8_PLAT_GPC		(MX51_CORTEXA8_BASE + 0x4)
+#define MX5_CORTEXA8_PLAT_PIC		(MX51_CORTEXA8_BASE + 0x8)
+#define MX5_CORTEXA8_PLAT_LPC		(MX51_CORTEXA8_BASE + 0xC)
+#define MX5_CORTEXA8_PLAT_NEON_LPC	(MX51_CORTEXA8_BASE + 0x10)
+#define MX5_CORTEXA8_PLAT_ICGC		(MX51_CORTEXA8_BASE + 0x14)
+#define MX5_CORTEXA8_PLAT_AMC		(MX51_CORTEXA8_BASE + 0x18)
+#define MX5_CORTEXA8_PLAT_NMC		(MX51_CORTEXA8_BASE + 0x20)
+#define MX5_CORTEXA8_PLAT_NMS		(MX51_CORTEXA8_BASE + 0x24)
+
+/* DVFS CORE */
+#define MX5_DVFSTHRS		(MX5_DVFS_CORE_BASE + 0x00)
+#define MX5_DVFSCOUN		(MX5_DVFS_CORE_BASE + 0x04)
+#define MX5_DVFSSIG1		(MX5_DVFS_CORE_BASE + 0x08)
+#define MX5_DVFSSIG0		(MX5_DVFS_CORE_BASE + 0x0C)
+#define MX5_DVFSGPC0		(MX5_DVFS_CORE_BASE + 0x10)
+#define MX5_DVFSGPC1		(MX5_DVFS_CORE_BASE + 0x14)
+#define MX5_DVFSGPBT		(MX5_DVFS_CORE_BASE + 0x18)
+#define MX5_DVFSEMAC		(MX5_DVFS_CORE_BASE + 0x1C)
+#define MX5_DVFSCNTR		(MX5_DVFS_CORE_BASE + 0x20)
+#define MX5_DVFSLTR0_0		(MX5_DVFS_CORE_BASE + 0x24)
+#define MX5_DVFSLTR0_1		(MX5_DVFS_CORE_BASE + 0x28)
+#define MX5_DVFSLTR1_0		(MX5_DVFS_CORE_BASE + 0x2C)
+#define MX5_DVFSLTR1_1		(MX5_DVFS_CORE_BASE + 0x30)
+#define MX5_DVFSPT0 		(MX5_DVFS_CORE_BASE + 0x34)
+#define MX5_DVFSPT1 		(MX5_DVFS_CORE_BASE + 0x38)
+#define MX5_DVFSPT2 		(MX5_DVFS_CORE_BASE + 0x3C)
+#define MX5_DVFSPT3 		(MX5_DVFS_CORE_BASE + 0x40)
+
+/* GPC */
+#define MX5_GPC_CNTR		(MX51_GPC_BASE + 0x0)
+#define MX5_GPC_PGR		(MX51_GPC_BASE + 0x4)
+#define MX5_GPC_VCR		(MX51_GPC_BASE + 0x8)
+#define MX5_GPC_ALL_PU		(MX51_GPC_BASE + 0xC)
+#define MX5_GPC_NEON		(MX51_GPC_BASE + 0x10)
+#define MX5_GPC_PGR_ARMPG_OFFSET	8
+#define MX5_GPC_PGR_ARMPG_MASK		(3 << 8)
+
+/* PGC */
+#define MX5_PGC_IPU_PGCR	(MX5_PGC_IPU_BASE + 0x0)
+#define MX5_PGC_IPU_PGSR	(MX5_PGC_IPU_BASE + 0xC)
+#define MX5_PGC_VPU_PGCR	(MX5_PGC_VPU_BASE + 0x0)
+#define MX5_PGC_VPU_PGSR	(MX5_PGC_VPU_BASE + 0xC)
+#define MX5_PGC_GPU_PGCR	(MX5_PGC_GPU_BASE + 0x0)
+#define MX5_PGC_GPU_PGSR	(MX5_PGC_GPU_BASE + 0xC)
+
+#define MX5_PGCR_PCR		1
+#define MX5_SRPGCR_PCR		1
+#define MX5_EMPGCR_PCR		1
+#define MX5_PGSR_PSR		1
+
+
+#define MX5_CORTEXA8_PLAT_LPC_DSM	(1 << 0)
+#define MX5_CORTEXA8_PLAT_LPC_DBG_DSM	(1 << 1)
+
+/* SRPG */
+#define MX5_SRPG_NEON_SRPGCR	(MX5_SRPG_NEON_BASE + 0x0)
+#define MX5_SRPG_NEON_PUPSCR	(MX5_SRPG_NEON_BASE + 0x4)
+#define MX5_SRPG_NEON_PDNSCR	(MX5_SRPG_NEON_BASE + 0x8)
+
+#define MX5_SRPG_ARM_SRPGCR	(MX5_SRPG_ARM_BASE + 0x0)
+#define MX5_SRPG_ARM_PUPSCR	(MX5_SRPG_ARM_BASE + 0x4)
+#define MX5_SRPG_ARM_PDNSCR	(MX5_SRPG_ARM_BASE + 0x8)
+
+#define MX5_SRPG_EMPGC0_SRPGCR	(MX5_SRPG_EMPGC0_BASE + 0x0)
+#define MX5_SRPG_EMPGC0_PUPSCR	(MX5_SRPG_EMPGC0_BASE + 0x4)
+#define MX5_SRPG_EMPGC0_PDNSCR	(MX5_SRPG_EMPGC0_BASE + 0x8)
+
+#define MX5_SRPG_EMPGC1_SRPGCR	(MX5_SRPG_EMPGC1_BASE + 0x0)
+#define MX5_SRPG_EMPGC1_PUPSCR	(MX5_SRPG_EMPGC1_BASE + 0x4)
+#define MX5_SRPG_EMPGC1_PDNSCR	(MX5_SRPG_EMPGC1_BASE + 0x8)
+
+#define MX5_SRPG_MEGAMIX_SRPGCR		(MX5_SRPG_MEGAMIX_BASE + 0x0)
+#define MX5_SRPG_MEGAMIX_PUPSCR		(MX5_SRPG_MEGAMIX_BASE + 0x4)
+#define MX5_SRPG_MEGAMIX_PDNSCR		(MX5_SRPG_MEGAMIX_BASE + 0x8)
+
+#define MX5_SRPGC_EMI_SRPGCR	(MX5_SRPGC_EMI_BASE + 0x0)
+#define MX5_SRPGC_EMI_PUPSCR	(MX5_SRPGC_EMI_BASE + 0x4)
+#define MX5_SRPGC_EMI_PDNSCR	(MX5_SRPGC_EMI_BASE + 0x8)
+
+
+/* Assuming 24MHz input clock with doubler ON */
+/*                            MFI         PDF */
+#define MX5_PLL_DP_OP_850	((8 << 4) + ((1 - 1)  << 0))
+#define MX5_PLL_DP_MFD_850	(48 - 1)
+#define MX5_PLL_DP_MFN_850	41
+
+#define MX5_PLL_DP_OP_800	((8 << 4) + ((1 - 1)  << 0))
+#define MX5_PLL_DP_MFD_800	(3 - 1)
+#define MX5_PLL_DP_MFN_800	1
+
+#define MX5_PLL_DP_OP_700	((7 << 4) + ((1 - 1)  << 0))
+#define MX5_PLL_DP_MFD_700	(24 - 1)
+#define MX5_PLL_DP_MFN_700	7
+
+#define MX5_PLL_DP_OP_665	((6 << 4) + ((1 - 1)  << 0))
+#define MX5_PLL_DP_MFD_665	(96 - 1)
+#define MX5_PLL_DP_MFN_665	89
+
+#define MX5_PLL_DP_OP_532	((5 << 4) + ((1 - 1)  << 0))
+#define MX5_PLL_DP_MFD_532	(24 - 1)
+#define MX5_PLL_DP_MFN_532	13
+
+#define MX5_PLL_DP_OP_400	((8 << 4) + ((2 - 1)  << 0))
+#define MX5_PLL_DP_MFD_400	(3 - 1)
+#define MX5_PLL_DP_MFN_400	1
+
+#define MX5_PLL_DP_OP_216	((6 << 4) + ((3 - 1)  << 0))
+#define MX5_PLL_DP_MFD_216	(4 - 1)
+#define MX5_PLL_DP_MFN_216	3
+
+#endif				/* __ARCH_ARM_MACH_MX51_CRM_REGS_H__ */
+
+
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 9983297..f1fb74c 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -2,7 +2,7 @@
 #include <asm/io.h>
 #include <asm-generic/div64.h>
 #include <mach/imx51-regs.h>
-#include "mach/clock-imx51.h"
+#include <mach/clock-imx51_53.h>
 
 static u32 ccm_readl(u32 ofs)
 {
@@ -31,30 +31,30 @@ static unsigned long pll_get_rate(void __iomem *pllbase)
 	u64 temp;
 	unsigned long parent_rate;
 
-	dp_ctl = readl(pllbase + MX51_PLL_DP_CTL);
+	dp_ctl = readl(pllbase + MX5_PLL_DP_CTL);
 
-	if ((dp_ctl & MX51_PLL_DP_CTL_REF_CLK_SEL_MASK) == 0)
+	if ((dp_ctl & MX5_PLL_DP_CTL_REF_CLK_SEL_MASK) == 0)
 		parent_rate = fpm_get_rate();
 	else
 		parent_rate = osc_get_rate();
 
-	pll_hfsm = dp_ctl & MX51_PLL_DP_CTL_HFSM;
-	dbl = dp_ctl & MX51_PLL_DP_CTL_DPDCK0_2_EN;
+	pll_hfsm = dp_ctl & MX5_PLL_DP_CTL_HFSM;
+	dbl = dp_ctl & MX5_PLL_DP_CTL_DPDCK0_2_EN;
 
 	if (pll_hfsm == 0) {
-		dp_op = readl(pllbase + MX51_PLL_DP_OP);
-		dp_mfd = readl(pllbase + MX51_PLL_DP_MFD);
-		dp_mfn = readl(pllbase + MX51_PLL_DP_MFN);
+		dp_op = readl(pllbase + MX5_PLL_DP_OP);
+		dp_mfd = readl(pllbase + MX5_PLL_DP_MFD);
+		dp_mfn = readl(pllbase + MX5_PLL_DP_MFN);
 	} else {
-		dp_op = readl(pllbase + MX51_PLL_DP_HFS_OP);
-		dp_mfd = readl(pllbase + MX51_PLL_DP_HFS_MFD);
-		dp_mfn = readl(pllbase + MX51_PLL_DP_HFS_MFN);
+		dp_op = readl(pllbase + MX5_PLL_DP_HFS_OP);
+		dp_mfd = readl(pllbase + MX5_PLL_DP_HFS_MFD);
+		dp_mfn = readl(pllbase + MX5_PLL_DP_HFS_MFN);
 	}
-	pdf = dp_op & MX51_PLL_DP_OP_PDF_MASK;
-	mfi = (dp_op & MX51_PLL_DP_OP_MFI_MASK) >> MX51_PLL_DP_OP_MFI_OFFSET;
+	pdf = dp_op & MX5_PLL_DP_OP_PDF_MASK;
+	mfi = (dp_op & MX5_PLL_DP_OP_MFI_MASK) >> MX5_PLL_DP_OP_MFI_OFFSET;
 	mfi = (mfi <= 5) ? 5 : mfi;
-	mfd = dp_mfd & MX51_PLL_DP_MFD_MASK;
-	mfn = mfn_abs = dp_mfn & MX51_PLL_DP_MFN_MASK;
+	mfd = dp_mfd & MX5_PLL_DP_MFD_MASK;
+	mfn = mfn_abs = dp_mfn & MX5_PLL_DP_MFN_MASK;
 	/* Sign extend to 32-bits */
 	if (mfn >= 0x04000000) {
 		mfn |= 0xFC000000;
@@ -117,11 +117,11 @@ unsigned long imx_get_uartclk(void)
 
 	parent_rate = pll2_sw_get_rate();
 
-	reg = ccm_readl(MX51_CCM_CSCDR1);
-	prediv = ((reg & MX51_CCM_CSCDR1_UART_CLK_PRED_MASK) >>
-		  MX51_CCM_CSCDR1_UART_CLK_PRED_OFFSET) + 1;
-	podf = ((reg & MX51_CCM_CSCDR1_UART_CLK_PODF_MASK) >>
-		MX51_CCM_CSCDR1_UART_CLK_PODF_OFFSET) + 1;
+	reg = ccm_readl(MX5_CCM_CSCDR1);
+	prediv = ((reg & MX5_CCM_CSCDR1_UART_CLK_PRED_MASK) >>
+		  MX5_CCM_CSCDR1_UART_CLK_PRED_OFFSET) + 1;
+	podf = ((reg & MX5_CCM_CSCDR1_UART_CLK_PODF_MASK) >>
+		MX5_CCM_CSCDR1_UART_CLK_PODF_OFFSET) + 1;
 
 	return parent_rate / (prediv * podf);
 }
@@ -130,7 +130,7 @@ static unsigned long imx_get_ahbclk(void)
 {
 	u32 reg, div;
 
-	reg = ccm_readl(MX51_CCM_CBCDR);
+	reg = ccm_readl(MX5_CCM_CBCDR);
 	div = ((reg >> 10) & 0x7) + 1;
 
 	return pll2_sw_get_rate() / div;
@@ -140,7 +140,7 @@ unsigned long imx_get_ipgclk(void)
 {
 	u32 reg, div;
 
-	reg = ccm_readl(MX51_CCM_CBCDR);
+	reg = ccm_readl(MX5_CCM_CBCDR);
 	div = ((reg >> 8) & 0x3) + 1;
 
 	return imx_get_ahbclk() / div;
@@ -160,20 +160,20 @@ unsigned long imx_get_mmcclk(void)
 {
 	u32 reg, prediv, podf, rate;
 
-	reg = ccm_readl(MX51_CCM_CSCMR1);
-	reg &= MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_MASK;
-	reg >>= MX51_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_OFFSET;
+	reg = ccm_readl(MX5_CCM_CSCMR1);
+	reg &= MX5_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_MASK;
+	reg >>= MX5_CCM_CSCMR1_ESDHC1_MSHC1_CLK_SEL_OFFSET;
 	rate = get_rate_select(reg,
 			pll1_main_get_rate,
 			pll2_sw_get_rate,
 			pll3_sw_get_rate,
 			NULL);
 
-	reg = ccm_readl(MX51_CCM_CSCDR1);
-	prediv = ((reg & MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK) >>
-			MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET) + 1;
-	podf = ((reg & MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK) >>
-			MX51_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET) + 1;
+	reg = ccm_readl(MX5_CCM_CSCDR1);
+	prediv = ((reg & MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK) >>
+			MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET) + 1;
+	podf = ((reg & MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK) >>
+			MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_OFFSET) + 1;
 
 	return rate / (prediv * podf);
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
