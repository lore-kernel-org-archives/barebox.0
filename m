Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMiD-0001F5-S8
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 11:41:04 +0000
Date: Mon, 23 Sep 2019 13:40:56 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20190923114056.3r5ukleoadbhtu5e@pengutronix.de>
References: <20190911145636.4637-1-m.felsch@pengutronix.de>
 <20190920141226.w3alja43ud5ri5cs@pengutronix.de>
 <b0f2076b-ba33-47b1-b4ed-01b9cd842181@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0f2076b-ba33-47b1-b4ed-01b9cd842181@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx6: phycore: make use of upstream dts
To: Stefan =?iso-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Cc: d.schultz@phytec.de, barebox@lists.infradead.org, s.christ@phytec.de, j.remmet@phytec.de

Hi Stefan,

On 19-09-23 10:31, Stefan Riedm=FCller wrote:
> Hi Marco,
> =

> Usually we would like to keep the features supported in the barebox to a
> minimum set that is mostly supported by the SOM itself and thus is mostly
> base board independent.

Yes, I understand that but the barebox SoM dtsi had also muxing options
which made only sense with the mira board.

> My suggestion would be to just use the upstream phycore devicetree. Would
> that be ok with you? Of course that means some features like e.g. USB need
> to be duplicated but that should be overseeable.

I was also thinking about just use the upstream phycore dtsi but than I
saw that the barebox dtsi is adding mira board specific code. The
upstream devicetree's are a bit cleaner. Can you identify possible
mistakes I made? I tought the changes I made don't affect barebox in a
negative way. Maybe there are new devices but barebox will ignore them
if you didn't enable the driver support for it.

Regards,
  Marco

> I can send a new patch if you like but I would need to find some free time
> to do it.
> =

> Regards,
> Stefan
> =

> =

> On 20.09.19 16:12, Marco Felsch wrote:
> > Hi,
> > =

> > @phytec
> > =

> > Please can you test those changes because I don't have all these boards.
> > =

> > Regards,
> >    Marco
> > =

> > On 19-09-11 16:56, Marco Felsch wrote:
> > > Since a quite time we can use the upstream Phytec mira devicetree's a=
nd
> > > the phycore dtsi to reduce code duplication and possible unwanted
> > > divergences. I've converted all boards devicetree's to use the upstre=
am
> > > mira devicetree's except the:
> > >    - imx6dl-phytec-phycore-som-emmc.dts
> > >    - imx6dl-phytec-phycore-som-lc-emmc.dts
> > >    - imx6dl-phytec-phycore-som-lc-nand.dts
> > > boards because those variants are not upstream available yet.
> > > =

> > > This commit also removes mixtures between barebox phycore SoM dtsi and
> > > barebox board devicetree's within the imx6qdl-phytec-phycore-som.dtsi.
> > > This SoM dtsi contained muxing options which are only valid in
> > > combination with the mira baseboard.
> > > =

> > > Now all barebox dts(i) files contain only the necessary things or
> > > divergences from upstream e.g. the compatible wasn't exactly the same.
> > > =

> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >   .../dts/imx6dl-phytec-phycore-som-emmc.dts    |  12 +-
> > >   .../dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  12 +-
> > >   .../dts/imx6dl-phytec-phycore-som-lc-nand.dts |   6 +-
> > >   .../dts/imx6dl-phytec-phycore-som-nand.dts    |  31 +--
> > >   .../arm/dts/imx6q-phytec-phycore-som-emmc.dts |  39 +--
> > >   .../arm/dts/imx6q-phytec-phycore-som-nand.dts |  39 +--
> > >   arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  | 261 ++-------------=
---
> > >   .../dts/imx6qp-phytec-phycore-som-nand.dts    |  38 +--
> > >   8 files changed, 49 insertions(+), 389 deletions(-)
> > > =

> > > diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/a=
rm/dts/imx6dl-phytec-phycore-som-emmc.dts
> > > index 21cbb5f944..d9a40599c7 100644
> > > --- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> > > +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> > > @@ -13,6 +13,8 @@
> > >   /dts-v1/;
> > >   #include <arm/imx6dl.dtsi>
> > > +#include <arm/imx6qdl-phytec-phycore-som.dtsi>
> > > +#include <arm/imx6qdl-phytec-mira.dtsi>
> > >   #include "imx6dl.dtsi"
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   #include "imx6qdl-phytec-state.dtsi"
> > > @@ -22,14 +24,6 @@
> > >   	compatible =3D "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
> > >   };
> > > -&ecspi1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&eeprom {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &ethphy {
> > >   	max-speed =3D <1000>;
> > >   };
> > > @@ -38,7 +32,7 @@
> > >   	status =3D "okay";
> > >   };
> > > -&flash {
> > > +&m25p80 {
> > >   	status =3D "okay";
> > >   };
> > > diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arc=
h/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
> > > index b8efb95ee0..516df5ff5a 100644
> > > --- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
> > > +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
> > > @@ -7,6 +7,8 @@
> > >   /dts-v1/;
> > >   #include <arm/imx6dl.dtsi>
> > > +#include <arm/imx6qdl-phytec-phycore-som.dtsi>
> > > +#include <arm/imx6qdl-phytec-mira.dtsi>
> > >   #include "imx6dl.dtsi"
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   #include "imx6qdl-phytec-state.dtsi"
> > > @@ -16,14 +18,6 @@
> > >   	compatible =3D "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
> > >   };
> > > -&ecspi1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&eeprom {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &ethphy {
> > >   	max-speed =3D <100>;
> > >   };
> > > @@ -32,7 +26,7 @@
> > >   	status =3D "okay";
> > >   };
> > > -&flash {
> > > +&m25p80 {
> > >   	status =3D "okay";
> > >   };
> > > diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arc=
h/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
> > > index 4d38d1698a..ab13d6b77b 100644
> > > --- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
> > > +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
> > > @@ -7,6 +7,8 @@
> > >   /dts-v1/;
> > >   #include <arm/imx6dl.dtsi>
> > > +#include <arm/imx6qdl-phytec-phycore-som.dtsi>
> > > +#include <arm/imx6qdl-phytec-mira.dtsi>
> > >   #include "imx6dl.dtsi"
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   #include "imx6qdl-phytec-state.dtsi"
> > > @@ -16,10 +18,6 @@
> > >   	compatible =3D "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
> > >   };
> > > -&eeprom {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &ethphy {
> > >   	max-speed =3D <100>;
> > >   };
> > > diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/a=
rm/dts/imx6dl-phytec-phycore-som-nand.dts
> > > index 3ad3723d28..db4d930b29 100644
> > > --- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> > > +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> > > @@ -9,45 +9,22 @@
> > >    * http://www.gnu.org/copyleft/gpl.html
> > >    */
> > > -/dts-v1/;
> > > -
> > > -#include <arm/imx6dl.dtsi>
> > > +#include <arm/imx6dl-phytec-mira-rdk-nand.dts>
> > >   #include "imx6dl.dtsi"
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   #include "imx6qdl-phytec-state.dtsi"
> > >   / {
> > > -	model =3D "Phytec phyCORE-i.MX6 Duallite/SOLO with NAND";
> > > -	compatible =3D "phytec,imx6dl-pcm058-nand", "fsl,imx6dl";
> > > -};
> > > -
> > > -&eeprom {
> > > -	status =3D "okay";
> > > +	compatible =3D "phytec,imx6dl-pbac06-nand", "phytec,imx6dl-pbac06",
> > > +		     "phytec,imx6dl-pcm058-nand", "phytec,imx6qdl-pcm058",
> > > +		     "fsl,imx6dl";
> > >   };
> > >   &ethphy {
> > >   	max-speed =3D <1000>;
> > >   };
> > > -&fec {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&gpmi {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbh1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbotg {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &usdhc1 {
> > > -	status =3D "okay";
> > > -
> > >   	partitions {
> > >   		compatible =3D "fixed-partitions";
> > >   		#address-cells =3D <1>;
> > > diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/ar=
m/dts/imx6q-phytec-phycore-som-emmc.dts
> > > index 7a86d5b94d..55dc1f91f7 100644
> > > --- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> > > +++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> > > @@ -9,49 +9,22 @@
> > >    * http://www.gnu.org/copyleft/gpl.html
> > >    */
> > > -/dts-v1/;
> > > -
> > > -#include <arm/imx6q.dtsi>
> > > +#include <arm/imx6q-phytec-mira-rdk-emmc.dts>
> > >   #include "imx6q.dtsi"
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   #include "imx6qdl-phytec-state.dtsi"
> > >   / {
> > > -	model =3D "Phytec phyCORE-i.MX6 Quad with eMMC";
> > > -	compatible =3D "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
> > > -};
> > > -
> > > -&ecspi1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&eeprom {
> > > -	status =3D "okay";
> > > +	compatible =3D "phytec,imx6q-pbac06-emmc", "phytec,imx6q-pbac06",
> > > +		     "phytec,imx6q-pcm058-emmc", "phytec,imx6qdl-pcm058",
> > > +		     "fsl,imx6q";
> > >   };
> > >   &ethphy {
> > >   	max-speed =3D <1000>;
> > >   };
> > > -&fec {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&flash {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbh1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbotg {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &usdhc1 {
> > > -	status =3D "okay";
> > > -
> > >   	partitions {
> > >   		compatible =3D "fixed-partitions";
> > >   		#address-cells =3D <1>;
> > > @@ -68,7 +41,3 @@
> > >   		};
> > >   	};
> > >   };
> > > -
> > > -&usdhc4 {
> > > -	status =3D "okay";
> > > -};
> > > diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/ar=
m/dts/imx6q-phytec-phycore-som-nand.dts
> > > index 96d1de224c..56812c2473 100644
> > > --- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> > > +++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> > > @@ -9,54 +9,23 @@
> > >    * http://www.gnu.org/copyleft/gpl.html
> > >    */
> > > -/dts-v1/;
> > > -
> > > -#include <arm/imx6q.dtsi>
> > > +#include <arm/imx6q-phytec-mira-rdk-nand.dts>
> > >   #include "imx6q.dtsi"
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   #include "imx6qdl-phytec-state.dtsi"
> > >   / {
> > > -	model =3D "Phytec phyCORE-i.MX6 Quad with NAND";
> > > -	compatible =3D "phytec,imx6q-pcm058-nand", "fsl,imx6q";
> > > -
> > > -};
> > > -
> > > -&ecspi1 {
> > > -	status =3D "okay";
> > > -};
> > > +	compatible =3D "phytec,imx6q-pbac06-nand", "phytec,imx6q-pbac06",
> > > +		     "phytec,imx6q-pcm058-nand", "phytec,imx6qdl-pcm058",
> > > +		     "fsl,imx6q";
> > > -&eeprom {
> > > -	status =3D "okay";
> > >   };
> > >   &ethphy {
> > >   	max-speed =3D <1000>;
> > >   };
> > > -&fec {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&flash {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&gpmi {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbh1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbotg {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &usdhc1 {
> > > -	status =3D "okay";
> > > -
> > >   	partitions {
> > >   		compatible =3D "fixed-partitions";
> > >   		#address-cells =3D <1>;
> > > diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/=
dts/imx6qdl-phytec-phycore-som.dtsi
> > > index 1d39368165..e17304c42b 100644
> > > --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> > > +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> > > @@ -13,8 +13,6 @@
> > >   / {
> > >   	chosen {
> > > -		stdout-path =3D &uart2;
> > > -
> > >   		environment-sd1 {
> > >   			compatible =3D "barebox,environment";
> > >   			device-path =3D &usdhc1, "partname:barebox-environment";
> > > @@ -35,102 +33,51 @@
> > >   		environment-spinor {
> > >   			compatible =3D "barebox,environment";
> > > -			device-path =3D &flash, "partname:barebox-environment";
> > > +			device-path =3D &m25p80, "partname:barebox-environment";
> > >   			status =3D "disabled";
> > >   		};
> > >   	};
> > > -	reg_usbh1_vbus: regulator-usbh1 {
> > > -		compatible =3D "regulator-fixed";
> > > -		pinctrl-names =3D "default";
> > > -		pinctrl-0 =3D <&pinctrl_usbh1_vbus>;
> > > -		regulator-name =3D "usbh1_vbus";
> > > -		regulator-min-microvolt =3D <5000000>;
> > > -		regulator-max-microvolt =3D <5000000>;
> > > -		gpio =3D <&gpio2 18 GPIO_ACTIVE_HIGH>;
> > > -		enable-active-high;
> > > -	};
> > > -
> > > -	reg_usbotg_vbus: regulator-usbotg {
> > > -		compatible =3D "regulator-fixed";
> > > -		pinctrl-names =3D "default";
> > > -		pinctrl-0 =3D <&pinctrl_usbotg_vbus>;
> > > -		regulator-name =3D "usbotg_vbus";
> > > -		regulator-min-microvolt =3D <5000000>;
> > > -		regulator-max-microvolt =3D <5000000>;
> > > -		gpio =3D <&gpio2 19 GPIO_ACTIVE_HIGH>;
> > > -		enable-active-high;
> > > +	/* Let the bootloader set the real size */
> > > +	memory@10000000 {
> > > +		device_type =3D "memory";
> > > +		reg =3D <0x0 0x0>;
> > >   	};
> > >   };
> > > -&ecspi1 {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_ecspi1>;
> > > -	fsl,spi-num-chipselects =3D <1>;
> > > -	cs-gpios =3D <&gpio3 19 0>;
> > > -	status =3D "disabled";
> > > -
> > > -	flash: flash@0 {
> > > -		compatible =3D "jedec,spi-nor";
> > > -		spi-max-frequency =3D <20000000>;
> > > -		reg =3D <0>;
> > > -		status =3D "disabled";
> > > -
> > > -		partitions {
> > > -			compatible =3D "fixed-partitions";
> > > -			#address-cells =3D <1>;
> > > -			#size-cells =3D <1>;
> > > +&m25p80 {
> > > +	partitions {
> > > +		compatible =3D "fixed-partitions";
> > > +		#address-cells =3D <1>;
> > > +		#size-cells =3D <1>;
> > > -			partition@0 {
> > > -				label =3D "barebox";
> > > -				reg =3D <0x0 0x100000>;
> > > -			};
> > > +		partition@0 {
> > > +			label =3D "barebox";
> > > +			reg =3D <0x0 0x100000>;
> > > +		};
> > > -			partition@100000 {
> > > -				label =3D "barebox-environment";
> > > -				reg =3D <0x100000 0x20000>;
> > > -			};
> > > +		partition@100000 {
> > > +			label =3D "barebox-environment";
> > > +			reg =3D <0x100000 0x20000>;
> > > +		};
> > > -			partition@120000 {
> > > -				label =3D "oftree";
> > > -				reg =3D <0x120000 0x20000>;
> > > -			};
> > > +		partition@120000 {
> > > +			label =3D "oftree";
> > > +			reg =3D <0x120000 0x20000>;
> > > +		};
> > > -			partition@140000 {
> > > -				label =3D "kernel";
> > > -				reg =3D <0x140000 0x0>;
> > > -			};
> > > +		partition@140000 {
> > > +			label =3D "kernel";
> > > +			reg =3D <0x140000 0x0>;
> > >   		};
> > >   	};
> > >   };
> > >   &fec {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_enet>;
> > > -	phy-handle =3D <&ethphy>;
> > > -	phy-mode =3D "rgmii";
> > > -	phy-reset-gpios =3D <&gpio1 14 GPIO_ACTIVE_LOW>;
> > >   	phy-reset-duration =3D <10>; /* in msecs */
> > > -	status =3D "disabled";
> > > -
> > > -	mdio {
> > > -		#address-cells =3D <1>;
> > > -		#size-cells =3D <0>;
> > > -
> > > -		ethphy: ethernet-phy@3 {
> > > -			reg =3D <3>;
> > > -			txc-skew-ps =3D <1680>;
> > > -			rxc-skew-ps =3D <1860>;
> > > -		};
> > > -	};
> > >   };
> > >   &gpmi {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_gpmi_nand>;
> > > -	nand-on-flash-bbt;
> > > -	status =3D "disabled";
> > > -
> > >   	partitions {
> > >   		compatible =3D "fixed-partitions";
> > >   		#address-cells =3D <1>;
> > > @@ -154,11 +101,6 @@
> > >   };
> > >   &i2c3 {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_i2c3>;
> > > -	clock-frequency =3D <400000>;
> > > -	status =3D "okay";
> > > -
> > >   	eeprom: eeprom@50 {
> > >   		status =3D "disabled";
> > >   		compatible =3D "24c32";
> > > @@ -166,170 +108,17 @@
> > >   	};
> > >   	pmic@58 {
> > > -		compatible =3D "dlg,da9062";
> > > -		reg =3D <0x58>;
> > > -		status =3D "okay";
> > > -
> > >   		watchdog-priority =3D <500>;
> > >   		restart-priority =3D <500>;
> > >   		reset-source-priority =3D <500>;
> > >   	};
> > >   };
> > > -&iomuxc {
> > > -	pinctrl_ecspi1: ecspi1grp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
> > > -			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
> > > -			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
> > > -			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_enet: enetgrp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> > > -			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
> > > -			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
> > > -			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
> > > -			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
> > > -			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
> > > -			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x80000000
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_gpmi_nand: gpmigrp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
> > > -			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
> > > -			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
> > > -			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
> > > -			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
> > > -			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
> > > -			MX6QDL_PAD_NANDF_CS2__NAND_CE2_B	0xb0b1
> > > -			MX6QDL_PAD_NANDF_CS3__NAND_CE3_B	0xb0b1
> > > -			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
> > > -			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
> > > -			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
> > > -			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
> > > -			MX6QDL_PAD_SD4_DAT0__NAND_DQS		0x00b1
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_i2c3: i2c3grp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
> > > -			MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_uart2: uart2grp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
> > > -			MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_usbh1_vbus: usbh1vbusgrp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_EIM_A20__GPIO2_IO18		0xb0b1
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_usbotg: usbotggrp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_usbotg_vbus: usbotgvbusgrp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_EIM_A19__GPIO2_IO19		0xb0b1
> > > -			>;
> > > -	};
> > > -
> > > -	pinctrl_usdhc1: usdhc1grp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
> > > -			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
> > > -			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
> > > -			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
> > > -			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
> > > -			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
> > > -			MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
> > > -		>;
> > > -	};
> > > -
> > > -	pinctrl_usdhc4: usdhc4grp {
> > > -		fsl,pins =3D <
> > > -			MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
> > > -			MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
> > > -			MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
> > > -			MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
> > > -			MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
> > > -			MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
> > > -			MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
> > > -			MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
> > > -			MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
> > > -			MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
> > > -		>;
> > > -	};
> > > -};
> > > -
> > >   &ocotp {
> > >   	barebox,provide-mac-address =3D <&fec 0x620>;
> > >   };
> > > -&uart2 {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_uart2>;
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbh1 {
> > > -	vbus-supply =3D <&reg_usbh1_vbus>;
> > > -	disable-over-current;
> > > -	status =3D "disabled";
> > > -};
> > > -
> > > -&usbotg {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_usbotg>;
> > > -	vbus-supply =3D <&reg_usbotg_vbus>;
> > > -	disable-over-current;
> > > -	status =3D "disabled";
> > > -};
> > > -
> > > -&usdhc1 {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_usdhc1>;
> > > -	cd-gpios =3D <&gpio6 31 0>;
> > > -	status =3D "disabled";
> > > -};
> > > -
> > >   &usdhc4 {
> > > -	pinctrl-names =3D "default";
> > > -	pinctrl-0 =3D <&pinctrl_usdhc4>;
> > > -	bus-width =3D <8>;
> > > -	non-removable;
> > > -	status =3D "disabled";
> > > -
> > >   	#address-cells =3D <1>;
> > >   	#size-cells =3D <1>;
> > > diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/a=
rm/dts/imx6qp-phytec-phycore-som-nand.dts
> > > index 437457ce75..06def935b0 100644
> > > --- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
> > > +++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
> > > @@ -10,50 +10,20 @@
> > >    * http://www.gnu.org/copyleft/gpl.html
> > >    */
> > > -/dts-v1/;
> > > -#include <arm/imx6qp.dtsi>
> > > +#include <arm/imx6qp-phytec-mira-rdk-nand.dts>
> > >   #include "imx6qdl-phytec-phycore-som.dtsi"
> > >   / {
> > > -	model =3D "Phytec phyCORE-i.MX6 Quad with NAND";
> > > -	compatible =3D "phytec,imx6qp-pcm058-nand", "fsl,imx6qp";
> > > -};
> > > -
> > > -&ecspi1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&eeprom {
> > > -	status =3D "okay";
> > > +	compatible =3D "phytec,imx6qp-pbac06-nand", "phytec,imx6qp-pbac06",
> > > +		     "phytec,imx6qp-pcm058-nand", "phytec,imx6qdl-pcm058",
> > > +		     "fsl,imx6qp";
> > >   };
> > >   &ethphy {
> > >   	max-speed =3D <1000>;
> > >   };
> > > -&fec {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&flash {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&gpmi {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbh1 {
> > > -	status =3D "okay";
> > > -};
> > > -
> > > -&usbotg {
> > > -	status =3D "okay";
> > > -};
> > > -
> > >   &usdhc1 {
> > > -	status =3D "okay";
> > > -
> > >   	partitions {
> > >   		compatible =3D "fixed-partitions";
> > >   		#address-cells =3D <1>;
> > > -- =

> > > 2.20.1
> > > =

> > > =

> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > > =

> > =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
