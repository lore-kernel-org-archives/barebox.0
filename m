Delivery-date: Fri, 16 Jan 2026 20:43:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjX-0024S0-2c
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjS-0001cO-Gb
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ja4xzuoAaTJTQJGA85ygTNK5kD8Mgx697gl1be7pIYQ=; b=UpQiPZYwBE/YWIwpAhl9kLOiaY
	FApBsqslt5fbg55HTFZPfy0ihODyJGbuVO3MZKLo+Pzn8U3g80D9vsjZMqLBJbXn1XzYU0WLr3ZfK
	L4wXLVdidh5MP02gxZ+w1n/zM5g2VouOHdnnG1a0jAavVFSHR6V4Wu07pNRzrDqcaVZPyZkCKdpV6
	AE09JM/CVCcZYRKHCnfsNSTscPNzvieZyKHiBCjfxI968+Fd19Vcl6K5EsGSxDtaRaDWxqeGHk1dt
	61J4Bfzmw+fX5TbNVG1bqk5evaHbVIOwyWiq3pn2ZxjgCa38n+oLOhH9mtnHT5BrpKh60WnXiiJmV
	cK3djUZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpih-0000000EhoV-3e0Q;
	Fri, 16 Jan 2026 19:42:55 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpid-0000000Ehj8-1PxO
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:53 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b871b6e0c70so380160966b.2
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592569; x=1769197369; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ja4xzuoAaTJTQJGA85ygTNK5kD8Mgx697gl1be7pIYQ=;
        b=GKsEDWu1Ijrci/gAVBubJsDYJj9/sQyAJrkB09eSH3YlT/Q1K0DQOR0mvs8Zg6o5WU
         TH6RDq9P2FOtMuospPNLZ1APvqWJDrFteVyMUZjwVYgEH78IVDUx0EpF/UesP1/sJxSL
         Cm2xgXB/XewRFEeUCkvKrTh37vLMSHOlRT8s35MLNnv7PiqtKFST2qraVFbX80L+Potp
         FjJmwS4x4Fiw7AMgvp+rYotA+WWQGJ1Pn5BQJoL12yVnndKCEnfvkl2a/5eGEflEl6Pv
         v5Vdd3sWZNf7zyrr60+ax3NwOpw81chP8aFZYfZirX/Pc20k+fAav3tqzv6Mp3MMM7ul
         CsVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592569; x=1769197369;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ja4xzuoAaTJTQJGA85ygTNK5kD8Mgx697gl1be7pIYQ=;
        b=sgkEqx9hwbogj96a0hTIW+SBfP0giyniwy8qKFD4XxBgUptar6OGtPjd2H79ColOlk
         8AfK0MtUMdEcDRioe6U6XTl/1IPb2XWyYrMg/p7to+kH1DEqICjaYzXDBy7hXo+0Oqiq
         x4eI5NtkglTARWgvlouTo1hbTjMdT3rYuLBl1vfdwle76NNYd4ixfYLuHYdv7tatcpQA
         fZLjKvpsNvogxT7uzK+pRbi8Bj0jDcoBZNKKuejM/7JrXq2mhZXkrCWCFKoeVyitREYw
         tGtguuVbjr/46CBW5ZeT0nTXaVYCbkIi59oqWtZwHj8zDn5tdpFcRy9RUHN22l6oNmSr
         z/Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXUKEyTKi2C69Eur8vO6RY6YsEoYLP4HQwOFo1DMf5m4il2ZeboXkiDM4Grm+m8M3ttnoResxDT@lists.infradead.org
X-Gm-Message-State: AOJu0YwKwPGE/NRIYPfip60yKb6mdAn643BdaYsTshcMAnYcKKaimImB
	vSNm4WRqkLnmnXdAz1PAD+TALmPLEBboex4DjJQQHLPu9Q7cjUybcovsDOlcuw==
X-Gm-Gg: AY/fxX78XX7dr2j7+P5El+bGPj+KvhQhENI8MNkeXma1C8eYr3Xf58HyyXIbfjG5VYT
	rGFpUiTSzzH3LNb1thuHaotVy91yr0E81ZHajgXKO88rWQApsb5FSCmrnfBKAwfBj37aD8R4sEL
	kDowFZEFR0WjlcSCf9J/QQPLUaNXi1XeXbQPFVt00lZ/XZzx5BnvmB8iEpn3dcV82A78k2JoSvQ
	zOJJ5gl1O0ICTrbCtUR8uQAq9jieE1MhLYekKMDYyRo0rKpCr29xzj0i7egZmj2ZFppCktg8+Vy
	wnRaLr+93UoNVAjt/WfP25o+h5JuIFu5ONFf0f5NPek5b83+/K9T61sba/YUzjw8RY5wzJAJ60d
	1fvtGv1ydqPR7shKb6Y4Dvtx+9arBkTbiNldJMsN4mwQzpSKdcLHecMetuZk9RxQJLkWoqDvv0l
	EPGE+CHkjOjyfnX434olObqIHfcthvNn7lluLUf5i39nq0JIx+UM0ljt10LscBLD0vX2BS/Fbfs
	btAYgCuBAdDOqHEU9yaENMN5u0egNDCVgOsT2Wdi47wY4qQpEMiONNBMqxFkNrOKilBvP7hZICZ
	P9C9djRrd9Fg/xTWo2i9Wo+pgt/bh+JiQfMLckJ/1Q==
