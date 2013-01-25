Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyo1s-0000K4-7j
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 18:29:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Jan 2013 19:29:29 +0100
Message-Id: <1359138569-11662-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM AT91 mmccpu: Fix non existing define
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/mmccpu/lowlevel_init.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/mmccpu/lowlevel_init.c b/arch/arm/boards/mmccpu/lowlevel_init.c
index 68c609f..c193eae 100644
--- a/arch/arm/boards/mmccpu/lowlevel_init.c
+++ b/arch/arm/boards/mmccpu/lowlevel_init.c
@@ -83,7 +83,7 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 #endif
 
 	cfg->pmc_mor =
-		AT91_PMC_MSCEN |
+		AT91_PMC_MOSCEN |
 		(255 << 8);		/* Main Oscillator Start-up Time */
 	cfg->pmc_pllar =
 		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
