Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2tHG-0003Lp-Mj
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 05:44:45 +0000
Date: Tue, 25 Apr 2017 07:44:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170425054420.udf5csgl3sb7yvz3@pengutronix.de>
References: <20170424160816.20936-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170424160816.20936-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] readline_simple: drop unusable u-boot legacy stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 24, 2017 at 07:08:16PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  lib/readline_simple.c | 13 -------------
>  1 file changed, 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/readline_simple.c b/lib/readline_simple.c
> index c2960665fb..c4d3d240e5 100644
> --- a/lib/readline_simple.c
> +++ b/lib/readline_simple.c
> @@ -57,19 +57,6 @@ int readline (const char *prompt, char *line, int len)
>  	col = plen;
>  
>  	for (;;) {
> -#ifdef CONFIG_BOOT_RETRY_TIME
> -		while (!tstc()) {	/* while no incoming data */
> -			if (retry_time >= 0 && get_ticks() > endtime)
> -				return (-2);	/* timed out */
> -		}
> -#endif
> -
> -#ifdef CONFIG_SHOW_ACTIVITY
> -		while (!tstc()) {
> -			extern void show_activity(int arg);
> -			show_activity(0);
> -		}
> -#endif
>  		c = getchar();
>  
>  		/*
> -- 
> 2.11.0
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
