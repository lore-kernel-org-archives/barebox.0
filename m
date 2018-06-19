Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVKDc-000309-4m
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 17:15:08 +0000
Received: by mail-lf0-x243.google.com with SMTP id x13-v6so616647lff.10
 for <barebox@lists.infradead.org>; Tue, 19 Jun 2018 10:14:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 19 Jun 2018 20:14:33 +0300
Message-Id: <20180619171433.24921-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dts: drop skeleton.dtsi
To: barebox@lists.infradead.org

Based on feedback from Sascha:

    http://lists.infradead.org/pipermail/barebox/2018-April/032694.html
    "
    skeleton.dtsi should no longer be used
    "

Several reasons to remove skeleton.dtsi ares explained in
the linux commit 3ebee5a2e141 ("arm64: dts: kill skeleton.dtsi").

Unit number is added to the /memory nodes to fix this dtc warning:

  Warning (unit_address_vs_reg): /memory: node has a reg or ranges
  property, but no unit name

Also this commit adds #address-cells and #size-cells definitions
to board and SoC dts file to avoid dtc warning, e.g.

  Warning (avoid_default_addr_size): /memory@0: Relying on default
  #address-cells value

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/dlink-dir-320.dts |  7 ++++---
 arch/mips/dts/img-ci20.dts      |  2 +-
 arch/mips/dts/jz4755.dtsi       |  5 +++--
 arch/mips/dts/jz4780.dtsi       |  5 +++--
 arch/mips/dts/loongson-ls1b.dts |  2 +-
 arch/mips/dts/ls1b.dtsi         |  5 +++--
 arch/mips/dts/qemu-malta.dts    |  7 ++++---
 arch/mips/dts/rzx50.dts         |  2 +-
 arch/mips/dts/skeleton.dtsi     | 13 -------------
 9 files changed, 20 insertions(+), 28 deletions(-)

diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
index b961c9dca3..e21700637f 100644
--- a/arch/mips/dts/dlink-dir-320.dts
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -1,12 +1,13 @@
 /dts-v1/;
 
-#include "skeleton.dtsi"
-
 / {
 	model = "D-Link DIR-320";
 	compatible = "dlink,dir320";
 
-	memory {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 {
 		reg = <0x00000000 0x2000000>;
 	};
 
diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
index da2a5bf625..d985666020 100644
--- a/arch/mips/dts/img-ci20.dts
+++ b/arch/mips/dts/img-ci20.dts
@@ -24,7 +24,7 @@
 	model = "MIPS Creator CI20";
 	compatible = "img,ci20";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x10000000>;
 	};
diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
index 137156df7e..5d929c5d83 100644
--- a/arch/mips/dts/jz4755.dtsi
+++ b/arch/mips/dts/jz4755.dtsi
@@ -1,6 +1,7 @@
-#include "skeleton.dtsi"
-
 / {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	soc {
 		compatible = "simple-bus";
 		model = "Ingenic JZ4755";
diff --git a/arch/mips/dts/jz4780.dtsi b/arch/mips/dts/jz4780.dtsi
index 9f0de5d1ae..fbffe814bb 100644
--- a/arch/mips/dts/jz4780.dtsi
+++ b/arch/mips/dts/jz4780.dtsi
@@ -1,6 +1,7 @@
-#include "skeleton.dtsi"
-
 / {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	soc {
 		model = "Ingenic JZ4780";
 		#address-cells = <1>;
diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1b.dts
index b81a951dc7..39e44eba35 100644
--- a/arch/mips/dts/loongson-ls1b.dts
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -6,7 +6,7 @@
 	model = "Loongson Tech LS1B Demo Board";
 	compatible = "loongson,ls1b";
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x4000000>;
 	};
 };
diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
index af7119f1d0..cb85814af4 100644
--- a/arch/mips/dts/ls1b.dtsi
+++ b/arch/mips/dts/ls1b.dtsi
@@ -1,6 +1,7 @@
-#include "skeleton.dtsi"
-
 / {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 9b0c594e87..0311baed41 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -1,11 +1,12 @@
 /dts-v1/;
 
-/include/ "skeleton.dtsi"
-
 / {
 	model = "qemu malta";
 	compatible = "qemu,malta";
 
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	chosen {
 		environment@0 {
 			compatible = "barebox,environment";
@@ -13,7 +14,7 @@
 		};
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x10000000>;
 	};
 
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 7ec3352666..8d4f92c98a 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -6,7 +6,7 @@
 	model = "Ritmix RZX-50";
 	compatible = "ritmix,rzx50";
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x4000000>;
 	};
 
diff --git a/arch/mips/dts/skeleton.dtsi b/arch/mips/dts/skeleton.dtsi
deleted file mode 100644
index b41d241de2..0000000000
--- a/arch/mips/dts/skeleton.dtsi
+++ /dev/null
@@ -1,13 +0,0 @@
-/*
- * Skeleton device tree; the bare minimum needed to boot; just include and
- * add a compatible value.  The bootloader will typically populate the memory
- * node.
- */
-
-/ {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	chosen { };
-	aliases { };
-	memory { device_type = "memory"; reg = <0 0>; };
-};
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
