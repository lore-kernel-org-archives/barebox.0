Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdTcW-00061X-9f
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 07:35:45 +0000
Date: Fri, 13 Nov 2020 08:35:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201113073542.GO29830@pengutronix.de>
References: <20201112171927.29337-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112171927.29337-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] nv: fix use-after-free when clearing from shell
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <ahmad@a3f.at>, Holger Assmann <has@pengutronix.de>

On Thu, Nov 12, 2020 at 06:19:27PM +0100, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> When we use hush to set the same nv.var twice to the empty string:
> 
>   $ nv.user=
>   $ nv.user=
> 
> nv_set is called twice with a NULL val argument leading
> to a double free and accompanied memory corruption.
> 
> Reorder the code, so p->value is freed just once.
> 
> Fixes: fa4c41ba60af ("nvvar: when setting a nvvar to NULL just free the content")
> Cc: Holger Assmann <has@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  common/globalvar.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index 60793d7a30c6..a55b38b00fd5 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -179,16 +179,12 @@ static int nv_set(struct device_d *dev, struct param_d *p, const char *name, con
>  {
>  	int ret;
>  
> -	if (!val) {
> -		if (p)
> -			free(p->value);
> -		return 0;
> +	if (val) {
> +		ret = dev_set_param(&global_device, name, val);
> +		if (ret)
> +			return ret;
>  	}
>  
> -	ret = dev_set_param(&global_device, name, val);
> -	if (ret)
> -		return ret;
> -
>  	if (p) {
>  		free(p->value);
>  		p->value = xstrdup(val);
> -- 
> 2.28.0
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
