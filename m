Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhIRk-0003fm-EY
 for barebox@lists.infradead.org; Tue, 28 May 2013 11:52:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BC3C0BF0F5
 for <barebox@lists.infradead.org>; Tue, 28 May 2013 13:48:12 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 28 May 2013 13:51:42 +0200
Message-Id: <1369741903-24988-4-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] pcm049: clean up
To: barebox@lists.infradead.org

Remove magic numbers
Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/lowlevel.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 8548868..caac21e 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -127,11 +127,11 @@ static void noinline pcm049_init_lowlevel(void)
 	/* Enable all clocks */
 	omap4_enable_all_clocks();
 
-	sr32(0x4A30a31C, 8, 1, 0x1);  /* enable software ioreq */
-	sr32(0x4A30a31C, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
-	sr32(0x4A30a31C, 16, 4, 0x0); /* set divisor to 1 */
-	sr32(0x4A30a110, 0, 1, 0x1);  /* set the clock source to active */
-	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
+	sr32(OMAP44XX_SCRM_AUXCLK3, 8, 1, 0x1);  /* enable software ioreq */
+	sr32(OMAP44XX_SCRM_AUXCLK3, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
+	sr32(OMAP44XX_SCRM_AUXCLK3, 16, 4, 0x0); /* set divisor to 1 */
+	sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);  /* activate clock source */
+	sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);  /* enable clocks */
 }
 
 void barebox_arm_reset_vector(void)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
