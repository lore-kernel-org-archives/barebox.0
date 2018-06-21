Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVxes-0007DD-HP
 for barebox@lists.infradead.org; Thu, 21 Jun 2018 11:21:51 +0000
Received: by mail-lf0-x242.google.com with SMTP id n24-v6so4229034lfh.3
 for <barebox@lists.infradead.org>; Thu, 21 Jun 2018 04:21:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 21 Jun 2018 14:21:20 +0300
Message-Id: <20180621112120.10467-3-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/2] MIPS: dts: fix dtc unit_address_vs_reg warning
To: barebox@lists.infradead.org

Unit number is added to the /memory nodes to fix this dtc warning:

Warning (unit_address_vs_reg): /memory: node has a reg or ranges
property, but no unit name

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/dlink-dir-320.dts | 2 +-
 arch/mips/dts/img-ci20.dts      | 2 +-
 arch/mips/dts/loongson-ls1b.dts | 2 +-
 arch/mips/dts/qemu-malta.dts    | 2 +-
 arch/mips/dts/rzx50.dts         | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
index 966c9b362d..d19c3087d0 100644
--- a/arch/mips/dts/dlink-dir-320.dts
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -7,7 +7,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	memory {
+	memory@0 {
 		device_type = "memory";
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
diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1b.dts
index 61e9a2d2aa..6b53311982 100644
--- a/arch/mips/dts/loongson-ls1b.dts
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -6,7 +6,7 @@
 	model = "Loongson Tech LS1B Demo Board";
 	compatible = "loongson,ls1b";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x4000000>;
 	};
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 546b129f85..9772d49eb3 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -14,7 +14,7 @@
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x10000000>;
 	};
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 2896cbae82..bd3631f7c4 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -6,7 +6,7 @@
 	model = "Ritmix RZX-50";
 	compatible = "ritmix,rzx50";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x4000000>;
 	};
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
