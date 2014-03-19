Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQNMx-0000AX-9W
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 20:45:47 +0000
Date: Wed, 19 Mar 2014 21:45:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140319204529.GD17250@pengutronix.de>
References: <1395228552-28724-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395228552-28724-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] [FOR SQUASH] clocksource: dummy.c: remove Kconfig warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 19, 2014 at 03:29:12PM +0400, Antony Pavlov wrote:
> This patch removes this warning during 'make *config':
> 
>   drivers/clocksource/Kconfig:36:warning: leading whitespace ignored
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Also squashed into the original commit.

Sascha

> ---
>  drivers/clocksource/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index f53c933..43974f0 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -32,7 +32,8 @@ config CLOCKSOURCE_DUMMY
>  	  was initialized.
>  
>  config CLOCKSOURCE_DUMMY_RATE
> -	int "  dummy clocksource rate"
> +	int
> +	prompt "dummy clocksource rate"
>  	depends on CLOCKSOURCE_DUMMY
>  	default 1000
>  
> -- 
> 1.9.0
> 
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
