Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDJT-0001lC-3U
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 08:15:17 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  1 Oct 2019 10:15:09 +0200
Message-Id: <20191001081509.28051-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] MIPS: net: ag71xx/ar9331: partially sync network support
 with upstream
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Ethernet support for ar9331 is upstream now. So, drop every thing what
is provided by upstream devicetree and rename compatible in the driver.

barebox network driver will need more work to be upstream compliant. For
example we should not request or touch the gmac register directly. Since
currently it is not clear how this should be implemented, patch the
upstream dts with reg-names = "ge0", "gmac".

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts |  6 +-----
 arch/mips/dts/ar9331.dtsi                      | 15 ++++++---------
 arch/mips/dts/tplink-mr3020.dts                |  2 +-
 drivers/net/ag71xx.c                           |  2 +-
 4 files changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 315589aab9..cbaf5ab39e 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -15,7 +15,7 @@
 		art@0 {
 			compatible = "qca,art-ar9331", "qca,art";
 			device-path = &spiflash_art;
-			barebox,provide-mac-address = <&mac0>;
+			barebox,provide-mac-address = <&eth0>;
 		};
 	};
 
@@ -48,7 +48,3 @@
 		reg = <0x7f0000 0x10000>;
 	};
 };
-
-&mac0 {
-	status = "okay";
-};
diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 42baae1e89..72f029754e 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -5,14 +5,11 @@
 			reg = <0x18060008 0x8>;
 			clocks = <&pll ATH79_CLK_CPU>;
 		};
-
-		mac0: mac@19000000 {
-			compatible = "qca,ar9331-ge0";
-			reg = <0x18070000 0x00000100>,
-			      <0x19000000 0x01000000>;
-			reg-names = "gmac", "ge0";
-			phy-mode = "mii";
-			status = "disabled";
-               };
 	};
 };
+
+&eth0 {
+	reg = <0x19000000 0x200>,
+	      <0x18070000 0x00000100>;
+	reg-names = "ge0", "gmac";
+};
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index e30eae1578..c6ae154f4f 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -28,6 +28,6 @@
 	};
 };
 
-&mac0 {
+&eth0 {
 	status = "okay";
 };
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 0565c90490..70aaa60f1a 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -667,7 +667,7 @@ static void ag71xx_remove(struct device_d *dev)
 }
 
 static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
-	{ .compatible = "qca,ar9331-ge0", .data = &ag71xx_cfg_ar9331_ge0, },
+	{ .compatible = "qca,ar9330-eth", .data = &ag71xx_cfg_ar9331_ge0, },
 	{ .compatible = "qca,ar9344-gmac0", .data = &ag71xx_cfg_ar9344_gmac0, },
 	{ /* sentinel */ }
 };
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
