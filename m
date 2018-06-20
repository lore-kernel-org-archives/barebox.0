Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVhcf-00072l-42
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 18:14:26 +0000
Received: by mail-io0-x241.google.com with SMTP id t6-v6so576208iob.10
 for <barebox@lists.infradead.org>; Wed, 20 Jun 2018 11:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20180619054307.30618-1-andrew.smirnov@gmail.com>
 <1529398268.7211.9.camel@pengutronix.de>
 <CAHQ1cqHsVi8pftSbWB8dGQm_ZnxUt+ua2CDqiGUF0q3_AGGn2w@mail.gmail.com>
 <20180620071641.ugore3xr72emxu6t@pengutronix.de>
In-Reply-To: <20180620071641.ugore3xr72emxu6t@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 20 Jun 2018 11:13:58 -0700
Message-ID: <CAHQ1cqFzmCPGa0iya262DBXWTRo01S_zJdUHB=4AreC=-s+4XA@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 20, 2018 at 12:16 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jun 19, 2018 at 09:55:02AM -0700, Andrey Smirnov wrote:
> > On Tue, Jun 19, 2018 at 1:51 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> > >
> > > Am Montag, den 18.06.2018, 22:43 -0700 schrieb Andrey Smirnov:
> > > > Some board designs copy i.MX51 Babbadge board's PMIC design and so
> > > > require exactly the same initialization. Move correspoding code into a
> > > > separate file, add new compatiblity string and make appropriate
> > > > Kconfig change to allow other boards to share that code.
> > > >
> > > > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > > ---
> > >
> > > [...]
> > >
> > > > +static int imx51_babbage_power_init(void)
> > > > +{
> > > > > +   if (!of_machine_is_compatible("fsl,imx51-babbage") &&
> > > > > +       !of_machine_is_compatible("fsl,imx51-babbage-power"))
> > > > > +           return 0;
> > > > +
> > > > > +   mc13xxx_register_init_callback(babbage_power_init);
> > >
> > > I think it would be better for the board code to explicitly call this
> > > setup function. Gating this by DT compatible is a bit too much magic.
> > >
> >
> > Where do you see magic here? There's nothing unusual in gating board
> > initialization code on "compatible", it's used all over the place. And
> > having multiple level of compatibility one of the intended use-cases
> > of "compatible" property.
>
> Better just export imx51_babbage_power_init (maybe with a better name)
> and call it from your board code after having checked the compatible
> strings. Putting "fsl,imx51-babbage-power" in your board dts in order to
> run some hardware init code for hardware that happens to be the same as
> parts of the babbage board, that's indeed magic.
>

OK, I rest my case. Will change in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
