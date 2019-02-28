Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gzF3p-0003gk-0s
 for barebox@lists.infradead.org; Thu, 28 Feb 2019 06:20:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id m1so9177966pgq.8
 for <barebox@lists.infradead.org>; Wed, 27 Feb 2019 22:20:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Feb 2019 22:20:33 -0800
Message-Id: <20190228062033.8937-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190228062033.8937-1-andrew.smirnov@gmail.com>
References: <20190228062033.8937-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] fixup! ARM: imx8mq-zii-ultra: Add USB related nodes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts | 2 +-
 arch/arm/dts/imx8mq-zii-ultra.dtsi     | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
index 78280029b..dd4379bd5 100644
--- a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
+++ b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
@@ -39,5 +39,5 @@
 };
 
 &usb_hub {
-	port-swap=<0x01>;
+	swap-dx-lanes = <0>;
 };
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 0c124a5ec..ccf80d3de 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -231,8 +231,6 @@
 		compatible = "microchip,usb2513b";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_usb2513b>;
-		#address-cells=<1>;
-		#size-cells=<1>;
 		reg = <0x2c>;
 		reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
 	};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
