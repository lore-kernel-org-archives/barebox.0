Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwls0-0000Jv-PH
 for barebox@lists.infradead.org; Tue, 05 Jan 2021 12:55:29 +0000
Date: Tue, 5 Jan 2021 13:55:27 +0100
Message-ID: <20210105125527.GE19063@pengutronix.de>
References: <20210101225139.2165289-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210101225139.2165289-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] driver: provide dev_request_mem_resource_by_name() helper
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Fri, Jan 01, 2021 at 11:51:39PM +0100, Ahmad Fatoum wrote:
> There are both dev_request_mem_resource() and dev_request_mem_region(),
> which return the struct resource and a IOMEM(.start) respectively.
> 
> There is only dev_request_mem_region_by_name(), but
> no dev_request_mem_resource_by_name(), so add the latter for symmetry.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/base/driver.c | 12 ++++++++++--
>  include/driver.h      |  5 +++++
>  2 files changed, 15 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 3205bbc3c33b..6763bbc6f512 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -372,7 +372,7 @@ struct resource *dev_get_resource_by_name(struct device_d *dev,
>  	return ERR_PTR(-ENOENT);
>  }
>  
> -void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
> +struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const char *name)
>  {
>  	struct resource *res;
>  
> @@ -380,7 +380,15 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
>  	if (IS_ERR(res))
>  		return ERR_CAST(res);
>  
> -	res = request_iomem_region(dev_name(dev), res->start, res->end);
> +	return request_iomem_region(dev_name(dev), res->start, res->end);
> +}
> +EXPORT_SYMBOL(dev_request_mem_resource_by_name);
> +
> +void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
> +{
> +	struct resource *res;
> +
> +	res = dev_request_mem_resource_by_name(dev, name);
>  	if (IS_ERR(res))
>  		return ERR_CAST(res);
>  
> diff --git a/include/driver.h b/include/driver.h
> index e2886d051d4f..0d43b3614863 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -214,6 +214,11 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num);
>   */
>  struct resource *dev_request_mem_resource(struct device_d *dev, int num);
>  
> +/*
> + * exlusively request resource 'name' for a device
> + */
> +struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const char *name);
> +
>  /*
>   * exlusively request register base 'num' for a device
>   * will return NULL on error
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
