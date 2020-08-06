Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3cDD-0008D0-Ji
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 09:29:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1k3cDB-0007wx-B9
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 11:29:21 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1k3cDB-0002Mp-2w
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 11:29:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu,  6 Aug 2020 11:29:19 +0200
Message-Id: <20200806092919.1892-3-m.felsch@pengutronix.de>
In-Reply-To: <20200806092919.1892-1-m.felsch@pengutronix.de>
References: <20200806092919.1892-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX: setup ENET_CLK_SEL in imx6_init for every
 imx6q/imx6d
To: barebox@lists.infradead.org

Setup the ENET TX reference clk to get it from the internal clock from
anatop. This is the default value for newer imx6 processors like: 6sx,
6ul, 6ull. So it should be safe to set it as default for imx6q/d too.

It will be output on the pad if ENET_REF_CLK is muxed which can be used
to clock a phy.

While on it replace the current 'magic' value by the new introduced
definition.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 6a9ea23c71..f325e698fa 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -160,16 +160,28 @@ static void imx6_setup_ipu_qos(void)
 	}
 }
 
-static void imx6ul_enet_clk_init(void)
+static void imx6_enet_clk_init(void)
 {
-	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
-	uint32_t val;
+	void __iomem *gprbase;
+	uint32_t val, bitmask;
 
-	if (!cpu_mx6_is_mx6ul() && !cpu_mx6_is_mx6ull())
+	switch (imx6_cpu_type()) {
+	case IMX6_CPUTYPE_IMX6D:
+	case IMX6_CPUTYPE_IMX6Q:
+		gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+		bitmask = IMX6Q_GPR1_ENET_CLK_SEL_ANATOP;
+		break;
+	case IMX6_CPUTYPE_IMX6UL:
+	case IMX6_CPUTYPE_IMX6ULL:
+		gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
+		bitmask = IMX6UL_GPR1_ENET_CLK_OUTPUT;
+		break;
+	default:
 		return;
+	}
 
 	val = readl(gprbase + IOMUXC_GPR1);
-	val |= (0x3 << 17);
+	val |= bitmask;
 	writel(val, gprbase + IOMUXC_GPR1);
 }
 
@@ -264,7 +276,7 @@ int imx6_init(void)
 	pr_info("%s unique ID: %llx\n", cputypestr, mx6_uid);
 
 	imx6_setup_ipu_qos();
-	imx6ul_enet_clk_init();
+	imx6_enet_clk_init();
 
 	pfuze_register_init_callback(imx6_register_poweroff_init);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
