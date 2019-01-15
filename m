Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjIRf-0005f1-6A
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 06:43:32 +0000
Date: Tue, 15 Jan 2019 07:43:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190115064327.d2ydxfuyzlkgkiil@pengutronix.de>
References: <20190114164211.10871-1-l.stach@pengutronix.de>
 <20190114164211.10871-4-l.stach@pengutronix.de>
 <CAHQ1cqEhbRQiM27vXtn4oExK4ZRVr3Cv8QooHE-=jzEH_V3zZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEhbRQiM27vXtn4oExK4ZRVr3Cv8QooHE-=jzEH_V3zZg@mail.gmail.com>
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
Subject: Re: [PATCH 4/8] clk: add divider_recalc_rate helper
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 14, 2019 at 04:20:04PM -0800, Andrey Smirnov wrote:
> On Mon, Jan 14, 2019 at 8:42 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> >
> > Closer to Linux kernel implementation and needed for imx8mq
> > composite clock.
> >
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/clk/clk-divider.c | 30 ++++++++++++++++++++++--------
> >  include/linux/clk.h       |  5 +++++
> >  2 files changed, 27 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> > index 791e10ea99cd..7b1bdde1ce18 100644
> > --- a/drivers/clk/clk-divider.c
> > +++ b/drivers/clk/clk-divider.c
> > @@ -20,6 +20,7 @@
> >  #include <linux/clk.h>
> >  #include <linux/err.h>
> >  #include <linux/log2.h>
> > +#include <asm-generic/div64.h>
> >
> >  #define div_mask(d)    ((1 << ((d)->width)) - 1)
> >
> > @@ -56,17 +57,17 @@ static unsigned int _get_table_div(const struct clk_div_table *table,
> >         return 0;
> >  }
> >
> > -static unsigned int _get_div(struct clk_divider *divider, unsigned int val)
> > +static unsigned int _get_div(const struct clk_div_table *table,
> > +                            unsigned int val, unsigned long flags, u8 width)
> >  {
> > -       if (divider->flags & CLK_DIVIDER_ONE_BASED)
> > +       if (flags & CLK_DIVIDER_ONE_BASED)
> >                 return val;
> > -       if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
> > +       if (flags & CLK_DIVIDER_POWER_OF_TWO)
> >                 return 1 << val;
> > -       if (divider->table)
> > -               return _get_table_div(divider->table, val);
> > +       if (table)
> > +               return _get_table_div(table, val);
> >         return val + 1;
> >  }
> > -
> >  static unsigned int _get_table_val(const struct clk_div_table *table,
> >                                                         unsigned int div)
> >  {
> > @@ -89,6 +90,18 @@ static unsigned int _get_val(struct clk_divider *divider, unsigned int div)
> >         return div - 1;
> >  }
> >
> > +unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
> > +               unsigned int val,
> > +               const struct clk_div_table *table,
> > +               unsigned long flags, unsigned long width)
> > +{
> > +       unsigned int div;
> > +
> > +       div = _get_div(table, val, flags, width);
> > +
> > +       return DIV_ROUND_UP_ULL((u64)parent_rate, div);
> 
> I just rebased on latest 'next', but I don't seem to have the
> definition for DIV_ROUND_UP_ULL(), which breaks the build. Is there a
> patch that I am missing?

It was part of "mtd: core: Fix erase area alignment for non power of 2
erasesize" from Ladis, but not in v2 anymore. I'll add it to this patch
then.

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
