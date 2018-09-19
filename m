Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2dvW-0003BL-JH
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 14:58:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19-v6so6634693wme.3
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 07:57:51 -0700 (PDT)
MIME-Version: 1.0
References: <20180918054148.8878-1-andrew.smirnov@gmail.com>
 <20180918054148.8878-7-andrew.smirnov@gmail.com>
 <20180919074844.GN4097@pengutronix.de>
In-Reply-To: <20180919074844.GN4097@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 07:57:38 -0700
Message-ID: <CAHQ1cqFK4P-1wSWU5CZhE7TMjBXa8CQ4DkUr4n2YuVJRoahWZA@mail.gmail.com>
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
Subject: Re: [PATCH 6/8] ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 19, 2018 at 12:48 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Sep 17, 2018 at 10:41:46PM -0700, Andrey Smirnov wrote:
> > Add appropriate DT node and a fixup routine needed for i.MX8MQ EVK
> > board.
> >
> > diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
> > index 3ac13baa1..bdc340a8b 100644
> > --- a/arch/arm/dts/imx8mq-evk.dts
> > +++ b/arch/arm/dts/imx8mq-evk.dts
> > @@ -43,7 +43,18 @@
> >                   <&pinctrl_fec1_data_tx>, <&pinctrl_fec1_data_rx>,
> >                   <&pinctrl_fec1_phy_reset>;
> >       phy-mode = "rgmii-id";
> > +     phy-handle = <&fec_phy>;
> > +     phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> >       status = "okay";
> > +
> > +     mdio {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             fec_phy: ethernet-phy@1 {
> > +                     reg = <1>;
> > +             };
> > +     };
>
> What's the reason for adding a phy node here? It shouldn't be needed.
>

Yeah, I think I added it mistakenly thinking it was needed and never
re-check the correctness of that assumption. Will remove in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
