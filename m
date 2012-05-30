Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZgyM-0006PB-Pe
 for barebox@lists.infradead.org; Wed, 30 May 2012 11:21:52 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 30 May 2012 15:21:45 +0400
Message-Id: <1338376905-24331-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1338376905-24331-1-git-send-email-shc_work@mail.ru>
References: <1338376905-24331-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] i.MX51 clock: Added USB clock to dump_clocks command.
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/speed-imx51.c |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index b691d37..a94b392 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -199,6 +199,28 @@ unsigned long imx_get_mmcclk(void)
 	return rate / (prediv * podf);
 }
 
+unsigned long imx_get_usbclk(void)
+{
+	u32 reg, prediv, podf, rate;
+
+	reg = ccm_readl(MX5_CCM_CSCMR1);
+	reg &= MX5_CCM_CSCMR1_USBOH3_CLK_SEL_MASK;
+	reg >>= MX5_CCM_CSCMR1_USBOH3_CLK_SEL_OFFSET;
+	rate = get_rate_select(reg,
+			pll1_main_get_rate,
+			pll2_sw_get_rate,
+			pll3_sw_get_rate,
+			lp_apm_get_rate);
+
+	reg = ccm_readl(MX5_CCM_CSCDR1);
+	prediv = ((reg & MX5_CCM_CSCDR1_USBOH3_CLK_PRED_MASK) >>
+			MX5_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET) + 1;
+	podf = ((reg & MX5_CCM_CSCDR1_USBOH3_CLK_PODF_MASK) >>
+			MX5_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET) + 1;
+
+	return rate / (prediv * podf);
+}
+
 void imx_dump_clocks(void)
 {
 	printf("pll1:   %ld\n", pll1_main_get_rate());
@@ -209,4 +231,5 @@ void imx_dump_clocks(void)
 	printf("ipg:    %ld\n", imx_get_ipgclk());
 	printf("fec:    %ld\n", imx_get_fecclk());
 	printf("gpt:    %ld\n", imx_get_gptclk());
+	printf("usb:    %ld\n", imx_get_usbclk());
 }
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
