Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from chandra.tablix.org ([2a00:ee2:100:3a01::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3a4-0002ud-0r
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 08:47:06 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Wed, 26 Jun 2019 10:46:49 +0200
Message-Id: <20190626084649.3385-1-tomaz.solc@tablix.org>
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
Subject: [PATCH] ARM: rpi: use sdhost for eMMC access on CM3.
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

This commit removes the fix for the upstream devicetree where eMMC was remapped
to the sdhci interface. This is no longer needed since sdhost driver is now
functional in barebox. A similar change was done to the R.Pi 3 devicetree in
9036d1db.

In fact, this remap prevented CM3 from booting if barebox was compiled with
CONFIG_MCI_BCM283X_SDHOST (in rpi_defconfig since b093468c). In that case both
sdhost and sdhci drivers were active and tried to set their corresponsing alt
functions for the same set of GPIOs at the same time.

Signed-off-by: Tomaz Solc <tomaz.solc@tablix.org>
---
 arch/arm/dts/bcm2837-rpi-cm3.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts b/arch/arm/dts/bcm2837-rpi-cm3.dts
index cfbffe175..01c1f9a67 100644
--- a/arch/arm/dts/bcm2837-rpi-cm3.dts
+++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
@@ -9,10 +9,3 @@
 		reg = <0x0 0x0>;
 	};
 };
-
-&sdhci {
-	pinctrl-0 = <&emmc_gpio48>;
-	no-sd;
-	non-removable;
-	status = "okay";
-};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
