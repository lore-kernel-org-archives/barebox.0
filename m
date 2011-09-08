Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1l0g-0005lG-MO
	for barebox@lists.infradead.org; Thu, 08 Sep 2011 20:15:44 +0000
Received: by fxd20 with SMTP id 20so2263610fxd.36
	for <barebox@lists.infradead.org>; Thu, 08 Sep 2011 13:15:40 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu,  8 Sep 2011 22:15:35 +0200
Message-Id: <1315512935-16176-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH next] at91sam9g45: Fix compilation error.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix following error:
arch/arm/mach-at91/at91sam9g45.c:185:3: error: 'ohci_clk' undeclared here (not in a function)
arch/arm/mach-at91/at91sam9g45.c:186:3: error: 'tcb1_clk' undeclared here (not in a function)

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/mach-at91/at91sam9g45.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index d4c27f8..43abe25 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -182,13 +182,12 @@ static struct clk *periph_clocks[] __initdata = {
 	&udphs_clk,
 	&mmc1_clk,
 	// irq0
-	&ohci_clk,
-	&tcb1_clk,
 };
 
 static struct clk_lookup periph_clocks_lookups[] = {
 	/* One additional fake clock for ohci */
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+	CLKDEV_CON_ID("tcb1_clk", &tcb0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 };
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
