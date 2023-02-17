Delivery-date: Fri, 17 Feb 2023 18:34:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ce-00AI8k-J6
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:34:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ca-0005Tq-MN
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:34:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyaH6GwBBdbT0w0S7F/JxSUuPiaqcEPCGjXtmEZqWUE=; b=oSe/SMt1zepvgTaVKkZ9FwNg1E
	tLmze4BgHyh6eAmnjfkc7KjBwfXUen9VVHDMHFn4kDWqrntfLEqapaZqM+Vdx0eCXng8+3OC/2+WQ
	mwxjm/nVK+DfXjPQRFQGxuUJnvauNMOW9gSczzKZaMz+2rMqIN8DnXFahT8ya2f6KkjoNM30d/Z81
	3oPixxVB/MVkTIMYC4ndUAve7njRuTScz8DhIOt3xnmE7+r6mnxLwQrFK3fphjMzSBat+loNXjOX2
	f24XF5QoWPJCRBKFk0+SDv+Jcm2NrW0RKb4hzIaFBrkifxLyKMj/ZBdPt5X3pYJACCaUOpXbY5uJl
	iMlOHLjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4bK-00FGND-5Q; Fri, 17 Feb 2023 17:32:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFFn-04
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-0004Ar-Mz; Fri, 17 Feb 2023 18:31:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZX-005dTS-O1; Fri, 17 Feb 2023 18:31:00 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixf-0B; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:43 +0100
Message-Id: <20230217173057.1839835-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_663945_FFB7C916 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH v1 06/20] ARM: dts: tegra: switch to path and label references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tegra boards broke, because upstream renamed nodes, like sdhci -> mmc.
Let's switch everything to references to fix the breakage and avoid
future breakage due to renames.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/tegra124.dtsi            |   58 +-
 arch/arm/dts/tegra20-colibri-iris.dts |   98 +-
 arch/arm/dts/tegra20.dtsi             |    8 +-
 arch/arm/dts/tegra30-beaver.dts       | 1442 ++++++++++++-------------
 arch/arm/dts/tegra30.dtsi             |    8 +-
 5 files changed, 805 insertions(+), 809 deletions(-)

diff --git a/arch/arm/dts/tegra124.dtsi b/arch/arm/dts/tegra124.dtsi
index ce618db78c14..abfa5f47bae6 100644
--- a/arch/arm/dts/tegra124.dtsi
+++ b/arch/arm/dts/tegra124.dtsi
@@ -2,41 +2,41 @@
 
 / {
 	aliases {
-		mmc0 = "/sdhci@700b0000/";
-		mmc1 = "/sdhci@700b0200/";
-		mmc2 = "/sdhci@700b0400/";
-		mmc3 = "/sdhci@700b0600/";
+		mmc0 = &{/mmc@700b0000};
+		mmc1 = &{/mmc@700b0200};
+		mmc2 = &{/mmc@700b0400};
+		mmc3 = &{/mmc@700b0600};
 	};
+};
 
-	pcie-controller@01003000 {
-		phys = <&padctl TEGRA_XUSB_PADCTL_PCIE>;
-		phy-names = "pcie";
-	};
+&{/pcie@1003000} {
+	phys = <&padctl TEGRA_XUSB_PADCTL_PCIE>;
+	phy-names = "pcie";
+};
 
