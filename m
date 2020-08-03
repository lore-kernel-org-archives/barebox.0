Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2iAW-00023R-6g
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 21:38:52 +0000
Date: Mon, 3 Aug 2020 23:38:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803213850.GQ31536@pengutronix.de>
References: <20200716132816.16400-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716132816.16400-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH] startup: Add missing newline to notice message
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jul 16, 2020 at 03:28:16PM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  common/startup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/common/startup.c b/common/startup.c
> index 511675ed5..10dbe754e 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -155,7 +155,7 @@ static int load_environment(void)
>  			envfs_load(default_environment_path, "/env", 0);
>  	} else {
>  		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
> -			pr_notice("No support for persistent environment. Using default environment");
> +			pr_notice("No support for persistent environment. Using default environment\n");
>  	}
>  
>  	nvvar_load();
> -- 
> 2.17.1
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
