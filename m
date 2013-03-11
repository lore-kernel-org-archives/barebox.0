Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0N-0005ii-Fz
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:26:52 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:32 +0400
Message-Id: <1362994003-22653-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 02/13] ARM: clps711x: Fix setup bus wait state scaling factor
 for 13Mhz mode
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/lowlevel.c |   16 ++++++++++------
 1 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 193f61a..58306f2 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -21,12 +21,12 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult)
 {
 	u32 cpu, bus;
 
-	/* Setup base clocking, Enable SDQM pins  */
-	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
-	asm("nop");
-
 	/* Check if we running from external 13 MHz clock */
 	if (!(readl(SYSFLG2) & SYSFLG2_CKMODE)) {
+		/* Setup bus wait state scaling factor to 2  */
+		writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
+		asm("nop");
+
 		/* Check valid multiplier, default to 74 MHz */
 		if ((pllmult < 20) || (pllmult > 50))
 			pllmult = 40;
@@ -42,11 +42,15 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult)
 			cpu = pllmult * 3686400;
 
 		if (cpu >= 36864000)
-			bus = cpu /2;
+			bus = cpu / 2;
 		else
 			bus = 36864000 / 2;
-	} else
+	} else {
 		bus = 13000000;
+		/* Setup bus wait state scaling factor to 1  */
+		writel(0, SYSCON3);
+		asm("nop");
+	}
 
 	/* CLKEN select, SDRAM width=32 */
 	writel(SYSCON2_CLKENSL, SYSCON2);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
