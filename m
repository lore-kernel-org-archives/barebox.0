Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYnqM-00047h-H9
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 07:29:24 +0000
Date: Fri, 29 Jun 2018 09:29:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180629072908.4z66au6jdyyehmwf@pengutronix.de>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
 <20180628073953.15384-4-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180628073953.15384-4-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 03/12] Add initial RISC-V architecture support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2018 at 10:39:44AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -0,0 +1,89 @@
> +/*
> + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <asm-generic/barebox.lds.h>
> +
> +OUTPUT_ARCH(riscv)
> +ENTRY(_start)
> +SECTIONS
> +{
> +	. = TEXT_BASE;
> +
> +	. = ALIGN(8);
> +	.text      :
> +	{
> +		_stext = .;
> +		_start = .;
> +		KEEP(*(.text_entry*))
> +		_text = .;
> +		__bare_init_start = .;
> +		*(.text_bare_init*)
> +		__bare_init_end = .;
> +		*(.text*)
> +	}
> +	BAREBOX_BARE_INIT_SIZE

Do you need these __bare_init* stuff? If not I would prefer to remove
it.

> +
> +	PRE_IMAGE

Same here.

> +static int of_riscv_init(void)
> +{
> +	struct device_node *root;
> +
> +	root = of_get_root_node();
> +	if (root)
> +		return 0;
> +
> +	root = of_unflatten_dtb(__dtb_start);
> +	if (!IS_ERR(root)) {
> +		pr_debug("using internal DTB\n");
> +		of_set_root_node(root);
> +		if (IS_ENABLED(CONFIG_OFDEVICE))
> +			of_probe();
> +	}

Can we just call of_unflatten_dtb()/of_set_root_node() from the board
code and use obj-dtb-y to include the dtb?

That way a board can specify the dtb and not the config.

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
