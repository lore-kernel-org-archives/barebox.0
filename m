Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSp-0000uq-Lb
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:11 +0000
Received: by mail-pf1-x42c.google.com with SMTP id h4-v6so1330008pfi.10
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:57 -0700
Message-Id: <20181027013157.23135-12-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/11] ARM: rdu2: Replace board code with gpio-hog nodes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 38 --------------------------
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi     | 36 ++++++++++++++++++++++++
 2 files changed, 36 insertions(+), 38 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index c99f993f0..e174032c9 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -97,44 +97,6 @@ static int rdu2_reset_audio_touchscreen_nfc(void)
  */
 late_initcall(rdu2_reset_audio_touchscreen_nfc);
 
-static const struct gpio rdu2_front_panel_usb_gpios[] = {
-	{
-		.gpio = IMX_GPIO_NR(3, 19),
-		.flags = GPIOF_OUT_INIT_LOW,
-		.label = "usb-emulation",
-	},
-	{
-		.gpio = IMX_GPIO_NR(3, 20),
-		.flags = GPIOF_OUT_INIT_HIGH,
-		.label = "usb-mode1",
-	},
-	{
-		.gpio = IMX_GPIO_NR(3, 23),
-		.flags = GPIOF_OUT_INIT_HIGH,
-		.label = "usb-mode2",
-	},
-};
-
-static int rdu2_enable_front_panel_usb(void)
-{
-	int ret;
-
-	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
-	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
-		return 0;
-
-	ret = gpio_request_array(rdu2_front_panel_usb_gpios,
-				 ARRAY_SIZE(rdu2_front_panel_usb_gpios));
-	if (ret) {
-		pr_err("Failed to request RDU2 front panel USB gpios: %s\n",
-		       strerror(-ret));
-
-	}
-
-	return ret;
-}
-late_initcall(rdu2_enable_front_panel_usb);
-
 static int rdu2_devices_init(void)
 {
 	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 3915c34df..a3f6dbd15 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -130,3 +130,39 @@
 		};
 	};
 };
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio3_hog>;
+
+	usb-emulation {
+		gpio-hog;
+		gpios = <19 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "usb-emulation";
+	};
+
+	usb-mode1 {
+		gpio-hog;
+		gpios = <20 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "usb-mode1";
+	};
+
+	usb-mode2 {
+		gpio-hog;
+		gpios = <23 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "usb-mode2";
+	};
+};
+
+&iomuxc {
+	pinctrl_gpio3_hog: gpio3hoggrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x40000038
+			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x40000038
+			MX6QDL_PAD_EIM_D23__GPIO3_IO23		0x40000038
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
