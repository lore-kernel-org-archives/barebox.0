Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNXD-00074U-Ts
 for barebox@lists.infradead.org; Wed, 20 May 2020 12:09:21 +0000
Date: Wed, 20 May 2020 14:09:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520120918.GG11869@pengutronix.de>
References: <20200519165618.3858-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519165618.3858-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] aiodev: Replace license and copyright boilerplate by
 SPDX identfiers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

On Tue, May 19, 2020 at 06:56:18PM +0200, Uwe Kleine-K=F6nig wrote:
> This adapts all files that were identifed by licensecheck
> (https://salsa.debian.org/build-common-team/licensecheck.git) as
> licensed under the GPL and that have a (IMHO) clear copyright statement.
> =

> The advantage is that these specifiers are machine-parseable which helps
> license conformance, e.g. for packaging barebox in Debian.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/aiodev/lm75.c          | 18 +++---------------
>  drivers/aiodev/qoriq_thermal.c | 17 +++--------------
>  2 files changed, 6 insertions(+), 29 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
> index af54227e403d..8186fd2c2b97 100644
> --- a/drivers/aiodev/lm75.c
> +++ b/drivers/aiodev/lm75.c
> @@ -1,21 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 1998, 1999 Frodo Looijaard <frodol@dds.nl>
> +
>  /*
>   * lm75.c - Part of lm_sensors, Linux kernel modules for hardware
>   *	 monitoring
> - * Copyright (c) 1998, 1999  Frodo Looijaard <frodol@dds.nl>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_therma=
l.c
> index 7556fef02586..d62048ef13d6 100644
> --- a/drivers/aiodev/qoriq_thermal.c
> +++ b/drivers/aiodev/qoriq_thermal.c
> @@ -1,17 +1,6 @@
> -/*
> - * Copyright 2016 Freescale Semiconductor, Inc.
> - * Copyright 2017 NXP.
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOUT
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License=
 for
> - * more details.
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2016 Freescale Semiconductor, Inc.
> +// SPDX-FileCopyrightText: 2017 NXP
>  =

>  #include <common.h>
>  #include <init.h>
> -- =

> 2.26.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