-	padctl@7009f000 {
-		pinctrl-0 = <&padctl_default>;
-		pinctrl-names = "default";
-		#phy-cells = <1>;
+&padctl {
+	pinctrl-0 = <&padctl_default>;
+	pinctrl-names = "default";
+	#phy-cells = <1>;
 
-		padctl_default: pinmux {
-			usb3 {
-				nvidia,lanes = "pcie-0", "pcie-1";
-				nvidia,function = "usb3";
-				nvidia,iddq = <0>;
-			};
+	padctl_default: pinmux {
+		usb3 {
+			nvidia,lanes = "pcie-0", "pcie-1";
+			nvidia,function = "usb3";
+			nvidia,iddq = <0>;
+		};
 
-			pcie {
-				nvidia,lanes = "pcie-2", "pcie-3",
-				               "pcie-4";
-				nvidia,function = "pcie";
-				nvidia,iddq = <0>;
-			};
+		pcie {
+			nvidia,lanes = "pcie-2", "pcie-3",
+				       "pcie-4";
+			nvidia,function = "pcie";
+			nvidia,iddq = <0>;
+		};
 
-			sata {
-				nvidia,lanes = "sata-0";
-				nvidia,function = "sata";
-				nvidia,iddq = <0>;
-			};
+		sata {
+			nvidia,lanes = "sata-0";
+			nvidia,function = "sata";
+			nvidia,iddq = <0>;
 		};
 	};
 };
diff --git a/arch/arm/dts/tegra20-colibri-iris.dts b/arch/arm/dts/tegra20-colibri-iris.dts
index da5ef7a7e70c..e8bd8feb3138 100644
--- a/arch/arm/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/dts/tegra20-colibri-iris.dts
@@ -9,72 +9,70 @@
 	chosen {
 		stdout-path = &uarta;
 	};
+};
 
-	host1x@50000000 {
-		hdmi@54280000 {
-			status = "okay";
-		};
-	};
-
-	pinmux@70000014 {
-		state_default: pinmux {
-			hdint {
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-
-			i2cddc {
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-
-			sdio4 {
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-
-			uarta {
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
+&{/host1x@50000000/hdmi@54280000} {
+	status = "okay";
+};
 
-			uartd {
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-		};
+&pinmux {
+	hdint {
+		nvidia,tristate = <TEGRA_PIN_DISABLE>;
 	};
 
-	serial@70006000 {
-		status = "okay";
+	i2cddc {
+		nvidia,tristate = <TEGRA_PIN_DISABLE>;
 	};
 
-	serial@70006300 {
-		status = "okay";
+	sdio4 {
+		nvidia,tristate = <TEGRA_PIN_DISABLE>;
 	};
 
-	i2c_ddc: i2c@7000c400 {
-		status = "okay";
+	uarta {
+		nvidia,tristate = <TEGRA_PIN_DISABLE>;
 	};
 
-	usb@c5000000 {
-		status = "okay";
+	uartd {
+		nvidia,tristate = <TEGRA_PIN_DISABLE>;
 	};
+};
 
-	usb-phy@c5000000 {
-		status = "okay";
-	};
+&uarta {
+	status = "okay";
+};
 
-	usb@c5008000 {
-		status = "okay";
-	};
+&uartd {
+	status = "okay";
+};
 
-	usb-phy@c5008000 {
-		status = "okay";
-	};
+i2c_ddc: &i2c2 {
+	status = "okay";
+};
 
-	sdhci@c8000600 {
-		status = "okay";
-		bus-width = <4>;
-		vmmc-supply = <&vcc_sd_reg>;
-		vqmmc-supply = <&vcc_sd_reg>;
-	};
+&{/usb@c5000000} {
+	status = "okay";
+};
+
+&phy1 {
+	status = "okay";
+};
+
+&{/usb@c5008000} {
+	status = "okay";
+};
+
+&phy3 {
+	status = "okay";
+};
 
+&{/mmc@c8000600} {
+	status = "okay";
+	bus-width = <4>;
+	vmmc-supply = <&vcc_sd_reg>;
+	vqmmc-supply = <&vcc_sd_reg>;
+};
+
+/ {
 	regulator_usb_host_vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb_host_vbus";
diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index 995eee4a6e9c..02425874f6bb 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -1,8 +1,8 @@
 / {
 	aliases {
-		mmc0 = "/sdhci@c8000000/";
-		mmc1 = "/sdhci@c8000200/";
-		mmc2 = "/sdhci@c8000400/";
-		mmc3 = "/sdhci@c8000600/";
+		mmc0 = &{/mmc@c8000000};
+		mmc1 = &{/mmc@c8000200};
+		mmc2 = &{/mmc@c8000400};
+		mmc3 = &{/mmc@c8000600};
 	};
 };
diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index 7a9ced6cef0f..458bef6add9d 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -8,8 +8,8 @@
 	compatible = "nvidia,beaver", "nvidia,tegra30";
 
 	aliases {
-		rtc0 = "/i2c@7000d000/tps65911@2d";
-		rtc1 = "/rtc@7000e000";
+		rtc0 = &pmic;
+		rtc1 = &{/rtc@7000e000};
 		serial0 = &uarta;
 	};
 
@@ -21,766 +21,764 @@
 			device-path = &emmc, "partname:boot1";
 		};
 	};
+};
+
+&{/pcie@3000} {
+	status = "okay";
+	pex-clk-supply = <&sys_3v3_pexs_reg>;
+	vdd-supply = <&ldo1_reg>;
+	avdd-supply = <&ldo2_reg>;
 
-	pcie-controller@00003000 {
+	pci@1,0 {
 		status = "okay";
-		pex-clk-supply = <&sys_3v3_pexs_reg>;
-		vdd-supply = <&ldo1_reg>;
-		avdd-supply = <&ldo2_reg>;
+		nvidia,num-lanes = <2>;
+	};
 
-		pci@1,0 {
-			status = "okay";
-			nvidia,num-lanes = <2>;
-		};
+	pci@2,0 {
+		nvidia,num-lanes = <2>;
+	};
 
-		pci@2,0 {
-			nvidia,num-lanes = <2>;
-		};
+	pci@3,0 {
+		status = "okay";
+		nvidia,num-lanes = <2>;
+	};
+};
+
+&{/host1x@50000000/hdmi@54280000} {
+	status = "okay";
+
+	vdd-supply = <&sys_3v3_reg>;
+	pll-supply = <&vio_reg>;
+
+	nvidia,hpd-gpio =
+		<&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+	nvidia,ddc-i2c-bus = <&hdmiddc>;
+};
+
+&pinmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&state_default>;
 
-		pci@3,0 {
-			status = "okay";
-			nvidia,num-lanes = <2>;
+	state_default: pinmux {
+		sdmmc1_clk_pz0 {
+			nvidia,pins = "sdmmc1_clk_pz0";
+			nvidia,function = "sdmmc1";
+			nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		sdmmc1_cmd_pz1 {
+			nvidia,pins =	"sdmmc1_cmd_pz1",
+					"sdmmc1_dat0_py7",
+					"sdmmc1_dat1_py6",
+					"sdmmc1_dat2_py5",
+					"sdmmc1_dat3_py4";
+			nvidia,function = "sdmmc1";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		sdmmc3_clk_pa6 {
+			nvidia,pins = "sdmmc3_clk_pa6";
+			nvidia,function = "sdmmc3";
+			nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		sdmmc3_cmd_pa7 {
+			nvidia,pins =	"sdmmc3_cmd_pa7",
+					"sdmmc3_dat0_pb7",
+					"sdmmc3_dat1_pb6",
+					"sdmmc3_dat2_pb5",
+					"sdmmc3_dat3_pb4";
+			nvidia,function = "sdmmc3";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		sdmmc3_gpio {
+			nvidia,pins =	"sdmmc3_dat4_pd1",
+					"sdmmc3_dat5_pd0";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		sdmmc4_rst {
+			nvidia,pins =	"sdmmc4_rst_n_pcc3";
+			nvidia,function = "sdmmc4";
+			nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		sdmmc4_clk_pcc4 {
+			nvidia,pins =	"sdmmc4_clk_pcc4";
+			nvidia,function = "sdmmc4";
+			nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		sdmmc4_dat0_paa0 {
+			nvidia,pins =	"sdmmc4_cmd_pt7",
+					"sdmmc4_dat0_paa0",
+					"sdmmc4_dat1_paa1",
+					"sdmmc4_dat2_paa2",
+					"sdmmc4_dat3_paa3",
+					"sdmmc4_dat4_paa4",
+					"sdmmc4_dat5_paa5",
+					"sdmmc4_dat6_paa6",
+					"sdmmc4_dat7_paa7";
+			nvidia,function = "sdmmc4";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		crt {
+			nvidia,pins =	"crt_hsync_pv6",
+					"crt_vsync_pv7";
+			nvidia,function = "crt";
+			nvidia,tristate = <TEGRA_PIN_ENABLE>;
+		};
+		dap {
+			nvidia,pins =	"clk1_req_pee2",
+					"clk2_req_pcc5";
+			nvidia,function = "dap";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		dev3 {
+			nvidia,pins =	"clk3_req_pee1";
+			nvidia,function = "dev3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		dap1 {
+			nvidia,pins =	"dap1_fs_pn0", "dap1_dout_pn2",
+					"dap1_din_pn1", "dap1_sclk_pn3";
+			nvidia,function = "i2s0";
+			nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		dap2_fs_pa2 {
+			nvidia,pins =	"dap2_fs_pa2",
+					"dap2_sclk_pa3",
+					"dap2_din_pa4",
+					"dap2_dout_pa5";
+			nvidia,function = "i2s1";
+			nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		dap3 {
+			nvidia,pins =	"dap3_fs_pp0", "dap3_dout_pp2",
+					"dap3_din_pp1", "dap3_sclk_pp3";
+			nvidia,function = "i2s2";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		dap4 {
+			nvidia,pins =	"dap4_fs_pp4", "dap4_dout_pp6",
+					"dap4_din_pp5", "dap4_sclk_pp7";
+			nvidia,function = "i2s3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		pex_in {
+			nvidia,pins =	"pex_l0_prsnt_n_pdd0",
+					"pex_l0_clkreq_n_pdd2",
+					"pex_l2_prsnt_n_pdd7",
+					"pex_l2_clkreq_n_pcc7",
+					"pex_wake_n_pdd3";
+			nvidia,function = "pcie";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		pex_out {
+			nvidia,pins =	"pex_l0_rst_n_pdd1",
+					"pex_l1_rst_n_pdd5",
+					"pex_l2_rst_n_pcc6";
+			nvidia,function = "pcie";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		pex_l1_prsnt_n_pdd4 {
+			nvidia,pins =	"pex_l1_prsnt_n_pdd4",
+					"pex_l1_clkreq_n_pdd6";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		};
+		sdio1 {
+			nvidia,pins = "drive_sdio1";
+			nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
+			nvidia,schmitt = <TEGRA_PIN_DISABLE>;
+			nvidia,pull-down-strength = <46>;
+			nvidia,pull-up-strength = <42>;
+			nvidia,slew-rate-rising = <1>;
+			nvidia,slew-rate-falling = <1>;
+		};
+		sdio3 {
+			nvidia,pins = "drive_sdio3";
+			nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
+			nvidia,schmitt = <TEGRA_PIN_DISABLE>;
+			nvidia,pull-down-strength = <46>;
+			nvidia,pull-up-strength = <42>;
+			nvidia,slew-rate-rising = <1>;
+			nvidia,slew-rate-falling = <1>;
+		};
+		gpv {
+			nvidia,pins = "drive_gpv";
+			nvidia,pull-up-strength = <16>;
+		};
+		uarta {
+			nvidia,pins =	"ulpi_data0_po1",
+					"ulpi_data1_po2",
+					"ulpi_data2_po3",
+					"ulpi_data3_po4",
+					"ulpi_data4_po5",
+					"ulpi_data5_po6",
+					"ulpi_data6_po7",
+					"ulpi_data7_po0";
+			nvidia,function = "uarta";
+			nvidia,tristate = <0>;
+		};
+		pu {
+			nvidia,pins =	"pu0", "pu1", "pu2", "pu3",
+					"pu4", "pu5", "pu6";
+			nvidia,function = "rsvd4";
+			nvidia,tristate = <TEGRA_PIN_ENABLE>;
+		};
+		uartb {
+			nvidia,pins =	"uart2_txd_pc2",
+					"uart2_rxd_pc3",
+					"uart2_cts_n_pj5",
+					"uart2_rts_n_pj6";
+			nvidia,function = "uartb";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		uartc {
+			nvidia,pins =	"uart3_txd_pw6",
+					"uart3_rxd_pw7",
+					"uart3_cts_n_pa1",
+					"uart3_rts_n_pc0";
+			nvidia,function = "uartc";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		uartd {
+			nvidia,pins =	"ulpi_clk_py0", "ulpi_dir_py1",
+					"ulpi_nxt_py2", "ulpi_stp_py3";
+			nvidia,function = "uartd";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		i2c1 {
+			nvidia,pins =	"gen1_i2c_scl_pc4",
+					"gen1_i2c_sda_pc5";
+			nvidia,function = "i2c1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+		};
+		i2c2 {
+			nvidia,pins =	"gen2_i2c_scl_pt5",
+					"gen2_i2c_sda_pt6";
+			nvidia,function = "i2c2";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+		};
+		i2c3 {
+			nvidia,pins =	"cam_i2c_scl_pbb1",
+					"cam_i2c_sda_pbb2";
+			nvidia,function = "i2c3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+		};
+		i2c4 {
+			nvidia,pins =	"ddc_scl_pv4",
+					"ddc_sda_pv5";
+			nvidia,function = "i2c4";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+		};
+		i2cpwr {
+			nvidia,pins =	"pwr_i2c_scl_pz6",
+					"pwr_i2c_sda_pz7";
+			nvidia,function = "i2cpwr";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+		};
+		spi1 {
+			nvidia,pins =	"spi1_mosi_px4",
+					"spi1_sck_px5",
+					"spi1_cs0_n_px6",
+					"spi1_miso_px7";
+			nvidia,function = "spi1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		spi2_up {
+			nvidia,pins =	"spi2_cs1_n_pw2";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		};
+		spi4 {
+			nvidia,pins =	"gmi_a16_pj7", "gmi_a17_pb0",
+					"gmi_a18_pb1", "gmi_a19_pk7";
+			nvidia,function = "spi4";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		spdif {
+			nvidia,pins =	"spdif_out_pk5", "spdif_in_pk6";
+			nvidia,function = "spdif";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		hdmi_int {
+			nvidia,pins =	"hdmi_int_pn7";
+			nvidia,function = "hdmi";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		hdmi_cec {
+			nvidia,pins =	"hdmi_cec_pee3";
+			nvidia,function = "cec";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		ddr {
+			nvidia,pins =	"vi_d10_pt2", "vi_vsync_pd6",
+					"vi_hsync_pd7";
+			nvidia,function = "ddr";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+		};
+		ddr_up {
+			nvidia,pins =	"vi_d11_pt3";
+			nvidia,function = "ddr";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		vi {
+			nvidia,pins =	"vi_d4_pl2", "vi_mclk_pt1",
+					"vi_d6_pl4";
+			nvidia,function = "vi";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		owr {
+			nvidia,pins =	"pv2", "pu0", "owr";
+			nvidia,function = "owr";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		lcd {
+			nvidia,pins =	"lcd_pwr1_pc1", "lcd_pwr2_pc6",
+					"lcd_sdin_pz2", "lcd_sdout_pn5",
+					"lcd_wr_n_pz3", "lcd_cs0_n_pn4",
+					"lcd_dc0_pn6", "lcd_sck_pz4",
+					"lcd_pwr0_pb2", "lcd_pclk_pb3",
+					"lcd_de_pj1", "lcd_hsync_pj3",
+					"lcd_vsync_pj4", "lcd_d0_pe0",
+					"lcd_d1_pe1", "lcd_d2_pe2",
+					"lcd_d3_pe3", "lcd_d4_pe4",
+					"lcd_d5_pe5", "lcd_d6_pe6",
+					"lcd_d7_pe7", "lcd_d8_pf0",
+					"lcd_d9_pf1", "lcd_d10_pf2",
+					"lcd_d11_pf3", "lcd_d12_pf4",
+					"lcd_d13_pf5", "lcd_d14_pf6",
+					"lcd_d15_pf7", "lcd_d16_pm0",
+					"lcd_d17_pm1", "lcd_d18_pm2",
+					"lcd_d19_pm3", "lcd_d20_pm4",
+					"lcd_d21_pm5", "lcd_d22_pm6",
+					"lcd_d23_pm7", "lcd_cs1_n_pw0",
+					"lcd_m1_pw1", "lcd_dc1_pd2";
+			nvidia,function = "displaya";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		kbc {
+			nvidia,pins =	"kb_row0_pr0", "kb_row1_pr1",
+					"kb_row2_pr2", "kb_row3_pr3",
+					"kb_row4_pr4", "kb_row5_pr5",
+					"kb_row6_pr6", "kb_row7_pr7",
+					"kb_row9_ps1", "kb_row8_ps0",
+					"kb_row10_ps2", "kb_row11_ps3",
+					"kb_row12_ps4", "kb_row13_ps5",
+					"kb_row14_ps6", "kb_row15_ps7",
+					"kb_col0_pq0", "kb_col1_pq1",
+					"kb_col2_pq2", "kb_col3_pq3",
+					"kb_col4_pq4", "kb_col5_pq5",
+					"kb_col6_pq6", "kb_col7_pq7";
+			nvidia,function = "kbc";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_vi {
+			nvidia,pins =	"vi_d1_pd5", "vi_d2_pl0",
+					"vi_d3_pl1", "vi_d5_pl3",
+					"vi_d7_pl5", "vi_d8_pl6",
+					"vi_d9_pl7";
+			nvidia,function = "sdmmc2";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_pbb0 {
+			nvidia,pins =	"pbb0", "pbb7", "pcc1", "pcc2";
+			nvidia,function = "i2s4";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_pbb3 {
+			nvidia,pins =	"pbb3";
+			nvidia,function = "vgp3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_pbb4 {
+			nvidia,pins =	"pbb4";
+			nvidia,function = "vgp4";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_pbb5 {
+			nvidia,pins =	"pbb5";
+			nvidia,function = "vgp5";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_pbb6 {
+			nvidia,pins =	"pbb6";
+			nvidia,function = "vgp6";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+		};
+		gpio_pu1 {
+			nvidia,pins =	"pu1", "pu2";
+			nvidia,function = "rsvd1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		gpio_pv0 {
+			nvidia,pins =	"pv0", "gmi_cs2_n_pk3";
+			nvidia,function = "rsvd1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		};
+		gpio_pv3 {
+			nvidia,pins =	"pv3";
+			nvidia,function = "clk_12m_out";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		gpio_gmi {
+			nvidia,pins =	"spi2_sck_px2", "gmi_wp_n_pc7";
+			nvidia,function = "gmi";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		gpio_gmi_ad {
+			nvidia,pins =	"gmi_ad10_ph2", "gmi_ad14_ph6";
+			nvidia,function = "nand";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		gpio_gmi_ad_up {
+			nvidia,pins =	"gmi_ad12_ph4";
+			nvidia,function = "nand";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		};
+		gpio_gmi_iordy_up {
+			nvidia,pins =	"gmi_iordy_pi5";
+			nvidia,function = "rsvd1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		};
+		pwm0 {
+			nvidia,pins =	"gmi_ad8_ph0", "pu3";
+			nvidia,function = "pwm0";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		pwm1 {
+			nvidia,pins =	"pu4";
+			nvidia,function = "pwm1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		pwm2 {
+			nvidia,pins =	"pu5";
+			nvidia,function = "pwm2";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		pwm3 {
+			nvidia,pins =	"pu6";
+			nvidia,function = "pwm3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		extperiph1 {
+			nvidia,pins =	"clk1_out_pw4";
+			nvidia,function = "extperiph1";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		extperiph2 {
+			nvidia,pins =	"clk2_out_pw5";
+			nvidia,function = "extperiph2";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		extperiph3 {
+			nvidia,pins =	"clk3_out_pee0";
+			nvidia,function = "extperiph3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		jtag {
+			nvidia,pins =	"jtag_rtck_pu7";
+			nvidia,function = "rtck";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		blink {
+			nvidia,pins =	"clk_32k_out_pa0";
+			nvidia,function = "blink";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		sysclk {
+			nvidia,pins =	"sys_clk_req_pz5";
+			nvidia,function = "sysclk";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+		};
+		cam_mclk {
+			nvidia,pins =	"cam_mclk_pcc0";
+			nvidia,function = "vi_alt3";
+			nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		};
+		vi_pclk {
+			nvidia,pins =	"vi_pclk_pt0";
+			nvidia,function = "rsvd1";
+			nvidia,tristate = <TEGRA_PIN_ENABLE>;
+			nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+		};
+		unused {
+			nvidia,pins =	"gmi_adv_n_pk0", "gmi_clk_pk1",
+					"gmi_cs3_n_pk4", "gmi_ad0_pg0",
+					"gmi_ad1_pg1", "gmi_ad2_pg2",
+					"gmi_ad3_pg3", "gmi_ad4_pg4",
+					"gmi_ad5_pg5", "gmi_ad6_pg6",
+					"gmi_ad7_pg7", "gmi_ad9_ph1",
+					"gmi_ad11_ph3", "gmi_wr_n_pi0",
+					"gmi_oe_n_pi1", "gmi_dqs_pi2";
+			nvidia,function = "nand";
+			nvidia,tristate = <TEGRA_PIN_ENABLE>;
+		};
+		unused_pu {
+			nvidia,pins =	"gmi_wait_pi7", "gmi_cs7_n_pi6",
+					"gmi_ad13_ph5";
+			nvidia,function = "nand";
+			nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			nvidia,tristate = <TEGRA_PIN_ENABLE>;
 		};
 	};
+};
 
-	host1x@50000000 {
-		hdmi@54280000 {
-			status = "okay";
+&uarta {
+	status = "okay";
+};
 
-			vdd-supply = <&sys_3v3_reg>;
-			pll-supply = <&vio_reg>;
+&{/i2c@7000c000} {
+	status = "okay";
+	clock-frequency = <100000>;
+};
 
-			nvidia,hpd-gpio =
-				<&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
-			nvidia,ddc-i2c-bus = <&hdmiddc>;
-		};
+&{/i2c@7000c400} {
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&{/i2c@7000c500} {
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+hdmiddc: &{/i2c@7000c700} {
+	status = "okay" ;
+	clock-frequency = <100000>;
+};
+
+&{/i2c@7000d000} {
+	status = "okay";
+	clock-frequency = <100000>;
+
+	rt5640: rt5640@1c {
+		compatible = "realtek,rt5640";
+		reg = <0x1c>;
+		interrupt-parent = <&gpio>;
+		interrupts = <TEGRA_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
+		realtek,ldo1-en-gpios =
+			<&gpio TEGRA_GPIO(X, 2) GPIO_ACTIVE_HIGH>;
 	};
 
-	pinmux@70000868 {
-		pinctrl-names = "default";
-		pinctrl-0 = <&state_default>;
+	pmic: tps65911@2d {
+		compatible = "ti,tps65911";
+		reg = <0x2d>;
 
-		state_default: pinmux {
-			sdmmc1_clk_pz0 {
-				nvidia,pins = "sdmmc1_clk_pz0";
-				nvidia,function = "sdmmc1";
-				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			sdmmc1_cmd_pz1 {
-				nvidia,pins =	"sdmmc1_cmd_pz1",
-						"sdmmc1_dat0_py7",
-						"sdmmc1_dat1_py6",
-						"sdmmc1_dat2_py5",
-						"sdmmc1_dat3_py4";
-				nvidia,function = "sdmmc1";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			sdmmc3_clk_pa6 {
-				nvidia,pins = "sdmmc3_clk_pa6";
-				nvidia,function = "sdmmc3";
-				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			sdmmc3_cmd_pa7 {
-				nvidia,pins =	"sdmmc3_cmd_pa7",
-						"sdmmc3_dat0_pb7",
-						"sdmmc3_dat1_pb6",
-						"sdmmc3_dat2_pb5",
-						"sdmmc3_dat3_pb4";
-				nvidia,function = "sdmmc3";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			sdmmc3_gpio {
-				nvidia,pins =	"sdmmc3_dat4_pd1",
-						"sdmmc3_dat5_pd0";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			sdmmc4_rst {
-				nvidia,pins =	"sdmmc4_rst_n_pcc3";
-				nvidia,function = "sdmmc4";
-				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			sdmmc4_clk_pcc4 {
-				nvidia,pins =	"sdmmc4_clk_pcc4";
-				nvidia,function = "sdmmc4";
-				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			sdmmc4_dat0_paa0 {
-				nvidia,pins =	"sdmmc4_cmd_pt7",
-						"sdmmc4_dat0_paa0",
-						"sdmmc4_dat1_paa1",
-						"sdmmc4_dat2_paa2",
-						"sdmmc4_dat3_paa3",
-						"sdmmc4_dat4_paa4",
-						"sdmmc4_dat5_paa5",
-						"sdmmc4_dat6_paa6",
-						"sdmmc4_dat7_paa7";
-				nvidia,function = "sdmmc4";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			crt {
-				nvidia,pins =	"crt_hsync_pv6",
-						"crt_vsync_pv7";
-				nvidia,function = "crt";
-				nvidia,tristate = <TEGRA_PIN_ENABLE>;
-			};
-			dap {
-				nvidia,pins =	"clk1_req_pee2",
-						"clk2_req_pcc5";
-				nvidia,function = "dap";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			dev3 {
-				nvidia,pins =	"clk3_req_pee1";
-				nvidia,function = "dev3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			dap1 {
-				nvidia,pins =	"dap1_fs_pn0", "dap1_dout_pn2",
-						"dap1_din_pn1", "dap1_sclk_pn3";
-				nvidia,function = "i2s0";
-				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			dap2_fs_pa2 {
-				nvidia,pins =	"dap2_fs_pa2",
-						"dap2_sclk_pa3",
-						"dap2_din_pa4",
-						"dap2_dout_pa5";
-				nvidia,function = "i2s1";
-				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			dap3 {
-				nvidia,pins =	"dap3_fs_pp0", "dap3_dout_pp2",
-						"dap3_din_pp1", "dap3_sclk_pp3";
-				nvidia,function = "i2s2";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			dap4 {
-				nvidia,pins =	"dap4_fs_pp4", "dap4_dout_pp6",
-						"dap4_din_pp5", "dap4_sclk_pp7";
-				nvidia,function = "i2s3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			pex_in {
-				nvidia,pins =	"pex_l0_prsnt_n_pdd0",
-						"pex_l0_clkreq_n_pdd2",
-						"pex_l2_prsnt_n_pdd7",
-						"pex_l2_clkreq_n_pcc7",
-						"pex_wake_n_pdd3";
-				nvidia,function = "pcie";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			pex_out {
-				nvidia,pins =	"pex_l0_rst_n_pdd1",
-						"pex_l1_rst_n_pdd5",
-						"pex_l2_rst_n_pcc6";
-				nvidia,function = "pcie";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			pex_l1_prsnt_n_pdd4 {
-				nvidia,pins =	"pex_l1_prsnt_n_pdd4",
-						"pex_l1_clkreq_n_pdd6";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-			};
-			sdio1 {
-				nvidia,pins = "drive_sdio1";
-				nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
-				nvidia,schmitt = <TEGRA_PIN_DISABLE>;
-				nvidia,pull-down-strength = <46>;
-				nvidia,pull-up-strength = <42>;
-				nvidia,slew-rate-rising = <1>;
-				nvidia,slew-rate-falling = <1>;
-			};
-			sdio3 {
-				nvidia,pins = "drive_sdio3";
-				nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
-				nvidia,schmitt = <TEGRA_PIN_DISABLE>;
-				nvidia,pull-down-strength = <46>;
-				nvidia,pull-up-strength = <42>;
-				nvidia,slew-rate-rising = <1>;
-				nvidia,slew-rate-falling = <1>;
-			};
-			gpv {
-				nvidia,pins = "drive_gpv";
-				nvidia,pull-up-strength = <16>;
-			};
-			uarta {
-				nvidia,pins =	"ulpi_data0_po1",
-						"ulpi_data1_po2",
-						"ulpi_data2_po3",
-						"ulpi_data3_po4",
-						"ulpi_data4_po5",
-						"ulpi_data5_po6",
-						"ulpi_data6_po7",
-						"ulpi_data7_po0";
-				nvidia,function = "uarta";
-				nvidia,tristate = <0>;
-			};
-			pu {
-				nvidia,pins =	"pu0", "pu1", "pu2", "pu3",
-						"pu4", "pu5", "pu6";
-				nvidia,function = "rsvd4";
-				nvidia,tristate = <TEGRA_PIN_ENABLE>;
-			};
-			uartb {
-				nvidia,pins =	"uart2_txd_pc2",
-						"uart2_rxd_pc3",
-						"uart2_cts_n_pj5",
-						"uart2_rts_n_pj6";
-				nvidia,function = "uartb";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			uartc {
-				nvidia,pins =	"uart3_txd_pw6",
-						"uart3_rxd_pw7",
-						"uart3_cts_n_pa1",
-						"uart3_rts_n_pc0";
-				nvidia,function = "uartc";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			uartd {
-				nvidia,pins =	"ulpi_clk_py0", "ulpi_dir_py1",
-						"ulpi_nxt_py2", "ulpi_stp_py3";
-				nvidia,function = "uartd";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			i2c1 {
-				nvidia,pins =	"gen1_i2c_scl_pc4",
-						"gen1_i2c_sda_pc5";
-				nvidia,function = "i2c1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
-			};
-			i2c2 {
-				nvidia,pins =	"gen2_i2c_scl_pt5",
-						"gen2_i2c_sda_pt6";
-				nvidia,function = "i2c2";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
-			};
-			i2c3 {
-				nvidia,pins =	"cam_i2c_scl_pbb1",
-						"cam_i2c_sda_pbb2";
-				nvidia,function = "i2c3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
-			};
-			i2c4 {
-				nvidia,pins =	"ddc_scl_pv4",
-						"ddc_sda_pv5";
-				nvidia,function = "i2c4";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
-			};
-			i2cpwr {
-				nvidia,pins =	"pwr_i2c_scl_pz6",
-						"pwr_i2c_sda_pz7";
-				nvidia,function = "i2cpwr";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
-			};
-			spi1 {
-				nvidia,pins =	"spi1_mosi_px4",
-						"spi1_sck_px5",
-						"spi1_cs0_n_px6",
-						"spi1_miso_px7";
-				nvidia,function = "spi1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			spi2_up {
-				nvidia,pins =	"spi2_cs1_n_pw2";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-			};
-			spi4 {
-				nvidia,pins =	"gmi_a16_pj7", "gmi_a17_pb0",
-						"gmi_a18_pb1", "gmi_a19_pk7";
-				nvidia,function = "spi4";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			spdif {
-				nvidia,pins =	"spdif_out_pk5", "spdif_in_pk6";
-				nvidia,function = "spdif";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			hdmi_int {
-				nvidia,pins =	"hdmi_int_pn7";
-				nvidia,function = "hdmi";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			hdmi_cec {
-				nvidia,pins =	"hdmi_cec_pee3";
-				nvidia,function = "cec";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			ddr {
-				nvidia,pins =	"vi_d10_pt2", "vi_vsync_pd6",
-						"vi_hsync_pd7";
-				nvidia,function = "ddr";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
-			};
-			ddr_up {
-				nvidia,pins =	"vi_d11_pt3";
-				nvidia,function = "ddr";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			vi {
-				nvidia,pins =	"vi_d4_pl2", "vi_mclk_pt1",
-						"vi_d6_pl4";
-				nvidia,function = "vi";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			owr {
-				nvidia,pins =	"pv2", "pu0", "owr";
-				nvidia,function = "owr";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			lcd {
-				nvidia,pins =	"lcd_pwr1_pc1", "lcd_pwr2_pc6",
-						"lcd_sdin_pz2", "lcd_sdout_pn5",
-						"lcd_wr_n_pz3", "lcd_cs0_n_pn4",
-						"lcd_dc0_pn6", "lcd_sck_pz4",
-						"lcd_pwr0_pb2", "lcd_pclk_pb3",
-						"lcd_de_pj1", "lcd_hsync_pj3",
-						"lcd_vsync_pj4", "lcd_d0_pe0",
-						"lcd_d1_pe1", "lcd_d2_pe2",
-						"lcd_d3_pe3", "lcd_d4_pe4",
-						"lcd_d5_pe5", "lcd_d6_pe6",
-						"lcd_d7_pe7", "lcd_d8_pf0",
-						"lcd_d9_pf1", "lcd_d10_pf2",
-						"lcd_d11_pf3", "lcd_d12_pf4",
-						"lcd_d13_pf5", "lcd_d14_pf6",
-						"lcd_d15_pf7", "lcd_d16_pm0",
-						"lcd_d17_pm1", "lcd_d18_pm2",
-						"lcd_d19_pm3", "lcd_d20_pm4",
-						"lcd_d21_pm5", "lcd_d22_pm6",
-						"lcd_d23_pm7", "lcd_cs1_n_pw0",
-						"lcd_m1_pw1", "lcd_dc1_pd2";
-				nvidia,function = "displaya";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			kbc {
-				nvidia,pins =	"kb_row0_pr0", "kb_row1_pr1",
-						"kb_row2_pr2", "kb_row3_pr3",
-						"kb_row4_pr4", "kb_row5_pr5",
-						"kb_row6_pr6", "kb_row7_pr7",
-						"kb_row9_ps1", "kb_row8_ps0",
-						"kb_row10_ps2", "kb_row11_ps3",
-						"kb_row12_ps4", "kb_row13_ps5",
-						"kb_row14_ps6", "kb_row15_ps7",
-						"kb_col0_pq0", "kb_col1_pq1",
-						"kb_col2_pq2", "kb_col3_pq3",
-						"kb_col4_pq4", "kb_col5_pq5",
-						"kb_col6_pq6", "kb_col7_pq7";
-				nvidia,function = "kbc";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_vi {
-				nvidia,pins =	"vi_d1_pd5", "vi_d2_pl0",
-						"vi_d3_pl1", "vi_d5_pl3",
-						"vi_d7_pl5", "vi_d8_pl6",
-						"vi_d9_pl7";
-				nvidia,function = "sdmmc2";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_pbb0 {
-				nvidia,pins =	"pbb0", "pbb7", "pcc1", "pcc2";
-				nvidia,function = "i2s4";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_pbb3 {
-				nvidia,pins =	"pbb3";
-				nvidia,function = "vgp3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_pbb4 {
-				nvidia,pins =	"pbb4";
-				nvidia,function = "vgp4";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_pbb5 {
-				nvidia,pins =	"pbb5";
-				nvidia,function = "vgp5";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_pbb6 {
-				nvidia,pins =	"pbb6";
-				nvidia,function = "vgp6";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
-			};
-			gpio_pu1 {
-				nvidia,pins =	"pu1", "pu2";
-				nvidia,function = "rsvd1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			gpio_pv0 {
-				nvidia,pins =	"pv0", "gmi_cs2_n_pk3";
-				nvidia,function = "rsvd1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-			};
-			gpio_pv3 {
-				nvidia,pins =	"pv3";
-				nvidia,function = "clk_12m_out";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			gpio_gmi {
-				nvidia,pins =	"spi2_sck_px2", "gmi_wp_n_pc7";
-				nvidia,function = "gmi";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			gpio_gmi_ad {
-				nvidia,pins =	"gmi_ad10_ph2", "gmi_ad14_ph6";
-				nvidia,function = "nand";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			gpio_gmi_ad_up {
-				nvidia,pins =	"gmi_ad12_ph4";
-				nvidia,function = "nand";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-			};
-			gpio_gmi_iordy_up {
-				nvidia,pins =	"gmi_iordy_pi5";
-				nvidia,function = "rsvd1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-			};
-			pwm0 {
-				nvidia,pins =	"gmi_ad8_ph0", "pu3";
-				nvidia,function = "pwm0";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			pwm1 {
-				nvidia,pins =	"pu4";
-				nvidia,function = "pwm1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			pwm2 {
-				nvidia,pins =	"pu5";
-				nvidia,function = "pwm2";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			pwm3 {
-				nvidia,pins =	"pu6";
-				nvidia,function = "pwm3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			extperiph1 {
-				nvidia,pins =	"clk1_out_pw4";
-				nvidia,function = "extperiph1";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			extperiph2 {
-				nvidia,pins =	"clk2_out_pw5";
-				nvidia,function = "extperiph2";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			extperiph3 {
-				nvidia,pins =	"clk3_out_pee0";
-				nvidia,function = "extperiph3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			jtag {
-				nvidia,pins =	"jtag_rtck_pu7";
-				nvidia,function = "rtck";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			blink {
-				nvidia,pins =	"clk_32k_out_pa0";
-				nvidia,function = "blink";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			sysclk {
-				nvidia,pins =	"sys_clk_req_pz5";
-				nvidia,function = "sysclk";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-			};
-			cam_mclk {
-				nvidia,pins =	"cam_mclk_pcc0";
-				nvidia,function = "vi_alt3";
-				nvidia,tristate = <TEGRA_PIN_DISABLE>;
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+
+		ti,system-power-controller;
+
+		#gpio-cells = <2>;
+		gpio-controller;
+
+		vcc1-supply = <&vdd_5v_in_reg>;
+		vcc2-supply = <&vdd_5v_in_reg>;
+		vcc3-supply = <&vio_reg>;
+		vcc4-supply = <&vdd_5v_in_reg>;
+		vcc5-supply = <&vdd_5v_in_reg>;
+		vcc6-supply = <&vdd2_reg>;
+		vcc7-supply = <&vdd_5v_in_reg>;
+		vccio-supply = <&vdd_5v_in_reg>;
+
+		regulators {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vdd1_reg: vdd1 {
+				regulator-name = "vddio_ddr_1v2";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
 			};
-			vi_pclk {
-				nvidia,pins =	"vi_pclk_pt0";
-				nvidia,function = "rsvd1";
-				nvidia,tristate = <TEGRA_PIN_ENABLE>;
-				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
+
+			vdd2_reg: vdd2 {
+				regulator-name = "vdd_1v5_gen";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
 			};
-			unused {
-				nvidia,pins =	"gmi_adv_n_pk0", "gmi_clk_pk1",
-						"gmi_cs3_n_pk4", "gmi_ad0_pg0",
-						"gmi_ad1_pg1", "gmi_ad2_pg2",
-						"gmi_ad3_pg3", "gmi_ad4_pg4",
-						"gmi_ad5_pg5", "gmi_ad6_pg6",
-						"gmi_ad7_pg7", "gmi_ad9_ph1",
-						"gmi_ad11_ph3", "gmi_wr_n_pi0",
-						"gmi_oe_n_pi1", "gmi_dqs_pi2";
-				nvidia,function = "nand";
-				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+
+			vddctrl_reg: vddctrl {
+				regulator-name = "vdd_cpu,vdd_sys";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
 			};
-			unused_pu {
-				nvidia,pins =	"gmi_wait_pi7", "gmi_cs7_n_pi6",
-						"gmi_ad13_ph5";
-				nvidia,function = "nand";
-				nvidia,pull = <TEGRA_PIN_PULL_UP>;
-				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+
+			vio_reg: vio {
+				regulator-name = "vdd_1v8_gen";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
 			};
-		};
-	};
 
-	serial@70006000 {
-		status = "okay";
-	};
+			ldo1_reg: ldo1 {
+				regulator-name = "vdd_pexa,vdd_pexb";
+				regulator-min-microvolt = <1050000>;
+				regulator-max-microvolt = <1050000>;
+			};
 
-	i2c@7000c000 {
-		status = "okay";
-		clock-frequency = <100000>;
-	};
+			ldo2_reg: ldo2 {
+				regulator-name = "vdd_sata,avdd_plle";
+				regulator-min-microvolt = <1050000>;
+				regulator-max-microvolt = <1050000>;
+			};
 
-	i2c@7000c400 {
-		status = "okay";
-		clock-frequency = <100000>;
-	};
+			/* LDO3 is not connected to anything */
 
-	i2c@7000c500 {
-		status = "okay";
-		clock-frequency = <100000>;
-	};
+			ldo4_reg: ldo4 {
+				regulator-name = "vdd_rtc";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
+			};
 
-	hdmiddc: i2c@7000c700 {
-		status = "okay";
-		clock-frequency = <100000>;
-	};
+			ldo5_reg: ldo5 {
+				regulator-name = "vddio_sdmmc,avdd_vdac";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
 
-	i2c@7000d000 {
-		status = "okay";
-		clock-frequency = <100000>;
-
-		rt5640: rt5640@1c {
-			compatible = "realtek,rt5640";
-			reg = <0x1c>;
-			interrupt-parent = <&gpio>;
-			interrupts = <TEGRA_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
-			realtek,ldo1-en-gpios =
-				<&gpio TEGRA_GPIO(X, 2) GPIO_ACTIVE_HIGH>;
-		};
-
-		pmic: tps65911@2d {
-			compatible = "ti,tps65911";
-			reg = <0x2d>;
-
-			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
-			#interrupt-cells = <2>;
-			interrupt-controller;
-
-			ti,system-power-controller;
-
-			#gpio-cells = <2>;
-			gpio-controller;
-
-			vcc1-supply = <&vdd_5v_in_reg>;
-			vcc2-supply = <&vdd_5v_in_reg>;
-			vcc3-supply = <&vio_reg>;
-			vcc4-supply = <&vdd_5v_in_reg>;
-			vcc5-supply = <&vdd_5v_in_reg>;
-			vcc6-supply = <&vdd2_reg>;
-			vcc7-supply = <&vdd_5v_in_reg>;
-			vccio-supply = <&vdd_5v_in_reg>;
-
-			regulators {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				vdd1_reg: vdd1 {
-					regulator-name = "vddio_ddr_1v2";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
-					regulator-always-on;
-				};
-
-				vdd2_reg: vdd2 {
-					regulator-name = "vdd_1v5_gen";
-					regulator-min-microvolt = <1500000>;
-					regulator-max-microvolt = <1500000>;
-					regulator-always-on;
-				};
-
-				vddctrl_reg: vddctrl {
-					regulator-name = "vdd_cpu,vdd_sys";
-					regulator-min-microvolt = <1000000>;
-					regulator-max-microvolt = <1000000>;
-					regulator-always-on;
-				};
-
-				vio_reg: vio {
-					regulator-name = "vdd_1v8_gen";
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
-					regulator-always-on;
-				};
-
-				ldo1_reg: ldo1 {
-					regulator-name = "vdd_pexa,vdd_pexb";
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-				};
-
-				ldo2_reg: ldo2 {
-					regulator-name = "vdd_sata,avdd_plle";
-					regulator-min-microvolt = <1050000>;
-					regulator-max-microvolt = <1050000>;
-				};
-
-				/* LDO3 is not connected to anything */
-
-				ldo4_reg: ldo4 {
-					regulator-name = "vdd_rtc";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
-					regulator-always-on;
-				};
-
-				ldo5_reg: ldo5 {
-					regulator-name = "vddio_sdmmc,avdd_vdac";
-					regulator-min-microvolt = <3300000>;
-					regulator-max-microvolt = <3300000>;
-					regulator-always-on;
-				};
-
-				ldo6_reg: ldo6 {
-					regulator-name = "avdd_dsi_csi,pwrdet_mipi";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
-				};
-
-				ldo7_reg: ldo7 {
-					regulator-name = "vdd_pllm,x,u,a_p_c_s";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
-					regulator-always-on;
-				};
-
-				ldo8_reg: ldo8 {
-					regulator-name = "vdd_ddr_hs";
-					regulator-min-microvolt = <1000000>;
-					regulator-max-microvolt = <1000000>;
-					regulator-always-on;
-				};
+			ldo6_reg: ldo6 {
+				regulator-name = "avdd_dsi_csi,pwrdet_mipi";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
 			};
-		};
 
-		tps62361@60 {
-			compatible = "ti,tps62361";
-			reg = <0x60>;
+			ldo7_reg: ldo7 {
+				regulator-name = "vdd_pllm,x,u,a_p_c_s";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
+			};
 
-			regulator-name = "tps62361-vout";
-			regulator-min-microvolt = <500000>;
-			regulator-max-microvolt = <1500000>;
-			regulator-boot-on;
-			regulator-always-on;
-			ti,vsel0-state-high;
-			ti,vsel1-state-high;
+			ldo8_reg: ldo8 {
+				regulator-name = "vdd_ddr_hs";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+			};
 		};
 	};
 
-	spi@7000da00 {
-		status = "okay";
-		spi-max-frequency = <25000000>;
-		spi-flash@1 {
-			compatible = "winbond,w25q32";
-			reg = <1>;
-			spi-max-frequency = <20000000>;
-		};
+	tps62361@60 {
+		compatible = "ti,tps62361";
+		reg = <0x60>;
+
+		regulator-name = "tps62361-vout";
+		regulator-min-microvolt = <500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-boot-on;
+		regulator-always-on;
+		ti,vsel0-state-high;
+		ti,vsel1-state-high;
 	};
+};
 
-	pmc@7000e400 {
-		status = "okay";
-		nvidia,invert-interrupt;
-		nvidia,suspend-mode = <1>;
-		nvidia,cpu-pwr-good-time = <2000>;
-		nvidia,cpu-pwr-off-time = <200>;
-		nvidia,core-pwr-good-time = <3845 3845>;
-		nvidia,core-pwr-off-time = <0>;
-		nvidia,core-power-req-active-high;
-		nvidia,sys-clock-req-active-high;
+&{/spi@7000da00} {
+	status = "okay";
+	spi-max-frequency = <25000000>;
+	spi-flash@1 {
+		compatible = "winbond,w25q32";
+		reg = <1>;
+		spi-max-frequency = <20000000>;
 	};
+};
 
-	ahub@70080000 {
-		i2s@70080400 {
-			status = "okay";
-		};
-	};
+&tegra_pmc {
+	status = "okay";
+	nvidia,invert-interrupt;
+	nvidia,suspend-mode = <1>;
+	nvidia,cpu-pwr-good-time = <2000>;
+	nvidia,cpu-pwr-off-time = <200>;
+	nvidia,core-pwr-good-time = <3845 3845>;
+	nvidia,core-pwr-off-time = <0>;
+	nvidia,core-power-req-active-high;
+	nvidia,sys-clock-req-active-high;
+};
 
-	sdhci@78000000 {
-		status = "okay";
-		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
-		wp-gpios = <&gpio TEGRA_GPIO(T, 3) GPIO_ACTIVE_HIGH>;
-		power-gpios = <&gpio TEGRA_GPIO(D, 7) GPIO_ACTIVE_HIGH>;
-		bus-width = <4>;
-	};
+&tegra_i2s1 {
+	status = "okay";
+};
 
-	emmc: sdhci@78000600 {
-		status = "okay";
-		bus-width = <8>;
-		non-removable;
-	};
+&{/mmc@78000000} {
+	status = "okay";
+	cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio TEGRA_GPIO(T, 3) GPIO_ACTIVE_HIGH>;
+	power-gpios = <&gpio TEGRA_GPIO(D, 7) GPIO_ACTIVE_HIGH>;
+	bus-width = <4>;
+};
 
-	usb@7d004000 {
-		status = "okay";
-	};
+emmc: &{/mmc@78000600} {
+	status = "okay";
+	bus-width = <8>;
+	non-removable;
+};
 
-	phy2: usb-phy@7d004000 {
-		vbus-supply = <&sys_3v3_reg>;
-		status = "okay";
-	};
+&{/usb@7d004000} {
+	status = "okay";
+};
 
-	usb@7d008000 {
-		status = "okay";
-	};
+&phy2 {
+	vbus-supply = <&sys_3v3_reg>;
+	status = "okay";
+};
 
-	usb-phy@7d008000 {
-		vbus-supply = <&usb3_vbus_reg>;
-		status = "okay";
-	};
+&{/usb@7d008000} {
+	status = "okay";
+};
 
+&phy3 {
+	vbus-supply = <&usb3_vbus_reg>;
+	status = "okay";
+};
+
+/ {
 	clocks {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm/dts/tegra30.dtsi b/arch/arm/dts/tegra30.dtsi
index 90bd08ba6364..2724714f600f 100644
--- a/arch/arm/dts/tegra30.dtsi
+++ b/arch/arm/dts/tegra30.dtsi
@@ -1,8 +1,8 @@
 / {
 	aliases {
-		mmc0 = "/sdhci@78000000/";
-		mmc1 = "/sdhci@78000200/";
-		mmc2 = "/sdhci@78000400/";
-		mmc3 = "/sdhci@78000600/";
+		mmc0 = &{/mmc@78000000};
+		mmc1 = &{/mmc@78000200};
+		mmc2 = &{/mmc@78000400};
+		mmc3 = &{/mmc@78000600};
 	};
 };
-- 
2.30.2



