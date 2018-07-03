Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faPHf-0004Kd-0x
 for barebox@lists.infradead.org; Tue, 03 Jul 2018 17:40:12 +0000
Received: by mail-it0-x244.google.com with SMTP id p4-v6so4278686itf.2
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 10:40:00 -0700 (PDT)
MIME-Version: 1.0
References: <20180630034737.2820-1-andrew.smirnov@gmail.com>
 <1530520798.22468.80.camel@pengutronix.de>
In-Reply-To: <1530520798.22468.80.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 3 Jul 2018 10:39:48 -0700
Message-ID: <CAHQ1cqHMn3vHVOn8XEwLSRqZXYHFC7HtmWL+Kx441ipuWhDV_A@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: dts: rdu1: Add nodes for RAVE SP EEPROM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jul 2, 2018 at 1:39 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> Am Freitag, den 29.06.2018, 20:47 -0700 schrieb Andrey Smirnov:
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/dts/imx51-zii-rdu1.dts | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-
> > zii-rdu1.dts
> > index 7984e5b32..b0e1d0276 100644
> > --- a/arch/arm/dts/imx51-zii-rdu1.dts
> > +++ b/arch/arm/dts/imx51-zii-rdu1.dts
> > @@ -24,6 +24,13 @@
> >                       device-path = &spinor, "partname:barebox-
> > environment";
> >               };
> >       };
> > +     aliases {
> > +             /*
> > +              * Aliases to match Linux kernel naming in /dev/
> > +              */
> > +             main-eeprom = &main_eeprom;
> > +             dds-eeprom = &dds_eeprom;
> > +     };
>
> In Linux we are using the "zii,eeprom-name" property for this purpose.
> Can we use the same in in Barebox, please? I would like to keep the
> differences in the two DTs to a minimum.
>

That's a good point, I haven't thought about doing that. I'll submit a
follow up series to fix that.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
