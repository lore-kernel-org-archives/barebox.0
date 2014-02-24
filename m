Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHrnA-0004mD-0z
 for barebox@lists.infradead.org; Mon, 24 Feb 2014 09:25:41 +0000
Date: Mon, 24 Feb 2014 10:25:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140224092517.GV17250@pengutronix.de>
References: <C89EFD3CD56F64468D3D206D683A8D2203041AF3@ldam-msx2.fugro-nl.local>
 <20140224085333.GU17250@pengutronix.de>
 <C89EFD3CD56F64468D3D206D683A8D2203041BFE@ldam-msx2.fugro-nl.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C89EFD3CD56F64468D3D206D683A8D2203041BFE@ldam-msx2.fugro-nl.local>
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
Subject: Re: [PATCH] mtd: nand: Do not automatically set SUBPAGE_READ flag
To: "Hattink, Tjalling [FINT]" <T.Hattink@fugro.nl>
Cc: barebox@lists.infradead.org

On Mon, Feb 24, 2014 at 10:20:05AM +0100, Hattink, Tjalling [FINT] wrote:
> > > The default nand_read_subpage implementation returns -ENOSUPP, so if
> > > you use a large nand chip without a specific read_subpage
> > > implementation the read operations will always fail.
> > >
> > > This functionaliy can be restored when a proper nand_read_subpage is
> > > implemented for the default driver.
> > >
> > > Signed-off-by: Tjalling Hattink <t.hattink@fugro.nl>
> > > ---
> > >  drivers/mtd/nand/nand_base.c | 4 ----
> > >  1 file changed, 4 deletions(-)
> > >
> > > diff --git a/drivers/mtd/nand/nand_base.c
> > > b/drivers/mtd/nand/nand_base.c index 54d8ba3..bfd695b 100644
> > > --- a/drivers/mtd/nand/nand_base.c
> > > +++ b/drivers/mtd/nand/nand_base.c
> > > @@ -3562,10 +3562,6 @@ int nand_scan_tail(struct mtd_info *mtd)
> > >         /* Invalidate the pagebuffer reference */
> > >         chip->pagebuf = -1;
> > >
> > > -       /* Large page NAND with SOFT_ECC should support subpage
> reads
> > */
> > > -       if ((chip->ecc.mode == NAND_ECC_SOFT) && (chip->page_shift >
> > 9))
> > > -               chip->options |= NAND_SUBPAGE_READ;
> > > -
> > 
> > Only barebox nand_read_subpage returns -ENOSUPP. The kernel has a
> > default implementation. Wouldn't it be possible (and better) to just
> > remove the return -ENOSUPP from nand_read_subpage and use the code
> > which we already have?
> > 
> > Sascha
> > 
> 
> Hi Sascha,
> 
> I will remove the ENOSUPP return code and compare the code with the
> kernel and test it. I'll publish a new patch if I have results (which is
> probably upcoming Friday).
> 
> I still wonder though why this -ENOSUPP return is added in the first
> place. The motivation written above it is somewhat unclear to me:
> "Currently we have no users in barebox, so disable this for now"

The motivation was to reduce the binary size. Should we remove the
-ENOSUPP it might be good thinking about the conditions under which we
need the code and add some Kconfig entry for it, or better use existing
ones if possible.

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
