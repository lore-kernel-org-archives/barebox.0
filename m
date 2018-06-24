Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDT1-000689-Qk
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:26:45 +0000
Received: by mail-pl0-x244.google.com with SMTP id o18-v6so5175354pll.12
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:26:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:26:18 -0700
Message-Id: <20180624222623.30564-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180624222623.30564-1-andrew.smirnov@gmail.com>
References: <20180624222623.30564-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] ARM: dts: rdu2: Remove obsolete 'pic' node in uart4
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of the code in this commit is:

 a) Obsolete and intended to work with a driver that has never been
    submitted upstream anywhere and is no longer used

 b) Superceeded by the DT code in Linux DT tree

Remove it all and rely on Linux DTS files to properly specify RAVE SP
MFD with a watchdog child node.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 67 ------------------------------
 1 file changed, 67 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 7ab569b78..6d9c38d7e 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -55,73 +55,6 @@
 	};
 };
 
-&uart4 {
-	pic {
-		compatible = "zii,pic-rdu2";
-		current-speed = <1000000>;
-		status = "okay";
-
-		main_eeprom {
-			compatible = "zii,pic-main-eeprom";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			status = "okay";
-
-			boot_source: boot-source@83 {
-				reg = <0x83 1>;
-			};
-			max_failed_boots: max-failed-boots@8E {
-				reg = <0x8E 2>;
-			};
-		};
-
-		dds_eeprom {
-			compatible = "zii,pic-dds-eeprom";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			status = "okay";
-		};
-
-		watchdog {
-			compatible = "zii,pic-watchdog";
-			status = "okay";
-		};
-
-		hwmon {
-			compatible = "zii,pic-hwmon";
-			sensors = "RMB_3V3_PMIC",
-				  "RMB_3V3_MCU",
-				  "RMB_5V_MAIN",
-				  "RMB_12V_MAIN",
-				  "RMB_28V_FIL",
-				  "RMB_28V_HOTSWAP",
-				  "DEB_1V8",
-				  "DEB_3V3",
-				  "DEB_28V_DEB",
-				  "DEB_28V_RDU",
-				  "TEMPERATURE",
-				  "TEMPERATURE_2",
-				  "RMB_28V_CURRENT";
-			status = "okay";
-		};
-
-		backlight {
-			compatible = "zii,pic-backlight";
-			status = "okay";
-		};
-
-		leds {
-			compatible = "zii,pic-leds";
-			status = "okay";
-		};
-
-		pwrbutton {
-			compatible = "zii,pic-pwrbutton";
-			status = "okay";
-		};
-	};
-};
-
 &ecspi1 {
 	nor_flash: flash@0 {
 		#address-cells = <1>;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
