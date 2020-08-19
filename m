Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8Ifi-0002rg-9C
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 07:38:11 +0000
Date: Wed, 19 Aug 2020 09:38:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200819073808.GS13023@pengutronix.de>
References: <20200818131816.7700-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200818131816.7700-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] watchdog: fix watchdog_set_timeout breakage for drivers
 like imxwd
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>

On Tue, Aug 18, 2020 at 03:18:16PM +0200, Ahmad Fatoum wrote:
> Commit 0b944fce55f4 ("watchdog: permit `wd 0` for non-stoppable, but
> inactive, watchdogs") silently broke use of non-stoppable, but inactive,
> watchdogs altogether. Because those always had watchdog_hw_running
> evaluating to false, it early exited without a chance to ever actually
> set the timeout (and for watchdog_hw_running to evaluate to != false).
> 
> This results in following watchdog drivers being broken in v2020.08.0:
> 
>  - imxwd
>  - f71808e_wdt
>  - at91sam9_wdt
> 
> Fixes: 0b944fce55f4 ("watchdog: permit `wd 0` for non-stoppable, but inactive, watchdogs")
> Reported-by: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Please apply to master (and to v2020.08.1?).
> ---
>  drivers/watchdog/wd_core.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index ab1dcaa40a3a..4247288dbd0a 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -45,12 +45,11 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
>  	if (timeout > wd->timeout_max)
>  		return -EINVAL;
>  
> -	if (watchdog_hw_running(wd) == false)
> -		return 0;
> -
>  	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
>  
>  	ret = wd->set_timeout(wd, timeout);
> +	if (ret == -ENOSYS && watchdog_hw_running(wd) == false)

Instead of testing for a specific error code from set_timeout(), can't
we just do a

	if (!timeout && !watchdog_hw_running(wd))
		return 0;

This would make the intention of the code more clear.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
