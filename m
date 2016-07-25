Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bRb50-0002GO-CB
 for barebox@lists.infradead.org; Mon, 25 Jul 2016 08:17:40 +0000
Date: Mon, 25 Jul 2016 10:17:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160725081714.GV20657@pengutronix.de>
References: <1469113856-5855-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1469113856-5855-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: i.MX6: update RIoTboard device tree
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 21, 2016 at 05:10:56PM +0200, Michael Grzeschik wrote:
> From: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> =

> Barebox and kernel version diverged therefore bring the device tree up to=
 date
> with respect to the kernel being the reference.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/embest-riotboard/board.c |   2 +-
>  arch/arm/dts/imx6s-riotboard.dts         | 355 +------------------------=
------
>  2 files changed, 3 insertions(+), 354 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/e=
mbest-riotboard/board.c
> index a885a08..eb956f1 100644
> --- a/arch/arm/boards/embest-riotboard/board.c
> +++ b/arch/arm/boards/embest-riotboard/board.c
> @@ -64,7 +64,7 @@ static int ar8035_phy_fixup(struct phy_device *dev)
>  =

>  static int riotboard_device_init(void)
>  {
> -	if (!of_machine_is_compatible("embest,riotboard"))
> +	if (!of_machine_is_compatible("riot,imx6s-riotboard"))
>  		return 0;
>  =

>  	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
> diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotbo=
ard.dts
> index 09ac534..7193f28 100644
> --- a/arch/arm/dts/imx6s-riotboard.dts
> +++ b/arch/arm/dts/imx6s-riotboard.dts
> @@ -4,15 +4,11 @@
>   * The code contained herein is licensed under the GNU General Public
>   * License version 2.
>   */
> -/dts-v1/;
>  =

> -#include <arm/imx6dl.dtsi>
> -#include "imx6dl.dtsi"
> +#include <arm/imx6dl-riotboard.dts>
> +#include "imx6qdl.dtsi"
>  =

>  / {
> -	model =3D "RIoTboard Solo";
> -	compatible =3D "embest,riotboard", "fsl,imx6dl";
> -
>  	chosen {
>  		linux,stdout-path =3D &uart2;
>  =

> @@ -21,210 +17,13 @@
>  			device-path =3D &environment_usdhc4;
>  		};
>  	};
> -
> -	memory {
> -		reg =3D <0x10000000 0x40000000>;
> -	};
> -
> -	gpio-leds {
> -		compatible =3D "gpio-leds";
> -
> -		d45 {
> -			label =3D "d45";
> -			gpios =3D <&gpio5 2 1>;
> -			linux,default-trigger =3D "heartbeat";
> -		};
> -
> -		d46 {
> -			label =3D "d46";
> -			gpios =3D <&gpio3 28 1>;
> -			linux,default-trigger =3D "default-on";
> -		};
> -	};
> -
> -
> -	regulators {
> -		compatible =3D "simple-bus";
> -		#address-cells =3D <1>;
> -		#size-cells =3D <0>;
> -
> -		reg_3p3v: regulator@1 {
> -			compatible =3D "regulator-fixed";
> -			reg =3D <1>;
> -			regulator-name =3D "3P3V";
> -			regulator-min-microvolt =3D <3300000>;
> -			regulator-max-microvolt =3D <3300000>;
> -			regulator-always-on;
> -		};
> -	};
> -};
> -
> -&iomuxc {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_hog>;
> -
> -	imx6s-riotboard {
> -		pinctrl_hog: hoggrp {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_EIM_A25__GPIO5_IO02		0x80000000 /* LED D45 */
> -				MX6QDL_PAD_EIM_D28__GPIO3_IO28		0x80000000 /* LED D46 */
> -				MX6QDL_PAD_DISP0_DAT22__GPIO5_IO16	0x80000000 /* PMIC_INT_B */
> -				MX6QDL_PAD_GPIO_0__CCM_CLKO1		0x030b0 /* CAM_MCLK + SGTL_MCLK */
> -			>;
> -		};
> -		pinctrl_uart2: uart2grp {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
> -				MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
> -			>;
> -		};
> -		pinctrl_rgmii_ar8035: rgmii_ar8035 {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> -				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> -				/* AR8035 reset */
> -				MX6QDL_PAD_EIM_D31__GPIO3_IO31		0x130b0
> -				/* AR8035 interrupt */
> -				MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x80000000
> -				/* GPIO16 -> AR8035 25MHz */
> -				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0xc0000000
> -				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x80000000
> -				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
> -				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
> -				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
> -				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
> -				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
> -				/* AR8035 CLK_25M --> ENET_REF_CLK (V22) */
> -				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x0a0b1
> -				/* AR8035 pin strapping: IO voltage: pull up */
> -				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
> -				/* AR8035 pin strapping: PHYADDR#0: pull down */
> -				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x130b0
> -				/* AR8035 pin strapping: PHYADDR#1: pull down */
> -				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x130b0
> -				/* AR8035 pin strapping: MODE#1: pull up */
> -				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
> -				/* AR8035 pin strapping: MODE#3: pull up */
> -				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
> -				/* AR8035 pin strapping: MODE#0: pull down */
> -				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x130b0
> -			>;
> -		};
> -		pinctrl_usdhc4: usdhc4grp {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_SD4_CLK__SD4_CLK			0x80000000
> -				MX6QDL_PAD_SD4_CMD__SD4_CMD			0x80000000
> -				MX6QDL_PAD_SD4_DAT0__SD4_DATA0			0x80000000
> -				MX6QDL_PAD_SD4_DAT1__SD4_DATA1			0x80000000
> -				MX6QDL_PAD_SD4_DAT2__SD4_DATA2			0x80000000
> -				MX6QDL_PAD_SD4_DAT3__SD4_DATA3			0x80000000
> -			>;
> -		};
> -		pinctrl_usdhc2: usdhc2grp {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_SD2_CLK__SD2_CLK			0x80000000
> -				MX6QDL_PAD_SD2_CMD__SD2_CMD			0x80000000
> -				MX6QDL_PAD_SD2_DAT0__SD2_DATA0			0x80000000
> -				MX6QDL_PAD_SD2_DAT1__SD2_DATA1			0x80000000
> -				MX6QDL_PAD_SD2_DAT2__SD2_DATA2			0x80000000
> -				MX6QDL_PAD_SD2_DAT3__SD2_DATA3			0x80000000
> -				MX6QDL_PAD_GPIO_2__GPIO1_IO02			0x80000000
> -				MX6QDL_PAD_GPIO_4__GPIO1_IO04			0x80000000
> -			>;
> -		};
> -		pinctrl_usdhc3: usdhc3grp {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_SD3_CMD__SD3_CMD			0x80000000
> -				MX6QDL_PAD_SD3_CLK__SD3_CLK			0x80000000
> -				MX6QDL_PAD_SD3_DAT0__SD3_DATA0			0x80000000
> -				MX6QDL_PAD_SD3_DAT1__SD3_DATA1			0x80000000
> -				MX6QDL_PAD_SD3_DAT2__SD3_DATA2			0x80000000
> -				MX6QDL_PAD_SD3_DAT3__SD3_DATA3			0x80000000
> -				MX6QDL_PAD_SD3_DAT4__GPIO7_IO01			0x80000000
> -				MX6QDL_PAD_SD3_DAT5__GPIO7_IO00			0x80000000
> -			>;
> -		};
> -		pinctrl_usbotg: usbotggrp {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID		0x80000000
> -				MX6QDL_PAD_EIM_D22__USB_OTG_PWR			0x80000000
> -				MX6QDL_PAD_EIM_D21__USB_OTG_OC			0x80000000
> -			>;
> -		};
> -		pinctrl_i2c1_2: i2c1grp-2 {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL 0x4001b8b1
> -				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA 0x4001b8b1
> -			>;
> -		};
> -		pinctrl_i2c2_2: i2c2grp-2 {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
> -				MX6QDL_PAD_KEY_ROW3__I2C2_SDA 0x4001b8b1
> -			>;
> -		};
> -		pinctrl_i2c3_2: i2c3grp-2 {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_GPIO_5__I2C3_SCL 0x4001b8b1
> -				MX6QDL_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
> -			>;
> -		};
> -		pinctrl_i2c4_2: i2c4grp-2 {
> -			fsl,pins =3D <
> -				MX6QDL_PAD_GPIO_7__I2C4_SCL 0x4001b8b1
> -				MX6QDL_PAD_GPIO_8__I2C4_SDA 0x4001b8b1
> -			>;
> -		};
> -	};
> -};
> -
> -&uart2 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_uart2>;
> -	status =3D "okay";
>  };
>  =

