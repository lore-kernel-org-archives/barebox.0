Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1etvvT-00026m-9j
 for barebox@lists.infradead.org; Thu, 08 Mar 2018 13:49:45 +0000
Message-ID: <1520516969.31759.115.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 08 Mar 2018 14:49:29 +0100
In-Reply-To: <20180308110515.29574-6-o.rempel@pengutronix.de>
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
 <20180308110515.29574-6-o.rempel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v1 6/6] watchdog: add watchdog poller
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

Hi Oleksij,

On Thu, 2018-03-08 at 12:05 +0100, Oleksij Rempel wrote:
> In some cases it is practical to supervise as match as possible of
s/match/much/
> barebox execution with watchdog (or multiple watchdogs). This
 ^ the                  ^ a
> patch provide async poller for watchdog core framework which can
              ^-s an
> be enabled by user and store this configuration to nv.
               ^the           ^-s

Also, does this patch make the poller support required for using
watchdogs? It unconditionally calls the poller_* functions.

Also, it should be documented explicitly, that this will cause barebox
to keep triggering the watchdog, even when it drops to the shell after
a boot error. This makes it unsuitable for unattended use.

I'd prefer to make this optional at compile time.

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/watchdog/wd_core.c | 54
> ++++++++++++++++++++++++++++++++++++++++------
>  include/watchdog.h         |  4 ++++
>  2 files changed, 52 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index 3162dd59c..6f1cadaf8 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -31,6 +31,16 @@ static const char *watchdog_name(struct watchdog
> *wd)
>  	return "unknown";
>  }
>  
> +static int _watchdog_set_timeout(struct watchdog *wd, unsigned
> timeout)
> +{
> +	if (timeout > wd->timeout_max)
> +		return -EINVAL;
> +
> +	pr_debug("setting timeout on %s to %ds\n",
> watchdog_name(wd), timeout);
> +
> +	return wd->set_timeout(wd, timeout);
> +}
> +
>  static int watchdog_set_cur(struct param_d *param, void *priv)
>  {
>  	struct watchdog *wd = priv;
> @@ -41,6 +51,37 @@ static int watchdog_set_cur(struct param_d *param,
> void *priv)
>  	return 0;
>  }
>  
> +static void watchdog_poller_cb(void *priv);
> +
> +static void watchdog_poller_start(struct watchdog *wd)
> +{
> +	_watchdog_set_timeout(wd, wd->timeout_cur);
> +	poller_call_async(&wd->poller, 500 * MSECOND,
> +			watchdog_poller_cb, wd);
> +
> +}
> +
> +static void watchdog_poller_cb(void *priv)
> +{
> +	struct watchdog *wd = priv;
> +
> +	if (wd->poller_enable)
> +		watchdog_poller_start(wd);
> +}
> +
> +static int watchdog_set_poller(struct param_d *param, void *priv)
> +{
> +	struct watchdog *wd = priv;
> +
> +
> +	if (wd->poller_enable)
> +		watchdog_poller_start(wd);
> +	else
> +		poller_async_cancel(&wd->poller);
> +
> +	return 0;
> +}
> +
>  int watchdog_register(struct watchdog *wd)
>  {
>  
> @@ -63,6 +104,10 @@ int watchdog_register(struct watchdog *wd)
>  	dev_add_param_uint32(&wd->dev, "timeout_cur",
> watchdog_set_cur, NULL,
>  			&wd->timeout_cur, "%u", wd);
>  
> +	poller_async_register(&wd->poller);
> +	dev_add_param_bool(&wd->dev, "poller_enable",
> watchdog_set_poller, NULL,
> +			&wd->poller_enable, wd);
Isn't the usage of the poller an implementation detail? Perhaps calls
this something like "auto_trigger"?

> +
>  	list_add_tail(&wd->list, &watchdog_list);
>  
>  	pr_debug("registering watchdog %s with priority %d\n",
> watchdog_name(wd),
> @@ -74,6 +119,8 @@ EXPORT_SYMBOL(watchdog_register);
>  
>  int watchdog_deregister(struct watchdog *wd)
>  {
> +	poller_async_cancel(&wd->poller);
> +	poller_async_unregister(&wd->poller);
>  	unregister_device(&wd->dev);
>  	list_del(&wd->list);
>  
> @@ -109,12 +156,7 @@ int watchdog_set_timeout(unsigned timeout)
>  	if (!wd)
>  		return -ENODEV;
>  
> -	if (timeout > wd->timeout_max)
> -		return -EINVAL;
> -
> -	pr_debug("setting timeout on %s to %ds\n",
> watchdog_name(wd), timeout);
> -
> -	return wd->set_timeout(wd, timeout);
> +	return _watchdog_set_timeout(wd, timeout);
>  }
>  EXPORT_SYMBOL(watchdog_set_timeout);
>  
> diff --git a/include/watchdog.h b/include/watchdog.h
> index 2f1874c19..0db4263a3 100644
> --- a/include/watchdog.h
> +++ b/include/watchdog.h
> @@ -13,6 +13,8 @@
>  #ifndef INCLUDE_WATCHDOG_H
>  # define INCLUDE_WATCHDOG_H
>  
> +#include <poller.h>
> +
>  struct watchdog {
>  	int (*set_timeout)(struct watchdog *, unsigned);
>  	const char *name;
> @@ -21,6 +23,8 @@ struct watchdog {
>  	unsigned int priority;
>  	unsigned int timeout_max;
>  	unsigned int timeout_cur;
> +	unsigned int poller_enable;
> +	struct poller_async poller;
>  	struct list_head list;
>  };
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
