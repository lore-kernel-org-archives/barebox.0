Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5DkB-0004mw-Gy
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 19:46:04 +0000
Date: Mon, 10 Aug 2020 21:46:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810194601.GE31536@pengutronix.de>
References: <20200716132753.16342-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716132753.16342-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH] console_countdown: Add CR as valid return key
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Jules,

On Thu, Jul 16, 2020 at 03:27:53PM +0200, Jules Maselbas wrote:
> Now both LF ('\n') and CR ('\r') are valid keys to abort
> console_countdown when using CONSOLE_COUNTDOWN_RETURN flag.

I have no problem with this change, but out of curiosity: In which case
do you need it?

Regards,
 Sascha

> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  common/console_countdown.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/console_countdown.c b/common/console_countdown.c
> index 74dc38279..b92948f50 100644
> --- a/common/console_countdown.c
> +++ b/common/console_countdown.c
> @@ -64,7 +64,7 @@ int console_countdown(int timeout_s, unsigned flags, const char *keys,
>  					goto out;
>  				if (flags & CONSOLE_COUNTDOWN_ANYKEY)
>  					goto out;
> -				if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
> +				if (flags & CONSOLE_COUNTDOWN_RETURN && (key == '\n' || key == '\r'))
>  					goto out;
>  				if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
>  					goto out;
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