X-Received: by 2002:a17:907:dac:b0:b87:15a7:85ee with SMTP id a640c23a62f3a-b8796b7a7a0mr321133766b.47.1768592569293;
        Fri, 16 Jan 2026 11:42:49 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:49 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-5-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=11462;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=1eTCL1fYanjvbvaOIG9D93ENGUe/Z2L6PJBQ/8Ukvcw=;
 b=1cepPKoneVMLmcixo/fGV8YzFYBERfeN8favnMqnGV1vhXvVnNDQh+ltToIG+CpROWoMe+bch
 B5RjJT8Nj6hAsUCHpgvKmHrcCspQcBbGDiCzntlu+TzJFs21qkSFpEa
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114251_471409_D0B008E6 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/14] ARM: boards: Rockchip: Add device tree for kickpi k3
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add device tree for RK3562 KickPi K3 board with RK809 PMIC, eMMC/SD,
PCIe, UARTs, I2C, and GPIO LEDs.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/dts/rk3562-kickpi-k3.dtsi | 452 +++++++++++++++++++++++++++++++++++++
 1 file changed, 452 insertions(+)

diff --git a/arch/arm/dts/rk3562-kickpi-k3.dtsi b/arch/arm/dts/rk3562-kickpi-k3.dtsi
new file mode 100644
index 0000000000..77bd61cf30
--- /dev/null
+++ b/arch/arm/dts/rk3562-kickpi-k3.dtsi
@@ -0,0 +1,452 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2026, Sohaib Mohamed <sohaib.amhmd@gmail.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <arm64/rockchip/rk3562.dtsi>
+
+/ {
+	model = "Rockchip RK3562 kickpi k3";
+	compatible = "kickpi,rk3562-kickpi-k3", "rockchip,rk3562";
+
+	aliases {
+		mmc0  = &sdhci;
+		mmc1  = &sdmmc0;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "console=serial0,1500000n8";
+	};
+
+	vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie20";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		regulator-boot-on;
+		regulator-always-on;
+		gpios = <&gpio3 RK_PC5 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&dc_12v>;
+	};
+
+
+	vcc5v0_usb: regulator-vcc5v0-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc5v0_usb_otg: regulator-vcc5v0-usb-otg {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio3 RK_PC6 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vcc5v0_usb>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_otg_pwren>;
+	};
+
+	dc_12v: regulator-dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc3v3_clk: regulator-vcc3v3-clk {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_clk";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_sys: regulator-vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc25_ddr: regulator-vcc25-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc25_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+		gpio3c0 {
+			gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+		gpio3c1 {
+			gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+		gpio0a6 {
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+		gpio4b6 {
+			gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		work_led: work-led {
+			gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+		fan: fan {
+			gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+};
+
+&i2c5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5m0_xfer>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4m0_xfer>;
+	status = "okay";
+};
+
+&combphy {
+	status = "okay";
+};
+
+&pcie2x1 {
+	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie20>;
+	status = "okay";
+};
+
+&pinctrl {
+	usb {
+		usb_otg_pwren: usb-otg-pwren {
+			rockchip,pins = <3 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3m0_xfer>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	full-pwr-cycle-in-suspend;
+	status = "okay";
+};
+
+&sdmmc0 {
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		pmic-reset-func = <0>;
+		not-save-power-en = <1>;
+
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+
+		pwrkey {
+			status = "okay";
+		};
+
+		pinctrl_rk8xx: pinctrl_rk8xx {
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			rk817_slppin_null: rk817_slppin_null {
+				pins = "gpio_slp";
+				function = "pin_fun0";
+			};
+
+			rk817_slppin_slp: rk817_slppin_slp {
+				pins = "gpio_slp";
+				function = "pin_fun1";
+			};
+
+			rk817_slppin_pwrdn: rk817_slppin_pwrdn {
+				pins = "gpio_slp";
+				function = "pin_fun2";
+			};
+
+			rk817_slppin_rst: rk817_slppin_rst {
+				pins = "gpio_slp";
+				function = "pin_fun3";
+			};
+		};
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_cpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-init-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_gpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc2v8_dvp: LDO_REG1 {
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-name = "vcc2v8_dvp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_pmu";
+				regulator-state-mem {
+				regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-name = "vccio_acodec";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pmu";
+				regulator-state-mem {
+				regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG9 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8_dvp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_3v3";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc3v3_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};

-- 
2.43.0



