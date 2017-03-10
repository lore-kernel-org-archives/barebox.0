Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmEkp-0005Ag-Ds
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 07:14:27 +0000
Date: Fri, 10 Mar 2017 08:14:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170310071401.2ivh5sdpi77zobki@pengutronix.de>
References: <1489053441-12772-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489053441-12772-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] parameter: fix read only int support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 09, 2017 at 10:57:20AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> pass PARAM_FLAG_RO flag for read only it
> so we can not change them
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  lib/parameter.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied (only this one), thanks

Sascha

> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index 9f96d0760..65d6c7c0d 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -692,7 +692,7 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
>  
>  	piro = xzalloc(sizeof(*piro));
>  
> -	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
> +	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, PARAM_FLAG_RO);
>  	if (ret) {
>  		free(piro);
>  		return ERR_PTR(ret);
> @@ -718,7 +718,7 @@ struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
>  
>  	piro = xzalloc(sizeof(*piro));
>  
> -	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
> +	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, PARAM_FLAG_RO);
>  	if (ret) {
>  		free(piro);
>  		return ERR_PTR(ret);
> -- 
> 2.11.0
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
