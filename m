Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpeEN-0001Fq-FD
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 17:03:02 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 19 Mar 2017 18:02:10 +0100
Message-Id: <1489942930-16229-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: dts: i.MX7 WaRP7: remove wdog1 pinctrl workaround
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The wdog1 pinctrl got fixed with linux upstream commit 213e51ca8df1 ("ARM:
dts: imx7: Add "LPSR" to LPSR iomux pin names").
Remove the old workaround, since it triggers a build error.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/dts/imx7s-warp.dts | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
index a59823d..c2db0d8 100644
--- a/arch/arm/dts/imx7s-warp.dts
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -43,20 +43,3 @@
 		};
 	};
 };
-
-/*
-/* The watchdog pinctrl is attached to the wrong iomux controller in
- * the upstream dts file. This can be removed once we pull in the
- * corresponding fix from the upstream dts files.
- */
-&wdog1 {
-	pinctrl-0 = <&pinctrl_wdog_lpsr>;
-};
-
-&iomuxc_lpsr {
-	pinctrl_wdog_lpsr: wdoggrp {
-		fsl,pins = <
-			MX7D_PAD_GPIO1_IO00__WDOD1_WDOG_B       0x74
-		>;
-	};
-};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
