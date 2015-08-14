Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQC2t-0002aw-Bt
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 10:17:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZQC2Y-0005zX-1q
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 12:16:46 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Aug 2015 12:16:45 +0200
Message-Id: <1439547405-12578-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
References: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: imx6: select OFTREE
To: barebox@lists.infradead.org

i.MX6 is fully DT enabled and the already selected
COMMON_CLK_OF_PROVIDER needs OFTREE support to build properly.

Fixes:
arch/arm/mach-imx/clk-imx6.c: In function 'imx6_ccm_probe':
arch/arm/mach-imx/clk-imx6.c:500:2: error:
    invalid use of undefined type 'struct clk_onecell_data'
arch/arm/mach-imx/clk-imx6.c:502:2: error:
    implicit declaration of function 'of_clk_add_provider'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a4298416fcdf..1693870b7ee8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -178,12 +178,14 @@ config ARCH_IMX6
 	select ARCH_HAS_FEC_IMX
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
+	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
 
 config ARCH_IMX6SX
 	bool
 	select ARCH_IMX6
+	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 
 config IMX_MULTI_BOARDS
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
