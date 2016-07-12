Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bMtN6-0000lh-Qv
 for barebox@lists.infradead.org; Tue, 12 Jul 2016 08:48:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 800AAA00389
 for <barebox@lists.infradead.org>; Tue, 12 Jul 2016 10:49:33 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 12 Jul 2016 10:48:07 +0200
Message-Id: <1468313287-40587-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] ARM: phytec-som-am335x: Remove kernel and oftree partiton in
 NAND
To: barebox@lists.infradead.org

We store kernel and oftree in static UBI volumes now. No need
for seperate partitions any more.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 .../phytec-som-am335x/defaultenv-physom-am335x/boot/nand     |  6 ++++--
 arch/arm/dts/am335x-phytec-phycard-som.dtsi                  | 12 +-----------
 arch/arm/dts/am335x-phytec-phycore-som.dtsi                  | 12 +-----------
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi                  | 12 +-----------
 4 files changed, 7 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
index b9b1bc6..ece44b7 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
@@ -1,6 +1,8 @@
 #!/bin/sh
 
-global.bootm.image="/dev/nand0.kernel.bb"
-global.bootm.oftree="/dev/nand0.oftree.bb"
+[ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
+
+global.bootm.image="/dev/nand0.root.ubi.kernel"
+global.bootm.oftree="/dev/nand0.root.ubi.oftree"
 
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rw rootfstype=ubifs"
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index 3dd9cad..d608f63 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -216,22 +216,12 @@
 		};
 
 		partition@1C0000 {
-			label = "oftree";
-			reg = <0x1C0000 0x40000>;
-		};
-
-		partition@200000 {
-			label = "kernel";
-			reg = <0x200000 0x800000>;
-		};
-
-		partition@A00000 {
 			label = "root";
 			/*
 			 * Size 0x0 extends partition to
 			 * end of nand flash.
 			 */
-			reg = <0xA00000 0x0>;
+			reg = <0x1C0000 0x0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index 0fc3c96..0b8c454 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -300,22 +300,12 @@
 		};
 
 		partition@1C0000 {
-			label = "oftree";
-			reg = <0x1C0000 0x40000>;
-		};
-
-		partition@200000 {
-			label = "kernel";
-			reg = <0x200000 0x800000>;
-		};
-
-		partition@A00000 {
 			label = "root";
 			/*
 			 * Size 0x0 extends partition to
 			 * end of nand flash.
 			 */
-			reg = <0xA00000 0x0>;
+			reg = <0x1C0000 0x0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index db78cb1..5b8bb5d 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -314,22 +314,12 @@
 		};
 
 		partition@1C0000 {
-			label = "oftree";
-			reg = <0x1C0000 0x40000>;
-		};
-
-		partition@200000 {
-			label = "kernel";
-			reg = <0x200000 0x800000>;
-		};
-
-		partition@A00000 {
 			label = "root";
 			/*
 			 * Size 0x0 extends partition to
 			 * end of nand flash.
 			 */
-			reg = <0xA00000 0x0>;
+			reg = <0x1C0000 0x0>;
 		};
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
