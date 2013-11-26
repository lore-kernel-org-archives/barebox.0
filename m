Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cl-Gs
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:02 +0100
Message-Id: <1385484367-15366-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] ARM: am335x Phytec phyCORE: Move partition descriptions
 to devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm051/env/init/mtdparts-nand | 11 -----
 arch/arm/boards/pcm051/env/init/mtdparts-nor  | 12 ------
 arch/arm/dts/am335x-phytec-phycore.dts        | 59 ++++++++++++++++++++++++++-
 3 files changed, 57 insertions(+), 25 deletions(-)
 delete mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/pcm051/env/init/mtdparts-nor

diff --git a/arch/arm/boards/pcm051/env/init/mtdparts-nand b/arch/arm/boards/pcm051/env/init/mtdparts-nand
deleted file mode 100644
index 12f0ffd..0000000
--- a/arch/arm/boards/pcm051/env/init/mtdparts-nand
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
-mtdparts="128k(nand0.xload),128k(nand0.xload_backup1),128k(nand0.xload_backup2),128k(nand0.xload_backup3),512k(nand0.barebox)ro,128k(nand0.bareboxenv),8M(nand0.kernel),-(nand0.root)"
-kernelname="omap2-nand.0"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/pcm051/env/init/mtdparts-nor b/arch/arm/boards/pcm051/env/init/mtdparts-nor
deleted file mode 100644
index 5c762ad..0000000
--- a/arch/arm/boards/pcm051/env/init/mtdparts-nor
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
-mtdparts="128k(m25p0.xload),512k(m25p0.barebox),128k(m25p0.bareboxenv),4M(m25p0.kernel),-(m25p0.root)"
-kernelname="spi_flash"
-
-mtdparts-add -d m25p0 -k ${kernelname} -p ${mtdparts}
-
diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x-phytec-phycore.dts
index 3888c67..8fbfae6 100644
--- a/arch/arm/dts/am335x-phytec-phycore.dts
+++ b/arch/arm/dts/am335x-phytec-phycore.dts
@@ -161,8 +161,23 @@
 		#size-cells = <1>;
 
 		partition@0 {
-			label = "barebox-environment";
-			reg = <0x80000 0x80000>;
+			label = "xload";
+			reg = <0x0 0x20000>;
+		};
+
+		partition@1 {
+			label = "barebox";
+			reg = <0x20000 0x80000>;
+		};
+
+		partition@2 {
+			label = "bareboxenv";
+			reg = <0xa0000 0x20000>;
+		};
+
+		partition@3 {
+			label = "kernel";
+			reg = <0xc0000 0x400000>;
 		};
 	};
 };
@@ -229,5 +244,45 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		elm_id = <&elm>;
+
+		partition@0 {
+			label = "xload";
+			reg = <0x0 0x20000>;
+		};
+
+		partition@1 {
+			label = "xload_backup1";
+			reg = <0x20000 0x20000>;
+		};
+
+		partition@2 {
+			label = "xload_backup2";
+			reg = <0x40000 0x20000>;
+		};
+
+		partition@3 {
+			label = "xload_backup3";
+			reg = <0x60000 0x20000>;
+		};
+
+		partition@4 {
+			label = "barebox";
+			reg = <0x80000 0x80000>;
+		};
+
+		partition@5 {
+			label = "bareboxenv";
+			reg = <0x100000 0x20000>;
+		};
+
+		partition@6 {
+			label = "kernel";
+			reg = <0x120000 0x800000>;
+		};
+
+		partition@7 {
+			label = "root";
+			reg = <0x920000 0x1f6e0000>;
+		};
 	};
 };
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
