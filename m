Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieziM-0004Cf-Mh
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 10:59:32 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 11 Dec 2019 11:59:19 +0100
Message-Id: <1576061961-153938-5-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
References: <1576061961-153938-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v3 5/7] ARM: dts: imx6: phycard: Switch to new partitions
 binding
To: barebox@lists.infradead.org

The SD card interface is still using the legacy partition binding.
Change this by switching to the new bindings.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v3:
 - Rebased on latest master
---
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index f1a5e5962362..f17ba7bf808d 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -158,15 +158,19 @@
         cd-gpios = <&gpio5 22 0>;
         status = "disabled";
 
-	#address-cells = <1>;
-	#size-cells = <1>;
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-	environment_usdhc3: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		environment_usdhc3: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
