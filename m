Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000ck-HZ
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:00 +0100
Message-Id: <1385484367-15366-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/17] ARM: beaglebone: Add memory to devicetrees
To: barebox@lists.infradead.org

barebox needs it to initialize the memory. While at it, give the
beabglebone black another name than the original beaglebone has.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am335x-bone-common.dtsi |  3 ---
 arch/arm/dts/am335x-bone.dts         | 10 ++++++++++
 arch/arm/dts/am335x-boneblack.dts    | 10 ++++++++++
 3 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index e3f27ec..1ecf0b3 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -7,9 +7,6 @@
  */
 
 / {
-	model = "TI AM335x BeagleBone";
-	compatible = "ti,am335x-bone", "ti,am33xx";
-
 	cpus {
 		cpu@0 {
 			cpu0-supply = <&dcdc2_reg>;
diff --git a/arch/arm/dts/am335x-bone.dts b/arch/arm/dts/am335x-bone.dts
index 94ee427..a2e62a3 100644
--- a/arch/arm/dts/am335x-bone.dts
+++ b/arch/arm/dts/am335x-bone.dts
@@ -10,6 +10,16 @@
 #include "am33xx.dtsi"
 #include "am335x-bone-common.dtsi"
 
+/ {
+	model = "TI AM335x BeagleBone";
+	compatible = "ti,am335x-bone", "ti,am33xx";
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>; /* 256 MB */
+	};
+};
+
 &ldo3_reg {
 	regulator-min-microvolt = <1800000>;
 	regulator-max-microvolt = <3300000>;
diff --git a/arch/arm/dts/am335x-boneblack.dts b/arch/arm/dts/am335x-boneblack.dts
index 6b71ad9..f79a6bc 100644
--- a/arch/arm/dts/am335x-boneblack.dts
+++ b/arch/arm/dts/am335x-boneblack.dts
@@ -10,6 +10,16 @@
 #include "am33xx.dtsi"
 #include "am335x-bone-common.dtsi"
 
+/ {
+	model = "TI AM335x BeagleBone black";
+	compatible = "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>; /* 512 MB */
+	};
+};
+
 &ldo3_reg {
 	regulator-min-microvolt = <1800000>;
 	regulator-max-microvolt = <1800000>;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
