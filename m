Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVJuf-0004So-K3
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 16:55:27 +0000
Received: by mail-it0-x242.google.com with SMTP id j135-v6so1401192itj.1
 for <barebox@lists.infradead.org>; Tue, 19 Jun 2018 09:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20180619054307.30618-1-andrew.smirnov@gmail.com>
 <1529398268.7211.9.camel@pengutronix.de>
In-Reply-To: <1529398268.7211.9.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Jun 2018 09:55:02 -0700
Message-ID: <CAHQ1cqHsVi8pftSbWB8dGQm_ZnxUt+ua2CDqiGUF0q3_AGGn2w@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: babbage: Make PMIC initialization shareable
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 19, 2018 at 1:51 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Montag, den 18.06.2018, 22:43 -0700 schrieb Andrey Smirnov:
> > Some board designs copy i.MX51 Babbadge board's PMIC design and so
> > require exactly the same initialization. Move correspoding code into a
> > separate file, add new compatiblity string and make appropriate
> > Kconfig change to allow other boards to share that code.
> >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
>
> [...]
>
> > +static int imx51_babbage_power_init(void)
> > +{
> > > +   if (!of_machine_is_compatible("fsl,imx51-babbage") &&
> > > +       !of_machine_is_compatible("fsl,imx51-babbage-power"))
> > > +           return 0;
> > +
> > > +   mc13xxx_register_init_callback(babbage_power_init);
>
> I think it would be better for the board code to explicitly call this
> setup function. Gating this by DT compatible is a bit too much magic.
>

Where do you see magic here? There's nothing unusual in gating board
initialization code on "compatible", it's used all over the place. And
having multiple level of compatibility one of the intended use-cases
of "compatible" property.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
