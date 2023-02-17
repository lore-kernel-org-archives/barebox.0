Delivery-date: Fri, 17 Feb 2023 18:32:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4bI-00AI55-3L
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4bF-0004zn-Sz
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ugpnneb3JRu0BMMck62FfDTWVYYoq1AJwzNxgcrhym0=; b=0vfh3yMldHYBGdpxMM+QcJ7rKM
	pO8HZvuas1d95ecIeTSxayQskzsBkRSmDU2jgWljctwi/0FEP8jNy6jC8onSh9JGl5IpmoDmnF9pL
	BwH0ZJqcNB6VLMNomAoNaHZ0bTVoZptHHQIGSxaeHM2/7DfQJSTCXvCijtqazENNunMn2qF0+qBoV
	/py5wJkJpseW8ss3zOxF6yS8O3lNiyKnsae+W5OW1MpcVVyDyTz9wjSn8H5p4S6k2e7BbSM/LQvi1
	ShgDWcdt8Czfe1sdq0FpmWH37jdKAdli5iwY8CCriO6NQN1ZXzEVDwW5cvgMIQvrY5CX0FqYhiF+G
	ewXAFomA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4aJ-00FFeQ-Kj; Fri, 17 Feb 2023 17:31:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFFy-BX
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004CW-5O; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTY-7H; Fri, 17 Feb 2023 18:31:01 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixq-1m; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:47 +0100
Message-Id: <20230217173057.1839835-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_667675_DF7EFFD8 
X-CRM114-Status: GOOD (  14.12  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 10/20] ARM: dts: zii: use phandle-relative paths for extending nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream will soon switch the rave-sp nodes to be called mcu
instead, which will break our usage. Anticipate this by using
references.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx51-zii-rdu1.dts    | 151 +++++++++++++----------------
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi |  59 +++++------
 arch/arm/dts/imx7d-zii-rmu2.dts    |  49 ++++------
 arch/arm/dts/imx8mq-zii-ultra.dtsi |  38 ++++----
 4 files changed, 127 insertions(+), 170 deletions(-)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 7f6a2962b4f0..72f5484bc0fd 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -53,33 +53,31 @@
                  * the switch shared DT node with it, so we use that
                  * fact to create a desirable naming
 		 */
-		switch-eeprom = &switch;
-		microwire-eeprom = &microwire_eeprom;
+		switch-eeprom = &{mdio_gpio/switch@0};
+		microwire-eeprom = &{spi_gpio/eeprom@0};
 	};
 };
 
-&ecspi1 {
-	spinor: flash@1 {
-		partition@0 {
-			/*
-			 * Do not change the size of this
-			 * partition. RDU1's BBU code relies on
-			 * "barebox" partition starting at 1024 byte
-			 * mark to function properly
-			 */
-			label = "config";
-			reg = <0x0 0x400>;
-		};
+spinor: &{ecspi1/flash@1} {
+	partition@0 {
+		/*
+		 * Do not change the size of this
+		 * partition. RDU1's BBU code relies on
+		 * "barebox" partition starting at 1024 byte
+		 * mark to function properly
+		 */
+		label = "config";
+		reg = <0x0 0x400>;
+	};
 
-		partition@400 {
-			label = "barebox";
-			reg = <0x400 0xdfc00>;
-		};
+	partition@400 {
+		label = "barebox";
+		reg = <0x400 0xdfc00>;
+	};
 
-		env_spinor: partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
+	env_spinor: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
 	};
 };
 
@@ -99,33 +97,21 @@
 	};
 };
 
