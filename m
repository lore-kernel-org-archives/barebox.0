Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x242.google.com ([2607:f8b0:400d:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1esGNt-0001A2-Vo
 for barebox@lists.infradead.org; Sat, 03 Mar 2018 23:16:11 +0000
Received: by mail-qk0-x242.google.com with SMTP id b130so16437114qkg.9
 for <barebox@lists.infradead.org>; Sat, 03 Mar 2018 15:15:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180303090328.10026-1-linux@rempel-privat.de>
References: <20180303090328.10026-1-linux@rempel-privat.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 3 Mar 2018 15:15:57 -0800
Message-ID: <CAHQ1cqFmfiGKnV6cuo_x-_v=097QQ16Qp-u2Z7S1wurCnb7H9A@mail.gmail.com>
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
Subject: Re: [PATCH] watchdog: add periodic watchdog ping
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Mar 3, 2018 at 1:03 AM, Oleksij Rempel <linux@rempel-privat.de> wrote:
> This patch should cover at least this use cases:
> - For production, for example automotive: cover as match as possible of SoC
> life time with watchdog. Since some SoCs do not provide enough control over
> watchdog timer it is not enough to enable it in PBL and retrigger in linux.
> Barebox may need to retrigger it a few times as well.
> - For remote development. If there is no way to power cycle the target except
> of manually unplug it.
>
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/watchdog/wd_core.c | 57 ++++++++++++++++++++++++++++++++++++++++++++++
>  include/watchdog.h         |  1 +
>  2 files changed, 58 insertions(+)
>
> diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> index 3a3f51964..e716a5f96 100644
> --- a/drivers/watchdog/wd_core.c
> +++ b/drivers/watchdog/wd_core.c
> @@ -16,7 +16,11 @@
>  #include <common.h>
>  #include <command.h>
>  #include <errno.h>
> +#include <globalvar.h>
>  #include <linux/ctype.h>
> +#include <magicvar.h>
> +#include <poller.h>
> +#include <init.h>
>  #include <watchdog.h>
>
>  static LIST_HEAD(watchdog_list);
> @@ -101,3 +105,56 @@ unsigned int of_get_watchdog_priority(struct device_node *node)
>
>         return priority;
>  }
> +
> +static int watchdog_ping_enable;
> +static unsigned int watchdog_ping_timeout;
> +
> +static void watchdog_ping_func(struct poller_struct *poller)
> +{
> +       struct watchdog *wd;
> +       unsigned int timeout = watchdog_ping_timeout;
> +
> +       if (!watchdog_ping_enable)
> +               return;
> +
> +       wd = watchdog_get_default();
> +
> +       if (!wd || wd->ping_next_event > get_time_ns())
> +               return;

What if for some bizarre reason (say legacy design that cannot be
changed) I have a system with more than one watchdog that needs to be
petted? I'd consider making pollers a per watchdog device thing and
also converting the code to use "struct poller_async" since it'll
already implement periodic execution.

> +
> +       wd->ping_next_event = get_time_ns() + 500 * MSECOND;
> +

I'd expect your petting frequency to be tied to watchdog timeout
period (say half the period), and not just fixed to 0.5 seconds. Is
this on purpose?

> +       pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
> +
> +       wd->set_timeout(wd, timeout);

This changes the semantics of "set_timeout" callback, before, when
notion of "petting" a watchdog didn't exist, it only changed the
timeout setting, whereas with your patch it also becomes responsible
for petting as well. It depends on IP block's implementation, but it
is not that uncommon for one to have those functions -- petting and
changing the timeout -- to be implemented separately, oftentimes via
different registers. Just as a suggestion, it might be better to
introduce a separate "pet()"/"ping()" callback and have the framework
print a warning when used against a driver that was not explicitly
ported to support the notion of "petting".

> +}
> +
> +static struct poller_struct watchdog_poller = {
> +       .func = watchdog_ping_func,
> +};
> +
> +static int init_watchdog_ping_timeout(void)
> +{
> +       int err;
> +
> +       err = globalvar_add_simple_bool("watchdog.ping_enable",
> +                       &watchdog_ping_enable);
> +       if (err)
> +               return err;
> +
> +       err = globalvar_add_simple_int("watchdog.ping_timeout",
> +                       &watchdog_ping_timeout, "%u");
> +       if (err)
> +               return err;
> +
> +       return poller_register(&watchdog_poller);
> +}
> +late_initcall(init_watchdog_ping_timeout);
> +
> +BAREBOX_MAGICVAR_NAMED(global_watchdog_ping_enable,
> +                      global.watchdog.ping_enable,
> +                      "Enable periodic watchdog pings");
> +
> +BAREBOX_MAGICVAR_NAMED(global_watchdog_ping_timeout,
> +                      global.watchdog.ping_timeout,
> +                      "Periodic watchdog timeout in seconds");

As another suggestion, consider porting the notion of timeout
boundaries (max_timeout, min_timeout) similar to what exists in Linux
kernel to allow some bounds checking and avoiding setting bogus
timeout values.

Thanks,
Andrey Smrinov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
