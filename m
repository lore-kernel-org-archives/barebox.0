Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5gdU-00089O-B6
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 18:00:49 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 44213DC12DD
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 19:11:09 +0100 (CET)
Date: Wed, 13 Feb 2013 18:59:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130213175937.GQ19322@game.jcrosoft.org>
References: <20130213100249.GL19322@game.jcrosoft.org>
 <1360750004-17713-1-git-send-email-plagnioj@jcrosoft.com>
 <1360750004-17713-2-git-send-email-plagnioj@jcrosoft.com>
 <20130213173134.GG1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130213173134.GG1906@pengutronix.de>
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
Subject: Re: [PATCH 2/6] of: make of_add_memory available for other board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On 18:31 Wed 13 Feb     , Sascha Hauer wrote:
> On Wed, Feb 13, 2013 at 11:06:40AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so when the first stage booloader of firmware provide the dtb
> > we can use it to probe the memory
> > 
> > also allow to print what we probe
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/of/base.c |   20 ++++++++++++++------
> >  include/of.h      |    6 ++++++
> >  2 files changed, 20 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index 1f32bfb..f2986ab 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -734,18 +734,23 @@ u64 dt_mem_next_cell(int s, const __be32 **cellp)
> >  	return of_read_number(p, s);
> >  }
> >  
> > -static int of_add_memory(struct device_node *node)
> > +int of_add_memory(struct device_node *node, bool dump)
> >  {
> >  	int na, nc;
> >  	const __be32 *reg, *endp;
> >  	int len, r = 0;
> >  	static char str[6];
> > +	struct property *type;
> > +
> > +	type = of_find_property(node, "device_type");
> > +	if (!type)
> > +		return -ENXIO;
> 
> Could you add the missing check here if device_type is 'memory'?
ok

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
