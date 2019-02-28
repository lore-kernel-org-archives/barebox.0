Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gzBej-0003a0-Am
 for barebox@lists.infradead.org; Thu, 28 Feb 2019 02:42:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id n19so7710202wmi.1
 for <barebox@lists.infradead.org>; Wed, 27 Feb 2019 18:42:40 -0800 (PST)
MIME-Version: 1.0
References: <20190227031657.19896-1-andrew.smirnov@gmail.com>
 <20190227031657.19896-6-andrew.smirnov@gmail.com>
 <1551266319.2305.12.camel@pengutronix.de>
In-Reply-To: <1551266319.2305.12.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Feb 2019 18:42:26 -0800
Message-ID: <CAHQ1cqHK5EwVW_b7M_EdOHH1vdFvoGNx-GgAFYn=XaoP63TcQg@mail.gmail.com>
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
Subject: Re: [PATCH 5/7] ARM: imx8mq-zii-ultra: Enable PCIE1 and PCIE2
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 27, 2019 at 3:18 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Dienstag, den 26.02.2019, 19:16 -0800 schrieb Andrey Smirnov:
> > Enable PCIE1 and PCIE2 used on both Zest and RMB3 boards.
> >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/dts/imx8mq-zii-ultra.dtsi | 62 ++++++++++++++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> >
> > diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> > index a6b2b8966..83d57916e 100644
> > --- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
> > +++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> > @@ -37,6 +37,18 @@
> > >             gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> > >             enable-active-high;
> > >     };
> > +
> > > +   pcie0_refclk: pcie0-refclk {
> > > +           compatible = "fixed-clock";
> > > +           #clock-cells = <0>;
> > > +           clock-frequency = <100000000>;
> > > +   };
> > +
> > > +   pcie1_refclk: pcie0-refclk {
> > > +           compatible = "fixed-clock";
> > > +           #clock-cells = <0>;
> > > +           clock-frequency = <100000000>;
> > > +   };
> >  };
> >
> >  &fec1 {
> > @@ -227,6 +239,42 @@
> > >     barebox,provide-mac-address = <&fec1 0x640>;
> >  };
> >
> > +&pcie0 {
> > > +   pinctrl-names = "default";
> > > +   pinctrl-0 = <&pinctrl_pcie0>;
> > > +   reset-gpio = <&gpio1 3 GPIO_ACTIVE_LOW>;
> > > +   clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
> > > +            <&clk IMX8MQ_CLK_PCIE1_AUX>,
> > > +            <&clk IMX8MQ_CLK_PCIE1_PHY>,
> > > +            <&pcie0_refclk>;
> > > +   clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> > > +   status = "okay";
> > +};
> > +
> > +&pcie1 {
> > > +   pinctrl-names = "default";
> > > +   pinctrl-0 = <&pinctrl_pcie1>;
> > > +   reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
> > > +   clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
> > > +            <&clk IMX8MQ_CLK_PCIE2_AUX>,
> > > +            <&clk IMX8MQ_CLK_PCIE2_PHY>,
> > > +            <&pcie1_refclk>;
> > > +   clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> > > +   status = "okay";
> > +
> > > +   pcie@0,0 {
> > +             reg = <0x000000 0 0 0 0>;
>
> Drop leading zeros from reg properties.
>
> > +
> > > +           #address-cells = <3>;
> > > +           #size-cells = <2>;
> > +
> > +             /* pcie endpoint 01:00.0 */
> > +             eth1: intel,i210@pcie0,0 {
>
> Node name with "," seems strange.
>
> > +                     reg = <0x010000 0 0 0 0>;
>
> This should also be 0 in the first cell of the reg. The bus number is
> defined by the DT node hierarchy. While this might match with the
> current implementation, the PCIe enumeration could decide to start the
> PCIe bus numbering from a different base during enumeration, so the
> PCIe DT nodes should not have fixed/misleading bus numbers. Actually
> they are ignored during matching of the nodes.
>

Noted, will send a fixup for this.

Thanks
Andrey Smirnov

>
> > +             };
> > > +   };
> > +};
> > +
> >  &uart1 {
> > >     pinctrl-names = "default";
> > >     pinctrl-0 = <&pinctrl_uart1>;
> > @@ -344,6 +392,20 @@
> > >             >;
> > >     };
> >
> > > +   pinctrl_pcie0: pcie0grp {
> > > +           fsl,pins = <
> > > > +                 MX8MQ_IOMUXC_UART4_RXD_PCIE1_CLKREQ_B   0x76
> > > > +                 MX8MQ_IOMUXC_GPIO1_IO03_GPIO1_IO3       0x16
> > > +           >;
> > > +   };
> > +
> > > +   pinctrl_pcie1: pcie1grp {
> > > +           fsl,pins = <
> > > > +                 MX8MQ_IOMUXC_UART4_TXD_PCIE2_CLKREQ_B   0x76
> > > > +                 MX8MQ_IOMUXC_GPIO1_IO06_GPIO1_IO6       0x16
> > > +           >;
> > > +   };
> > +
> > >     pinctrl_reg_usdhc2: regusdhc2grpgpio {
> > >             fsl,pins = <
> > > >                   MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19             0x41

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
