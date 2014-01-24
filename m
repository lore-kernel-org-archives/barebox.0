Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6oxo-0001Jl-8y
 for barebox@lists.infradead.org; Fri, 24 Jan 2014 22:11:07 +0000
Date: Fri, 24 Jan 2014 23:10:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140124221037.GM16215@pengutronix.de>
References: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/4] mfd: syscon: Introduce
 syscon_base_lookup_by_phandle() function
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jan 23, 2014 at 09:22:04PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied this series.

Thanks
 Sascha

> ---
>  drivers/mfd/syscon.c | 20 ++++++++++++++++++++
>  include/mfd/syscon.h |  8 ++++++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> index 52cb433..6437344 100644
> --- a/drivers/mfd/syscon.c
> +++ b/drivers/mfd/syscon.c
> @@ -41,6 +41,26 @@ void __iomem *syscon_base_lookup_by_pdevname(const char *s)
>  	return ERR_PTR(-ENODEV);
>  }
>  
> +void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
> +					    const char *property)
> +{
> +	struct device_node *node;
> +	struct syscon *syscon;
> +	struct device_d *dev;
> +
> +	node = of_parse_phandle(np, property, 0);
> +	if (!node)
> +		return ERR_PTR(-ENODEV);
> +
> +	dev = of_find_device_by_node(node);
> +	if (!dev)
> +		return ERR_PTR(-ENODEV);
> +
> +	syscon = dev->priv;
> +
> +	return syscon->base;
> +}
> +
>  static int syscon_probe(struct device_d *dev)
>  {
>  	struct syscon *syscon;
> diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
> index 68432b7..0eccd5c 100644
> --- a/include/mfd/syscon.h
> +++ b/include/mfd/syscon.h
> @@ -16,11 +16,19 @@
>  
>  #ifdef CONFIG_MFD_SYSCON
>  void __iomem *syscon_base_lookup_by_pdevname(const char *);
> +void __iomem *syscon_base_lookup_by_phandle
> +	(struct device_node *np, const char *property);
>  #else
>  static inline void __iomem *syscon_base_lookup_by_pdevname(const char *)
>  {
>  	return NULL;
>  }
> +
> +static inline void __iomem *syscon_base_lookup_by_phandle
> +	(struct device_node *np, const char *property)
> +{
> +	return NULL;
> +}
>  #endif
>  
>  #endif
> -- 
> 1.8.3.2
> 
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
