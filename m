Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVmt7-0002bb-PM
 for barebox@lists.infradead.org; Wed, 29 May 2019 00:56:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so326527ios.10
 for <barebox@lists.infradead.org>; Tue, 28 May 2019 17:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
 <20190527201853.18853-7-andrew.smirnov@gmail.com>
 <20190528095725.iihbkwnfah2h6l3n@pengutronix.de>
In-Reply-To: <20190528095725.iihbkwnfah2h6l3n@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 28 May 2019 17:56:04 -0700
Message-ID: <CAHQ1cqEwnHyNJAhN2oZyu8NnVQNywqAMAzfTJJzyY2Zfzxgkqg@mail.gmail.com>
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
Subject: Re: [PATCH 6/7] ARM: rdu2: Add U-Boot environment partitions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, May 28, 2019 at 2:57 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, May 27, 2019 at 01:18:52PM -0700, Andrey Smirnov wrote:
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 27 +++++++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> >
> > diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
> > index bfc75ba60..937fc5d67 100644
> > --- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
> > +++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
> > @@ -47,6 +47,12 @@
> >                       compatible = "barebox,environment";
> >                       device-path = &nor_flash, "partname:barebox-environment";
> >               };
> > +
> > +             ubootenv {
> > +                     compatible = "barebox,uboot-environment";
> > +                     device-path-0 = &usdhc4, "partname:uboot-environment-0";
> > +                     device-path-1 = &usdhc4, "partname:uboot-environment-1";
> > +             };
>
> Please add a label to the partitions and point to them here directly
> rather than using the partname: string.
>

OK, will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
