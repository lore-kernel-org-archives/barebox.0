Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzS-0003uF-7P
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E42FBA0062D
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:56 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:43 +0200
Message-Id: <1410528827-12722-6-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 06/10] dts:imx6:pfla02: Remove memory node
To: barebox@lists.infradead.org

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi |    4 ----
 arch/arm/dts/imx6q-phytec-pfla02.dtsi  |    4 ----
 arch/arm/dts/imx6s-phytec-pfla02.dtsi  |    4 ----
 3 files changed, 0 insertions(+), 12 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
index fa3a49a..ae78afd 100644
--- a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
@@ -15,10 +15,6 @@
 / {
 	model = "Phytec phyFLEX-i.MX6 Dual Lite";
 	compatible = "phytec,imx6dl-pfla02", "fsl,imx6dl";
-
-	memory {
-		reg = <0x10000000 0x40000000>;
-	};
 };
 
 &ecspi3 {
diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
index 781a90a..f30f84c 100644
--- a/arch/arm/dts/imx6q-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -15,10 +15,6 @@
 / {
 	model = "Phytec phyFLEX-i.MX6 Quad";
 	compatible = "phytec,imx6q-pfla02", "fsl,imx6q";
-
-	memory {
-		reg = <0x10000000 0x40000000>;
-	};
 };
 
 &ecspi3 {
diff --git a/arch/arm/dts/imx6s-phytec-pfla02.dtsi b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
index 8322426..d84fa4f 100644
--- a/arch/arm/dts/imx6s-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
@@ -15,8 +15,4 @@
 / {
 	model = "Phytec phyFLEX-i.MX6 Single";
 	compatible = "phytec,imx6s-pfla02", "fsl,imx6dl";
-
-	memory {
-		reg = <0x10000000 0x20000000>;
-	};
 };
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
