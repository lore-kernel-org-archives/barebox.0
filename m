Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5Q-0000R1-WF
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id y11so5228718pfm.13
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:52 -0700
Message-Id: <20190527201853.18853-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190527201853.18853-1-andrew.smirnov@gmail.com>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] ARM: rdu2: Add U-Boot environment partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index bfc75ba60..937fc5d67 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -47,6 +47,12 @@
 			compatible = "barebox,environment";
 			device-path = &nor_flash, "partname:barebox-environment";
 		};
+
+		ubootenv {
+			compatible = "barebox,uboot-environment";
+			device-path-0 = &usdhc4, "partname:uboot-environment-0";
+			device-path-1 = &usdhc4, "partname:uboot-environment-1";
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
+		partition@c0000 {
+			label = "uboot-environment-0";
+			reg = <0xc0000 0x4000>;
+		};
+
+		partition@cc800 {
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
