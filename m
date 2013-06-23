Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqtB-00013q-8z
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:27:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 22:27:33 +0200
Message-Id: <1372019254-23540-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: scb9328: remove dead code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/lowlevel_init.S | 51 ---------------------------------
 1 file changed, 51 deletions(-)

diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index d7afa21..4250c95 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -15,61 +15,10 @@
 #include <mach/imx1-regs.h>
 #include <asm/barebox-arm-head.h>
 
-#define CPU200
-
-#ifdef CPU200
 #define CFG_MPCTL0_VAL 0x00321431
-#else
-#define CFG_MPCTL0_VAL 0x040e200e
-#endif
-
-#define BUS72
-
-#ifdef BUS72
 #define CFG_SPCTL0_VAL 0x04002400
-#endif
-
-#ifdef BUS96
-#define CFG_SPCTL0_VAL 0x04001800
-#endif
-
-#ifdef BUS64
-#define CFG_SPCTL0_VAL 0x08001800
-#endif
-
-/* Das ist der BCLK Divider, der aus der System PLL
-   BCLK und HCLK erzeugt:
-   31 | xxxx xxxx xxxx xxxx xx10 11xx xxxx xxxx | 0
-   0x2f008403 : 192MHz/2=96MHz, 144MHz/2=72MHz PRESC=1->BCLKDIV=2
-   0x2f008803 : 192MHz/3=64MHz, 240MHz/3=80MHz PRESC=1->BCLKDIV=2
-   0x2f001003 : 192MHz/5=38,4MHz
-   0x2f000003 : 64MHz/1
-   Bit 22: SPLL Restart
-   Bit 21: MPLL Restart */
-
-#ifdef BUS64
-#define CFG_CSCR_VAL 0x2f030003
-#endif
-
-#ifdef BUS72
 #define CFG_CSCR_VAL 0x2f030403
-#endif
-/* Bit[0:3] contain PERCLK1DIV for UART 1
-   0x000b00b ->b<- -> 192MHz/12=16MHz
-   0x000b00b ->8<- -> 144MHz/09=16MHz
-   0x000b00b ->3<- -> 64MHz/4=16MHz */
-
-#ifdef BUS96
-#define CFG_PCDR_VAL 0x000b00b5
-#endif
-
-#ifdef BUS64
-#define CFG_PCDR_VAL 0x000b00b3
-#endif
-
-#ifdef BUS72
 #define CFG_PCDR_VAL 0x000b00b8
-#endif
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
