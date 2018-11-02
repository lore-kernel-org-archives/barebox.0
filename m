Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIiua-0005O6-1c
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 23:31:33 +0000
Date: Sat, 3 Nov 2018 00:31:12 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181102233112.GA538@ravnborg.org>
References: <20181102090743.25128-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181102090743.25128-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Add initial support for the EVB-KSZ9477 eval board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Nov 02, 2018 at 10:07:43AM +0100, Sascha Hauer wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> The EVB-KSZ9477 is an evaluation board for the KSZ9477 ethernet switch.
> This board is equipped with a atsama5d3 SoC with 256MiB of SDRAM, 256MiB
> of NAND flash and a SD card slot.
> 
> For now only second stage booting is supported with AT91bootstrap as
> first stage loader.
Reminds me...

I have noticed a brown-paper-bug introduced by me that would
hurt first stage bootloaders.
But only for at91sam926x boards I think, that this is likely not
considered.

I have not yet come around to submit it as I wanted to check if
this fixed my first stage bootloader on my board.
But time for barebox hacking is limited at the moment :-(

It builds, but I dunno if there are other stupid bugs
yet to surface.

	Sam

From 57be69a9b161f98837faa4c4233d79fef07ffe47 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat, 25 Aug 2018 00:12:11 +0200
Subject: [PATCH 1/7] arm: at91: fix init in board_init

Revert part of previous commit that confused parameters to __raw_writel.

The value and the base address was mixed up.

This was found while looking for an unrelated bug and this
fix has no visible effect during my testing as at91bootstrap have
already done all the low-level init.
But this is an obvious bug that needs fixing and may have positive
impact when trying to use barebox as first stage bootloader.

Fixes: e739663535 (arm: at91: code cleanup in at91sam926x_board_init)
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../mach-at91/include/mach/at91sam926x_board_init.h | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 70ae90337..c595c86b1 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -48,6 +48,9 @@ struct at91sam926x_board_cfg {
 };
 
 
+#define at91_sdramc_write(field, value) \
+	__raw_writel((value), cfg->sdramc + (field))
+
 static void __always_inline access_sdram(void)
 {
 	writel(0x00000000, AT91_SDRAM_BASE);
@@ -82,38 +85,38 @@ static void __always_inline at91sam926x_sdramc_init(struct at91sam926x_board_cfg
 		return;
 
 	/* SDRAMC_MR : Normal Mode */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_NORMAL);
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
 
 	/* SDRAMC_TR - Refresh Timer register */
-	__raw_writel(AT91_SDRAMC_TR, cfg->sdramc + cfg->sdrc_tr1);
+	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
 
 	/* SDRAMC_CR - Configuration register*/
-	__raw_writel(AT91_SDRAMC_CR, cfg->sdramc + cfg->sdrc_cr);
+	at91_sdramc_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
 
 	/* Memory Device Type */
-	__raw_writel(AT91_SDRAMC_MDR, cfg->sdramc + cfg->sdrc_mdr);
+	at91_sdramc_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
 
 	/* SDRAMC_MR : Precharge All */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_PRECHARGE);
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
 	access_sdram();
 
 	/* SDRAMC_MR : refresh */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_REFRESH);
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
 
 	/* access SDRAM 8 times */
 	for (i = 0; i < 8; i++)
 		access_sdram();
 
 	/* SDRAMC_MR : Load Mode Register */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_LMR);
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
 	access_sdram();
 
 	/* SDRAMC_MR : Normal Mode */
-	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_NORMAL);
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
 	access_sdram();
 
 	/* SDRAMC_TR : Refresh Timer Counter */
-	__raw_writel(AT91_SDRAMC_TR, cfg->sdramc + cfg->sdrc_tr2);
+	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
 	access_sdram();
 }
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
