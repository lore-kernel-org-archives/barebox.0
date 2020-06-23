Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jne8P-00072K-AX
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 08:18:26 +0000
Date: Tue, 23 Jun 2020 10:18:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200623081822.GV11869@pengutronix.de>
References: <20200622151115.29012-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622151115.29012-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2] watchdog: permit `wd 0` for non-stoppable, but
 inactive, watchdogs
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 22, 2020 at 05:11:15PM +0200, Ahmad Fatoum wrote:
> A watchdog that can't be stopped returns -ENOSYS on set_timeout(0).
> If the watchdog supports communicating whether it's running, we could
> still allow `wd 0`, if it hasn't been started yet.
> 
> Setting device parameter .priority=0 disables a watchdog. One would
> expect this to always succeed for a not-running watchdog, but currently
> it doesn't, if the driver's set_timeout(0) returns -ENOSYS. With this
> fix, this is supported making the user API less surprising.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> v1 -> v2:
>   - use watchdog_hw_running helper
> ---
>  drivers/watchdog/wd_core.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index 34040408f716..72ada91dbf71 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -45,6 +45,9 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
>  	if (timeout > wd->timeout_max)
>  		return -EINVAL;
>  
> +	if (watchdog_hw_running(wd) == false)
> +		return 0;
> +
>  	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
>  
>  	ret = wd->set_timeout(wd, timeout);
> -- 
> 2.27.0
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
