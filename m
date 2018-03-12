Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1evKpM-0004Pf-Oi
 for barebox@lists.infradead.org; Mon, 12 Mar 2018 10:37:14 +0000
Date: Mon, 12 Mar 2018 11:37:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180312103701.mth5rujvayf323lw@pengutronix.de>
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
 <20180308110515.29574-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180308110515.29574-4-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 4/6] watchdog: set some reasonable timeout_max value
 if no other is available
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 08, 2018 at 12:05:13PM +0100, Oleksij Rempel wrote:
> Some drivers do not provide timeout_max value.
> Using some value is probbaly better then setting timeout_max to 0.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/watchdog/wd_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index 97e2ab568..66dbd790d 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -41,6 +41,10 @@ int watchdog_register(struct watchdog *wd)
>  	if (!wd->priority)
>  		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
>  
> +	/* set some default sane value */
> +	if (!wd->timeout_max)
> +		wd->timeout_max = 60 * 4;

4 minutes? Why so low? I would expect something like a few hours.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
