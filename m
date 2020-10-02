Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kODvB-0007jh-BK
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 05:47:58 +0000
Date: Fri, 2 Oct 2020 07:47:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20201002054755.itlbplwk7xh4oxan@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
 <20200930084716.4200-2-m.felsch@pengutronix.de>
 <20201002051522.GY11648@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002051522.GY11648@pengutronix.de>
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
Subject: Re: [PATCH v2 1/8] of: platform: Keep track of populated platform
 devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20-10-02 07:15, Sascha Hauer wrote:
> On Wed, Sep 30, 2020 at 10:47:09AM +0200, Marco Felsch wrote:
> > After checking the linux history I found no state where it was explicite
> > allowed to register a platform device twice. In the early days there was
> > an bug and in some cases linux did populated the same device again. This
> > was fixed in 2014 by commit c6e126de43e7 ("of: Keep track of populated
> > platform devices") and since then this wasn't possible anymore.
> > 
> > The for_each_device() solution had two issues:
> >  1) We are looping over all devices each time
> >     of_platform_device_create() gets called.
> >  2) The logic around 'if (!dev->resource)' then 'continue' seems to be
> >     broken. This suggest that we can populate a device without
> >     resource(s) first and adding resource(s) later which isn't the case.
> >     Instead the current logic will populate the same device again but
> >     this time (maybe) with resources. So the caller can add the same
> >     device as many times as possible without resources.
> >  3) The device_node gets modified if the new device_node to add has the
> >     same resources region.
> > 
> > Add a device reference to the device_node to track an registered device
> > seems to:
> >  1) Simplify the code.
> >  2) Align the logic with the current linux state with the exception that
> >     we are returning the already created device.
> >  3) Avoid looping over each device all the time.
> >  4) Fix the memory leak which can occure if of_platform_device_create()
> >     gets called for the same device without any resources.
> > 
> > I added the missing check for amba devices too while on it.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> > - new patch
> > 
> >  drivers/of/platform.c | 51 +++++++++++++++++--------------------------
> >  include/of.h          |  1 +
> >  2 files changed, 21 insertions(+), 31 deletions(-)
> > 
> > diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> > index 21c7cce1a5..01de6f98af 100644
> > --- a/drivers/of/platform.c
> > +++ b/drivers/of/platform.c
> > @@ -101,11 +101,18 @@ struct device_d *of_platform_device_create(struct device_node *np,
> >  	struct device_d *dev;
> >  	struct resource *res = NULL, temp_res;
> >  	resource_size_t resinval;
> > -	int i, j, ret, num_reg = 0, match;
> > +	int i, ret, num_reg = 0;
> >  
> >  	if (!of_device_is_available(np))
> >  		return NULL;
> >  
> > +	/*
> > +	 * Linux uses the OF_POPULATED flag to skip already populated/created
> > +	 * devices.
> > +	 */
> > +	if (np->dev)
> > +		return np->dev;
> > +
> >  	/* count the io resources */
> >  	if (of_can_translate_address(np))
> >  		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
> > @@ -121,35 +128,6 @@ struct device_d *of_platform_device_create(struct device_node *np,
> >  				return NULL;
> >  			}
> >  		}
> > -
> > -		/*
> > -		 * A device may already be registered as platform_device.
> > -		 * Instead of registering the same device again, just
> > -		 * add this node to the existing device.
> > -		 */
> > -		for_each_device(dev) {
> > -			if (!dev->resource)
> > -				continue;
> > -
> > -			for (i = 0, match = 0; i < num_reg; i++)
> > -				for (j = 0; j < dev->num_resources; j++)
> > -					if (dev->resource[j].start ==
> > -						res[i].start &&
> > -					    dev->resource[j].end ==
> > -						res[i].end) {
> > -						match++;
> > -						break;
> > -					}
> > -
> > -			/* check if all address resources match */
> > -			if (match == num_reg) {
> > -				debug("connecting %s to %s\n",
> > -					np->name, dev_name(dev));
> > -				dev->device_node = np;
> > -				free(res);
> > -				return dev;
> > -			}
> > -		}
> 
> This code is for the case when platform code has registered a device
> using platform_device_register() which is also in the device tree. When
> the device tree gets populated afterwards then we would have two
> devices for the same resources.

Ah okay, thanks for the clarification :) I see now.

> The code you are removing here catches
> this case and instead of registering a second device for the same
> resources, the existing device only gets the pointer to the corresponding
> node.

Do you think that this use-case is still valid?

> That said we can probably remove this code which was useful in the early
> barebox device tree days, but the code you are adding doesn't replace
> it. This should really be two patches.

Make sense with your explanation.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
