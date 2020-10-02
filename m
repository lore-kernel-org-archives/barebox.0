Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOFCY-0005z5-E8
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 07:09:59 +0000
Date: Fri, 2 Oct 2020 09:09:56 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20201002070956.cf2wsl75usmogak4@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
 <20200930084716.4200-6-m.felsch@pengutronix.de>
 <f6e948fe-3116-5f19-b4a3-a40116602bc3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6e948fe-3116-5f19-b4a3-a40116602bc3@pengutronix.de>
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
Subject: Re: [PATCH v2 5/8] common: add initial barebox deep-probe support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

On 20-10-02 08:10, Ahmad Fatoum wrote:

> > +enum deep_probe_state {
> > +	DEEP_PROBE_UNKONW,
> 
> UNKNOWN*

Yep.

> > +	DEEP_PROBE_SUPPORTED,
> > +	DEEP_PROBE_NOT_SUPPORTED
> > +};
> > +
> > +static enum deep_probe_state boardstate;
> > +
> > +bool deep_probe_is_supported(void)
> > +{
> > +	struct deep_probe_entry *board;
> > +
> > +	if (boardstate == DEEP_PROBE_NOT_SUPPORTED)
> > +		return false;
> > +	else if (boardstate == DEEP_PROBE_SUPPORTED)
> > +		return true;
> 
> If you set UNKNOWN to -ENOSYS, SUPPORTED to 1 and NOT_SUPPORTED to 0,
> you could just do if (boardstate >= 0) return boardstate; here
> (Even if you want to keep it verbose, I like the enum constants having
> expectable values)

IMHO enums should abstract the value to provide a more readyble code.
Here it isn't that hard to follow but in general I'm not a fan of using
enums with '(boardstate >= 0)'. I use such constructs only if it really
necessary e.g. state-machines.

> > +static int barebox_of_populate(void)
> > +{
> > +	if (IS_ENABLED(CONFIG_OFDEVICE) && deep_probe_is_supported())
> > +		of_probe();
> 
> return of_probe(); ?

Good point but this will change the logic since barebox_register_of() is
void.

> > +
> > +	return 0;
> > +}
> > +of_populate_initcall(barebox_of_populate);
> 
> This function's name should reflect that it's deep probe specific

I think the deep_probe_is_supported() reflects that. The long-term goal
should be to remove the deep_probe_is_supported() and call of_probe()
only in this initcall.

> > +
> >  void barebox_register_of(struct device_node *root)
> >  {
> >  	if (root_node)
> > @@ -1577,7 +1587,8 @@ void barebox_register_of(struct device_node *root)
> >  
> >  	if (IS_ENABLED(CONFIG_OFDEVICE)) {
> >  		of_clk_init(root, NULL);
> > -		of_probe();
> > +		if (!deep_probe_is_supported())
> > +			of_probe();
> >  	}
> >  }
> >  
> > diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> > index 01de6f98af..0368b1485a 100644
> > --- a/drivers/of/platform.c
> > +++ b/drivers/of/platform.c
> > @@ -15,6 +15,7 @@
> >   * GNU General Public License for more details.
> >   */
> >  #include <common.h>
> > +#include <deep-probe.h>
> >  #include <malloc.h>
> >  #include <of.h>
> >  #include <of_address.h>
> > @@ -29,6 +30,12 @@
> >  struct device_d *of_find_device_by_node(struct device_node *np)
> >  {
> >  	struct device_d *dev;
> > +	int ret;
> > +
> > +	ret = of_device_ensure_probed(np);
> > +	if (ret)
> > +		return NULL;
> > +
> 
> If you associate a dev with the np on deep probe, can't you just
> return it deep_probe_is_supported() ?

Sry. don't get this. This function has a few users e.g. the
chipidea-imx.c to find the required sub-devices. We need to ensure that
those devices are probed and available if this isn't done yet in case of
deep_probe_is_supported() returns true.

> > +	/*
> > +	 * The deep-probe mechanism relies on the fact that all necessary
> > +	 * drivers are added before the device creation. Furthermore deep-probe
> > +	 * is the answer of the EPROBE_DEFER errno so we must ensure that the
> 
> answer to*
> 
> > +	 * driver was probed succesfully after the device creation. Both
> 
> successfully
> 
> > +	 * requirments are fullfilled if 'dev->driver' is not NULL.
> 
> requirements, fulfilled 

Will fix those typos in v3. Thanks.

> > +/**
> > + * of_device_ensure_probed_by_alias() - ensures that a device is probed
> > + *
> > + * @alias: the alias string to search for a device
> > + *
> > + * The function search for a given alias string and ensures that the device is
> > + * populated and probed if found.
> > + *
> > + * Return: %0 on success
> > + *	   %-ENODEV if either the device can't be populated, the driver is
> > + *	     missing or the driver probe returns an error
> 
> I don't think it would be nice to just pass along driver probe errors as-is.

We can't distinguish between those failures yet, pls check the match()
function in drivers/base/driver.c. Can we address this later?

> > -static inline struct device_d *of_platform_device_create(struct device_node *np,
> > -							 struct device_d *parent)
> > +static inline struct device_d *
> > +of_platform_device_create(struct device_node *np, struct device_d *parent)
> 
> Unrelated change?

Yep, will drop that one.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
