Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmGGF-00027Z-Uw
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 08:18:41 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 20 Sep 2016 10:17:40 +0200
Message-Id: <1474359462-32142-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX6: remove duplicate clock initialization
To: barebox@lists.infradead.org

These registers are already set by imx6_ccm_probe (in clk-imx6.c) during
core_initcall, while imx6_init_lowlevel is only called during
postcore_initcall via imx_init in imx.c.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ba8fb8964ac8..dfd9a70200ec 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -56,15 +56,6 @@ void imx6_init_lowlevel(void)
 	writel(0, aips2 + 0x4c);
 	writel(0, aips2 + 0x50);
 
-	/* enable all clocks */
-	writel(0xffffffff, 0x020c4068);
-	writel(0xffffffff, 0x020c406c);
-	writel(0xffffffff, 0x020c4070);
-	writel(0xffffffff, 0x020c4074);
-	writel(0xffffffff, 0x020c4078);
-	writel(0xffffffff, 0x020c407c);
-	writel(0xffffffff, 0x020c4080);
-
 	/* Due to hardware limitation, on MX6Q we need to gate/ungate all PFDs
 	 * to make sure PFD is working right, otherwise, PFDs may
 	 * not output clock after reset, MX6DL and MX6SL have added 396M pfd
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
