Delivery-date: Tue, 28 Jun 2022 22:41:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I1C-000bNS-Fn
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:41:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I1D-0004N5-IN
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:41:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=keGsbqa2DLUElhHYJo2hGM4PM7b+NJD4Mnqr3NUPg4o=; b=Wx3qy/IxxAvJYjL84NYoU011Qn
	zttzeeCddZyUvfZUJLWt4NN19DyJ6Lx1FiBAv3FNO8fdId0FERlbTG1a0MEs2yKN5KJc6yhm0Br8t
	O1Uo+6y1s3baFIkQaYh8MvbN2aXrwCi8pefJLJsTvXHG/D3RVn6EL0ZNHE8RtmY94rYdqJ1t/N/Lx
	IkFlFZ4AasG8YGQ40xPgXitpgVEPQw4HSbUF70LDG+lc2Nzpsd0FBc/4+A7tiu/o8sHp3p5xVNgyc
	0HcptsERWXJ98nHSIPr8iKtxeh1NmyvbY2V5nBVcNNuzLISDJLKgI5I6m4nfNutHWEiOF0BElgK5+
	SGKWzQPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hzz-00857z-FP; Tue, 28 Jun 2022 20:39:51 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hzc-0084qF-01
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=keGsbqa2DLUElhHYJo2hGM4PM7b+NJD4Mnqr3NUPg4o=;
	b=JA2j75MFl9ZnfGr+zugVFWvIv85MbcG2i9bJ/VLadZmP0LovyU4IbYISEY7IfbcRhmjOuBelE2hNB
	 hEhLMjnLO+Fz6fCSxr86LNaWsRecdjElJAV5O0W4Wua9iuQbWC1mS6WAQHfS/V0DOd2R8DdrDxFY6f
	 1R84E+FIZNWOfPz7yAqTcu/cm89naQPMKZsTmfSDqmiABgzlyRvNOBOHMbmg49Wg73JhdjxHKqI5kP
	 GaujkWnsq9I/B913NlfqkvOe7lk8z59n2O7RR0X1QUqW/6htlLcxQ9dn6bITJQ3yhFk3C+/t/mR27Y
	 B34SG7AoxpdplLU+195mIVQBRTi6G2A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=keGsbqa2DLUElhHYJo2hGM4PM7b+NJD4Mnqr3NUPg4o=;
	b=axhUX1TnGFLIVBVgoAQxSLYLmuiSwqhKWKlwctLPJQQXdGltqsbemdIHycSh6vo8fQDmnChJ1+F3e
	 PpOcdHbAA==
X-HalOne-Cookie: 85c575b3dc7cc4383fb068695ad7754b53ccd0b7
X-HalOne-ID: 66675438-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 66675438-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:26 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:49 +0200
Message-Id: <20220628203849.2785611-12-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133928_222778_6F76520F 
X-CRM114-Status: GOOD (  13.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [WIP PATCH v2 11/11] ARM: at91: Update DTS for skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Update the device tree with the following:
- Add backlight node
- Add panel node for the Logic L2 panel
- Add graph node to connect display with the panel
- Drop all obsolete properties for the display node

The updates was done to have proper support for backlight and
to be compatible with the updated bindings for the display node.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/dts/at91-skov-arm9cpu.dts | 107 +++++++++++++----------------
 1 file changed, 49 insertions(+), 58 deletions(-)

diff --git a/arch/arm/dts/at91-skov-arm9cpu.dts b/arch/arm/dts/at91-skov-arm9cpu.dts
index 8e4fddfd3..c8d88050d 100644
--- a/arch/arm/dts/at91-skov-arm9cpu.dts
+++ b/arch/arm/dts/at91-skov-arm9cpu.dts
@@ -202,43 +202,31 @@
 			0x04050056 /* col5 row4 KEY_102ND */
 		>;
 	};
-};
 
-&{/ahb/apb} {
-	pinctrl: pinctrl@fffff200 {
+	panel_reg: panel_reg {
+		compatible = "regulator-fixed";
+		regulator-name = "panel-power-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		status = "okay";
 	};
 
-	watchdog@fffffd40 {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 1 100000 1>;
+		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
+		default-brightness-level = <8>;
 		status = "okay";
 	};
-};
-
-&dbgu {
-	status = "okay";
-};
 
-&fb0 {
-	status = "okay";
-	display = <&display0>;
-	display0: display0 {
-		bits-per-pixel = <16>;
-		atmel,lcdcon-backlight;
-		atmel,dmacon = <0x1>;
-		atmel,lcdcon2 = <0x80008002>;
-		atmel,guard-time = <1>;
-		atmel,lcd-wiring-mode = "BRG";
-		pinctrl-names = "default";
-		pinctrl-0 = <
-			&pinctrl_board_fb
-			&pinctrl_disp_type
-			&pinctrl_logic_type
-		>;
 
-		atmel,power-control-gpio = <&pioA 30 GPIO_ACTIVE_HIGH>;
+	panel: panel {
+		compatible = "logictechno,lttd800480070-l2rt", "simple-panel";
+		backlight = <&backlight>;
+		power-supply = <&panel_reg>;
+		status = "okay";
 
 		display-timings {
-			native-mode = <&l2rt>;
-
 			l2rt: l2rt {
 				/* LTTD800480070-L2RT @ 55 */
 				clock-frequency = <30000000>;
@@ -264,39 +252,42 @@
 				vsync-active = <0>;
 				de-active = <1>;
 			};
+		};
 
-			l6whrt: l6whrt {
-				clock-frequency = <33000000>;
-				hactive = <800>;
-				vactive = <480>;
-				hback-porch = <43>;
-				hfront-porch = <154>;
-				vback-porch = <20>;
-				vfront-porch = <47>;
-				hsync-len = <3>;
-				vsync-len = <3>;
-				pixelclk-active = <1>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				de-active = <1>;
+		port {
+			panel_input: endpoint {
+				remote-endpoint = <&panel_output>;
 			};
+		};
+	};
+};
 
-			seiko: seiko {
-				/* 70WVW2AZ0 @ 55 */
-				clock-frequency = <33000000>;
-				hactive = <800>;
-				vactive = <480>;
-				hback-porch = <0>;
-				hfront-porch = <256>;
-				vback-porch = <45>;
-				vfront-porch = <0>;
-				hsync-len = <0>;
-				vsync-len = <0>;
-				pixelclk-active = <1>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				de-active = <1>;
-			};
+&{/ahb/apb} {
+	pinctrl: pinctrl@fffff200 {
+	};
+
+	watchdog@fffffd40 {
+		status = "okay";
+	};
+};
+
+&dbgu {
+	status = "okay";
+};
+
+&fb0 {
+	status = "okay";
+
+	pinctrl-0 = <
+		&pinctrl_board_fb
+		&pinctrl_disp_type
+		&pinctrl_logic_type>;
+
+	atmel,lcd-wiring-mode = "BRG";
+
+	port {
+		panel_output: endpoint {
+			remote-endpoint = <&panel_input>;
 		};
 	};
 };
-- 
2.34.1



