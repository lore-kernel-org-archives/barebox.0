Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp57.i.mail.ru ([217.69.128.37])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kd9kZ-0001vj-5p
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 10:22:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Nov 2020 13:22:30 +0300
Message-Id: <20201112102231.12580-1-shc_work@mail.ru>
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
Subject: [PATCH 1/2] ARM: dts: imx6qdl: pfla02: Use upstream som_flash node
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 52 ++++++++++++-------------
 1 file changed, 25 insertions(+), 27 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index d0b056b2f..3eb510d43 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -21,7 +21,7 @@
 
 		environment-spinor {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &som_flash, "partname:barebox-environment";
 			status = "disabled";
 		};
 
@@ -53,32 +53,30 @@
 
 /delete-node/ &{/memory@10000000};
 
-&ecspi3 {
-	flash: flash@0 {
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "barebox";
-				reg = <0x0 0x100000>;
-			};
-
-			partition@100000 {
-				label = "barebox-environment";
-				reg = <0x100000 0x20000>;
-			};
-
-			partition@120000 {
-				label = "oftree";
-				reg = <0x120000 0x20000>;
-			};
-
-			partition@140000 {
-				label = "kernel";
-				reg = <0x140000 0x0>;
-			};
+&som_flash {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
+
+		partition@100000 {
+			label = "barebox-environment";
+			reg = <0x100000 0x20000>;
+		};
+
+		partition@120000 {
+			label = "oftree";
+			reg = <0x120000 0x20000>;
+		};
+
+		partition@140000 {
+			label = "kernel";
+			reg = <0x140000 0x0>;
 		};
 	};
 };
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
