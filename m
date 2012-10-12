Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMa9k-0006xS-Ql
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 07:59:41 +0000
Date: Fri, 12 Oct 2012 09:59:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012075939.GH27665@pengutronix.de>
References: <1349864229-12914-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349864229-12914-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] parameter: remove unused function global_add_parameter
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 10, 2012 at 12:17:08PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  include/param.h |    7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/include/param.h b/include/param.h

Applied, thanks

Sascha

> index a855102..e0c415d 100644
> --- a/include/param.h
> +++ b/include/param.h
> @@ -38,8 +38,6 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
>  /* Convenience functions to handle a parameter as an ip address */
>  int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip);
>  IPaddr_t dev_get_param_ip(struct device_d *dev, char *name);
> -
> -int global_add_parameter(struct param_d *param);
>  #else
>  static inline const char *dev_get_param(struct device_d *dev, const char *name)
>  {
> @@ -86,11 +84,6 @@ static inline IPaddr_t dev_get_param_ip(struct device_d *dev, char *name)
>  {
>  	return 0;
>  }
> -
> -static inline int global_add_parameter(struct param_d *param)
> -{
> -	return 0;
> -}
>  #endif
>  
>  #endif /* PARAM_H */
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
