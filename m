Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieICj-0001ki-1w
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 12:31:58 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 13:31:41 +0100
Message-Id: <1575894703-316604-6-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
References: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2 6/8] ARM: dts: imx6: phycard: Switch to new partitions
 binding
To: barebox@lists.infradead.org

The SD card interface is still using the legacy partition binding.
Change this by switching to the new bindings.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
No changes in v2
---
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 51cece26837a..de07562c6884 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -158,16 +158,19 @@
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
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
 
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
+		partition@e0000 {
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
