Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qS-6K
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:50 +0200
Message-Id: <20200618091102.30150-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/15] ARM: dts: align all applicable memory nodes with spec
 and convention
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The spec[1] says that top level memory nodes `shall have device_type =
"memory"'. Since 8226f7f9 ("of: base: parse all available memory nodes"),
we parse only nodes with device_type = "memory", so we should add the
device_type property where ever it's missing. When the nodes were first
added, this wasn't an issue because the skeleton.dtsi defined a memory
skeleton with correct device_type, but this was removed upstream and
imported into barebox along with 1dc748b3 ("dts: update to v5.1-rc1").

Upstream device trees with a memory node were adapted to have
device_type = "memory" in-line. This wasn't the case for nodes defined
only within barebox. Rectify this now and rename the nodes to feature a
unit name as well to be aligned with the upstream trend.

[1]: https://github.com/devicetree-org/devicetree-specification/releases/download/v0.3/devicetree-specification-v0.3.pdf

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/am335x-afi-gf.dts         | 2 +-
 arch/arm/dts/am35xx-pfc-750_820x.dts   | 2 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts | 3 ++-
 arch/arm/dts/imx6dl-eltec-hipercam.dts | 3 ++-
 arch/arm/dts/imx6dl-mba6x.dts          | 3 ++-
 arch/arm/dts/imx6q-guf-santaro.dts     | 3 ++-
 arch/arm/dts/imx6q-mba6x.dts           | 3 ++-
 arch/arm/dts/imx6q-var-som.dtsi        | 3 ++-
 arch/arm/dts/imx6qdl-udoo.dtsi         | 3 ++-
 arch/arm/dts/imx7d-phyboard-zeta.dts   | 4 ++--
 arch/arm/dts/imx7d-phycore-som.dtsi    | 5 +++--
 arch/arm/dts/imx7d-sdb.dts             | 2 +-
 arch/arm/dts/module-mb7707.dts         | 3 ++-
 arch/arm/dts/rk3288-phycore-som.dts    | 3 ++-
 arch/arm/dts/virt2real.dts             | 2 +-
 15 files changed, 27 insertions(+), 17 deletions(-)

diff --git a/arch/arm/dts/am335x-afi-gf.dts b/arch/arm/dts/am335x-afi-gf.dts
index 961fe2e241bc..cba8cbc8d6b7 100644
--- a/arch/arm/dts/am335x-afi-gf.dts
+++ b/arch/arm/dts/am335x-afi-gf.dts
@@ -29,7 +29,7 @@
 		};
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x10000000>; /* 128 MB */
 	};
diff --git a/arch/arm/dts/am35xx-pfc-750_820x.dts b/arch/arm/dts/am35xx-pfc-750_820x.dts
index 707778dfac5a..55c883944b85 100644
--- a/arch/arm/dts/am35xx-pfc-750_820x.dts
+++ b/arch/arm/dts/am35xx-pfc-750_820x.dts
@@ -20,7 +20,7 @@
 		stdout-path = &uart3;
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x10000000>; /* 256 MB */
 	};
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 23e6ea416534..fb62fe2c7295 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -35,7 +35,8 @@
 		};
 	};
 
-	memory {
+	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0x20000000>;
 	};
 
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 41af22983536..ce2af4051c49 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -7,7 +7,8 @@
 	model = "ELTEC HiPerCam";
 	compatible = "eltec,hipercam-rev01", "fsl,imx6dl";
 
-	memory {
+	memory@10000000 {
+		device_type = "memory";
 		reg = <0x10000000 0x10000000>;
 	};
 
diff --git a/arch/arm/dts/imx6dl-mba6x.dts b/arch/arm/dts/imx6dl-mba6x.dts
index cdb0334260b9..dddc3d384ccc 100644
--- a/arch/arm/dts/imx6dl-mba6x.dts
+++ b/arch/arm/dts/imx6dl-mba6x.dts
@@ -21,7 +21,8 @@
 		stdout-path = &uart2;
 	};
 
-	memory {
+	memory@10000000 {
+		device_type = "memory";
 		reg = <0x10000000 0x20000000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 0fb05d05dc45..a9153481717b 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -20,7 +20,8 @@
 	model = "Garz+Fricke i.MX6q Santaro";
 	compatible = "guf,imx6q-santaro", "fsl,imx6q";
 
-	memory {
+	memory@10000000 {
+		device_type = "memory";
 		reg = <0x10000000 0x40000000>;
 	};
 
diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
index 9391c1d6fefc..64635b958213 100644
--- a/arch/arm/dts/imx6q-mba6x.dts
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -21,7 +21,8 @@
 		stdout-path = &uart2;
 	};
 
-	memory {
+	memory@10000000 {
+		device_type = "memory";
 		reg = <0x10000000 0x40000000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-var-som.dtsi b/arch/arm/dts/imx6q-var-som.dtsi
index 63a17fc66083..7dbaa1e3d4b5 100644
--- a/arch/arm/dts/imx6q-var-som.dtsi
+++ b/arch/arm/dts/imx6q-var-som.dtsi
@@ -17,7 +17,8 @@
 	model = "Variscite i.MX6 Quad SOM";
 	compatible = "variscite,imx6q-som", "fsl,imx6q";
 
-	memory {
+	memory@10000000 {
+		device_type = "memory";
 		reg = <0x10000000 0x40000000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-udoo.dtsi b/arch/arm/dts/imx6qdl-udoo.dtsi
index ebc103858c64..bf47297badc5 100644
--- a/arch/arm/dts/imx6qdl-udoo.dtsi
+++ b/arch/arm/dts/imx6qdl-udoo.dtsi
@@ -22,7 +22,8 @@
 		stdout-path = &uart2;
 	};
 
-	memory {
+	memory@10000000 {
+		device_type = "memory";
 		reg = <0x10000000 0x40000000>;
 	};
 
diff --git a/arch/arm/dts/imx7d-phyboard-zeta.dts b/arch/arm/dts/imx7d-phyboard-zeta.dts
index fbd0da238346..a34f12f616f2 100644
--- a/arch/arm/dts/imx7d-phyboard-zeta.dts
+++ b/arch/arm/dts/imx7d-phyboard-zeta.dts
@@ -21,7 +21,7 @@
 		};
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
@@ -139,4 +139,4 @@
 
 &uart2 {
 	status = "okay";
-};
\ No newline at end of file
+};
diff --git a/arch/arm/dts/imx7d-phycore-som.dtsi b/arch/arm/dts/imx7d-phycore-som.dtsi
index 622261bd1e3b..e892a54bdde0 100644
--- a/arch/arm/dts/imx7d-phycore-som.dtsi
+++ b/arch/arm/dts/imx7d-phycore-som.dtsi
@@ -13,7 +13,8 @@
 	model = "Phytec i.MX7D phyCORE";
 	compatible = "phytec,imx7d-phycore-som", "fsl,imx7d";
 
-	memory {
+	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x80000000>;
 	};
 };
@@ -269,4 +270,4 @@
 	tuning-step = <2>;
 	non-removable;
 	status = "disabled";
-};
\ No newline at end of file
+};
diff --git a/arch/arm/dts/imx7d-sdb.dts b/arch/arm/dts/imx7d-sdb.dts
index 16bfabe9b358..7beb065920b3 100644
--- a/arch/arm/dts/imx7d-sdb.dts
+++ b/arch/arm/dts/imx7d-sdb.dts
@@ -14,7 +14,7 @@
 		stdout-path = &uart1;
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
diff --git a/arch/arm/dts/module-mb7707.dts b/arch/arm/dts/module-mb7707.dts
index 94a3373fc15b..9a0f74997dba 100644
--- a/arch/arm/dts/module-mb7707.dts
+++ b/arch/arm/dts/module-mb7707.dts
@@ -6,7 +6,8 @@
 	model = "Module MB 77.07";
 	compatible = "module,mb7707";
 
-	memory {
+	memory@40000000 {
+		device_type = "memory";
 		reg = <0x40000000 0x8000000>;
 	};
 };
diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
index 65c53895c444..67073b2d83d4 100644
--- a/arch/arm/dts/rk3288-phycore-som.dts
+++ b/arch/arm/dts/rk3288-phycore-som.dts
@@ -20,7 +20,8 @@
 	model = "phycore-rk3288";
 	compatible = "phytec,rk3288-phycore-som", "rockchip,rk3288";
 
-	memory {
+	memory@0 {
+		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
 
diff --git a/arch/arm/dts/virt2real.dts b/arch/arm/dts/virt2real.dts
index 8f8c65ba7a74..3b543b6e93a8 100644
--- a/arch/arm/dts/virt2real.dts
+++ b/arch/arm/dts/virt2real.dts
@@ -5,7 +5,7 @@
 / {
 	model = "virt2real";
 
-	memory {
+	memory@82000000 {
 		device_type = "memory";
 		reg = <0x82000000 0x01000000>;
 	};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
