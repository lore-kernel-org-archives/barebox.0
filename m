Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtTkW-0003M6-Km
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 08:49:06 +0000
Date: Tue, 12 Feb 2019 09:49:02 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20190212084902.lpdwtizi5xfzootj@pengutronix.de>
References: <20190211162013.5320-1-m.felsch@pengutronix.de>
 <20190212073246.faodocc6e6nigbsi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212073246.faodocc6e6nigbsi@pengutronix.de>
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
Subject: Re: [PATCH 1/2] of: base: add helper to rename a node
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 19-02-12 08:32, Sascha Hauer wrote:
> Hi Marco,
> 
> On Mon, Feb 11, 2019 at 05:20:12PM +0100, Marco Felsch wrote:
> > Sometimes it can be necessary to rename a node, e.g. to override/create
> > a node which gets renamed upstream.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/of/base.c | 18 ++++++++++++++++++
> >  include/of.h      |  5 +++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index b082f0c656..6644d9b96a 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -2094,6 +2094,24 @@ void of_delete_node(struct device_node *node)
> >  		of_set_root_node(NULL);
> >  }
> >  
> > +void of_rename_node(struct device_node *node, char *name)
> 
> Should be const char * name.

Okay.

> 
> > +{
> > +	struct device_node *parent;
> > +
> > +	if (!node)
> > +		return;
> > +
> > +	parent = node->parent;
> > +	if (parent) {
> > +		node->name = name;
> 
> node->name is an allocated string. It should be freed and then set to an
> allocated string again.

Okay, I will do this.

> 
> > +		node->full_name = basprintf("%s/%s", parent->full_name, name);
> > +	} else {
> > +		/* root node */
> > +		node->name = xstrdup("");
> > +		node->full_name = xstrdup("");
> 
> I think we can drop the else path entirely. If we do not allow to give
> the root node a name then we can assume that it doesn't have a name
> right now, so nothing to do here.

Sure, I will change this.

Regards,
Marco

> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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
