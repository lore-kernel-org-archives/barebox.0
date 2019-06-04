Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY1s6-0002ZR-DP
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 05:20:34 +0000
Received: by mail-pl1-x643.google.com with SMTP id x7so6871220plr.12
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 22:20:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Jun 2019 22:20:02 -0700
Message-Id: <20190604052003.3189-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190604052003.3189-1-andrew.smirnov@gmail.com>
References: <20190604052003.3189-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 6/7] ARM: rdu2: Add U-Boot environment partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index bfc75ba60..c9a243c22 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -47,6 +47,12 @@
 			compatible = "barebox,environment";
 			device-path = &nor_flash, "partname:barebox-environment";
 		};
+
+		ubootenv {
+			compatible = "barebox,uboot-environment";
+			device-path-0 = &uboot_env_0;
+			device-path-1 = &uboot_env_1;
+		};
 	};
 
 	device-info {
@@ -249,6 +255,27 @@
 	dr_mode = "otg";
 };
 
+&usdhc4 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		/*
+		 * Layout info is taken from /etc/fw_env.config
+		 */
+		uboot_env_0: partition@c0000 {
+			label = "uboot-environment-0";
+			reg = <0xc0000 0x4000>;
+		};
+
+		uboot_env_1: partition@cc800 {
+			label = "uboot-environment-1";
+			reg = <0xcc800 0x4000>;
+		};
+	};
+};
+
 &gpio3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpio3_hog>;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
