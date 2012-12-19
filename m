Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlIR3-0007Ma-6p
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 12:07:43 +0000
Date: Wed, 19 Dec 2012 13:07:33 +0100
From: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Message-ID: <20121219120733.GA14303@idefix.phytec.de>
References: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
 <1355840561-11552-19-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1355840561-11552-19-git-send-email-jlu@pengutronix.de>
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 18/19] arm: beaglebone: add first-stage support for
 AM335x and board
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Jan,

On Tue, 18. Dec 15:22, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

[...]
 
> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
> new file mode 100644
> index 0000000..d139e94
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/board.c
> @@ -0,0 +1,358 @@
> +/*
> + * (C) Copyright 2008
> + * Texas Instruments, <www.ti.com>
> + * Raghavendra KH <r-khandenahally@ti.com>
> + *
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
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
> + */
> +
> +/**
> + * @file
> + * @brief BeagleBone Specific Board Initialization routines
> + */
> +
> +#include <common.h>
> +#include <console.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <fs.h>
> +#include <linux/stat.h>
> +#include <environment.h>
> +#include <sizes.h>
> +#include <io.h>
> +#include <ns16550.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <mach/am33xx-silicon.h>
> +#include <mach/am33xx-clock.h>
> +#include <mach/sdrc.h>
> +#include <mach/sys_info.h>
> +#include <mach/syslib.h>
> +#include <mach/gpmc.h>
> +#include <mach/ehci.h>
> +#include <i2c/i2c.h>
> +#include <linux/err.h>
> +#include <usb/ehci.h>
> +#include <mach/xload.h>
> +#include <mach/am33xx-devices.h>
> +#include <mach/am33xx-mux.h>
> +#include <mach/cpsw.h>

This won't compile as mach/cpsw.h is not known yet.
Move this line to next patch.

Regards,
Teresa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
