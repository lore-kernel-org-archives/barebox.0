Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USlR2-0000RA-PD
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 09:47:21 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 18 Apr 2013 11:47:10 +0200
Message-Id: <1366278430-4009-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1366278430-4009-1-git-send-email-jlu@pengutronix.de>
References: <1366278430-4009-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH v2 2/2] m33xx-clock: remove unused code
To: barebox@lists.infradead.org

This patch includes no functional change. If a configurable DDRPLL_M
is required later, it should be set by the board instead of from here.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/am33xx-clock.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/arch/arm/mach-omap/include/mach/am33xx-clock.h
index cf4c921..028df43 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-clock.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-clock.h
@@ -51,15 +51,9 @@
 #define PERPLL_N	(OSC - 1)
 #define PERPLL_M2	5
 
-/* DDR Freq is 166 MHZ for now*/
+/* DDR Freq is 266 MHZ for now*/
 /* Set Fdll = 400 MHZ , Fdll = M * 2 * CLKINP/ N + 1; clkout = Fdll /(2 * M2) */
-//#if	(CONFIG_AM335X_EVM_IS_13x13 == 1)
-#if 0
-#define DDRPLL_M	166	/* M/N + 1 = 25/3 */
-#else
 #define DDRPLL_M	266
-#endif
-
 #define DDRPLL_N	(OSC - 1)
 #define DDRPLL_M2	1
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
