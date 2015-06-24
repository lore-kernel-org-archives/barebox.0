Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7eWz-0006iP-Kv
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 06:51:34 +0000
Date: Wed, 24 Jun 2015 08:51:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150624065111.GT6325@pengutronix.de>
References: <1435064284-8015-1-git-send-email-jbe@pengutronix.de>
 <1435064284-8015-4-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435064284-8015-4-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/5] Watchdog: add a scope value to the watchdog feature
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 23, 2015 at 02:58:02PM +0200, Juergen Borleis wrote:
> Sometimes the SoC internal watchdogs are inappropriate to restart the
> machine in a reliable manner. This change should help to handle more than
> one watchdog unit by adding a scope parameter. The framework always
> prefers the watchdog with the widest scope. For example a watchdog
> which is able to restart the whole machine (SoC + external devices) gets
> precedence over a watchdog which can restart the SoC only.
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  Documentation/user/user-manual.rst |  1 +
>  Documentation/user/watchdog.rst    | 74 ++++++++++++++++++++++++++++++++++++++
>  common/restart.c                   |  6 ++++
>  drivers/watchdog/im28wd.c          |  1 +
>  drivers/watchdog/imxwd.c           |  1 +
>  drivers/watchdog/wd_core.c         | 24 +++++++++++--
>  include/watchdog.h                 |  3 ++
>  7 files changed, 108 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/user/watchdog.rst
> 
> diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
> index 0d6daee..8a32469 100644
> --- a/Documentation/user/user-manual.rst
> +++ b/Documentation/user/user-manual.rst
> @@ -30,6 +30,7 @@ Contents:
>     system-setup
>     reset-reason
>     system-reset
> +   watchdog
>  
>  * :ref:`search`
>  * :ref:`genindex`
> diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
> new file mode 100644
> index 0000000..d8e6e76
> --- /dev/null
> +++ b/Documentation/user/watchdog.rst
> @@ -0,0 +1,74 @@
> +.. _watchdog_usage:
> +
> +Using a watchdog
> +----------------
> +
> +Watchdogs are commonly used to prevent bad software from hanging the whole
> +system for ever. Sometimes a simple approach can help to make a system work
> +if hanging failures are happen very seldom: just restart the system and do
> +everything again in the same way as it was done when the system starts the
> +last time.
> +
> +But using a watchdog should always be the 'last resort' to keep a machine
> +working. The focus should still be on finding and fixing the bug ;)
> +
> +A more complex way to use a watchdog in a real-word example is when the state
> +frameworks comes into play. Then the watchdog's task isn't only to keep the
> +machine working. It also monitors the whole health of the machine including
> +hardware and software. Especially something like a firmware update can go
> +wrong: a wrong firmware was programmed (wrong release or for a different machine),
> +programming was incomplete due to a user intervention or power fail and so on.
> +
> +In this case the watchdog does not just restart the system if the software hangs,
> +it also provides 'additional' information about the firmware by this restart.
> +The barebox's state framework is now able to run some kind of state machine to handle
> +firmware updates in a correct manner: trying the new firmware once and if it fails falling
> +back to the previous firmware (if available) for example.
> +
> +Refer the :ref:`reset_reason` how to detect the reason why the bootloader runs.
> +This information can be used by the barebox's state framework.
> +
> +.. _watchdog_restart_pitfalls:
> +
> +Watchdog Pitfalls
> +~~~~~~~~~~~~~~~~~
> +
> +If a watchdog triggers a machine restart it suffers from the same issues like
> +a regular user triggered system machine restart. Refer :ref:`system_reset_pitfalls`
> +for further details.
> +So keep this in mind when you select an available watchdog on your machine for
> +this task. And if you are a hardware designer keep this in mind even more, and
> +provide a reliable restart source for the software developers and to keep their
> +headache low.
> +
> +Watchdogs from the developers point of view
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +Watchdogs gets registered in barebox with a scope. When you register your own
> +watchdog driver, check its hardware scope carefully and use one of the
> +definitions from the file ``include/restart.h``.
> +
> +The list of defined scopes (defined in file ``include/restart.h``):
> +
> +* ``FEATURE_SCOPE_UNKNOWN``: completely useless watchdog, maybe a last resort..
> +* ``FEATURE_SCOPE_CPU``: this watchdog is able to restart the core CPU only.
> +  Regarding to the issues in :ref:`system_reset_pitfalls` this kind of watchdog
> +  seems more or less useless.
> +* ``FEATURE_SCOPE_SOC``: this watchdog is able to restart the whole SoC. Regarding
> +  to the issues in :ref:`system_reset_pitfalls` this scope is more reliable, but
> +  depends on the machine and its hardware design if is able to bring the machine
> +  back into life under every circumstance.
> +* ``FEATURE_SCOPE_MACHINE``: it is able to restart the whole machine and does
> +  the same like a real ``POR`` does. Best scope and always reliable.
> +
> +The selected scope is very important because barebox will always use
> +the watchdog with the best available scope.
> +
> +But that is true only for watchdogs used in barebox and as long barebox is
> +running.
> +
> +If an operating system runs later on, it is the task of this OS to use a watchdog
> +with a correct scope. Otherwise it suffers from the :ref:`system_reset_pitfalls`
> +as well. This is even more important if the state framework is used. That means
> +barebox and the operating system must use the same watchdog in order to check
> +and change the states correctly.
> diff --git a/common/restart.c b/common/restart.c
> index 67797e4..c0c4861 100644
> --- a/common/restart.c
> +++ b/common/restart.c
> @@ -119,6 +119,12 @@ int restart_remove_handler(void (*func)(struct device_d*), struct device_d *dev)
>  }
>  EXPORT_SYMBOL(restart_remove_handler);
>  
> +void watchdog_update_global_info(int *scope)
> +{
> +	globalvar_add_simple_enum("system.wd.scope", scope,
> +				scope_names, ARRAY_SIZE(scope_names));
> +}
> +
>  static int reset_feature_init(void)
>  {
>  	reset_source_update_global_info();
> diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
> index c824a25..918d37a 100644
> --- a/drivers/watchdog/im28wd.c
> +++ b/drivers/watchdog/im28wd.c
> @@ -197,6 +197,7 @@ static int imx28_wd_probe(struct device_d *dev)
>  	if (IS_ERR(priv->regs))
>  		return PTR_ERR(priv->regs);
>  	priv->wd.set_timeout = imx28_watchdog_set_timeout;
> +	priv->wd.scope = FEATURE_SCOPE_SOC;
>  
>  	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
>  		rc = -ENODEV;
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 3cbae09..60772b1 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -185,6 +185,7 @@ static int imx_wd_probe(struct device_d *dev)
>  	}
>  	priv->ops = ops;
>  	priv->wd.set_timeout = imx_watchdog_set_timeout;
> +	priv->wd.scope = FEATURE_SCOPE_SOC;
>  	priv->dev = dev;
>  
>  	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index 3d0cfc6..6386cf3 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -13,22 +13,32 @@
>   */
>  
>  #include <common.h>
> +#include <init.h>
>  #include <command.h>
>  #include <errno.h>
>  #include <linux/ctype.h>
>  #include <watchdog.h>
> +#include <globalvar.h>
> +#include <restart.h>
>  
>  /*
>   * Note: this simple framework supports one watchdog only.
>   */
>  static struct watchdog *watchdog;
> +static int watchdog_scope;
> +
> +void watchdog_update_global_info(int*);
>  
>  int watchdog_register(struct watchdog *wd)
>  {
> -	if (watchdog != NULL)
> -		return -EBUSY;
> +	/* ignore a lower or same priority, it isn't a failure */
> +	if (wd->scope <= watchdog_scope)
> +		return 0;
>  
>  	watchdog = wd;
> +	watchdog_scope = (int)wd->scope;

I don't think we have to make this explicit cast from enum to int.

> +	watchdog_update_global_info(&watchdog_scope);

Unnecessary.

> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(watchdog_register);
> @@ -39,6 +49,9 @@ int watchdog_deregister(struct watchdog *wd)
>  		return -ENODEV;
>  
>  	watchdog = NULL;
> +	watchdog_scope = (int)FEATURE_SCOPE_UNKNOWN;
> +	watchdog_update_global_info(&watchdog_scope);

Unnecessary.

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
