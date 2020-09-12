Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGzpO-0000yY-G1
 for barebox@lists.infradead.org; Sat, 12 Sep 2020 07:20:08 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Sat, 12 Sep 2020 09:12:38 +0200
Message-Id: <20200912071241.29924-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
References: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] iotmaxx: gw4100: WDOG_ANY as GPIO output
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 dts/src/arm/imx7d-iotmaxx-gw4100.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/dts/src/arm/imx7d-iotmaxx-gw4100.dts b/dts/src/arm/imx7d-iotmaxx-gw4100.dts
index 91befd2607..c9321ca7e0 100644
--- a/dts/src/arm/imx7d-iotmaxx-gw4100.dts
+++ b/dts/src/arm/imx7d-iotmaxx-gw4100.dts
@@ -220,6 +220,21 @@
 	};
 };
 
+&gpio7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio7>;
+	status = "okay";
+	gpio-line-names = "",
+	"", "", "", "", "",
+	"", "reset", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"", "", "", "", "",
+	"";
+
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
@@ -454,6 +469,11 @@
 		MX7D_PAD_SD3_STROBE__SD3_STROBE			0x1b
 		>;
 	};
+	pinctrl_gpio7: gpio7grp {
+		fsl,pins = <
+		MX7D_PAD_ENET1_COL__GPIO7_IO15			0x51
+		>;
+	};
 };
 
 &iomuxc_lpsr {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
