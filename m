Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzn-0003zd-RR
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EA2FEA00653
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:56 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:44 +0200
Message-Id: <1410528827-12722-7-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 07/10] dts:imx6:pfla02: move mac read to module
To: barebox@lists.infradead.org

Move mac read to module.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi |    4 ----
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi |    4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
index 8f5dea7..7d31123 100644
--- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
@@ -22,10 +22,6 @@
 	status = "okay";
 };
 
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
 &uart1 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index b8988ed..4a99103 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -176,6 +176,10 @@
 	};
 };
 
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &uart4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart4>;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
