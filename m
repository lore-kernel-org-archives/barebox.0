Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJlF-0006kr-IG
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 08:32:00 +0000
References: <20190911145636.4637-1-m.felsch@pengutronix.de>
 <20190920141226.w3alja43ud5ri5cs@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <b0f2076b-ba33-47b1-b4ed-01b9cd842181@phytec.de>
Date: Mon, 23 Sep 2019 10:31:53 +0200
MIME-Version: 1.0
In-Reply-To: <20190920141226.w3alja43ud5ri5cs@pengutronix.de>
Content-Language: de-DE
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx6: phycore: make use of upstream dts
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, s.christ@phytec.de, d.schultz@phytec.de, j.remmet@phytec.de

Hi Marco,

Usually we would like to keep the features supported in the barebox to a 
minimum set that is mostly supported by the SOM itself and thus is mostly 
base board independent.

My suggestion would be to just use the upstream phycore devicetree. Would 
that be ok with you? Of course that means some features like e.g. USB need 
to be duplicated but that should be overseeable.

I can send a new patch if you like but I would need to find some free time 
to do it.

Regards,
Stefan


On 20.09.19 16:12, Marco Felsch wrote:
> Hi,
> 
> @phytec
> 
> Please can you test those changes because I don't have all these boards.
> 
> Regards,
>    Marco
> 
> On 19-09-11 16:56, Marco Felsch wrote:
>> Since a quite time we can use the upstream Phytec mira devicetree's and
>> the phycore dtsi to reduce code duplication and possible unwanted
>> divergences. I've converted all boards devicetree's to use the upstream
>> mira devicetree's except the:
>>    - imx6dl-phytec-phycore-som-emmc.dts
>>    - imx6dl-phytec-phycore-som-lc-emmc.dts
>>    - imx6dl-phytec-phycore-som-lc-nand.dts
>> boards because those variants are not upstream available yet.
>>
>> This commit also removes mixtures between barebox phycore SoM dtsi and
>> barebox board devicetree's within the imx6qdl-phytec-phycore-som.dtsi.
>> This SoM dtsi contained muxing options which are only valid in
>> combination with the mira baseboard.
>>
>> Now all barebox dts(i) files contain only the necessary things or
>> divergences from upstream e.g. the compatible wasn't exactly the same.
>>
>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>> ---
>>   .../dts/imx6dl-phytec-phycore-som-emmc.dts    |  12 +-
>>   .../dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  12 +-
>>   .../dts/imx6dl-phytec-phycore-som-lc-nand.dts |   6 +-
>>   .../dts/imx6dl-phytec-phycore-som-nand.dts    |  31 +--
>>   .../arm/dts/imx6q-phytec-phycore-som-emmc.dts |  39 +--
>>   .../arm/dts/imx6q-phytec-phycore-som-nand.dts |  39 +--
>>   arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  | 261 ++----------------
>>   .../dts/imx6qp-phytec-phycore-som-nand.dts    |  38 +--
>>   8 files changed, 49 insertions(+), 389 deletions(-)
>>
>> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
>> index 21cbb5f944..d9a40599c7 100644
>> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
>> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
>> @@ -13,6 +13,8 @@
>>   /dts-v1/;
>>   
>>   #include <arm/imx6dl.dtsi>
>> +#include <arm/imx6qdl-phytec-phycore-som.dtsi>
>> +#include <arm/imx6qdl-phytec-mira.dtsi>
>>   #include "imx6dl.dtsi"
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   #include "imx6qdl-phytec-state.dtsi"
>> @@ -22,14 +24,6 @@
>>   	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
>>   };
>>   
>> -&ecspi1 {
>> -	status = "okay";
>> -};
>> -
>> -&eeprom {
>> -	status = "okay";
>> -};
>> -
>>   &ethphy {
>>   	max-speed = <1000>;
>>   };
>> @@ -38,7 +32,7 @@
>>   	status = "okay";
>>   };
>>   
>> -&flash {
>> +&m25p80 {
>>   	status = "okay";
>>   };
>>   
>> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
>> index b8efb95ee0..516df5ff5a 100644
>> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
>> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
>> @@ -7,6 +7,8 @@
>>   /dts-v1/;
>>   
>>   #include <arm/imx6dl.dtsi>
>> +#include <arm/imx6qdl-phytec-phycore-som.dtsi>
>> +#include <arm/imx6qdl-phytec-mira.dtsi>
>>   #include "imx6dl.dtsi"
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   #include "imx6qdl-phytec-state.dtsi"
>> @@ -16,14 +18,6 @@
>>   	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
>>   };
>>   
>> -&ecspi1 {
>> -	status = "okay";
>> -};
>> -
>> -&eeprom {
>> -	status = "okay";
>> -};
>> -
>>   &ethphy {
>>   	max-speed = <100>;
>>   };
>> @@ -32,7 +26,7 @@
>>   	status = "okay";
>>   };
>>   
>> -&flash {
>> +&m25p80 {
>>   	status = "okay";
>>   };
>>   
>> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
>> index 4d38d1698a..ab13d6b77b 100644
>> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
>> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
>> @@ -7,6 +7,8 @@
>>   /dts-v1/;
>>   
>>   #include <arm/imx6dl.dtsi>
>> +#include <arm/imx6qdl-phytec-phycore-som.dtsi>
>> +#include <arm/imx6qdl-phytec-mira.dtsi>
>>   #include "imx6dl.dtsi"
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   #include "imx6qdl-phytec-state.dtsi"
>> @@ -16,10 +18,6 @@
>>   	compatible = "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
>>   };
>>   
>> -&eeprom {
>> -	status = "okay";
>> -};
>> -
>>   &ethphy {
>>   	max-speed = <100>;
>>   };
>> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
>> index 3ad3723d28..db4d930b29 100644
>> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
>> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
>> @@ -9,45 +9,22 @@
>>    * http://www.gnu.org/copyleft/gpl.html
>>    */
>>   
>> -/dts-v1/;
>> -
>> -#include <arm/imx6dl.dtsi>
>> +#include <arm/imx6dl-phytec-mira-rdk-nand.dts>
>>   #include "imx6dl.dtsi"
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   #include "imx6qdl-phytec-state.dtsi"
>>   
>>   / {
>> -	model = "Phytec phyCORE-i.MX6 Duallite/SOLO with NAND";
>> -	compatible = "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
>> -};
>> -
>> -&eeprom {
>> -	status = "okay";
>> +	compatible = "phytec,imx6dl-pbac06-nand", "phytec,imx6dl-pbac06",
>> +		     "phytec,imx6dl-pcm058-nand", "phytec,imx6qdl-pcm058",
>> +		     "fsl,imx6dl";
>>   };
>>   
>>   &ethphy {
>>   	max-speed = <1000>;
>>   };
>>   
>> -&fec {
>> -	status = "okay";
>> -};
>> -
>> -&gpmi {
>> -	status = "okay";
>> -};
>> -
>> -&usbh1 {
>> -	status = "okay";
>> -};
>> -
>> -&usbotg {
>> -	status = "okay";
>> -};
>> -
>>   &usdhc1 {
>> -	status = "okay";
>> -
>>   	partitions {
>>   		compatible = "fixed-partitions";
>>   		#address-cells = <1>;
>> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
>> index 7a86d5b94d..55dc1f91f7 100644
>> --- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
>> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
>> @@ -9,49 +9,22 @@
>>    * http://www.gnu.org/copyleft/gpl.html
>>    */
>>   
>> -/dts-v1/;
>> -
>> -#include <arm/imx6q.dtsi>
>> +#include <arm/imx6q-phytec-mira-rdk-emmc.dts>
>>   #include "imx6q.dtsi"
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   #include "imx6qdl-phytec-state.dtsi"
>>   
>>   / {
>> -	model = "Phytec phyCORE-i.MX6 Quad with eMMC";
>> -	compatible = "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
>> -};
>> -
>> -&ecspi1 {
>> -	status = "okay";
>> -};
>> -
>> -&eeprom {
>> -	status = "okay";
>> +	compatible = "phytec,imx6q-pbac06-emmc", "phytec,imx6q-pbac06",
>> +		     "phytec,imx6q-pcm058-emmc", "phytec,imx6qdl-pcm058",
>> +		     "fsl,imx6q";
>>   };
>>   
>>   &ethphy {
>>   	max-speed = <1000>;
>>   };
>>   
>> -&fec {
>> -	status = "okay";
>> -};
>> -
>> -&flash {
>> -	status = "okay";
>> -};
>> -
>> -&usbh1 {
>> -	status = "okay";
>> -};
>> -
>> -&usbotg {
>> -	status = "okay";
>> -};
>> -
>>   &usdhc1 {
>> -	status = "okay";
>> -
>>   	partitions {
>>   		compatible = "fixed-partitions";
>>   		#address-cells = <1>;
>> @@ -68,7 +41,3 @@
>>   		};
>>   	};
>>   };
>> -
>> -&usdhc4 {
>> -	status = "okay";
>> -};
>> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
>> index 96d1de224c..56812c2473 100644
>> --- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
>> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
>> @@ -9,54 +9,23 @@
>>    * http://www.gnu.org/copyleft/gpl.html
>>    */
>>   
>> -/dts-v1/;
>> -
>> -#include <arm/imx6q.dtsi>
>> +#include <arm/imx6q-phytec-mira-rdk-nand.dts>
>>   #include "imx6q.dtsi"
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   #include "imx6qdl-phytec-state.dtsi"
>>   
>>   / {
>> -	model = "Phytec phyCORE-i.MX6 Quad with NAND";
>> -	compatible = "phytec,imx6q-pcm058-nand", "fsl,imx6q";
>> -
>> -};
>> -
>> -&ecspi1 {
>> -	status = "okay";
>> -};
>> +	compatible = "phytec,imx6q-pbac06-nand", "phytec,imx6q-pbac06",
>> +		     "phytec,imx6q-pcm058-nand", "phytec,imx6qdl-pcm058",
>> +		     "fsl,imx6q";
>>   
>> -&eeprom {
>> -	status = "okay";
>>   };
>>   
>>   &ethphy {
>>   	max-speed = <1000>;
>>   };
>>   
>> -&fec {
>> -	status = "okay";
>> -};
>> -
>> -&flash {
>> -	status = "okay";
>> -};
>> -
>> -&gpmi {
>> -	status = "okay";
>> -};
>> -
>> -&usbh1 {
>> -	status = "okay";
>> -};
>> -
>> -&usbotg {
>> -	status = "okay";
>> -};
>> -
>>   &usdhc1 {
>> -	status = "okay";
>> -
>>   	partitions {
>>   		compatible = "fixed-partitions";
>>   		#address-cells = <1>;
>> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
>> index 1d39368165..e17304c42b 100644
>> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
>> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
>> @@ -13,8 +13,6 @@
>>   
>>   / {
>>   	chosen {
>> -		stdout-path = &uart2;
>> -
>>   		environment-sd1 {
>>   			compatible = "barebox,environment";
>>   			device-path = &usdhc1, "partname:barebox-environment";
>> @@ -35,102 +33,51 @@
>>   
>>   		environment-spinor {
>>   			compatible = "barebox,environment";
>> -			device-path = &flash, "partname:barebox-environment";
>> +			device-path = &m25p80, "partname:barebox-environment";
>>   			status = "disabled";
>>   		};
>>   	};
>>   
>> -	reg_usbh1_vbus: regulator-usbh1 {
>> -		compatible = "regulator-fixed";
>> -		pinctrl-names = "default";
>> -		pinctrl-0 = <&pinctrl_usbh1_vbus>;
>> -		regulator-name = "usbh1_vbus";
>> -		regulator-min-microvolt = <5000000>;
>> -		regulator-max-microvolt = <5000000>;
>> -		gpio = <&gpio2 18 GPIO_ACTIVE_HIGH>;
>> -		enable-active-high;
>> -	};
>> -
>> -	reg_usbotg_vbus: regulator-usbotg {
>> -		compatible = "regulator-fixed";
>> -		pinctrl-names = "default";
>> -		pinctrl-0 = <&pinctrl_usbotg_vbus>;
>> -		regulator-name = "usbotg_vbus";
>> -		regulator-min-microvolt = <5000000>;
>> -		regulator-max-microvolt = <5000000>;
>> -		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>> -		enable-active-high;
>> +	/* Let the bootloader set the real size */
>> +	memory@10000000 {
>> +		device_type = "memory";
>> +		reg = <0x0 0x0>;
>>   	};
>>   };
>>   
>> -&ecspi1 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_ecspi1>;
>> -	fsl,spi-num-chipselects = <1>;
>> -	cs-gpios = <&gpio3 19 0>;
>> -	status = "disabled";
>> -
>> -	flash: flash@0 {
>> -		compatible = "jedec,spi-nor";
>> -		spi-max-frequency = <20000000>;
>> -		reg = <0>;
>> -		status = "disabled";
>> -
>> -		partitions {
>> -			compatible = "fixed-partitions";
>> -			#address-cells = <1>;
>> -			#size-cells = <1>;
>> +&m25p80 {
>> +	partitions {
>> +		compatible = "fixed-partitions";
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>>   
>> -			partition@0 {
>> -				label = "barebox";
>> -				reg = <0x0 0x100000>;
>> -			};
>> +		partition@0 {
>> +			label = "barebox";
>> +			reg = <0x0 0x100000>;
>> +		};
>>   
>> -			partition@100000 {
>> -				label = "barebox-environment";
>> -				reg = <0x100000 0x20000>;
>> -			};
>> +		partition@100000 {
>> +			label = "barebox-environment";
>> +			reg = <0x100000 0x20000>;
>> +		};
>>   
>> -			partition@120000 {
>> -				label = "oftree";
>> -				reg = <0x120000 0x20000>;
>> -			};
>> +		partition@120000 {
>> +			label = "oftree";
>> +			reg = <0x120000 0x20000>;
>> +		};
>>   
>> -			partition@140000 {
>> -				label = "kernel";
>> -				reg = <0x140000 0x0>;
>> -			};
>> +		partition@140000 {
>> +			label = "kernel";
>> +			reg = <0x140000 0x0>;
>>   		};
>>   	};
>>   };
>>   
>>   &fec {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_enet>;
>> -	phy-handle = <&ethphy>;
>> -	phy-mode = "rgmii";
>> -	phy-reset-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
>>   	phy-reset-duration = <10>; /* in msecs */
>> -	status = "disabled";
>> -
>> -	mdio {
>> -		#address-cells = <1>;
>> -		#size-cells = <0>;
>> -
>> -		ethphy: ethernet-phy@3 {
>> -			reg = <3>;
>> -			txc-skew-ps = <1680>;
>> -			rxc-skew-ps = <1860>;
>> -		};
>> -	};
>>   };
>>   
>>   &gpmi {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_gpmi_nand>;
>> -	nand-on-flash-bbt;
>> -	status = "disabled";
>> -
>>   	partitions {
>>   		compatible = "fixed-partitions";
>>   		#address-cells = <1>;
>> @@ -154,11 +101,6 @@
>>   };
>>   
>>   &i2c3 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_i2c3>;
>> -	clock-frequency = <400000>;
>> -	status = "okay";
>> -
>>   	eeprom: eeprom@50 {
>>   		status = "disabled";
>>   		compatible = "24c32";
>> @@ -166,170 +108,17 @@
>>   	};
>>   
>>   	pmic@58 {
>> -		compatible = "dlg,da9062";
>> -		reg = <0x58>;
>> -		status = "okay";
>> -
>>   		watchdog-priority = <500>;
>>   		restart-priority = <500>;
>>   		reset-source-priority = <500>;
>>   	};
>>   };
>>   
>> -&iomuxc {
>> -	pinctrl_ecspi1: ecspi1grp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
>> -			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
>> -			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
>> -			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
>> -		>;
>> -	};
>> -
>> -	pinctrl_enet: enetgrp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
>> -			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
>> -			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
>> -			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
>> -			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
>> -			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
>> -			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
>> -			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
>> -			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
>> -			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
>> -			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
>> -			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
>> -			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
>> -			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
>> -			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
>> -			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
>> -			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x80000000
>> -		>;
>> -	};
>> -
>> -	pinctrl_gpmi_nand: gpmigrp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
>> -			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
>> -			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
>> -			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
>> -			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
>> -			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
>> -			MX6QDL_PAD_NANDF_CS2__NAND_CE2_B	0xb0b1
>> -			MX6QDL_PAD_NANDF_CS3__NAND_CE3_B	0xb0b1
>> -			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
>> -			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
>> -			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
>> -			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
>> -			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
>> -			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
>> -			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
>> -			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
>> -			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
>> -			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
>> -			MX6QDL_PAD_SD4_DAT0__NAND_DQS		0x00b1
>> -		>;
>> -	};
>> -
>> -	pinctrl_i2c3: i2c3grp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
>> -			MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
>> -		>;
>> -	};
>> -
>> -	pinctrl_uart2: uart2grp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
>> -			MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
>> -		>;
>> -	};
>> -
>> -	pinctrl_usbh1_vbus: usbh1vbusgrp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_EIM_A20__GPIO2_IO18		0xb0b1
>> -		>;
>> -	};
>> -
>> -	pinctrl_usbotg: usbotggrp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
>> -		>;
>> -	};
>> -
>> -	pinctrl_usbotg_vbus: usbotgvbusgrp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_EIM_A19__GPIO2_IO19		0xb0b1
>> -			>;
>> -	};
>> -
>> -	pinctrl_usdhc1: usdhc1grp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
>> -			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
>> -			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
>> -			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
>> -			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
>> -			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
>> -			MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
>> -		>;
>> -	};
>> -
>> -	pinctrl_usdhc4: usdhc4grp {
>> -		fsl,pins = <
>> -			MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
>> -			MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
>> -			MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
>> -			MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
>> -			MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
>> -			MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
>> -			MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
>> -			MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
>> -			MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
>> -			MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
>> -		>;
>> -	};
>> -};
>> -
>>   &ocotp {
>>   	barebox,provide-mac-address = <&fec 0x620>;
>>   };
>>   
>> -&uart2 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_uart2>;
>> -	status = "okay";
>> -};
>> -
>> -&usbh1 {
>> -	vbus-supply = <&reg_usbh1_vbus>;
>> -	disable-over-current;
>> -	status = "disabled";
>> -};
>> -
>> -&usbotg {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_usbotg>;
>> -	vbus-supply = <&reg_usbotg_vbus>;
>> -	disable-over-current;
>> -	status = "disabled";
>> -};
>> -
>> -&usdhc1 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_usdhc1>;
>> -	cd-gpios = <&gpio6 31 0>;
>> -	status = "disabled";
>> -};
>> -
>>   &usdhc4 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_usdhc4>;
>> -	bus-width = <8>;
>> -	non-removable;
>> -	status = "disabled";
>> -
>>   	#address-cells = <1>;
>>   	#size-cells = <1>;
>>   
>> diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
>> index 437457ce75..06def935b0 100644
>> --- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
>> +++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
>> @@ -10,50 +10,20 @@
>>    * http://www.gnu.org/copyleft/gpl.html
>>    */
>>   
>> -/dts-v1/;
>> -#include <arm/imx6qp.dtsi>
>> +#include <arm/imx6qp-phytec-mira-rdk-nand.dts>
>>   #include "imx6qdl-phytec-phycore-som.dtsi"
>>   
>>   / {
>> -	model = "Phytec phyCORE-i.MX6 Quad with NAND";
>> -	compatible = "phytec,imx6qp-pcm058-nand", "fsl,imx6qp";
>> -};
>> -
>> -&ecspi1 {
>> -	status = "okay";
>> -};
>> -
>> -&eeprom {
>> -	status = "okay";
>> +	compatible = "phytec,imx6qp-pbac06-nand", "phytec,imx6qp-pbac06",
>> +		     "phytec,imx6qp-pcm058-nand", "phytec,imx6qdl-pcm058",
>> +		     "fsl,imx6qp";
>>   };
>>   
>>   &ethphy {
>>   	max-speed = <1000>;
>>   };
>>   
>> -&fec {
>> -	status = "okay";
>> -};
>> -
>> -&flash {
>> -	status = "okay";
>> -};
>> -
>> -&gpmi {
>> -	status = "okay";
>> -};
>> -
>> -&usbh1 {
>> -	status = "okay";
>> -};
>> -
>> -&usbotg {
>> -	status = "okay";
>> -};
>> -
>>   &usdhc1 {
>> -	status = "okay";
>> -
>>   	partitions {
>>   		compatible = "fixed-partitions";
>>   		#address-cells = <1>;
>> -- 
>> 2.20.1
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
