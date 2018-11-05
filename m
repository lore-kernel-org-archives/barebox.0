Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJZJV-0001V5-4X
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 07:28:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 08:28:26 +0100
Message-Id: <20181105072826.912-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm: at91: fix sdram controller init
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sam Ravnborg <sam@ravnborg.org>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

e739663535 confused parameters to __raw_writel. The value and the base
address was mixed up.

Fixes: e739663535 (arm: at91: code cleanup in at91sam926x_board_init)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../include/mach/at91sam926x_board_init.h      | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 70ae903374..7cacc0c8d7 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -82,38 +82,38 @@ static void __always_inline at91sam926x_sdramc_init(struct at91sam926x_board_cfg
 		return;
 
 	/* SDRAMC_MR : Normal Mode */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_NORMAL);
+	__raw_writel(AT91_SDRAMC_MODE_NORMAL, cfg->sdramc + AT91_SDRAMC_MR);
 
 	/* SDRAMC_TR - Refresh Timer register */
-	__raw_writel(AT91_SDRAMC_TR, cfg->sdramc + cfg->sdrc_tr1);
+	__raw_writel(cfg->sdrc_tr1, cfg->sdramc + AT91_SDRAMC_TR);
 
 	/* SDRAMC_CR - Configuration register*/
-	__raw_writel(AT91_SDRAMC_CR, cfg->sdramc + cfg->sdrc_cr);
+	__raw_writel(cfg->sdrc_cr, cfg->sdramc + AT91_SDRAMC_CR);
 
 	/* Memory Device Type */
-	__raw_writel(AT91_SDRAMC_MDR, cfg->sdramc + cfg->sdrc_mdr);
+	__raw_writel(cfg->sdrc_mdr, cfg->sdramc + AT91_SDRAMC_MDR);
 
 	/* SDRAMC_MR : Precharge All */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_PRECHARGE);
+	__raw_writel(AT91_SDRAMC_MODE_PRECHARGE, cfg->sdramc + AT91_SDRAMC_MR);
 	access_sdram();
 
 	/* SDRAMC_MR : refresh */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_REFRESH);
+	__raw_writel(AT91_SDRAMC_MODE_REFRESH, cfg->sdramc + AT91_SDRAMC_MR);
 
 	/* access SDRAM 8 times */
 	for (i = 0; i < 8; i++)
 		access_sdram();
 
 	/* SDRAMC_MR : Load Mode Register */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_LMR);
+	__raw_writel(AT91_SDRAMC_MODE_LMR, cfg->sdramc + AT91_SDRAMC_MR);
 	access_sdram();
 
 	/* SDRAMC_MR : Normal Mode */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_NORMAL);
+	__raw_writel(AT91_SDRAMC_MODE_NORMAL, cfg->sdramc + AT91_SDRAMC_MR);
 	access_sdram();
 
 	/* SDRAMC_TR : Refresh Timer Counter */
-	__raw_writel(AT91_SDRAMC_TR, cfg->sdramc + cfg->sdrc_tr2);
+	__raw_writel(cfg->sdrc_tr2, cfg->sdramc + AT91_SDRAMC_TR);
 	access_sdram();
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
