Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjgE-0005Kp-Dj
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:49:20 +0000
Date: Tue, 26 Sep 2017 08:48:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926064856.dxbepok3hzt3yzxj@pengutronix.de>
References: <20170920190716.25768-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170920190716.25768-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] console_countdown: ignore errors in getchar()
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Wed, Sep 20, 2017 at 12:07:16PM -0700, Aleksander Morgado wrote:
> The getchar() call may return an error reported as a -1, e.g. when the
> console detects a RATP message and switches to RATP mode.
> 
> In general it probably is a good idea to ignore these errors in the
> console countdown operation; and in particular for the RATP usecase,
> this also prevents from interfering with the countdown and menu just
> when switching one of the consoles to RATP mode.
> 
> As a hint, this is what the standard console was printing due to this
> issue when the RATP console was activated:
> 
>    Hit m for menu or any other key to stop autoboot: [: missing `]'
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  common/console_countdown.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/console_countdown.c b/common/console_countdown.c
> index 03b9b3353..36da1ce57 100644
> --- a/common/console_countdown.c
> +++ b/common/console_countdown.c
> @@ -47,12 +47,14 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
>  	do {
>  		if (tstc()) {
>  			key = getchar();
> -			if (flags & CONSOLE_COUNTDOWN_ANYKEY)
> -				goto out;
> -			if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
> -				goto out;
> -			if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
> -				goto out;
> +			if (key >= 0) {
> +				if (flags & CONSOLE_COUNTDOWN_ANYKEY)
> +					goto out;
> +				if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
> +					goto out;
> +				if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
> +					goto out;
> +			}
>  			key = 0;
>  		}
>  		if ((flags & CONSOLE_COUNTDOWN_EXTERN) &&
> -- 
> 2.14.1
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
