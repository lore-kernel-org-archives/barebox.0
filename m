Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNTl-0000iN-RC
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 18:50:20 +0000
Received: by mail-wm1-x32b.google.com with SMTP id g134so666611wme.3
 for <barebox@lists.infradead.org>; Mon, 09 Mar 2020 11:50:16 -0700 (PDT)
Received: from ?IPv6:2a02:8070:bb9:bc00::fc? ([2a02:8070:bb9:bc00::fc])
 by smtp.gmail.com with ESMTPSA id f15sm46360887wru.83.2020.03.09.11.50.13
 for <barebox@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 11:50:13 -0700 (PDT)
Message-ID: <b2db7e05d21f4e164862a52e2bee358ebf8a618b.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Mon, 09 Mar 2020 19:50:12 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: advantech-rom-7421: fix sd-card cd pin
To: barebox@lists.infradead.org

Enable possibility to auto detect sd-card insertion on Advantech
ROM-7421, this patch sets a necessary gpio to active-low.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/dts/imx6dl-advantech-rom-7421.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
index cdf378114a..22ce744307 100755
--- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
+++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
@@ -100,7 +100,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <8>;
-	cd-gpios = <&gpio2 0 0>;
+	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	#address-cells = <1>;
@@ -121,9 +121,9 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
-	cd-gpios = <&gpio2 1 0>;
-	en-gpios = <&gpio2 2 0>;
-	wp-gpios = <&gpio2 3 0>;
+	cd-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
+	en-gpios = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
