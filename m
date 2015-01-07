Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8l8c-0008JQ-Ac
 for barebox@lists.infradead.org; Wed, 07 Jan 2015 07:34:43 +0000
Date: Wed, 7 Jan 2015 08:34:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150107073418.GA18828@pengutronix.de>
References: <20150106113227.GC4563@ns203013.ovh.net>
 <1420544226-30497-1-git-send-email-plagnioj@jcrosoft.com>
 <1420544226-30497-2-git-send-email-plagnioj@jcrosoft.com>
 <20150106124423.GB17225@pengutronix.de>
 <14050F68-52D5-42C2-9E0B-D396D6817EB9@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14050F68-52D5-42C2-9E0B-D396D6817EB9@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] driver: workarroud resource request that conflist
 with errno PTR
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 07, 2015 at 11:14:32AM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On Jan 6, 2015, at 8:44 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > On Tue, Jan 06, 2015 at 12:37:06PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >> broken since
> >> 
> >> commit ed6e965824303255cacc1c1a195d3684caa26bce
> >> Author:     Sascha Hauer <s.hauer@pengutronix.de>
> >> resource: Let dev_request_mem_region return an error pointer
> >> 
> >> Introduce dev_request_mem_region_err_null
> >> 
> >> only used on platform like at91 where the Ressource address collision with
> >> 
> >> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >> ---
> >> arch/arm/mach-at91/at91sam926x_time.c |  6 +++---
> >> drivers/base/driver.c                 | 31 +++++++++++++++++++++++++++++--
> >> drivers/pinctrl/pinctrl-at91.c        |  6 +++---
> >> drivers/serial/atmel.c                |  6 +++---
> >> include/driver.h                      |  8 ++++++++
> >> 5 files changed, 46 insertions(+), 11 deletions(-)
> >> 
> >> diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
> >> index 789e1ec..cc7ad2f 100644
> >> --- a/arch/arm/mach-at91/at91sam926x_time.c
> >> +++ b/arch/arm/mach-at91/at91sam926x_time.c
> >> @@ -89,9 +89,9 @@ static int at91_pit_probe(struct device_d *dev)
> >> 		return ret;
> >> 	}
> >> 
> >> -	pit_base = dev_request_mem_region(dev, 0);
> >> -	if (IS_ERR(pit_base))
> >> -		return PTR_ERR(pit_base);
> >> +	pit_base = dev_request_mem_region_err_null(dev, 0);
> >> +	if (!pit_base)
> >> +		return -ENOENT;
> >> 
> >> 	pit_rate = clk_get_rate(clk) / 16;
> >> 
> >> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> >> index e0125a1..2375004 100644
> >> --- a/drivers/base/driver.c
> >> +++ b/drivers/base/driver.c
> >> @@ -242,8 +242,8 @@ int register_driver(struct driver_d *drv)
> >> }
> >> EXPORT_SYMBOL(register_driver);
> >> 
> >> -struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
> >> -				  int num)
> >> +static struct resource *__dev_get_resource(struct device_d *dev,
> >> +		unsigned long type, int num)
> >> {
> >> 	int i, n = 0;
> >> 
> >> @@ -256,6 +256,17 @@ struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
> >> 		}
> >> 	}
> >> 
> >> +	return NULL;
> >> +}
> >> +
> >> +struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
> >> +				  int num)
> >> +{
> >> +	struct resource *res = __dev_get_resource(dev, type, num);
> >> +
> >> +	if (res)
> >> +		return res;
> >> +
> >> 	return ERR_PTR(-ENOENT);
> >> }
> > 
> > No need to change dev_get_resource(), it returns a struct resource *
> > which will never conflict with an err ptr.
> 
> but as if no ressource is found it return ERR_PTR(-ENOENT)

Yes, and this is always correct. Only your
dev_request_mem_region_err_null() function must return NULL in this case
and not ERR_CAST(res) like dev_request_mem_region() does.

void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
{
       struct resource *res;

       res = dev_get_resource(dev, IORESOURCE_MEM, num);
       if (IS_ERR(res))
               return NULL;

       res = request_iomem_region(dev_name(dev), res->start, res->end);
       if (IS_ERR(res))
               return ERR_CAST(res);

       return (void __force __iomem *)res->start;
}
EXPORT_SYMBOL(dev_request_mem_region_err_null);

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
