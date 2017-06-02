Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGmTO-0005gO-T7
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 13:18:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1dGmT0-0004rR-S3
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:18:14 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1dGmT0-0005hE-Kd
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 15:18:14 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri,  2 Jun 2017 15:18:06 +0200
Message-Id: <20170602131808.18781-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20170602131808.18781-1-m.grzeschik@pengutronix.de>
References: <20170602131808.18781-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 1/3] ARM: i.MX: setup ENET_TX_CLK_DIR in imx6_init for
 every imx6ul
To: barebox@lists.infradead.org

We generically enable the output of ENET_TX_CLK.
It will be output if ENET_REF_CLK is selected.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 7b3fc1da27..5afbf6b30f 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -121,6 +121,16 @@ void imx6_setup_ipu_qos(void)
 	}
 }
 
+void imx6ul_enet_clk_init(void)
+{
+	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
+	uint32_t val;
+
+	val = readl(gprbase + IOMUXC_GPR1);
+	val |= (0x3 << 17);
+	writel(val, gprbase + IOMUXC_GPR1);
+}
+
 int imx6_init(void)
 {
 	const char *cputypestr;
@@ -159,6 +169,7 @@ int imx6_init(void)
 		break;
 	case IMX6_CPUTYPE_IMX6UL:
 		cputypestr = "i.MX6 UltraLite";
+		imx6ul_enet_clk_init();
 		break;
 	case IMX6_CPUTYPE_IMX6ULL:
 		cputypestr = "i.MX6 ULL";
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
