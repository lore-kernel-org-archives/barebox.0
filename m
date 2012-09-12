Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoW4-0002NN-Ls
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:06:13 +0000
Date: Wed, 12 Sep 2012 17:06:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912150605.GR6180@pengutronix.de>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] globalbar: add inline when not enabled
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

For the third time now:

Subject: s/globalbar/globalvar/

Sascha

On Wed, Sep 12, 2012 at 04:48:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/globalvar.h |   20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/include/globalvar.h b/include/globalvar.h
> index 7cc3976..a127a05 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -1,6 +1,7 @@
>  #ifndef __GLOBALVAR_H
>  #define __GLOBALVAR_H
>  
> +#ifdef CONFIG_GLOBALVAR
>  int globalvar_add_simple(const char *name);
>  
>  int globalvar_add(const char *name,
> @@ -8,5 +9,24 @@ int globalvar_add(const char *name,
>  		const char *(*get)(struct device_d *, struct param_d *p),
>  		unsigned long flags);
>  char *globalvar_get_match(const char *match, const char *seperator);
> +#else
> +static inline int globalvar_add_simple(const char *name)
> +{
> +	return 0;
> +}
> +
> +static inline int globalvar_add(const char *name,
> +		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
> +		const char *(*get)(struct device_d *, struct param_d *p),
> +		unsigned long flags)
> +{
> +	return 0;
> +}
> +
> +static inline char *globalvar_get_match(const char *match, const char *seperator)
> +{
> +	return NULL;
> +}
> +#endif
>  
>  #endif /* __GLOBALVAR_H */
> -- 
> 1.7.10.4
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
