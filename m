Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHmo8-0003ey-36
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 06:47:41 +0000
Date: Tue, 28 Jun 2016 08:47:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160628064717.GJ20657@pengutronix.de>
References: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
 <1466771041-89803-4-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466771041-89803-4-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v3 03/14] arm: introduce lib64 for arm64 related stuff
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 24, 2016 at 02:23:50PM +0200, Raphael Poggi wrote:
> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/lib64/Makefile        |  10 +
>  arch/arm/lib64/armlinux.c      | 104 ++++++++
>  arch/arm/lib64/asm-offsets.c   |  16 ++
>  arch/arm/lib64/barebox.lds.S   | 125 +++++++++
>  arch/arm/lib64/bootm.c         | 572 +++++++++++++++++++++++++++++++++++++++++
>  arch/arm/lib64/copy_template.S | 192 ++++++++++++++
>  arch/arm/lib64/div0.c          |  27 ++
>  arch/arm/lib64/memcpy.S        |  74 ++++++
>  arch/arm/lib64/memset.S        | 215 ++++++++++++++++
>  9 files changed, 1335 insertions(+)
>  create mode 100644 arch/arm/lib64/Makefile
>  create mode 100644 arch/arm/lib64/armlinux.c
>  create mode 100644 arch/arm/lib64/asm-offsets.c
>  create mode 100644 arch/arm/lib64/barebox.lds.S
>  create mode 100644 arch/arm/lib64/bootm.c
>  create mode 100644 arch/arm/lib64/copy_template.S
>  create mode 100644 arch/arm/lib64/div0.c
>  create mode 100644 arch/arm/lib64/memcpy.S
>  create mode 100644 arch/arm/lib64/memset.S
> 
> diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
> new file mode 100644
> index 0000000..a424293
> --- /dev/null
> +++ b/arch/arm/lib64/Makefile
> @@ -0,0 +1,10 @@
> +obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
> +obj-$(CONFIG_BOOTM)	+= bootm.o
> +obj-y	+= div0.o
> +obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
> +obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
> +extra-y += barebox.lds
> +
> +pbl-y	+= lib1funcs.o
> +pbl-y	+= ashldi3.o
> +pbl-y	+= div0.o
> diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
> new file mode 100644
> index 0000000..c70e079
> --- /dev/null
> +++ b/arch/arm/lib64/armlinux.c
> @@ -0,0 +1,104 @@
> +/*
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Marius Groeger <mgroeger@sysgo.de>
> + *
> + * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <boot.h>
> +#include <common.h>
> +#include <command.h>
> +#include <driver.h>
> +#include <environment.h>
> +#include <image.h>
> +#include <init.h>
> +#include <fs.h>
> +#include <linux/list.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <memory.h>
> +#include <of.h>
> +#include <magicvar.h>
> +
> +#include <asm/byteorder.h>
> +#include <asm/setup.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/armlinux.h>
> +#include <asm/system.h>
> +
> +static void *armlinux_bootparams = NULL;
> +
> +static int armlinux_architecture;
> +static u32 armlinux_system_rev;
> +static u64 armlinux_system_serial;
> +
> +BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
> +BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
> +BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
> +
> +void armlinux_set_architecture(int architecture)
> +{
> +	export_env_ull("armlinux_architecture", architecture);
> +	armlinux_architecture = architecture;
> +}
> +
> +int armlinux_get_architecture(void)
> +{
> +	getenv_uint("armlinux_architecture", &armlinux_architecture);
> +
> +	return armlinux_architecture;
> +}
> +
> +void armlinux_set_revision(unsigned int rev)
> +{
> +	export_env_ull("armlinux_system_rev", rev);
> +	armlinux_system_rev = rev;
> +}
> +
> +unsigned int armlinux_get_revision(void)
> +{
> +	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
> +
> +	return armlinux_system_rev;
> +}
> +
> +void armlinux_set_serial(u64 serial)
> +{
> +	export_env_ull("armlinux_system_serial", serial);
> +	armlinux_system_serial = serial;
> +}
> +
> +u64 armlinux_get_serial(void)
> +{
> +	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
> +
> +	return armlinux_system_serial;
> +}
> +
> +void armlinux_set_bootparams(void *params)
> +{
> +	armlinux_bootparams = params;
> +}

All of the above is not needed. Sorry, it seems I overlooked this last
time.

> diff --git a/arch/arm/lib64/bootm.c b/arch/arm/lib64/bootm.c

I still think this file should not be here. You can always copy/modify
it from the arm32 bootm.c once you need it, but at the moment this file
is the reason this patch can't be applied. I'd really like to
review/apply a "arm64: Add bootm code" patch once it's ready.

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
