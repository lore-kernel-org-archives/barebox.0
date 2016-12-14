Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cH93z-0004Pc-T2
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 12:53:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1cH93e-0008G0-Gm
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 13:53:18 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <mgr@pengutronix.de>) id 1cH93e-0000ck-9I
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 13:53:18 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 14 Dec 2016 13:53:16 +0100
Message-Id: <20161214125316.2350-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX53 Vincell: change dialog compatible to proper
 vendor prefix
To: barebox@lists.infradead.org

The compatible vendor prefix for dialog pmic is dlg. We fix it in
the devicetrees using the wrong one.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/dts/imx53-guf-vincell-lt.dts | 2 +-
 arch/arm/dts/imx53-guf-vincell.dts    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index 67a4133..2b1b54a 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -152,7 +152,7 @@
 	};
 
 	pmic: dialog@48 { /* DA9053-3HHA1 PMIC */
-		compatible = "dialog,da9053-aa", "dialog,da9052";
+		compatible = "dlg,da9053-aa", "dlg,da9052";
 		reg = <0x48>;
 		interrupt-parent = <&gpio7>;
 		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
index 2f0153e..f743f17 100644
--- a/arch/arm/dts/imx53-guf-vincell.dts
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -102,7 +102,7 @@
 	status = "okay";
 
 	pmic: dialog@48 { /* DA9053-3HHA1 PMIC */
-		compatible = "dialog,da9053-aa", "dialog,da9052";
+		compatible = "dlg,da9053-aa", "dlg,da9052";
 		reg = <0x48>;
 		interrupt-parent = <&gpio7>;
 		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
