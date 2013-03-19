Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHtuX-0004Zk-BY
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 10:36:54 +0000
Date: Tue, 19 Mar 2013 11:36:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130319103649.GO1906@pengutronix.de>
References: <1363337641-17685-1-git-send-email-s.hauer@pengutronix.de>
 <1363417134.599382752@f216.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363417134.599382752@f216.mail.ru>
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
Subject: Re: [PATCH] clk: Add is_enabled callback
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Mar 16, 2013 at 10:58:54AM +0400, Alexander Shiyan wrote:
> > This allows us to better detect whether a clk is enabled or not.
> > 
> > - If we can ask a clk, ask it. If it's enabled, go on and ask parents
> > - If we can't ask it, but it can be enabled, depend on the enable_count.
> >   if it's positive, go on and ask parents
> > - If we can't ask it and it cannot be enabled, assume it is enabled
> >   and ask parents.
> > 
> > This makes the CLK_ALWAYS_ENABLED unnecessary, since the fixed clk now
> > always returns 1 in its is_enabled callback.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/clk/clk-fixed.c |  2 +-
> >  drivers/clk/clk-gate.c  | 14 ++++++++++++
> >  drivers/clk/clk.c       | 61 +++++++++++++++++++++++++++++++++++++------------
> >  include/linux/clk.h     |  4 ++--
> >  4 files changed, 63 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
> > +
> > +	if (val & (1 << g->shift))
> > +		return 1;
> > +	else
> > +		return 0;
> > +}
> 
> Make it simper, like:
> return !!(readl(g->reg) & (1 << g->shift));
> 

Hm, do you find this simpler to read? The compiler will most likely
produce the same result.

> >  	unsigned int	div;
> > @@ -202,6 +200,8 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
> >  struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
> >  		u8 shift);
> >  
> > +int clk_is_enabled_always(struct clk *clk);
> 
> Used only in clk-fixed.c, is it really need to be declared global?

No, you're right. Will make this a local function in clk-fixed.c

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
