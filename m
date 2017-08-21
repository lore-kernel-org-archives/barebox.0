Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1djpX7-0004IL-QM
 for barebox@lists.infradead.org; Mon, 21 Aug 2017 16:26:36 +0000
Date: Mon, 21 Aug 2017 18:26:08 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170821162608.ie5qyqo7hk3e4ow3@pengutronix.de>
References: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
 <20170109102133.2hwmwjqeikbbh5ck@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170109102133.2hwmwjqeikbbh5ck@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Mon, Jan 09, 2017 at 11:21:33AM +0100, Sascha Hauer wrote:
> On Wed, Dec 21, 2016 at 10:38:41PM +0100, Christian Hemp wrote:
> > The function "nand_enable_edo_mode" changed the NAND clk rate, without =
turning
> > it off. In this case it is posible to get the following errors:
> >     MXS NAND: Error sending command
> >     MXS NAND: Error sending command
> >     MXS NAND: DMA read error
> > =

> > This can be fixed if the NAND clk is disabled before we change the clk
> > rate.

BTW, this is even documented in the reference manual---a bit at least:
The description for CCM_CS2CDR has for example:

	20-18 enfc_clk_pred
	  Divider for enfc clock pred divider.
	  NOTE: Divider should be updated when output clock is gated.

I patched the imx clk driver to not allow changes to any clock that
have this note. The nand_mxs driver then changes enfc_clk_podf which
doesn't have this note and still hangs occasionally.

> > Tested with:
> > nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> > MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64
> > =

> > Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> > ---
> >  drivers/mtd/nand/nand_mxs.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > =

> > diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> > index cba0bee..ce79bca 100644
> > --- a/drivers/mtd/nand/nand_mxs.c
> > +++ b/drivers/mtd/nand/nand_mxs.c
> > @@ -2047,7 +2047,9 @@ static int mxs_nand_enable_edo_mode(struct mxs_na=
nd_info *info)
> >  	nand->select_chip(mtd, -1);
> >  =

> >  	/* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
> > +	clk_disable(info->clk);
> >  	clk_set_rate(info->clk, (mode =3D=3D 5) ? 100000000 : 80000000);
> > +	clk_enable(info->clk);
> =

> Calling clk_disable doesn't guarantee that the clock is actually
> disabled. If there's another user of the same clock then clk_disable
> will only decrease the usage counter.
> I think if possible we should fix this in the clock driver instead.

I agree, this is something the clock driver should be aware of. Still
more as not only the nand clk is affected.

I wonder how this should be done though. This would imply that a clk can
somehow determine its children. And this is not static as for example
clko could be a child of enfc_clk_pred. And I think we need to recurse
because if a direct child is a mux that cannot be disabled and so the
gates below the mux must be disabled instead.  Alternatively we must
provide a list L of clks to such a clk A such that if A is changed the
clks in L can be disabled first (maybe after a check that the affected
clk is really an descendant of A).

And we'd need a function different to clk_disable that hard disables the
clk independent of its enable count. (Or the change function of A knows
about the interna of all clocks in L and can just disable them.) In
Linux this might be possible with clk notifiers, but I don't know for
sure.

I didn't find an idea yet that makes this all look less evil, so
comments are welcome.

@Fabio, in a different end of this thread you wrote that you want to fix
this for Linux. Did you already address this?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
