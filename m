Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieICi-0001kh-Sx
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 12:31:58 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 13:31:43 +0100
Message-Id: <1575894703-316604-8-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2 8/8] ARM: dts: imx6: phytec: Increase NAND barebox
 partition size
To: barebox@lists.infradead.org

For NAND flash with eraseblock size 1 MB and more the current
barebox partition size is not sufficient. The 4 FCB copies alone occupy
the 4 MB partition size. Increase the partition size to 16 MB to be fit
for the future and leaving some blocks for bad block handling as well.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
No changes in v2
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi      | 6 +++---
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 6 +++---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 846ebbe6b18b..841ad653b26d 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -98,17 +98,17 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x400000>;
+			reg = <0x0 0x1000000>;
 		};
 
 		partition@400000 {
 			label = "barebox-environment";
-			reg = <0x400000 0x100000>;
+			reg = <0x1000000 0x100000>;
 		};
 
 		partition@500000 {
 			label = "root";
-			reg = <0x500000 0x0>;
+			reg = <0x1100000 0x0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 13ffc8ee02ef..ff6c50128d68 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -42,17 +42,17 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x400000>;
+			reg = <0x0 0x1000000>;
 		};
 
 		partition@400000 {
 			label = "barebox-environment";
-			reg = <0x400000 0x20000>;
+			reg = <0x1000000 0x100000>;
 		};
 
 		partition@420000 {
 			label = "root";
-			reg = <0x420000 0x0>;
+			reg = <0x1100000 0x0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 1d39368165db..2e03c08aa8e5 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -138,17 +138,17 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x400000>;
+			reg = <0x0 0x1000000>;
 		};
 
 		partition@400000 {
 			label = "barebox-environment";
-			reg = <0x400000 0x100000>;
+			reg = <0x1000000 0x100000>;
 		};
 
 		partition@500000 {
 			label = "root";
-			reg = <0x500000 0x0>;
+			reg = <0x1100000 0x0>;
 		};
 	};
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
