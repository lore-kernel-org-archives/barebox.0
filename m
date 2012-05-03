Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQ0B6-0007vu-3A
 for barebox@lists.infradead.org; Thu, 03 May 2012 17:51:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 3 May 2012 19:49:55 +0200
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <1336050844-7043-4-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336050844-7043-4-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205031949.55938.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/4] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> [...]
> diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/tiny210/lowlevel.c
> new file mode 100644 
> index 0000000..3615d8a
> --- /dev/null
> +++ b/arch/arm/boards/tiny210/lowlevel.c
> @@ -0,0 +1,31 @@
> +/*
> + * Copyright (C) 2012 Alexey Galakhov
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +#include <config.h>
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/s3c-iomap.h>
> +#include <mach/s3c-clocks.h>
> +
> +void __bare_init board_init_lowlevel(void)
> +{
> +}

Why do you add an empty function?

[...]

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
