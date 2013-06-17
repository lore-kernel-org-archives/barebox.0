Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoWbk-0003A6-0s
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 10:24:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 12:23:54 +0200
Message-Id: <1371464634-31149-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX51: Adjust IPG_CLK_DIVR to 6:1
To: barebox@lists.infradead.org

The same value as used in Mainline and Freescale U-Boot. This might
increase the stability of i.MX51 boards. The 5:1 ratio we have in barebox
probably goes back to copy/paste from the i.MX53 code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index c75534e..0771f94 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -196,7 +196,7 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 	imx5_setup_pll_216((void __iomem *)MX51_PLL3_BASE_ADDR);
 
 	/* Set the platform clock dividers */
-	writel(0x00000124, MX51_ARM_BASE_ADDR + 0x14);
+	writel(0x00000125, MX51_ARM_BASE_ADDR + 0x14);
 
 	/* Run at Full speed */
 	writel(0x0, ccm + MX5_CCM_CACRR);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
