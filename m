Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvW-00066v-Hv
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:10 +0000
Received: by mail-pj1-x1044.google.com with SMTP id v13so1463878pjb.0
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:15 -0700
Message-Id: <20200331184722.22707-17-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/23] ARM: rdu2: Drop redundant USB GPIO hog nodes
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of those nodes are already present in upstream DT. Drop them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 36 ------------------------------
 1 file changed, 36 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index c31a27904..b593545ff 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -292,39 +292,3 @@
 		};
 	};
 };
-
-&gpio3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpio3_hog>;
-
-	usb-emulation {
-		gpio-hog;
-		gpios = <19 GPIO_ACTIVE_HIGH>;
-		output-low;
-		line-name = "usb-emulation";
-	};
-
-	usb-mode1 {
-		gpio-hog;
-		gpios = <20 GPIO_ACTIVE_HIGH>;
-		output-high;
-		line-name = "usb-mode1";
-	};
-
-	usb-mode2 {
-		gpio-hog;
-		gpios = <23 GPIO_ACTIVE_HIGH>;
-		output-high;
-		line-name = "usb-mode2";
-	};
-};
-
-&iomuxc {
-	pinctrl_gpio3_hog: gpio3hoggrp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x40000038
-			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x40000038
-			MX6QDL_PAD_EIM_D23__GPIO3_IO23		0x40000038
-		>;
-	};
-};
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
