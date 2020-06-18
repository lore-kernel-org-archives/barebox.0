Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZn-0001x8-Mo
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:49 +0200
Message-Id: <20200618091102.30150-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/15] ARM: dts: fix now duplicate memory nodes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the upstream migration to memory@BASE_ADDRESS naming scheme in the
device tree of some SoC families, we now have multiple overlapping memory
nodes in some of the barebox device trees. Rename the defunct overrides, so
they once again override the upstream nodes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/am335x-bone.dts      | 7 +++----
 arch/arm/dts/am335x-boneblack.dts | 7 +++----
 arch/arm/dts/imx53-tqma53.dtsi    | 6 +++---
 arch/arm/dts/imx6dl-wandboard.dts | 6 +++---
 arch/arm/dts/imx6q-wandboard.dts  | 6 +++---
 arch/arm/dts/tegra30-beaver.dts   | 8 ++++----
 6 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/arch/arm/dts/am335x-bone.dts b/arch/arm/dts/am335x-bone.dts
index a2e62a3b1c40..df044a57382b 100644
--- a/arch/arm/dts/am335x-bone.dts
+++ b/arch/arm/dts/am335x-bone.dts
@@ -13,11 +13,10 @@
 / {
 	model = "TI AM335x BeagleBone";
 	compatible = "ti,am335x-bone", "ti,am33xx";
+};
 
-	memory {
-		device_type = "memory";
-		reg = <0x80000000 0x10000000>; /* 256 MB */
-	};
+&{/memory@80000000} {
+	reg = <0x80000000 0x10000000>; /* 256 MB */
 };
 
 &ldo3_reg {
diff --git a/arch/arm/dts/am335x-boneblack.dts b/arch/arm/dts/am335x-boneblack.dts
index f79a6bc8a4ca..80d710b924cb 100644
--- a/arch/arm/dts/am335x-boneblack.dts
+++ b/arch/arm/dts/am335x-boneblack.dts
@@ -13,11 +13,10 @@
 / {
 	model = "TI AM335x BeagleBone black";
 	compatible = "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
+};
 
-	memory {
-		device_type = "memory";
-		reg = <0x80000000 0x20000000>; /* 512 MB */
-	};
+&{/memory@80000000} {
+	reg = <0x80000000 0x20000000>; /* 512 MB */
 };
 
 &ldo3_reg {
diff --git a/arch/arm/dts/imx53-tqma53.dtsi b/arch/arm/dts/imx53-tqma53.dtsi
index 860fb64df2b9..6efc0f1003a0 100644
--- a/arch/arm/dts/imx53-tqma53.dtsi
+++ b/arch/arm/dts/imx53-tqma53.dtsi
@@ -18,10 +18,10 @@
 			status = "disabled";
 		};
 	};
+};
 
-	memory {
-		reg = <0x70000000 0x0>; /* Up to 1GiB */
-	};
+&{/memory@70000000} {
+	reg = <0x70000000 0x0>; /* Up to 1GiB */
 };
 
 &esdhc3 { /* EMMC */
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index 0a7a7182a596..c4695fb8d845 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -11,10 +11,10 @@
 			device-path = &environment_usdhc3;
 		};
 	};
+};
 
-	memory {
-		reg = <0x0 0x0>;
-	};
+&{/memory@10000000} {
+	reg = <0x10000000 0x0>;
 };
 
 &ocotp {
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index d96f0579615b..d182faf21718 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -11,10 +11,10 @@
 			device-path = &environment_usdhc3;
 		};
 	};
+};
 
-	memory {
-		reg = <0x0 0x0>;
-	};
+&{/memory@10000000} {
+	reg = <0x10000000 0x0>;
 };
 
 &ocotp {
diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index acbdd318b12a..7a9ced6cef0f 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -22,10 +22,6 @@
 		};
 	};
 
-	memory {
-		reg = <0x80000000 0x7ff00000>;
-	};
-
 	pcie-controller@00003000 {
 		status = "okay";
 		pex-clk-supply = <&sys_3v3_pexs_reg>;
@@ -936,3 +932,7 @@
 		clock-names = "pll_a", "pll_a_out0", "mclk";
 	};
 };
+
+&{/memory@80000000} {
+	reg = <0x80000000 0x7ff00000>;
+};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
