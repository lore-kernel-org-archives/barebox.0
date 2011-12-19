Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcaV4-0007FF-Fd
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 10:31:19 +0000
Date: Mon, 19 Dec 2011 11:31:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219103109.GJ27267@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
 <1323945034-19687-2-git-send-email-s.hauer@pengutronix.de>
 <20111218130742.GE7899@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111218130742.GE7899@game.jcrosoft.org>
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
Subject: Re: *** PROBABLY SPAM *** [PATCH 01/12] oftree: add of_fix_tree()
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Dec 18, 2011 at 02:07:42PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	what is the impact on the binary size??

Don't know. Why should this have a great influence on binary size?

Sascha

> 
> Best Regards,
> J.
> On 11:30 Thu 15 Dec     , Sascha Hauer wrote:
> > Currently we have of_get_fixed_tree() which assumes that
> > there is a global variable holding a oftree. This seems
> > not very flexible, so for now introduce a of_fix_tree()
> > which takes an fdt_header as argument and walks the
> > list of registered of fixup functions.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/oftree.c |   22 +++++++++++++++-------
> >  include/of.h    |    1 +
> >  2 files changed, 16 insertions(+), 7 deletions(-)
> > 
> > diff --git a/common/oftree.c b/common/oftree.c
> > index 2a2f464..a657d31 100644
> > --- a/common/oftree.c
> > +++ b/common/oftree.c
> > @@ -293,20 +293,28 @@ int of_register_fixup(int (*fixup)(struct fdt_header *))
> >  	return 0;
> >  }
> >  
> > -struct fdt_header *of_get_fixed_tree(void)
> > +int of_fix_tree(struct fdt_header *fdt)
> >  {
> >  	struct of_fixup *of_fixup;
> >  	int ret;
> >  
> > -	if (!barebox_fdt)
> > -		return NULL;
> > -
> >  	list_for_each_entry(of_fixup, &of_fixup_list, list) {
> > -		ret = of_fixup->fixup(barebox_fdt);
> > +		ret = of_fixup->fixup(fdt);
> >  		if (ret)
> > -			return NULL;
> > +			return ret;
> >  	}
> >  
> > -	return barebox_fdt;
> > +	return 0;
> >  }
> >  
> > +struct fdt_header *of_get_fixed_tree(void)
> > +{
> > +	int ret;
> > +
> > +	if (!barebox_fdt)
> > +		return NULL;
> > +	ret = of_fix_tree(barebox_fdt);
> > +	if (ret)
> > +		return NULL;
> > +	return barebox_fdt;
> > +}
> > diff --git a/include/of.h b/include/of.h
> > index c2661ef..609b3b5 100644
> > --- a/include/of.h
> > +++ b/include/of.h
> > @@ -8,6 +8,7 @@ extern struct fdt_header *barebox_fdt;
> >  int fdt_print(struct fdt_header *working_fdt, const char *pathp);
> >  
> >  struct fdt_header *of_get_fixed_tree(void);
> > +int of_fix_tree(struct fdt_header *fdt);
> >  int of_register_fixup(int (*fixup)(struct fdt_header *));
> >  
> >  int fdt_find_and_setprop(struct fdt_header *fdt, const char *node, const char *prop,
> > -- 
> > 1.7.7.3
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
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
