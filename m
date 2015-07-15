Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFN3H-0005WD-TF
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 13:48:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 43A0BA002FD
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 15:50:06 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 15 Jul 2015 15:47:53 +0200
Message-Id: <1436968074-36098-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/2] ARM: AM335x: dts: Fix wrong GPMC size mapping for omaps
To: barebox@lists.infradead.org

Patch is based on Linux upstream patch:
commit e2c5eb78a3cc9b0d69ae924c33da50a4cd6d1fa4
Author: Tony Lindgren <tony@atomide.com>

The GPMC binding is obviously very confusing as the values
are all over the place. People seem to confuse the GPMC partition
size for the chip select, and the device IO size within the GPMC
partition easily.

The ranges entry contains the GPMC partition size. And the
reg entry contains the size of the IO registers of the
device connected to the GPMC.

Let's fix the issue according to the following table:

Device GPMC partition size Device IO size
connected in the ranges entry in the reg entry

NAND 0x01000000 (16MB) 4
16550 0x01000000 (16MB) 8
smc91x 0x01000000 (16MB) 0xf
smc911x 0x01000000 (16MB) 0xff
OneNAND 0x01000000 (16MB) 0x20000 (128KB)
16MB NOR 0x01000000 (16MB) 0x01000000 (16MB)
32MB NOR 0x02000000 (32MB) 0x02000000 (32MB)
64MB NOR 0x04000000 (64MB) 0x04000000 (64MB)
128MB NOR 0x08000000 (128MB) 0x08000000 (128MB)
256MB NOR 0x10000000 (256MB) 0x10000000 (256MB)

Let's also add comments to the fixed entries while at it.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycard-som.dtsi | 4 ++--
 arch/arm/dts/am335x-phytec-phycore-som.dtsi | 4 ++--
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index 1f1036f..c0b2456 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -144,9 +144,9 @@
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&nandflash_pins_s0>;
-	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
+	ranges = <0 0 0x08000000 0x1000000>;	/* CS0: 16MB for NAND */
 	nand: nand@0,0 {
-		reg = <0 0 0>; /* CS0, offset 0 */
+		reg = <0 0 4>; /* CS0, offset 0, IO size 4 */
 		nand-bus-width = <8>;
 		ti,nand-ecc-opt = "bch8";
 		gpmc,device-nand = "true";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index ed8e257..5cc4455 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -228,9 +228,9 @@
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&nandflash_pins_s0>;
-	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
+	ranges = <0 0 0x08000000 0x1000000>;	/* CS0: 16MB for NAND */
 	nand: nand@0,0 {
-		reg = <0 0 0>; /* CS0, offset 0 */
+		reg = <0 0 4>; /* CS0, offset 0, IO size 4 */
 		nand-bus-width = <8>;
 		ti,nand-ecc-opt = "bch8";
 		gpmc,device-nand = "true";
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index fc9c9ba..71f0a97 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -240,9 +240,9 @@
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&nandflash_pins_s0>;
-	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
+	ranges = <0 0 0x08000000 0x1000000>;	/* CS0: 16MB for NAND */
 	nand: nand@0,0 {
-		reg = <0 0 0>; /* CS0, offset 0 */
+		reg = <0 0 4>; /* CS0, offset 0, IO size 4  */
 		nand-bus-width = <8>;
 		ti,nand-ecc-opt = "bch8";
 		gpmc,device-nand = "true";
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
