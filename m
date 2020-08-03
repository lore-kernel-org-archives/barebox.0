Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2hvF-0000Qa-FC
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 21:23:06 +0000
Date: Mon, 3 Aug 2020 23:23:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803212303.GN31536@pengutronix.de>
References: <20200721083401.31880-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721083401.31880-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH 1/2] ratp: Abort console_countdown when activated
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jul 21, 2020 at 10:34:00AM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  common/ratp/ratp.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
> index e84ad2216..d06a7ca96 100644
> --- a/common/ratp/ratp.c
> +++ b/common/ratp/ratp.c
> @@ -30,6 +30,7 @@
>  #include <linux/sizes.h>
>  #include <ratp_bb.h>
>  #include <fs.h>
> +#include <console_countdown.h>
>  
>  LIST_HEAD(ratp_command_list);
>  EXPORT_SYMBOL(ratp_command_list);
> @@ -458,6 +459,8 @@ int barebox_ratp(struct console_device *cdev)
>  	if (ret)
>  		goto out1;
>  
> +	console_countdown_abort();
> +
>  	console_set_active(&ctx->ratp_console, CONSOLE_STDOUT | CONSOLE_STDERR |
>  			CONSOLE_STDIN);
>  
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
