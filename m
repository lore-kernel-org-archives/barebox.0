Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVxes-0007Cj-HS
 for barebox@lists.infradead.org; Thu, 21 Jun 2018 11:21:51 +0000
Received: by mail-lf0-x242.google.com with SMTP id y20-v6so4238816lfy.0
 for <barebox@lists.infradead.org>; Thu, 21 Jun 2018 04:21:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 21 Jun 2018 14:21:19 +0300
Message-Id: <20180621112120.10467-2-antonynpavlov@gmail.com>
In-Reply-To: <20180621112120.10467-1-antonynpavlov@gmail.com>
References: <20180621112120.10467-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/2] MIPS: dts: drop skeleton.dtsi
To: barebox@lists.infradead.org

Based on feedback from Sascha:

    http://lists.infradead.org/pipermail/barebox/2018-April/032694.html
    "
    skeleton.dtsi should no longer be used
    "

Several reasons to remove skeleton.dtsi are explained in
the linux commit 3ebee5a2e141 ("arm64: dts: kill skeleton.dtsi").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/dlink-dir-320.dts |  6 ++++--
 arch/mips/dts/jz4755.dtsi       |  5 +++--
 arch/mips/dts/jz4780.dtsi       |  5 +++--
 arch/mips/dts/loongson-ls1b.dts |  1 +
 arch/mips/dts/ls1b.dtsi         |  5 +++--
 arch/mips/dts/qemu-malta.dts    |  6 ++++--
 arch/mips/dts/rzx50.dts         |  1 +
 arch/mips/dts/skeleton.dtsi     | 13 -------------
 8 files changed, 19 insertions(+), 23 deletions(-)

diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
index b961c9dca3..966c9b362d 100644
--- a/arch/mips/dts/dlink-dir-320.dts
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -1,12 +1,14 @@
 /dts-v1/;
 
-#include "skeleton.dtsi"
-
 / {
 	model = "D-Link DIR-320";
 	compatible = "dlink,dir320";
 
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x2000000>;
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
index b81a951dc7..61e9a2d2aa 100644
--- a/arch/mips/dts/loongson-ls1b.dts
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -7,6 +7,7 @@
 	compatible = "loongson,ls1b";
 
 	memory {
+		device_type = "memory";
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
index 9b0c594e87..546b129f85 100644
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
@@ -14,6 +15,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x10000000>;
 	};
 
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 7ec3352666..2896cbae82 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -7,6 +7,7 @@
 	compatible = "ritmix,rzx50";
 
 	memory {
+		device_type = "memory";
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
