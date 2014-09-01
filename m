Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOMdL-0001xi-Pv
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 08:06:41 +0000
Date: Mon, 1 Sep 2014 10:06:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901080611.GE5352@pengutronix.de>
References: <98034ceb4fe0a107abef0beb3fd1380c@linux-source.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98034ceb4fe0a107abef0beb3fd1380c@linux-source.de>
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
Subject: Re: [PATCH] mtd: add mtdram device (which build mtd over ram area -
 useful for FRAM oder MRAM)
To: basti@linux-source.de
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Thu, Aug 28, 2014 at 10:59:51AM +0200, basti@linux-source.de wrote:
> This adds support for MTD in RAM devices (like FRAM or MRAM).
> 
> Signed-off-by: Sebastian Block <basti@linux-source.de>
> 
> ---
>  drivers/mtd/devices/Kconfig  |    6 ++
>  drivers/mtd/devices/Makefile |    1 +
>  drivers/mtd/devices/mtdram.c |  132
> ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 139 insertions(+)
>  create mode 100644 drivers/mtd/devices/mtdram.c
> 
> diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
> index 94668a2..c512242 100644
> --- a/drivers/mtd/devices/Kconfig
> +++ b/drivers/mtd/devices/Kconfig
> @@ -64,4 +64,10 @@ config MTD_DOCG3
>           M-Systems and now Sandisk. The support is very experimental,
>           and doesn't give access to any write operations.
> 
> +config MTD_MTDRAM
> +       tristate "Provide test driver using RAM"

This description is probably directly takes from the Kernel. I think
something like "driver for memory mapped MRAM/FRAM" would be more
appropriate.

> new file mode 100644
> index 0000000..bd0bbb4
> --- /dev/null
> +++ b/drivers/mtd/devices/mtdram.c
> @@ -0,0 +1,132 @@
> +/*
> + * MTD RAM driver - a mtd test device driver
> + *
> + * Author: Sebastian Block <basti@linux-source.de>
> + * Copyright (c) 2014
> + *
> + * Some parts are based on mtdram.c found in Linux kernel
> + * by   Alexander Larsson <alex@cendio.se>
> + * and  Joern Engel <joern@wh.fh-wedel.de>.
> + *
> + * This code is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + */
> +#include <common.h>
> +#include <environment.h>
> +#include <errno.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/mtd/mtd.h>
> +#include <malloc.h>
> +#include <of.h>
> +
> +struct mtdram_priv_data {
> +       struct mtd_info mtd;
> +       void *base;
> +};
> +
> +static int ram_erase(struct mtd_info *mtd, struct erase_info *instr) {

The coding style is to have the opening brace separately on a new line.

> +       memset((char *)mtd->priv + instr->addr, 0xff, instr->len);
> +       instr->state = MTD_ERASE_DONE;
> +       mtd_erase_callback(instr);
> +       return 0;
> +}
> +
> +static int ram_write(struct mtd_info *mtd, loff_t to, size_t len,
> +                               size_t *retlen, const u_char *buf) {
> +       memcpy((char*)mtd->priv + to, buf, len);
> +       *retlen = len;
> +       return 0;
> +}
> +
> +static int ram_read(struct mtd_info *mtd, loff_t from, size_t len,
> +               size_t *retlen, u_char *buf) {
> +       memcpy(buf, mtd->priv + from, len);
> +       *retlen = len;
> +       return 0;
> +}
> +
> +static int mtdram_probe(struct device_d *dev) {
> +       void __iomem *base;
> +       int device_id;
> +       struct mtd_info *mtd;
> +       struct resource *res;
> +       loff_t size;
> +       int ret = 0;
> +
> +
> +       mtd = kzalloc(sizeof(struct mtd_info), GFP_KERNEL);
> +       if (!mtd) {
> +               ret = -ENOMEM;
> +               goto nomem1;
> +       }

You could use xzalloc here and skip the return check.

> +
> +       device_id = DEVICE_ID_SINGLE;
> +       if (dev->device_node) {
> +               const char *alias = of_alias_get(dev->device_node);
> +               dev_info (dev, "is alias for %s\n", alias);
> +               if (alias)
> +                       mtd->name = xstrdup(alias);
> +       }
> +
> +       if (!mtd->name) {
> +               device_id = DEVICE_ID_DYNAMIC;
> +               mtd->name = "mtdram";
> +       }
> +
> +       dev_info(dev, "MTDRAM: probe for %s (dev_name=%s)\n",
> dev->name, mtd->name);

Your mailer wraps the lines. Can you change that? I won't be able to
apply this patch otherwise.

The driver seems a bit verbose. Can you limit the information printed in
the normal case to a single line?

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
