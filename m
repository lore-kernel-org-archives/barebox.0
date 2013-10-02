Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRS89-0004Yx-IH
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 19:30:42 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  2 Oct 2013 21:30:10 +0200
Message-Id: <1380742211-2731-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
References: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/4] arm: omap: am33xx_generic: fix DDR setup for DDR2
To: barebox@lists.infradead.org

For DDR2 RAMs, regs->zq_config is not used, which causes the
AM33XX_EMIF4_0_REG(SDRAM_CONFIG) register to be left unconfigured, resulting
in boot failure.

It seems that the DDR2 case was missed during the consolidation in commit
9f122f8bf023a12ad5f84b61d1d74d3ff06104dd. The actual call for the Bone was
removed in 88659d9c4a87a730f6efe4f38c011e8e0214a67b.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
I've tested this on White and Black BeagleBones. An additional test on the
PCM051 would be good.

 arch/arm/mach-omap/am33xx_generic.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 251c8d4..3e2b6c4 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -302,7 +302,7 @@ void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
 
 	writel(regs->sdram_ref_ctrl, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
 	writel(regs->sdram_ref_ctrl, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
-	writel(regs->sdram_config, CM_EMIF_SDRAM_CONFIG);
+	writel(regs->sdram_config, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
 }
 
 void am33xx_config_io_ctrl(int ioctrl)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
