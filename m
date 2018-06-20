Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVXMN-0005hU-00
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 07:16:56 +0000
Date: Wed, 20 Jun 2018 09:16:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180620071641.ugore3xr72emxu6t@pengutronix.de>
References: <20180619054307.30618-1-andrew.smirnov@gmail.com>
 <1529398268.7211.9.camel@pengutronix.de>
 <CAHQ1cqHsVi8pftSbWB8dGQm_ZnxUt+ua2CDqiGUF0q3_AGGn2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHsVi8pftSbWB8dGQm_ZnxUt+ua2CDqiGUF0q3_AGGn2w@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 19, 2018 at 09:55:02AM -0700, Andrey Smirnov wrote:
> On Tue, Jun 19, 2018 at 1:51 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> >
> > Am Montag, den 18.06.2018, 22:43 -0700 schrieb Andrey Smirnov:
> > > Some board designs copy i.MX51 Babbadge board's PMIC design and so
> > > require exactly the same initialization. Move correspoding code into a
> > > separate file, add new compatiblity string and make appropriate
> > > Kconfig change to allow other boards to share that code.
> > >
> > > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > ---
> >
> > [...]
> >
> > > +static int imx51_babbage_power_init(void)
> > > +{
> > > > +   if (!of_machine_is_compatible("fsl,imx51-babbage") &&
> > > > +       !of_machine_is_compatible("fsl,imx51-babbage-power"))
> > > > +           return 0;
> > > +
> > > > +   mc13xxx_register_init_callback(babbage_power_init);
> >
> > I think it would be better for the board code to explicitly call this
> > setup function. Gating this by DT compatible is a bit too much magic.
> >
> 
> Where do you see magic here? There's nothing unusual in gating board
> initialization code on "compatible", it's used all over the place. And
> having multiple level of compatibility one of the intended use-cases
> of "compatible" property.

Better just export imx51_babbage_power_init (maybe with a better name)
and call it from your board code after having checked the compatible
strings. Putting "fsl,imx51-babbage-power" in your board dts in order to
run some hardware init code for hardware that happens to be the same as
parts of the babbage board, that's indeed magic.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
