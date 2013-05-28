Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhIRk-0003fk-HR
 for barebox@lists.infradead.org; Tue, 28 May 2013 11:52:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 92ACEBF0E0
 for <barebox@lists.infradead.org>; Tue, 28 May 2013 13:48:12 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 28 May 2013 13:51:40 +0200
Message-Id: <1369741903-24988-2-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] OMAP4: Use default clock source for mcbsp
To: barebox@lists.infradead.org

In omap4_enable_all_clocks we not only enable the mcbsp clocks, but also
change the source from ABE_24M_FCLK to 24M_FCLK. Revert this and default
to the reset state.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/omap4_clock.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 0621fd3..889d1f9 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -253,9 +253,9 @@ void omap4_enable_all_clocks(void)
 	sr32(CM1_ABE_PDM_CLKCTRL, 0, 32, 0x2);
 	sr32(CM1_ABE_DMIC_CLKCTRL, 0, 32, 0x2);
 	sr32(CM1_ABE_MCASP_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_MCBSP1_CLKCTRL, 0, 32, 0x08000002);
-	sr32(CM1_ABE_MCBSP2_CLKCTRL, 0, 32, 0x08000002);
-	sr32(CM1_ABE_MCBSP3_CLKCTRL, 0, 32, 0x08000002);
+	sr32(CM1_ABE_MCBSP1_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_MCBSP2_CLKCTRL, 0, 32, 0x2);
+	sr32(CM1_ABE_MCBSP3_CLKCTRL, 0, 32, 0x2);
 	sr32(CM1_ABE_SLIMBUS_CLKCTRL, 0, 32, 0xf02);
 	sr32(CM1_ABE_TIMER5_CLKCTRL, 0, 32, 0x2);
 	sr32(CM1_ABE_TIMER6_CLKCTRL, 0, 32, 0x2);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
