Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8F8-0004T4-SG
 for barebox@lists.infradead.org; Tue, 19 May 2020 19:49:40 +0000
Date: Tue, 19 May 2020 21:49:36 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200519194936.n3ttkn3s7j7ksrm6@pengutronix.de>
References: <20200519163733.2836-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519163733.2836-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arch/arm/boards: Replace license and copyright
 boilerplate by SPDX identfiers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hello Andrey,

On Tue, May 19, 2020 at 06:37:33PM +0200, Uwe Kleine-K=F6nig wrote:
> This adapts all files that were identifed by licensecheck
> (https://salsa.debian.org/build-common-team/licensecheck.git) as
> licensed under the GPL.
> =

> The advantage is that these specifiers are machine-parseable which helps
> license conformance, e.g. for packaging barebox in Debian.
> =

> While touching these files also do some minor comment reformatting to
> get some uniform layout.

While going once more through this patch I noticed that there are a few
hunks that might be questionable and it would be great if you could
comment:

> diff --git a/arch/arm/boards/freescale-mx7-sabresd/board.c b/arch/arm/boa=
rds/freescale-mx7-sabresd/board.c
> index 37941efdbeb4..e41d67017fe5 100644
> --- a/arch/arm/boards/freescale-mx7-sabresd/board.c
> +++ b/arch/arm/boards/freescale-mx7-sabresd/board.c
> @@ -1,17 +1,7 @@
> -/*
> - * Copyright (C) 2017 Zodiac Inflight Innovation
> - * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2017 Zodiac Inflight Innovation
> +
> +/* Author: Andrey Smirnov <andrew.smirnov@gmail.com> */
>  =

>  #include <common.h>
>  #include <init.h>

Is this right? I.e does Zodiac hold the copyright and you are "only" the
author? Or would

	// SPDX-FileCopyrightText: 2017 Andrey Smirnov <andrew.smirnov@gmail.com>,=
 Zodiac Inflight Innovation

be more appropriate?

Same question for

	arch/arm/boards/zii-imx6q-rdu2/board.c
	arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
	arch/arm/boards/zii-vf610-dev/board.c
	arch/arm/boards/zii-vf610-dev/lowlevel.c

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
