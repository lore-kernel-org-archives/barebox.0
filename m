Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMaMA-0008QM-L9
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:12:31 +0000
Date: Fri, 12 Oct 2012 10:12:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012081229.GM27665@pengutronix.de>
References: <1349989025-13612-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349989025-13612-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] cosmetic: improve drivers list display
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 11, 2012 at 10:57:05PM +0200, Franck Jullien wrote:
> When the drivers list is printed with devinfo one can have some
> unaligned strings because of the arbitrary %10s alignment in the printf.
> 
> This adds a first step finding the longest driver name, then the printf
> alignment is matched to this value.

Maybe instead just print the driver list left aligned? When I
implemented this I thought that it looked nice when printing them
right aligned, but in the end it doesn't matter and shouldn't cause
additional code.

Sascha

> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/base/driver.c |    8 +++++++-
>  1 files changed, 7 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 5b7286a..9dd479e 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -397,6 +397,7 @@ static int do_devinfo(int argc, char *argv[])
>  	struct param_d *param;
>  	int i;
>  	struct resource *res;
> +	int max_length = 0;
>  
>  	if (argc == 1) {
>  		printf("devices:\n");
> @@ -408,7 +409,12 @@ static int do_devinfo(int argc, char *argv[])
>  
>  		printf("\ndrivers:\n");
>  		for_each_driver(drv)
> -			printf("%10s\n",drv->name);
> +			if (strlen(drv->name) > max_length)
> +				max_length = strlen(drv->name);
> +
> +		for_each_driver(drv)
> +			printf("%*s\n", max_length, drv->name);
> +
>  	} else {
>  		dev = get_device_by_name(argv[1]);
>  
> -- 
> 1.7.1
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
