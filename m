Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROnOz-0000U3-1A
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 09:28:06 +0000
Date: Fri, 11 Nov 2011 10:27:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111111092743.GL16886@pengutronix.de>
References: <1319592341-2295-1-git-send-email-festevam@gmail.com>
 <CAOMZO5B9CfVgVYPF7kUgo_Y=fv52S1oLOkyGgLS0YW4hcPn0vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5B9CfVgVYPF7kUgo_Y=fv52S1oLOkyGgLS0YW4hcPn0vw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: mx53-loco: Remove duplicate call to loco_fec_reset()
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org, kernel@pengutronix.de

On Thu, Nov 10, 2011 at 12:14:03PM -0200, Fabio Estevam wrote:
> Sascha,
> =

> On Tue, Oct 25, 2011 at 11:25 PM, Fabio Estevam <festevam@gmail.com> wrot=
e:
> > Remove duplicate call to loco_fec_reset().
> >
> > Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
> > ---
> > =A0arch/arm/boards/freescale-mx53-loco/board.c | =A0 =A02 --
> > =A01 files changed, 0 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boa=
rds/freescale-mx53-loco/board.c
> > index 24df9ae..36f1b57 100644
> > --- a/arch/arm/boards/freescale-mx53-loco/board.c
> > +++ b/arch/arm/boards/freescale-mx53-loco/board.c
> > @@ -102,8 +102,6 @@ static int loco_devices_init(void)
> > =A0 =A0 =A0 =A0armlinux_set_bootparams((void *)0x70000100);
> > =A0 =A0 =A0 =A0armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
> >
> > - =A0 =A0 =A0 loco_fec_reset();
> > -
> =

> Does this one look fine?

Looks good. Applied now. Sorry, missed this one.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
