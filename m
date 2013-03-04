Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCQGZ-0006Nl-2J
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 07:57:00 +0000
Date: Mon, 4 Mar 2013 08:56:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304075649.GL25672@pengutronix.de>
References: <1361038719-25530-1-git-send-email-plagnioj@jcrosoft.com>
 <20130218085947.GK1906@pengutronix.de>
 <20130218174433.GJ19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130218174433.GJ19322@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1] of: add do_fixup_by_compatible with u32 and string
 version
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 18, 2013 at 06:44:33PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:59 Mon 18 Feb     , Sascha Hauer wrote:
> > On Sat, Feb 16, 2013 at 07:18:39PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  common/oftree.c |   27 +++++++++++++++++++++++++++
> > >  include/of.h    |    6 ++++++
> > >  2 files changed, 33 insertions(+)
> > > 
> > > diff --git a/common/oftree.c b/common/oftree.c
> > > index 6b20cdb..82e5ddd 100644
> > > --- a/common/oftree.c
> > > +++ b/common/oftree.c
> > > @@ -229,6 +229,33 @@ void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path,
> > >  	do_fixup_by_path(fdt, path, prop, &val, sizeof(val), create);
> > >  }
> > >  
> > > +void do_fixup_by_compatible(struct fdt_header *fdt, const char *compatible,
> > > +			const char *prop, const void *val, int len, int create)
> > > +{
> > > +	int off = -1;
> > > +
> > > +	off = fdt_node_offset_by_compatible(fdt, -1, compatible);
> > > +	while (off != -FDT_ERR_NOTFOUND) {
> > > +		if (create || (fdt_get_property(fdt, off, prop, 0) != NULL))
> > > +			fdt_setprop(fdt, off, prop, val, len);
> > > +		off = fdt_node_offset_by_compatible(fdt, off, compatible);
> > > +	}
> > > +}
> > 
> > IMO we shouldn't increase the dependency on libfdt. The fdt format is a
> > nice storage format, but it sucks for modifying the tree.
> > I created some patches to get rid of libfdt entirely yesterday. They are
> > not complete yet, but removing libfdt has some nice effects:
> > 
> > - Smaller binaries
> > - No more parallel universes of fdt and internal trees. This currently makes the
> >   devicetree code messy
> > - I trimmed down the overhead of unflattening/flattening significantly.
> >   It still adds some overhead to do it, but manipulating the tree is a
> >   factor of 50 faster which means once you have multiple manipulations
> >   of the tree it reduces the overhead to a net win.
> ok will this be availlable for next release ok ohterwise can we have this
> patch first so we can have the fixuo support for highbank

I applied this one and the highbank patches using it. I have to rework
My devicetree series anyway, so it will be too late to merge this to
-next before the march release.

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
