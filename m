Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USlR2-0000R9-PB
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 09:47:21 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 18 Apr 2013 11:47:09 +0200
Message-Id: <1366278430-4009-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH v2 1/2] m33xx-clock: configure PLLs based on oscillator
 frequency
To: barebox@lists.infradead.org

The *PLL_N values can be calculated from the OSC value. This patch
includes no functional change.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
    changes from v1:
      * add change description (sha)
      * add spaces around operator (sha)
      * split off patch to remove unused code

 arch/arm/mach-omap/include/mach/am33xx-clock.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index 39c107f..cf4c921 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -31,12 +31,12 @@
 #define MPUPLL_M_600	600	/* 125 * n */
 #define MPUPLL_M_720	720	/* 125 * n */
 
-#define MPUPLL_N	23	/* (n -1 ) */
+#define MPUPLL_N	(OSC - 1)
 #define MPUPLL_M2	1
 
 /* Core PLL Fdll = 1 GHZ, */
 #define COREPLL_M	1000	/* 125 * n */
-#define COREPLL_N	23	/* (n -1 ) */
+#define COREPLL_N	(OSC - 1)
 
 #define COREPLL_M4	10	/* CORE_CLKOUTM4 = 200 MHZ */
 #define COREPLL_M5	8	/* CORE_CLKOUTM5 = 250 MHZ */
@@ -48,7 +48,7 @@
  * For clkout = 192 MHZ, Fdll = 960 MHZ, divider values are given below
  */
 #define PERPLL_M	960
-#define PERPLL_N	23
+#define PERPLL_N	(OSC - 1)
 #define PERPLL_M2	5
 
 /* DDR Freq is 166 MHZ for now*/
@@ -60,7 +60,7 @@
 #define DDRPLL_M	266
 #endif
 
-#define DDRPLL_N	23
+#define DDRPLL_N	(OSC - 1)
 #define DDRPLL_M2	1
 
 /* PRCM */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
