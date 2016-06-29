Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bICLJ-000556-Fi
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 10:03:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BCD67A00288
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 12:04:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Jun 2016 12:01:08 +0200
Message-Id: <1467194468-31049-4-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
References: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 4/4] ARM: phytec-som-am335x: Add backup partition for barebox
To: barebox@lists.infradead.org

Add a redundant barebox partition to improve nand safety at
least a little bit.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c   |  1 +
 arch/arm/dts/am335x-phytec-phycard-som.dtsi | 23 ++++++++++++++++-------
 arch/arm/dts/am335x-phytec-phycore-som.dtsi | 19 ++++++++++++-------
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 23 ++++++++++++++++-------
 4 files changed, 45 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index d5c27e2..7f62453 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -62,6 +62,7 @@ static char *xloadslots[] = {
 
 static char *nandslots[] = {
 	"/dev/nand0.barebox.bb",
+	"/dev/nand0.barebox_backup.bb",
 };
 
 static int physom_devices_init(void)
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index f052f0c..3dd9cad 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -206,23 +206,32 @@
 		};
 
 		partition@100000 {
+			label = "barebox_backup";
+			reg = <0x100000 0x80000>;
+		};
+
+		partition@180000 {
 			label = "bareboxenv";
-			reg = <0x100000 0x40000>;
+			reg = <0x180000 0x40000>;
 		};
 
-		partition@140000 {
+		partition@1C0000 {
 			label = "oftree";
-			reg = <0x140000 0x40000>;
+			reg = <0x1C0000 0x40000>;
 		};
 
-		partition@180000 {
+		partition@200000 {
 			label = "kernel";
-			reg = <0x180000 0x800000>;
+			reg = <0x200000 0x800000>;
 		};
 
-		partition@980000 {
+		partition@A00000 {
 			label = "root";
-			reg = <0x980000 0x0>;
+			/*
+			 * Size 0x0 extends partition to
+			 * end of nand flash.
+			 */
+			reg = <0xA00000 0x0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index e48d545..0fc3c96 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -290,27 +290,32 @@
 		};
 
 		partition@100000 {
+			label = "barebox_backup";
+			reg = <0x100000 0x80000>;
+		};
+
+		partition@180000 {
 			label = "bareboxenv";
-			reg = <0x100000 0x40000>;
+			reg = <0x180000 0x40000>;
 		};
 
-		partition@140000 {
+		partition@1C0000 {
 			label = "oftree";
-			reg = <0x140000 0x40000>;
+			reg = <0x1C0000 0x40000>;
 		};
 
-		partition@180000 {
+		partition@200000 {
 			label = "kernel";
-			reg = <0x180000 0x800000>;
+			reg = <0x200000 0x800000>;
 		};
 
-		partition@980000 {
+		partition@A00000 {
 			label = "root";
 			/*
 			 * Size 0x0 extends partition to
 			 * end of nand flash.
 			 */
-			reg = <0x980000 0x0>;
+			reg = <0xA00000 0x0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 6561625..db78cb1 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -304,23 +304,32 @@
 		};
 
 		partition@100000 {
+			label = "barebox_backup";
+			reg = <0x100000 0x80000>;
+		};
+
+		partition@180000 {
 			label = "bareboxenv";
-			reg = <0x100000 0x40000>;
+			reg = <0x180000 0x40000>;
 		};
 
-		partition@140000 {
+		partition@1C0000 {
 			label = "oftree";
-			reg = <0x140000 0x40000>;
+			reg = <0x1C0000 0x40000>;
 		};
 
-		partition@180000 {
+		partition@200000 {
 			label = "kernel";
-			reg = <0x180000 0x800000>;
+			reg = <0x200000 0x800000>;
 		};
 
-		partition@980000 {
+		partition@A00000 {
 			label = "root";
-			reg = <0x980000 0x0>;
+			/*
+			 * Size 0x0 extends partition to
+			 * end of nand flash.
+			 */
+			reg = <0xA00000 0x0>;
 		};
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
