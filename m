Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WvJ69-0006C4-Gn
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 04:28:18 +0000
Date: Fri, 13 Jun 2014 06:27:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140613042752.GD15686@pengutronix.de>
References: <1402565858-7098-1-git-send-email-Herve.CODINA@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402565858-7098-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: Re: [PATCH 1/2] param: Add support for long long read only dev param
To: Herve Codina <Herve.CODINA@celad.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 12, 2014 at 11:37:37AM +0200, Herve Codina wrote:
> Signed-off-by: Herve Codina <Herve.CODINA@celad.com>

Applied both, thanks

Sascha

> ---
>  include/param.h |    9 +++++++++
>  lib/parameter.c |   26 ++++++++++++++++++++++++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/include/param.h b/include/param.h
> index eac3372..24827c5 100644
> --- a/include/param.h
> +++ b/include/param.h
> @@ -49,6 +49,9 @@ struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
>  struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
>  		int value, const char *format);
>  
> +struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
> +		long long value, const char *format);
> +
>  struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
>  		int (*set)(struct param_d *p, void *priv),
>  		int (*get)(struct param_d *p, void *priv),
> @@ -123,6 +126,12 @@ static inline struct param_d *dev_add_param_int_ro(struct device_d *dev, const c
>  	return NULL;
>  }
>  
> +static inline struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
> +		long long value, const char *format)
> +{
> +	return NULL;
> +}
> +
>  static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
>  		int (*set)(struct param_d *p, void *priv),
>  		int (*get)(struct param_d *p, void *priv),
> diff --git a/lib/parameter.c b/lib/parameter.c
> index b1f9aa3..13062bc 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -468,6 +468,32 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
>  	return &piro->param;
>  }
>  
> +/**
> + * dev_add_param_llint_ro - add a read only long long parameter to a device
> + * @param dev	The device
> + * @param name	The name of the parameter
> + * @param value	The value of the parameter
> + * @param format the printf format used to print the value
> + */
> +struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
> +		long long value, const char *format)
> +{
> +	struct param_int *piro;
> +	int ret;
> +
> +	piro = xzalloc(sizeof(*piro));
> +
> +	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
> +	if (ret) {
> +		free(piro);
> +		return ERR_PTR(ret);
> +	}
> +
> +	piro->param.value = asprintf(format, value);
> +
> +	return &piro->param;
> +}
> +
>  #ifdef CONFIG_NET
>  struct param_ip {
>  	struct param_d param;
> -- 
> 1.7.9.5
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
