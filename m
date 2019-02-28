Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gzBfq-00040r-In
 for barebox@lists.infradead.org; Thu, 28 Feb 2019 02:43:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id w17so20178299wrn.12
 for <barebox@lists.infradead.org>; Wed, 27 Feb 2019 18:43:50 -0800 (PST)
MIME-Version: 1.0
References: <20190227031657.19896-1-andrew.smirnov@gmail.com>
 <20190227031657.19896-8-andrew.smirnov@gmail.com>
 <1551265823.2305.10.camel@pengutronix.de>
In-Reply-To: <1551265823.2305.10.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Feb 2019 18:43:38 -0800
Message-ID: <CAHQ1cqFZ4RK6a6Ch9=78QAbOH42QzSxas+YigPMbiAbotOQxGA@mail.gmail.com>
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
Subject: Re: [PATCH 7/7] ARM: imx8mq-zii-ultra: Add USB related nodes
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 27, 2019 at 3:10 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Dienstag, den 26.02.2019, 19:16 -0800 schrieb Andrey Smirnov:
> > Add nodes for exposed USB ports as well as USB hub connected to one of
> > them.
> >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/dts/imx8mq-zii-ultra-rmb3.dts |  4 +++
> >  arch/arm/dts/imx8mq-zii-ultra.dtsi     | 34 ++++++++++++++++++++++++++
> >  2 files changed, 38 insertions(+)
> >
> > diff --git a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> > index b2b3a560b..78280029b 100644
> > --- a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> > +++ b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> > @@ -37,3 +37,7 @@
> > >             >;
> > >     };
> >  };
> > +
> > +&usb_hub {
> > +     port-swap=<0x01>;
>
> This is wrong. With the upstream driver/binding this should be:
> swap-dx-lanes = <0>;
>

Ugh, missed this one, will send a fixup.

> > +};
> > diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> > index 83d57916e..d46a26d81 100644
> > --- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
> > +++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> > @@ -226,6 +226,16 @@
> > >     pinctrl-names = "default";
> > >     pinctrl-0 = <&pinctrl_i2c3>;
> > >     status = "okay";
> > +
> > > > + usb_hub: usb2513b@2c {
> > > +           compatible = "microchip,usb2513b";
> > > +           pinctrl-names = "default";
> > > +           pinctrl-0 = <&pinctrl_usb2513b>;
> > > +           #address-cells=<1>;
> > +             #size-cells=<1>;
>
> Why the address-cells and size-cells here? I don't see why this is
> needed.
>

Probably just a leftover from vendor tree where this node has
children. Will fix.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
