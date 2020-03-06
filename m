Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADew-0007It-TR
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 14:09:04 +0000
Date: Fri, 6 Mar 2020 15:08:48 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1576776366.16344.1583503729459@mail.vodafone.de>
In-Reply-To: <20200306125912.GY3335@pengutronix.de>
References: <2105504494.1423.1583396775377@mail.vodafone.de>
 <4b929efa-4d1b-5641-743d-96d94766c57d@pengutronix.de>
 <1062353935.2358.1583401816499@mail.vodafone.de>
 <1104087736.13112.1583489476516@mail.vodafone.de>
 <20200306125912.GY3335@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox image for an spi flash (like m25p0) on an imx7 soc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi,

> On March 6, 2020 at 1:59 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> On Fri, Mar 06, 2020 at 11:11:16AM +0100, Giorgio Dal Molin wrote:
> > Hi,
> > 
> > I think I've found an error in the imx7 ref. manual: the table at 6.6.6.3 'QuadSPI
> > configuration parameters' should be placed at offset 0x00 (the very beginning of the
> > spi flash) and not at offset 0x400 as it is written on the ref. manual !!!
> 
> This seems to be specific to QuadSPI. Are you sure you boot from the
> QuadSPI controller? There is a driver for that in barebox, but the i.MX7
> dts files do not register it. Given that you have written the image with
> barebox I doubt you are doing QuadSPI.
> 
> Sascha

Yes, the current barebox master does not have a qspi block in the dts file
for the imx7, I had to add it:

barebox/dts/src/arm/imx7s.dtsi:

...
			usdhc3: usdhc@30b60000 {
				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
				reg = <0x30b60000 0x10000>;
				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
					<&clks IMX7D_NAND_USDHC_BUS_ROOT_CLK>,
					<&clks IMX7D_USDHC3_ROOT_CLK>;
				clock-names = "ipg", "ahb", "per";
				bus-width = <4>;
				status = "disabled";
			};

			qspi1: spi@30bb0000 {
				#address-cells = <1>;
				#size-cells = <0>;
				compatible = "fsl,imx7d-qspi";
				reg = <0x30bb0000 0x10000>, <0x60000000 0x10000000>;
				reg-names = "QuadSPI", "QuadSPI-memory";
				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
				clocks = <&clks IMX7D_QSPI_ROOT_CLK>,
					<&clks IMX7D_QSPI_ROOT_CLK>;
				clock-names = "qspi_en", "qspi";
				status = "disabled";
			};

			sdma: sdma@30bd0000 {
				compatible = "fsl,imx7d-sdma", "fsl,imx35-sdma";
				reg = <0x30bd0000 0x10000>;
				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
					 <&clks IMX7D_SDMA_CORE_CLK>;
				clock-names = "ipg", "ahb";
				#dma-cells = <3>;
				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx7d.bin";
			};
...

and in the dts for my board:

...
&fec2 {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_enet2>;
	assigned-clocks = <&clks IMX7D_ENET2_TIME_ROOT_SRC>,
			  <&clks IMX7D_ENET2_TIME_ROOT_CLK>;
	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_125M_CLK>;
	assigned-clock-rates = <0>, <100000000>;
	phy-mode = "rgmii-id";
	phy-handle = <&ethphy1>;
	fsl,magic-packet;
	status = "okay";
};

&qspi1 {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_qspi1>;
	status = "okay";

	flash0: w25q16dw@0 {
		#address-cells = <1>;
		#size-cells = <1>;
		compatible = "winbond,w25q16dw", "jedec,spi-nor";
		spi-max-frequency = <20000000>;
		// take off one dummy cycle
		spi-nor,ddr-quad-read-dummy = <5>;
		reg = <0>;

		partition@0 {
			label = "flash_header";
			reg = <0x000000 0x400>;
		};
		partition@1 {
			label = "barebox";
			reg = <0x000400 0x100000>;
		};
	};
};


With this setup I can build a barebox image and upload it to the imx7d
with the imx-usb-loader: barebox boots and I can access the spi flash through
/dev/m25p0.

Now, if I erase /dev/m25p0 and copy the binary u-boot image to it then the imx7d
boots the u-boot, if I just erase /dev/m25p0 then it doesn't boot anymore.

giorgio

> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
