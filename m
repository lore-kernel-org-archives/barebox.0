Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzn-0003zg-RS
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 09B72A00669
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:57 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:45 +0200
Message-Id: <1410528827-12722-8-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
References: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 08/10] dts:imx6:pfla02:Move spi partitions
 imx6qdl-phytec-pfla02
To: barebox@lists.infradead.org

Move the spi partition definition to imx6qdl-phytec-pfla02.dtsi

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi  |   15 ---------------
 arch/arm/dts/imx6q-phytec-pfla02.dtsi   |   15 ---------------
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi |   14 ++++++++++++++
 3 files changed, 14 insertions(+), 30 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
index ae78afd..0f801ae 100644
--- a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
@@ -20,18 +20,3 @@
 &ecspi3 {
 	status = "okay";
 };
-
-&flash {
-        #address-cells = <1>;
-        #size-cells = <1>;
-
-        partition@0 {
-                label = "barebox";
-                reg = <0x0 0x80000>;
-        };
-
-        partition@1 {
-                label = "barebox-environment";
-                reg = <0x80000 0x10000>;
-        };
-};
diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
index f30f84c..0aec5d0 100644
--- a/arch/arm/dts/imx6q-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -20,18 +20,3 @@
 &ecspi3 {
 	status = "okay";
 };
-
-&flash {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0x80000>;
-	};
-
-	partition@1 {
-		label = "barebox-environment";
-		reg = <0x80000 0x10000>;
-	};
-};
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 4a99103..4b8e256 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -20,6 +20,20 @@
 		compatible = "m25p80";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+
+		partition@1 {
+			label = "barebox-environment";
+			reg = <0x80000 0x10000>;
+		};
+
 	};
 };
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
