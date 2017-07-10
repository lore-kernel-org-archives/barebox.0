Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUaln-0002Mi-VE
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 15:38:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dUalS-0007oD-7p
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 17:38:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 17:38:21 +0200
Message-Id: <20170710153822.15379-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: imx6: move MX6UL enet setup out of CPU string setting
To: barebox@lists.infradead.org

This is not a good place to do this ENET setup. Call the function like all
the other setup functions and bail out if the SoC is not a i.MX6UL/ULL.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 5afbf6b30f18..7df61b94ec85 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -126,6 +126,9 @@ void imx6ul_enet_clk_init(void)
 	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
 	uint32_t val;
 
+	if (!cpu_mx6_is_mx6ul() && !cpu_mx6_is_mx6ull())
+		return;
+
 	val = readl(gprbase + IOMUXC_GPR1);
 	val |= (0x3 << 17);
 	writel(val, gprbase + IOMUXC_GPR1);
@@ -169,7 +172,6 @@ int imx6_init(void)
 		break;
 	case IMX6_CPUTYPE_IMX6UL:
 		cputypestr = "i.MX6 UltraLite";
-		imx6ul_enet_clk_init();
 		break;
 	case IMX6_CPUTYPE_IMX6ULL:
 		cputypestr = "i.MX6 ULL";
@@ -182,6 +184,7 @@ int imx6_init(void)
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
 
 	imx6_setup_ipu_qos();
+	imx6ul_enet_clk_init();
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
