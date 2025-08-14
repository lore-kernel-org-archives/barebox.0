Delivery-date: Thu, 14 Aug 2025 17:37:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0o-000YH0-2m
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:37:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0n-00044n-Ko
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:37:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ofUIAk+Q7FIrKWKVOZWD3Xlsx6OkIOq3SUumZ+zl91c=; b=iK33dHD3yt+XUDFBIxHbe4xfr9
	FoniYK48F16AHIksaoEW7s8s9NjBQAdqp59STZvJb/khWUQrvxTkhGM3iCLt/rwG49Hn4oZMKUifq
	junwlGhIEB+IADB9ZI+5bbP9Za67thgFazBIXbAmkvaDo8jYSnnuk9PiVnk5YAiJe/6EAKibI2XyL
	uOem4qz/zb21vBvYyZELF00yauPc6DISP45LSCNq274AgkJ4a6ecE4lPe/d0iGqaYNwvwXI7poPfB
	yApb8xACLoJ1sFXzlcIII/G128hZOwp3UIfuxyT7lCSpzTnaYe1jE//tVfA2LeiWG/6GvvP+waH3v
	NsCdgrNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma0N-0000000HSlH-0qEE;
	Thu, 14 Aug 2025 15:36:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVTw-0000000Gdwh-3PFr
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000NV-Iz; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Ewt-12;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0q;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-k3-am62l-updates-v1-1-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=1798;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wh6RiQocgkY3BgxtVEvegYlQL//ES3xAQUCex0VfRho=;
 b=0k0xNEYB7sEd9gGo8dkvP46PRn4xopRyAWUaSUR+Mk6aCTEddGD/lGVF72KQdvWdozJ9AOnt3
 ZKXqB1uA5eUBYmwW2Dks5sHkK2O43+OL/cAQFHCO9oduznDunmGVjkI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034652_870888_49677F5C 
X-CRM114-Status: UNSURE (   9.01  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] ARM: k3: AM62l3-EVM: add usb0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l3-evm.dts | 47 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index bb1e3a891c3847cb6cbb458810a8decca779c845..921b58cad2f00b6026143f9955c6811fa31c7579 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -205,6 +205,31 @@ exp2: gpio@23 {
 	};
 };
 
+&i2c2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins_default>;
+	clock-frequency = <400000>;
+
+	typec_pd0: tps6598x@3f {
+		compatible = "ti,tps6598x";
+		reg = <0x3f>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			self-powered;
+			data-role = "dual";
+			power-role = "sink";
+			port {
+				usb_con_hs: endpoint {
+					remote-endpoint = <&usb0_hs_ep>;
+				};
+			};
+		};
+	};
+};
+
 &pmx0 {
 	gpio0_ioexp_intr_pins_default: gpio0-ioexp-intr-default-pins {
 		pinctrl-single,pins = <
@@ -228,6 +253,13 @@ AM62LX_IOPAD(0x01d8, PIN_INPUT_PULLUP, 0) /* (A6) I2C1_SDA */
 		>;
 	};
 
+	i2c2_pins_default: i2c2-default-pins {
+		pinctrl-single,pins = <
+			AM62LX_IOPAD(0x01dc, PIN_INPUT_PULLUP, 0) /* (B8) I2C2_SCL */
+			AM62LX_IOPAD(0x01e0, PIN_INPUT_PULLUP, 0) /* (D8) I2C2_SDA */
+		>;
+	};
+
 	mmc0_pins_default: mmc0-default-pins {
 		pinctrl-single,pins = <
 			AM62LX_IOPAD(0x0214, PIN_INPUT_PULLUP, 0) /* (D2) MMC0_CMD */
@@ -376,3 +408,18 @@ &usbss1 {
 	ti,vbus-divider;
 	status = "okay";
 };
+
+&usb0 {
+	usb-role-switch;
+
+	port {
+		usb0_hs_ep: endpoint {
+			remote-endpoint = <&usb_con_hs>;
+		};
+	};
+};
+
+&usbss0 {
+	ti,vbus-divider;
+	status = "okay";
+};

-- 
2.39.5



