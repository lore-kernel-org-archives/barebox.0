Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp52.i.mail.ru ([94.100.177.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYObm-0003NY-BU
 for barebox@lists.infradead.org; Fri, 30 Oct 2020 07:13:59 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 30 Oct 2020 10:13:50 +0300
Message-Id: <20201030071350.9691-1-shc_work@mail.ru>
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
Subject: [PATCH] ARM: dts: imx6qdl: pfla02: Remove eeprom node
To: barebox@lists.infradead.org

The upstream dtsi now has a eeprom node, so no need to duplicate
anymore. Let's keep the "page_size" property for a while.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index b83511cb0..d0b056b2f 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -155,6 +155,10 @@
 	barebox,provide-mac-address = <&fec 0x620>;
 };
 
+&som_eeprom {
+	pagesize = <32>;
+};
+
 &usdhc3 {
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -175,12 +179,6 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	eeprom: eeprom@50 {
-		compatible = "atmel,24c32";
-		pagesize = <32>;
-		reg = <0x50>;
-	};
-
 	pmic@58 {
 		watchdog-priority = <500>;
 		restart-priority = <500>;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
