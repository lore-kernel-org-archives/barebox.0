Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axi-00065y-MW
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:27 +0100
Message-Id: <1389971012-22977-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/22] ARM: phycard-i.MX27: Add NAND support to dts
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx27-phytec-phycard-s-som.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/dts/imx27-phytec-phycard-s-som.dts b/arch/arm/dts/imx27-phytec-phycard-s-som.dts
index db8c095..92c7f6c 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-som.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-som.dts
@@ -38,6 +38,10 @@
 		pinctrl_i2c2: i2c2grp {
 			fsl,pins = <MX27_I2C2_PINGRP1>;
 		};
+
+		pinctrl_nfc: nfcgrp {
+			fsl,pins = <MX27_NFC_PINGRP1>;
+		};
 	};
 };
 
@@ -58,3 +62,12 @@
 		reg = <0x52>;
 	};
 };
+
+&nfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nfc>;
+	nand-bus-width = <8>;
+	nand-ecc-mode = "hw";
+	nand-on-flash-bbt;
+	status = "okay";
+};
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
