Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7hJY-0001JF-7e
 for barebox@lists.infradead.org; Mon, 08 May 2017 11:58:58 +0000
Date: Mon, 8 May 2017 13:58:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508115834.62fkrws5h3d6skvb@pengutronix.de>
References: <20170504110219.17929-1-s.hauer@pengutronix.de>
 <20170504110219.17929-3-s.hauer@pengutronix.de>
 <20170508061525.ky3ceaq3p6zk3yz5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170508061525.ky3ceaq3p6zk3yz5@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] state: warn when a state node will be overwritten
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 08, 2017 at 08:15:25AM +0200, Uwe Kleine-K=F6nig wrote:
> On Thu, May 04, 2017 at 01:02:17PM +0200, Sascha Hauer wrote:
> > People do not seem to know that a state node in the kernel
> > device tree will be overwritten by barebox. Print a warning
> > when this happens so that people can get an idea why changes
> > in the kernel device tree state node do not have any effect.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/state/state.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > =

> > diff --git a/common/state/state.c b/common/state/state.c
> > index 6db77f2c18..c3c8b768c7 100644
> > --- a/common/state/state.c
> > +++ b/common/state/state.c
> > @@ -416,6 +416,15 @@ static int of_state_fixup(struct device_node *root=
, void *ctx)
> >  	if (node) {
> >  		/* replace existing node - it will be deleted later */
> >  		parent =3D node->parent;
> > +
> > +		/*
> > +		 * barebox replaces the state node in the device tree it starts the
> > +		 * kernel with, so a state node that already exists in the device tr=
ee
> > +		 * will be overwritten. Warn about this so people do not wonder why
> > +		 * changes in the kernels state node do not have any effect.
> > +		 */
> > +		if (root !=3D of_get_root_node())
> > +			dev_warn(&state->dev, "Warning: Kernel devicetree contains state no=
de, replacing it\n");
> =

> Would it make sense to only issue this warning if there are differences
> between the replacing and the replaced node? Otherwise I think this
> warning will trigger in many cases where it doesn't really matter. At
> least in my projects I take care to have only minimal differences
> between barebox' and linux' device tree and so the latter usually also
> contains the state stuff.

Generally I'm fine with showing the warning only when there are
differences. However, we do not have any code to compare two device tree
branches.

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
