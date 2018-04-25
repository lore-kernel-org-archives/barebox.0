Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBFuV-0004Hc-Sb
 for barebox@lists.infradead.org; Wed, 25 Apr 2018 08:36:22 +0000
Date: Wed, 25 Apr 2018 10:36:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180425083602.hylx5g56iztydjih@pengutronix.de>
References: <20180422182111.22256-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180422182111.22256-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH] watchdog: core: check hwdev before use it
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

On Sun, Apr 22, 2018 at 08:21:11PM +0200, Andreas Schmidt wrote:
> Avoid null pointer access, if hwdev was not
> set before call watchdog_register.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---
>  drivers/watchdog/wd_core.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index d3305443d..56e8626cb 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -112,10 +112,12 @@ static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
>  int watchdog_register(struct watchdog *wd)
>  {
>  	struct param_d *p;
> -	const char *alias;
> +	const char *alias = NULL;
>  	int ret = 0;
>  
> -	alias = of_alias_get(wd->hwdev->device_node);
> +	if (wd->hwdev)
> +		alias = of_alias_get(wd->hwdev->device_node);
> +
>  	if (alias)
>  		ret = watchdog_register_dev(wd, alias, DEVICE_ID_SINGLE);
>  
> -- 
> 2.14.1
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
