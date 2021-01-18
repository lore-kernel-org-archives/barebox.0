Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1PUZ-0006Cu-M7
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 08:02:31 +0000
Date: Mon, 18 Jan 2021 09:02:24 +0100
Message-ID: <20210118080224.GP19063@pengutronix.de>
References: <20210113170018.8045-1-r.czerwinski@pengutronix.de>
 <20210113171258.sk3k6cph7irdsl3s@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113171258.sk3k6cph7irdsl3s@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] fixup! of: overlay: do not parse phandles as properties
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <r.czerwinski@pengutronix.de>

On Wed, Jan 13, 2021 at 06:12:58PM +0100, Marco Felsch wrote:
> On 21-01-13 18:00, Rouven Czerwinski wrote:
> > This breaks the eventual fixup of phandles into the linux device tree.
> > Fix this by also keeping the phandle properties in the DT.
> > ---
> >  drivers/of/overlay.c | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > index 0bebe26e39..d7695726fc 100644
> > --- a/drivers/of/overlay.c
> > +++ b/drivers/of/overlay.c
> > @@ -60,7 +60,6 @@ static int of_overlay_apply(struct device_node *target,
> >  
> >  		if (of_prop_cmp(prop->name, "phandle") == 0) {
> >  			target->phandle = be32_to_cpup(prop->value);
> > -			continue;
> >  		}
> 
> Nit:
> 
> We could also remove the {} so it's becoming a two-liner :)

Did that while applying

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
