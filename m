Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp26.mail.ru ([94.100.176.179])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZePZ-0007zq-Rs
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 10:14:35 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 25 Oct 2013 14:11:52 +0400
Message-Id: <1382695912-27795-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: i.MX5x: Make IIM driver kernel-compatible
To: barebox@lists.infradead.org

Since kernel uses "imx27-iim" compatible string in i.MX5x DTS templates,
do IIM driver compatible.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx53.dtsi | 2 +-
 arch/arm/mach-imx/iim.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 5c8608b..09c5772 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -962,7 +962,7 @@
 			ranges;
 
 			iim: iim@63f98000 {
-				compatible = "fsl,imx53-iim", "fsl,imx-iim";
+				compatible = "fsl,imx53-iim", "fsl,imx27-iim";
 				reg = <0x63f98000 0x4000>;
 				interrupts = <69>;
 				clocks = <&clks 107>;
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 956811c..938c3f3 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -296,7 +296,7 @@ static int imx_iim_probe(struct device_d *dev)
 
 static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
 	{
-		.compatible = "fsl,imx-iim",
+		.compatible = "fsl,imx27-iim",
 	}, {
 		/* sentinel */
 	}
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
