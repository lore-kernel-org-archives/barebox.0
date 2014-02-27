Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ1PG-0006SK-Aq
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:53:49 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WJ1Ot-00078k-9j
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 14:53:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Feb 2014 14:53:23 +0100
Message-Id: <1393509203-836-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
References: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: i.MX: edmqmx6: choose correct env when booting from
 SD
To: barebox@lists.infradead.org

When booting from SD Card we don't want to load an env
from EMMC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/board.c |  9 ++++++++-
 arch/arm/dts/imx6q-dmo-edmqmx6.dts         | 25 ++++++++++++++++++++++++-
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index b0b4ae98d446..fd02d7a3de1d 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -121,7 +121,14 @@ static int realq7_device_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		of_device_enable_path("/chosen/environment-emmc");
+		switch (bootsource_get_instance()) {
+		case 2:
+			of_device_enable_path("/chosen/environment-sd");
+			break;
+		case 3:
+			of_device_enable_path("/chosen/environment-emmc");
+			break;
+		}
 		break;
 	default:
 	case BOOTSOURCE_SPI:
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index 9fe128410640..4cd1c55ff82e 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -20,6 +20,12 @@
 	chosen {
 		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
 
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+			status = "disabled";
+		};
+
 		environment-emmc {
 			compatible = "barebox,environment";
 			device-path = &usdhc4, "partname:barebox-environment";
@@ -386,6 +392,18 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	vmmc-supply = <&reg_3p3v>;
 	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
 };
 
 &usdhc4 {
@@ -395,11 +413,16 @@
 	non-removable;
 	bus-width = <8>;
 	status = "okay";
+
 	#address-cells = <1>;
 	#size-cells = <1>;
 
 	partition@0 {
-		label = "barebox-environment";
+		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
