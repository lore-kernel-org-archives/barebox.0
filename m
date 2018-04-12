Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wn-Uq
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:02 +0200
Message-Id: <20180412073017.6750-2-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/16] ARM: i.MX: phytec-som-imx: Remove kernel and oftree
 partiton in NAND
To: Barebox List <barebox@lists.infradead.org>
Cc: Christian Hemp <christian.hemp@gmail.com>

From: Christian Hemp <christian.hemp@gmail.com>

We store kernel and oftree in static UBI volumes now. No need
for separate partitions any more.

Signed-off-by: Christian Hemp <christian.hemp@gmail.com>
Acked-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 .../boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand  |  6 ++++--
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi                       | 12 +-----------
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi                      | 12 +-----------
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi                 | 12 +-----------
 4 files changed, 7 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
index a23aa21cc7..e4eded530d 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
@@ -1,5 +1,7 @@
 #!/bin/sh
 
-global.bootm.image="/dev/nand0.kernel.bb"
-global.bootm.oftree="/dev/nand0.oftree.bb"
+[ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
+
+global.bootm.image="/dev/nand0.root.ubi.kernel"
+global.bootm.oftree="/dev/nand0.root.ubi.oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index a6ea7b5cce..63dd966b87 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -145,18 +145,8 @@
 	};
 
 	partition@420000 {
-		label = "oftree";
-		reg = <0x420000 0x20000>;
-	};
-
-	partition@440000 {
-		label = "kernel";
-		reg = <0x440000 0x800000>;
-	};
-
-	partition@C40000 {
 		label = "root";
-		reg = <0xC40000 0x0>;
+		reg = <0x420000 0x0>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 9a8c7024a3..862d856d00 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -115,18 +115,8 @@
 	};
 
 	partition@500000 {
-		label = "oftree";
-		reg = <0x500000 0x100000>;
-	};
-
-	partition@600000 {
-		label = "kernel";
-		reg = <0x600000 0x800000>;
-	};
-
-	partition@e00000 {
 		label = "root";
-		reg = <0xe00000 0x0>;
+		reg = <0x500000 0x0>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index b10530cbcf..3a5b0dbf24 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -112,18 +112,8 @@
 	};
 
 	partition@500000 {
-		label = "oftree";
-		reg = <0x500000 0x100000>;
-	};
-
-	partition@600000 {
-		label = "kernel";
-		reg = <0x600000 0x800000>;
-	};
-
-	partition@e00000 {
 		label = "root";
-		reg = <0xe00000 0x0>;
+		reg = <0x500000 0x0>;
 	};
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
