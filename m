Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjiJm-0000fN-Mg
 for barebox@lists.infradead.org; Wed, 07 Oct 2015 06:35:15 +0000
Date: Wed, 7 Oct 2015 08:34:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151007063451.GC7825@pengutronix.de>
References: <1443789301-25097-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443789301-25097-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] param: dev_add_param_mac() depends on CONFIG_NET
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Markus,

On Fri, Oct 02, 2015 at 02:35:01PM +0200, Markus Pargmann wrote:
> This patch adds the proper inline function for CONFIG_PARAMETER && !
> CONFIG_NET.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  include/param.h | 21 +++++++++++++--------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/include/param.h b/include/param.h
> index 3a851fc552a4..f8a2534ef3a8 100644
> --- a/include/param.h
> +++ b/include/param.h
> @@ -63,10 +63,12 @@ struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
>  		int (*get)(struct param_d *p, void *priv),
>  		IPaddr_t *ip, void *priv);
>  
> +#ifdef CONFIG_NET
>  struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
>  		int (*set)(struct param_d *p, void *priv),
>  		int (*get)(struct param_d *p, void *priv),
>  		u8 *mac, void *priv);
> +#endif
>  
>  int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
>  
> @@ -154,14 +156,6 @@ static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char
>  	return ERR_PTR(-ENOSYS);
>  }
>  
> -static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
> -		int (*set)(struct param_d *p, void *priv),
> -		int (*get)(struct param_d *p, void *priv),
> -		u8 *mac, void *priv)
> -{
> -	return ERR_PTR(-ENOSYS);
> -}
> -
>  static inline int dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
>  {
>  	return 0;
> @@ -178,4 +172,15 @@ static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
>  }
>  #endif
>  
> +#if ! defined(CONFIG_PARAMETER) || ! defined(CONFIG_NET)
> +static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
> +		int (*set)(struct param_d *p, void *priv),
> +		int (*get)(struct param_d *p, void *priv),
> +		u8 *mac, void *priv)
> +{
> +	return ERR_PTR(-ENOSYS);
> +}

Reverted this patch because with it we get a redifinition of
dev_add_param_mac when CONFIG_PARAMETER is enabled but CONFIG_NET is
disabled:

lib/parameter.c:729:17: error: redefinition of 'dev_add_param_mac'
 struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
                 ^
In file included from include/console.h:23:0,
                 from include/stdio.h:5,
                 from include/common.h:23,
                 from lib/parameter.c:24:
include/param.h:176:31: note: previous definition of 'dev_add_param_mac' was here
 static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
                               ^
scripts/Makefile.build:249: recipe for target 'lib/parameter.o' failed

Looking at it the behaviour was fine without this patch. What was the
motivation creating it?

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