>  &fec {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_rgmii_ar8035>;
> -	phy-mode =3D "rgmii";
>  	phy-reset-duration =3D <2>;
> -	phy-reset-gpios =3D <&gpio3 31 0>;
> -	status =3D "okay";
> -};
> -
> -&usdhc2 {
> -	/* SD card socket - bottom */
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usdhc2>;
> -	bus-width =3D <4>;
> -	cd-gpios =3D <&gpio1 4 0>;
> -	wp-gpios =3D <&gpio1 2 0>;
> -	status =3D "okay";
> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> -};
> -
> -&usdhc3 {
> -	/* uSD card socket - top */
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usdhc3>;
> -	bus-width =3D <4>;
> -	cd-gpios =3D <&gpio7 0 0>;
> -	wp-gpios =3D <&gpio7 1 0>;
> -	status =3D "okay";
> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
>  };
>  =

>  &usdhc4 {
> -	/* eMMC */
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usdhc4>;
> -	bus-width =3D <4>;
> -	non-removable;
> -	status =3D "okay";
> -
>  	#address-cells =3D <1>;
>  	#size-cells =3D <1>;
>  =

> @@ -239,156 +38,6 @@
>  	};
>  };
>  =

> -&usbh1 {
> -	status =3D "okay";
> -	phy_type =3D "utmi";
> -	disable-over-current;
> -};
> -
> -&usbotg {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_usbotg>;
> -	phy_type =3D "utmi";
> -	dr_mode =3D "peripheral";
> -	otg_id_pin_select_change;
> -	status =3D "okay";
> -};
> -
> -&i2c1 {
> -	status =3D "okay";
> -	clock-frequency =3D <100000>;
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c1_2>;
> -
> -	pmic: pf0100@08 {
> -		compatible =3D "pf0100-regulator";
> -		reg =3D <0x08>;
> -		interrupt-parent =3D <&gpio5>;
> -		interrupts =3D <16 8>;
> -
> -		regulators {
> -			reg_vddcore: sw1ab {
> -				regulator-min-microvolt =3D <300000>;
> -				regulator-max-microvolt =3D <1875000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vddsoc: sw1c {
> -				regulator-min-microvolt =3D <300000>;
> -				regulator-max-microvolt =3D <1875000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_gen_3v3: sw2 {
> -				regulator-min-microvolt =3D <800000>;
> -				regulator-max-microvolt =3D <3300000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_ddr_1v5a: sw3a {
> -				regulator-min-microvolt =3D <400000>;
> -				regulator-max-microvolt =3D <1975000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_ddr_1v5b: sw3b {
> -				regulator-min-microvolt =3D <400000>;
> -				regulator-max-microvolt =3D <1975000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_ddr_vtt: sw4 {
> -				regulator-min-microvolt =3D <400000>;
> -				regulator-max-microvolt =3D <1975000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_5v_600mA: swbst {
> -				regulator-min-microvolt =3D <5000000>;
> -				regulator-max-microvolt =3D <5150000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_snvs_3v: vsnvs {
> -				regulator-min-microvolt =3D <1500000>;
> -				regulator-max-microvolt =3D <3000000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vrefddr: vrefddr {
> -				regulator-min-microvolt =3D <750000>;
> -				regulator-max-microvolt =3D <750000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vgen1_1v5: vgen1 {
> -				regulator-min-microvolt =3D <800000>;
> -				regulator-max-microvolt =3D <1550000>;
> -				/* not used */
> -			};
> -
> -			reg_vgen2_1v2_eth: vgen2 {
> -				regulator-min-microvolt =3D <800000>;
> -				regulator-max-microvolt =3D <1550000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vgen3_2v8: vgen3 {
> -				regulator-min-microvolt =3D <1800000>;
> -				regulator-max-microvolt =3D <3300000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vgen4_1v8: vgen4 {
> -				regulator-min-microvolt =3D <1800000>;
> -				regulator-max-microvolt =3D <3300000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vgen5_2v5_sgtl: vgen5 {
> -				regulator-min-microvolt =3D <1800000>;
> -				regulator-max-microvolt =3D <3300000>;
> -				regulator-always-on;
> -			};
> -
> -			reg_vgen6_3v3: vgen6 {
> -				regulator-min-microvolt =3D <1800000>;
> -				regulator-max-microvolt =3D <3300000>;
> -				regulator-always-on;
> -			};
> -		};
> -	};
> -
> -	codec: sgtl5000@0a {
> -		compatible =3D "fsl,sgtl5000";
> -		reg =3D <0x0a>;
> -		clocks =3D <&clks 201>;
> -		VDDA-supply =3D <&reg_vgen5_2v5_sgtl>;
> -		VDDIO-supply =3D <&reg_3p3v>;
> -	};
> -};
> -
> -&i2c2 {
> -	status =3D "okay";
> -	clock-frequency =3D <100000>;
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c2_2>;
> -};
> -
> -&i2c3 {
> -	status =3D "okay";
> -	clock-frequency =3D <100000>;
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c3_2>;
> -};
> -
> -&i2c4 {
> -	status =3D "okay";
> -	clock-frequency =3D <100000>;
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c4_2>;
> -};
> -
>  &ocotp {
>  	barebox,provide-mac-address =3D <&fec 0x620>;
>  };
> -- =

> 2.8.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
