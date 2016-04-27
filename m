Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001LZ-Ba
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AB223A00447
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:36 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:38 +0200
Message-Id: <1461751489-13302-5-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 04/15] imx6qdl-phytec-pfla02.dtsi: add i2c eeprom
To: barebox@lists.infradead.org

From: Jan Remmet <j.remmet@phytec.de>

add atmel,24c32 mounted on module

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 26f9746..aa39fd9 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -188,3 +188,15 @@
 		reg = <0xe0000 0x20000>;
 	};
 };
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c32";
+		pagesize = <32>;
+		reg = <0x50>;
+	};
+};
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
