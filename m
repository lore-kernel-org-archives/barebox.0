Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzS-0003uB-7Q
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B3B74A002EA
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:56 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:38 +0200
Message-Id: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 01/10] dts:imx6:pfla02: Add nand partitions
To: barebox@lists.infradead.org

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi |   27 +++++++++++++++++++++++++++
 1 files changed, 27 insertions(+), 0 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index a981fd4..b8988ed 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -36,6 +36,33 @@
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
 	nand-on-flash-bbt;
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x400000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x400000 0x20000>;
+	};
+
+	partition@2 {
+		label = "oftree";
+		reg = <0x420000 0x20000>;
+	};
+
+	partition@3 {
+		label = "kernel";
+		reg = <0x440000 0x800000>;
+	};
+
+	partition@4 {
+		label = "root";
+		reg = <0xC40000 0x0>;
+	};
 };
 
 &iomuxc {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
