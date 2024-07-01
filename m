Delivery-date: Mon, 01 Jul 2024 09:20:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBLN-000QHN-2C
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:20:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBLN-00060f-2p
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:20:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ik+dC8250DFG4Np3SbeD4VrSkXXG7DupoIXtN1tpjEU=; b=uawL1pgbNrDJdS624TLQZzNFbS
	JdwP6aImzUaSXzaEAkxFdABYYEiZKdJ0KkuB/PC4T0AX9QSM4fyUy1IGVQNu2z8KIXYCtGcaMQJI3
	K5spa9fVW+LKFLtF5tJ0BZpkE4DHsChC09p7sbhAK5NEtHUoHmrWGC8OfaLliTBXlwyMxnMsYQWzu
	AFDo0FM8Lw2zoMQqEUCC5MeT5lDGLks8I2lP8ByRbqmUtc2qabxObH3oDnB8IYLgVy6fnMSMSv0rd
	Jb4N8/rDhCE3P7swCpQ9UVRtv5VzDXx7kBJWw/X9S+fQosawGlZmmvuanSxuVpkG9rBbn8YvrPfeF
	+O9myofw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBKr-000000020dU-2CXQ;
	Mon, 01 Jul 2024 07:20:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBKo-000000020cx-0Aa9
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:20:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBKm-0005xo-AU; Mon, 01 Jul 2024 09:20:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBKl-006JdH-U6; Mon, 01 Jul 2024 09:20:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBKl-000d9O-2i;
	Mon, 01 Jul 2024 09:20:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:20:19 +0200
Message-Id: <20240701072019.150463-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_002022_103538_6E5939B8 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: imx8mp-skov: describe RTC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The kernel device trees for the platform already describe the RTC, so
let's do the same in barebox as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp-skov.dts | 39 ++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 3761da89cae7..6e21b81c30a1 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -33,6 +33,7 @@ aliases {
 		ethernet1 = &lan1;
 		ethernet2 = &lan2;
 		state = &state;
+		rtc0 = &i2c_rtc;
 	};
 
 	leds {
@@ -322,6 +323,24 @@ ldo5: LDO5 {
 	};
 };
 
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>, <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	i2c_rtc: rtc@51 {
+		compatible = "nxp,pcf85063tp";
+		reg = <0x51>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		interrupts-extended = <&gpio4 31 IRQ_TYPE_EDGE_FALLING>;
+		quartz-load-femtofarads = <12500>;
+	};
+};
+
 &i2c4 {
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
@@ -493,6 +512,20 @@ MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
 		>;
 	};
 
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL				0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA				0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18				0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19				0x400001c2
+		>;
+	};
+
 	pinctrl_i2c4: i2c4grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL					0x400001c3
@@ -500,6 +533,12 @@ MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA					0x400001c3
 		>;
 	};
 
+	pinctrl_rtc: rtcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_TXFS__GPIO4_IO31			0x41
+		>;
+	};
+
 	pinctrl_switch: switchgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SAI3_TXD__GPIO5_IO01				0x41
-- 
2.39.2



