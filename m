Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNHy3-0006gg-QY
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 15:55:04 +0000
Date: Tue, 29 Sep 2020 17:55:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20200929155500.GE20189@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
 <20200928155041.32649-16-m.felsch@pengutronix.de>
 <748eb0a5-a5ac-7be2-d909-f3af184db38d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <748eb0a5-a5ac-7be2-d909-f3af184db38d@pengutronix.de>
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
Subject: Re: [PATCH 15/18] common: add initial barebox deep-probe support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

thanks for the review.

On 20-09-28 18:53, Ahmad Fatoum wrote:

> > --- /dev/null
> > +++ b/common/deep-probe.c
> > @@ -0,0 +1,39 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <common.h>
> > +#include <deep-probe.h>
> 
> Shouldn't this rather be under drivers/of/ ?
> maybe also name it something starting with of_ ?

I'm not sure. Currently it works only for OF but it can be adapted to
ACPI too. Therefore I thought it shouldn't be placed into drivers/of and
shouldn't start with of_*.

> > +int deep_probe_add_board(const char *machine)
> > +{
> > +	struct deep_probe_entry *new_machine;
> > +
> > +	new_machine = xzalloc(sizeof(*new_machine));
> > +	if (!new_machine)
> > +		return -ENOMEM;
> 
> xzalloc can't fail.
> 
> > +
> > +	new_machine->compatible = machine;
> > +	list_add(&new_machine->entry, &boards);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(deep_probe_add_board);

The whole logic was replaced by an static linker array as we do for the
magicvar.

> > --- a/drivers/i2c/i2c.c
> > +++ b/drivers/i2c/i2c.c
> > @@ -406,6 +406,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
> >  		return NULL;
> >  	}
> >  	client->dev.info = i2c_info;
> > +	chip->of_node->dev = &client->dev;
> 
> Are you sure, you can always assume of_node != NULL here?

Good catch, didn't checked the non-dt callers.. Fixed it in v2.

> >  struct device_d *of_find_device_by_node(struct device_node *np)
> >  {
> >  	struct device_d *dev;
> > +
> > +	dev = of_device_create_on_demand(np);
> > +	if (IS_ERR(dev))
> > +		return NULL;
> > +
> >  	for_each_device(dev)
> >  		if (dev->device_node == np)
> >  			return dev;
> > @@ -106,6 +112,9 @@ struct device_d *of_platform_device_create(struct device_node *np,
> >  	if (!of_device_is_available(np))
> >  		return NULL;
> >  
> > +	if (np->dev)
> > +		return np->dev;
> > +
> 
> Unsure if this is correct. Seek down to the "check if all address resources match" comment.
> It's possible that devices are registered multiple times and are coalesced later on.
> I can't say for sure though, where we are doing this at the moment.

I see.. Let me check this.

> > +struct device_d *
> > +of_device_create_on_demand_by_dev_id(struct device_node *np,
> > +				     const struct of_device_id *ids)
> > +{
> 
> I find it surprising that this works recursively, while the previous
> by_alias doesn't

I converted the name to of_devices_* to reflect that and added a
function documentation. I hope this avoids further confusions.


> > +static inline struct device_d *
> > +of_device_create_on_demand(struct device_node *np);
> 
> Extra semicolon. Could you compile test without CONFIG_OFTREE?

Unfortunately not, thanks for covering that. Fixed it in v2.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
