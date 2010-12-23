Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate01.web.de ([217.72.192.221])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PViX0-0000gw-5q
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 10:36:23 +0000
Date: Thu, 23 Dec 2010 11:36:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101223103618.GF6017@pengutronix.de>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3vd2ocax2.fsf@intrepid.localdomain>
	<20101222005829.GE19266@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101222005829.GE19266@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5] Fix error handling with malloc, memalign etc.
	Memalign() can't fail now.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Krzysztof Halasa <khc@pm.waw.pl>

On Wed, Dec 22, 2010 at 01:58:29AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>   
> > diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> > index 717fea5..9d52beb 100644
> > --- a/drivers/clk/clkdev.c
> > +++ b/drivers/clk/clkdev.c
> please do not modify it I want to keep it as in the kernel

That's not a good reason to not change it. Keeping it in sync with the kernel
should not be the showstopper for reasonable changes.
I agree that it's sometimes useful to not needlessly change complex
frameworks like UBI or mtd(-nand) to be able to apply later bugfixes or
features from the kernel, but this doesn't match for these trivial
changes in a simple framework.

Sascha

> > @@ -116,9 +116,7 @@ struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
> >  {
> >  	struct clk_lookup_alloc *cla;
> >  
> > -	cla = kzalloc(sizeof(*cla), GFP_KERNEL);
> > -	if (!cla)
> > -		return NULL;
> > +	cla = xzalloc(sizeof(*cla), GFP_KERNEL);
> >  
> >  	cla->cl.clk = clk;
> >  	if (con_id) {
> > @@ -150,8 +148,6 @@ int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
> >  
> >  	l = clkdev_alloc(r, alias, alias_dev_name);
> >  	clk_put(r);
> > -	if (!l)
> > -		return -ENODEV;
> >  	clkdev_add(l);
> >  	return 0;
> >  }
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
