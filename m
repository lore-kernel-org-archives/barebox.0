Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail403.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwSyl-0001uw-BY
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 07:36:40 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 08:35:09 +0100
Message-Id: <1358580914-21443-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358580914-21443-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130119073309.GG22953@game.jcrosoft.org>
 <1358580914-21443-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] at91sam926x: lowlevel add external boot support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index cfae982..4dec275 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -36,10 +36,19 @@ static void inline pmc_check_mckrdy(void)
 	} while (!(r & AT91_PMC_MCKRDY));
 }
 
+static int inline running_in_sram(void)
+{
+	u32 addr = get_pc();
+
+	addr >>= 28;
+	return addr == 0;
+}
+
 void __naked __bare_init reset(void)
 {
 	u32 r;
 	int i;
+	int in_sram = running_in_sram();
 
 	common_reset();
 
@@ -74,7 +83,7 @@ void __naked __bare_init reset(void)
 	 * PMC Check if the PLL is already initialized
 	 */
 	r = at91_pmc_read(AT91_PMC_MCKR);
-	if (r & AT91_PMC_CSS)
+	if (r & AT91_PMC_CSS && !in_sram)
 		goto end;
 
 	/*
@@ -117,7 +126,7 @@ void __naked __bare_init reset(void)
 	 * SDRAMC Check if Refresh Timer Counter is already initialized
 	 */
 	r = at91_sys_read(AT91_SDRAMC_TR);
-	if (r)
+	if (r && !in_sram)
 		goto end;
 
 	/* SDRAMC_MR : Normal Mode */
@@ -170,6 +179,13 @@ void __naked __bare_init reset(void)
 	/* MATRIX_MCFG - REMAP all masters */
 	at91_sys_write(AT91_MATRIX_MCFG0, 0x1FF);
 #endif
+	/*
+	 * When boot from external boot
+	 * we need to enable mck and ohter clock
+	 * so enable all of them
+	 * We will shutdown what we don't need later
+	 */
+	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
 
 end:
 	board_init_lowlevel_return();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