-&mdio_gpio {
-	switch: switch@0 {};
+&{uart3/rave-sp/watchdog} {
+	nvmem-cells = <&boot_source>;
+	nvmem-cell-names = "boot-source";
 };
 
-&spi_gpio {
-	microwire_eeprom: eeprom@0 {};
-};
-
-&uart3 {
-	rave-sp {
-		watchdog {
-			nvmem-cells = <&boot_source>;
-			nvmem-cell-names = "boot-source";
-		};
+&{uart3/rave-sp/eeprom@a4} {
+	nvmem-cells = <&shadow_config>;
+	nvmem-cell-names = "shadow-config";
 
-		eeprom@a4 {
-			nvmem-cells = <&shadow_config>;
-			nvmem-cell-names = "shadow-config";
-
-			boot_source: boot-source@83 {
-				reg = <0x83 1>;
-			};
+	boot_source: boot-source@83 {
+		reg = <0x83 1>;
+	};
 
-			shadow_config: shadow-config@1000 {
-				reg = <0x1000 0x400>;
-			};
-		};
+	shadow_config: shadow-config@1000 {
+		reg = <0x1000 0x400>;
 	};
 };
 
@@ -133,44 +119,41 @@
 	status = "disabled";
 };
 
-&iomuxc {
-	pinctrl_usbh1: usbh1grp {
-
-		/*
-		 * Overwrite upstream USBH1,2 iomux settings to match
-		 * the setting U-Boot would set these to. Remove this
-		 * once this is fixed upstream.
-		 */
-		fsl,pins = <
-			MX51_PAD_USBH1_STP__USBH1_STP		0x1e5
-			MX51_PAD_USBH1_CLK__USBH1_CLK		0x1e5
-			MX51_PAD_USBH1_DIR__USBH1_DIR		0x1e5
-			MX51_PAD_USBH1_NXT__USBH1_NXT		0x1e5
-			MX51_PAD_USBH1_DATA0__USBH1_DATA0	0x1e5
-			MX51_PAD_USBH1_DATA1__USBH1_DATA1	0x1e5
-			MX51_PAD_USBH1_DATA2__USBH1_DATA2	0x1e5
-			MX51_PAD_USBH1_DATA3__USBH1_DATA3	0x1e5
-			MX51_PAD_USBH1_DATA4__USBH1_DATA4	0x1e5
-			MX51_PAD_USBH1_DATA5__USBH1_DATA5	0x1e5
-			MX51_PAD_USBH1_DATA6__USBH1_DATA6	0x1e5
-			MX51_PAD_USBH1_DATA7__USBH1_DATA7	0x1e5
-		>;
-	};
+&pinctrl_usbh1 {
+	/*
+	 * Overwrite upstream USBH1,2 iomux settings to match
+	 * the setting U-Boot would set these to. Remove this
+	 * once this is fixed upstream.
+	 */
+	fsl,pins = <
+		MX51_PAD_USBH1_STP__USBH1_STP		0x1e5
+		MX51_PAD_USBH1_CLK__USBH1_CLK		0x1e5
+		MX51_PAD_USBH1_DIR__USBH1_DIR		0x1e5
+		MX51_PAD_USBH1_NXT__USBH1_NXT		0x1e5
+		MX51_PAD_USBH1_DATA0__USBH1_DATA0	0x1e5
+		MX51_PAD_USBH1_DATA1__USBH1_DATA1	0x1e5
+		MX51_PAD_USBH1_DATA2__USBH1_DATA2	0x1e5
+		MX51_PAD_USBH1_DATA3__USBH1_DATA3	0x1e5
+		MX51_PAD_USBH1_DATA4__USBH1_DATA4	0x1e5
+		MX51_PAD_USBH1_DATA5__USBH1_DATA5	0x1e5
+		MX51_PAD_USBH1_DATA6__USBH1_DATA6	0x1e5
+		MX51_PAD_USBH1_DATA7__USBH1_DATA7	0x1e5
+	>;
+};
 
-	pinctrl_usbh2: usbh2grp {
-		fsl,pins = <
-			MX51_PAD_EIM_A26__USBH2_STP		0x1e5
-			MX51_PAD_EIM_A24__USBH2_CLK		0x1e5
-			MX51_PAD_EIM_A25__USBH2_DIR		0x1e5
-			MX51_PAD_EIM_A27__USBH2_NXT		0x1e5
-			MX51_PAD_EIM_D16__USBH2_DATA0		0x1e5
-			MX51_PAD_EIM_D17__USBH2_DATA1		0x1e5
-			MX51_PAD_EIM_D18__USBH2_DATA2		0x1e5
-			MX51_PAD_EIM_D19__USBH2_DATA3		0x1e5
-			MX51_PAD_EIM_D20__USBH2_DATA4		0x1e5
-			MX51_PAD_EIM_D21__USBH2_DATA5		0x1e5
-			MX51_PAD_EIM_D22__USBH2_DATA6		0x1e5
-			MX51_PAD_EIM_D23__USBH2_DATA7		0x1e5
-		>;
-	};
+&pinctrl_usbh2 {
+	fsl,pins = <
+		MX51_PAD_EIM_A26__USBH2_STP		0x1e5
+		MX51_PAD_EIM_A24__USBH2_CLK		0x1e5
+		MX51_PAD_EIM_A25__USBH2_DIR		0x1e5
+		MX51_PAD_EIM_A27__USBH2_NXT		0x1e5
+		MX51_PAD_EIM_D16__USBH2_DATA0		0x1e5
+		MX51_PAD_EIM_D17__USBH2_DATA1		0x1e5
+		MX51_PAD_EIM_D18__USBH2_DATA2		0x1e5
+		MX51_PAD_EIM_D19__USBH2_DATA3		0x1e5
+		MX51_PAD_EIM_D20__USBH2_DATA4		0x1e5
+		MX51_PAD_EIM_D21__USBH2_DATA5		0x1e5
+		MX51_PAD_EIM_D22__USBH2_DATA6		0x1e5
+		MX51_PAD_EIM_D23__USBH2_DATA7		0x1e5
+	>;
 };
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 994e43b53b64..2e6a74dde019 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -178,34 +178,27 @@
 	};
 };
 
-&uart4 {
-	rave-sp {
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		watchdog {
-			nvmem-cells = <&boot_source>;
-			nvmem-cell-names = "boot-source";
-		};
+&{uart4/rave-sp/watchdog} {
+	nvmem-cells = <&boot_source>;
+	nvmem-cell-names = "boot-source";
+};
 
-		eeprom@a4 {
-			lru_part_number: lru-part-number@21 {
-				reg = <0x21 15>;
-				read-only;
-			};
+&{uart4/rave-sp/eeprom@a4} {
+	lru_part_number: lru-part-number@21 {
+		reg = <0x21 15>;
+		read-only;
+	};
 
-			boot_source: boot-source@83 {
-				reg = <0x83 1>;
-			};
+	boot_source: boot-source@83 {
+		reg = <0x83 1>;
+	};
 
-			mac_address_0: mac-address@180 {
-				reg = <0x180 6>;
-			};
+	mac_address_0: mac-address@180 {
+		reg = <0x180 6>;
+	};
 
-			mac_address_1: mac-address@190 {
-				reg = <0x190 6>;
-			};
-		};
+	mac_address_1: mac-address@190 {
+		reg = <0x190 6>;
 	};
 };
 
@@ -231,22 +224,16 @@
 	nvmem-cell-names = "mac-address";
 };
 
-&i2c1 {
-	edp-bridge@68 {
-		pinctrl-0 = <&pinctrl_tc358767>, <&pinctrl_disp0>;
-	};
+&{i2c1/edp-bridge@68} {
+	pinctrl-0 = <&pinctrl_tc358767>, <&pinctrl_disp0>;
 };
 
-&i2c2 {
-	temp-sense@48 {
-		barebox,sensor-name = "Temp Sensor 1";
-	};
+&{i2c2/temp-sense@48} {
+	barebox,sensor-name = "Temp Sensor 1";
 };
 
-&ldb {
-	lvds-channel@0 {
-		fsl,data-width = <24>;
-	};
+&{ldb/lvds-channel@0} {
+	fsl,data-width = <24>;
 };
 
 &i210 {
diff --git a/arch/arm/dts/imx7d-zii-rmu2.dts b/arch/arm/dts/imx7d-zii-rmu2.dts
index 41566f54a112..17d625b83e23 100644
--- a/arch/arm/dts/imx7d-zii-rmu2.dts
+++ b/arch/arm/dts/imx7d-zii-rmu2.dts
@@ -18,37 +18,28 @@
 	/delete-property/ assigned-clock-parents;
 };
 
-&ecspi1 {
-	nor_flash: flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xc0000>;
-		};
-
-		partition@c0000 {
-			label = "barebox-environment";
-			reg = <0xc0000 0x40000>;
-		};
+nor_flash: &{ecspi1/flash@0} {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xc0000>;
+	};
+
+	partition@c0000 {
+		label = "barebox-environment";
+		reg = <0xc0000 0x40000>;
 	};
 };
 
-&uart4 {
-	rave-sp {
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		watchdog {
-			nvmem-cells = <&boot_source>;
-			nvmem-cell-names = "boot-source";
-		};
-
-		eeprom@a3 {
-			boot_source: boot-source@83 {
-				reg = <0x83 1>;
-			};
-		};
+&{uart4/rave-sp/watchdog} {
+	nvmem-cells = <&boot_source>;
+	nvmem-cell-names = "boot-source";
+};
+
+&{uart4/rave-sp/eeprom@a3} {
+	boot_source: boot-source@83 {
+		reg = <0x83 1>;
 	};
 };
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index dc6d743f29cd..27ffebc154f4 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -64,31 +64,27 @@
 	nvmem-cell-names = "mac-address";
 };
 
-&uart2 {
-	rave-sp {
-		watchdog {
-			nvmem-cells = <&boot_source>;
-			nvmem-cell-names = "boot-source";
-		};
+&{uart2/rave-sp/watchdog} {
+	nvmem-cells = <&boot_source>;
+	nvmem-cell-names = "boot-source";
+};
 
-		eeprom@a4 {
-			lru_part_number: lru-part-number@21 {
-				reg = <0x21 15>;
-				read-only;
-			};
+&{uart2/rave-sp/eeprom@a4} {
+	lru_part_number: lru-part-number@21 {
+		reg = <0x21 15>;
+		read-only;
+	};
 
-			boot_source: boot-source@83 {
-				reg = <0x83 1>;
-			};
+	boot_source: boot-source@83 {
+		reg = <0x83 1>;
+	};
 
-			mac_address_0: mac-address@180 {
-				reg = <0x180 6>;
-			};
+	mac_address_0: mac-address@180 {
+		reg = <0x180 6>;
+	};
 
-			mac_address_1: mac-address@190 {
-				reg = <0x190 6>;
-			};
-		};
+	mac_address_1: mac-address@190 {
+		reg = <0x190 6>;
 	};
 };
 
-- 
2.30.2



