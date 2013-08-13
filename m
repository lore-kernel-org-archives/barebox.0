Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9Gdx-0003Iy-Ib
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 15:36:22 +0000
Received: by mail-ee0-f45.google.com with SMTP id c50so4295587eek.4
 for <barebox@lists.infradead.org>; Tue, 13 Aug 2013 08:35:59 -0700 (PDT)
Message-ID: <520A525B.6010706@gmail.com>
Date: Tue, 13 Aug 2013 17:35:55 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
 <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/6] ARM: mvebu: introduce multi image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 08/13/13 09:26, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/boards/solidrun-cubox/Makefile     |  1 +
>   arch/arm/boards/solidrun-cubox/lowlevel.c   | 37 +++++++++++++++++++++++++++++
>   arch/arm/configs/solidrun_cubox_defconfig   |  6 ++++-
>   arch/arm/dts/Makefile                       |  1 +
>   arch/arm/mach-mvebu/Kconfig                 |  1 +
>   arch/arm/mach-mvebu/Makefile                |  2 +-
>   arch/arm/mach-mvebu/common.c                |  4 ++--
>   arch/arm/mach-mvebu/include/mach/lowlevel.h |  2 +-
>   arch/arm/mach-mvebu/lowlevel.c              |  2 +-
>   images/.gitignore                           |  2 ++
>   images/Makefile                             |  4 +++-
>   images/Makefile.mvebu                       | 26 ++++++++++++++++++++
>   scripts/Makefile.lib                        |  3 +++
>   13 files changed, 84 insertions(+), 7 deletions(-)
>   create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
>   create mode 100644 images/Makefile.mvebu
>
> diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
> index dcfc293..01c7a25 100644
> --- a/arch/arm/boards/solidrun-cubox/Makefile
> +++ b/arch/arm/boards/solidrun-cubox/Makefile
> @@ -1 +1,2 @@
>   obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
> new file mode 100644
> index 0000000..fdf5a7e
> --- /dev/null
> +++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
> @@ -0,0 +1,37 @@
> +/*
> + * Copyright (C) 2013
> + *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> + *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/lowlevel.h>
> +
> +extern char __dtb_dove_cubox_start[];
> +
> +ENTRY_FUNCTION(start_solidrun_cubox)(void)
> +{
> +	uint32_t fdt;
> +
> +	__barebox_arm_head();
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
> +
> +	mvebu_barebox_entry(fdt);
> +}

Sascha,

I have tested the series on my CuBox, so you can add my Tested-by.

If we find a naming pattern for the entry function above based on
the board name, we could also have a macro for it, e.g. rename
"start_solidrun_cubox" to "start_dove_cubox".

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
