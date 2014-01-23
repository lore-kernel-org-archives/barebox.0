Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6T81-0000mj-2U
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 22:52:05 +0000
Received: by mail-ea0-f182.google.com with SMTP id r15so669837ead.27
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2014 14:51:43 -0800 (PST)
Message-ID: <52E19CFB.1040908@gmail.com>
Date: Thu, 23 Jan 2014 23:51:39 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
 <1390505010-7546-3-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1390505010-7546-3-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] net: mv643xx: add driver support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/23/2014 08:23 PM, Michael Grzeschik wrote:
> This patch adds basic support for the mv643xx gigabit
> ethernet stack. It is found on several marvell orion SoCs.
>
> The code is based on the kirkwood_egiga driver from u-boot and was renamed. It
> uses dma_alloc_coherent instead of xmalloc. The huge register representing
> struct was changed to register offset defines. The write and read macros got
> changed to direct writel and readl calls.

Nice patches! Unfortunately, I have no time to review and test them
today, but I do have some remarks right now.

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>   drivers/net/Kconfig   |   5 +
>   drivers/net/Makefile  |   1 +
>   drivers/net/mv643xx.c | 714 ++++++++++++++++++++++++++++++++++++++++++++++++++
>   drivers/net/mv643xx.h | 473 +++++++++++++++++++++++++++++++++

We really all hate "mv643xx" because it is a pain to say and write it.
I guess barebox will never be run on systems with mv64xxx controllers
but only Marvell Orion SoC.

I'd be *very* happy if you do s/mv643xx/orion/g

[...]
> diff --git a/drivers/net/mv643xx.c b/drivers/net/mv643xx.c
> new file mode 100644
> index 0000000..3d0bfdc
> --- /dev/null
> +++ b/drivers/net/mv643xx.c
> @@ -0,0 +1,714 @@
> +/*
[...]
> + */
> +
> +#include <common.h>
> +#include <malloc.h>
> +#include <net.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <io.h>
> +#include <clock.h>
> +#include <xfuncs.h>
> +#include <linux/phy.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <of_net.h>
> +#include <mach/dove-regs.h>

Please don't. The same driver will be used on Kirkwood and possibly
orion5x, mv78x00 if they get supported.

Have every register offset defined in here or "mv643xx.h" and get
rid of the above. If you need some callback for memory windows, let's
get it on now and create it in a way it is compatible with using this
driver on the other SoCs.

Also, we really have no plans for Dove, Kirkwood or any other Marvell
SoC with !CONFIG_OF, so feel free to remove any reference to non-DT
usage.

BTW, how about sorting the #includes alphabetically?

For the rest, I'll give it a go on Dove ASAP.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
