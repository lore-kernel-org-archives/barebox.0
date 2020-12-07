Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmAjZ-0003If-4e
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 07:14:59 +0000
Date: Mon, 7 Dec 2020 08:14:55 +0100
Message-ID: <20201207071455.GD3977@pengutronix.de>
References: <20201202115209.3774665-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202115209.3774665-1-u.kleine-koenig@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] arm/lib: Replace license and copyright boilerplate by
 SPDX identifiers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

On Wed, Dec 02, 2020 at 12:52:09PM +0100, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert the copyright statements
> to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/lib/pbl.lds.S            | 17 +++--------------
>  arch/arm/lib32/armlinux.c         | 20 +++-----------------
>  arch/arm/lib32/barebox.lds.S      | 18 ++----------------
>  arch/arm/lib32/copy_template.S    | 15 +++++----------
>  arch/arm/lib32/div0.c             | 18 +++---------------
>  arch/arm/lib32/findbit.S          |  9 +++------
>  arch/arm/lib32/io-readsb.S        |  9 +++------
>  arch/arm/lib32/io-readsl.S        | 11 ++++-------
>  arch/arm/lib32/io-readsw-armv4.S  | 11 ++++-------
>  arch/arm/lib32/io-writesb.S       | 11 ++++-------
>  arch/arm/lib32/io-writesl.S       | 11 ++++-------
>  arch/arm/lib32/io-writesw-armv4.S | 11 ++++-------
>  arch/arm/lib32/memcpy.S           | 13 ++++---------
>  arch/arm/lib32/memset.S           | 14 +++++---------
>  arch/arm/lib32/module.c           | 13 +++++--------
>  arch/arm/lib32/semihosting-trap.S | 14 +++-----------
>  arch/arm/lib32/semihosting.c      | 17 ++++-------------
>  17 files changed, 63 insertions(+), 169 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index 55ff4e1f7ef3..0a0fb8b5ac13 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -1,17 +1,6 @@
> -/*
> - * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2012 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix */
> +
>  #include <linux/sizes.h>
>  #include <asm-generic/barebox.lds.h>
>  #include <asm-generic/memory_layout.h>
> diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
> index 1cb9fd2e51af..6cb7d4b5f360 100644
> --- a/arch/arm/lib32/armlinux.c
> +++ b/arch/arm/lib32/armlinux.c
> @@ -1,20 +1,6 @@
> -/*
> - * (C) Copyright 2002
> - * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> - * Marius Groeger <mgroeger@sysgo.de>
> - *
> - * Copyright (C) 2001  Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> - * GNU General Public License for more details.
> - */
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2002 Sysgo Real-Time Solutions GmbH (http://w=
ww.elinos.com, Marius Groeger <mgroeger@sysgo.de>)
> +// SPDX-FileCopyrightText: 2001 Erik Mouw <J.A.K.Mouw@its.tudelft.nl>
>  =

>  #include <boot.h>
>  #include <common.h>
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index 54d9b3e38152..77a5c525c5ae 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -1,19 +1,5 @@
> -/*
> - * (C) Copyright 2000-2004
> - * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
> - *
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2000-2004 Wolfgang Denk <wd@denx.de>, DENX So=
ftware Engineering */
>  =

>  #include <asm-generic/barebox.lds.h>
>  #include <asm/secure.h>
> diff --git a/arch/arm/lib32/copy_template.S b/arch/arm/lib32/copy_templat=
e.S
> index d8eb06328a58..f66cd6e66745 100644
> --- a/arch/arm/lib32/copy_template.S
> +++ b/arch/arm/lib32/copy_template.S
> @@ -1,15 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2005 MontaVista Software, Inc (Nicolas Pitre)
> +
>  /*
> - *  linux/arch/arm/lib/copy_template.s
> - *
> - *  Code template for optimized memory copy functions
> - *
> - *  Author:	Nicolas Pitre
> - *  Created:	Sep 28, 2005
> - *  Copyright:	MontaVista Software, Inc.
> + * linux/arch/arm/lib/copy_template.s
>   *
> - *  This program is free software; you can redistribute it and/or modify
> - *  it under the terms of the GNU General Public License version 2 as
> - *  published by the Free Software Foundation.
> + * Code template for optimized memory copy functions
>   */
>  =

>  /*
> diff --git a/arch/arm/lib32/div0.c b/arch/arm/lib32/div0.c
> index 46f6452419f8..56ecba750c93 100644
> --- a/arch/arm/lib32/div0.c
> +++ b/arch/arm/lib32/div0.c
> @@ -1,18 +1,6 @@
> -/*
> - * (C) Copyright 2002
> - * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2002 Wolfgang Denk <wd@denx.de>, DENX Softwar=
e Engineering
> +
>  #include <common.h>
>  =

>  extern void __div0(void);
> diff --git a/arch/arm/lib32/findbit.S b/arch/arm/lib32/findbit.S
> index ef4caff1add8..82a0f34dc2bf 100644
> --- a/arch/arm/lib32/findbit.S
> +++ b/arch/arm/lib32/findbit.S
> @@ -1,13 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
>   * Originally from Linux kernel
>   *  arch/arm/lib/findbit.S
>   *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
>   * 16th March 2001 - John Ripley <jripley@sonicblue.com>
>   *   Fixed so that "size" is an exclusive not an inclusive quantity.
>   *   All users of these functions expect exclusive sizes, and may
> diff --git a/arch/arm/lib32/io-readsb.S b/arch/arm/lib32/io-readsb.S
> index 963c45517568..f853c48021c6 100644
> --- a/arch/arm/lib32/io-readsb.S
> +++ b/arch/arm/lib32/io-readsb.S
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
>   *  linux/arch/arm/lib/io-readsb.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/io-readsl.S b/arch/arm/lib32/io-readsl.S
> index 47a29744e91c..bb8b96ded00e 100644
> --- a/arch/arm/lib32/io-readsl.S
> +++ b/arch/arm/lib32/io-readsl.S
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
> - *  linux/arch/arm/lib/io-readsl.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * linux/arch/arm/lib/io-readsl.S
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/io-readsw-armv4.S b/arch/arm/lib32/io-readsw-=
armv4.S
> index f5b34a34792f..25f2778860bc 100644
> --- a/arch/arm/lib32/io-readsw-armv4.S
> +++ b/arch/arm/lib32/io-readsw-armv4.S
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
> - *  linux/arch/arm/lib/io-readsw-armv4.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * linux/arch/arm/lib/io-readsw-armv4.S
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/io-writesb.S b/arch/arm/lib32/io-writesb.S
> index 1ab8e47cb4e4..313839bff675 100644
> --- a/arch/arm/lib32/io-writesb.S
> +++ b/arch/arm/lib32/io-writesb.S
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
> - *  linux/arch/arm/lib/io-writesb.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * linux/arch/arm/lib/io-writesb.S
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/io-writesl.S b/arch/arm/lib32/io-writesl.S
> index 8a3bcd6456c4..d9a29d915376 100644
> --- a/arch/arm/lib32/io-writesl.S
> +++ b/arch/arm/lib32/io-writesl.S
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
> - *  linux/arch/arm/lib/io-writesl.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * linux/arch/arm/lib/io-writesl.S
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/io-writesw-armv4.S b/arch/arm/lib32/io-writes=
w-armv4.S
> index 9e8308dd775e..5cfa74356cd9 100644
> --- a/arch/arm/lib32/io-writesw-armv4.S
> +++ b/arch/arm/lib32/io-writesw-armv4.S
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
> - *  linux/arch/arm/lib/io-writesw-armv4.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * linux/arch/arm/lib/io-writesw-armv4.S
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
> index 0fcdaa88e668..d40296e4bf62 100644
> --- a/arch/arm/lib32/memcpy.S
> +++ b/arch/arm/lib32/memcpy.S
> @@ -1,13 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2005 MontaVista Software, Inc (Nicolas Pitre)
> +
>  /*
> - *  linux/arch/arm/lib/memcpy.S
> - *
> - *  Author:	Nicolas Pitre
> - *  Created:	Sep 28, 2005
> - *  Copyright:	MontaVista Software, Inc.
> - *
> - *  This program is free software; you can redistribute it and/or modify
> - *  it under the terms of the GNU General Public License version 2 as
> - *  published by the Free Software Foundation.
> + * linux/arch/arm/lib/memcpy.S
>   */
>  =

>  #include <linux/linkage.h>
> diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
> index 6079dd89f6d4..4ba74e0c6c72 100644
> --- a/arch/arm/lib32/memset.S
> +++ b/arch/arm/lib32/memset.S
> @@ -1,13 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 1995-2000 Russell King */
> +
>  /*
> - *  linux/arch/arm/lib/memset.S
> - *
> - *  Copyright (C) 1995-2000 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> - *  ASM optimised string functions
> + * linux/arch/arm/lib/memset.S
> + * ASM optimised string functions
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> diff --git a/arch/arm/lib32/module.c b/arch/arm/lib32/module.c
> index 3ded9896b745..5073675180d4 100644
> --- a/arch/arm/lib32/module.c
> +++ b/arch/arm/lib32/module.c
> @@ -1,13 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2002 Russell King
> +
>  /*
> - *  linux/arch/arm/kernel/module.c
> - *
> - *  Copyright (C) 2002 Russell King.
> - *  Modified for nommu by Hyok S. Choi
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * linux/arch/arm/kernel/module.c
>   *
> + * Modified for nommu by Hyok S. Choi
>   * Module allocation method suggested by Andi Kleen.
>   */
>  =

> diff --git a/arch/arm/lib32/semihosting-trap.S b/arch/arm/lib32/semihosti=
ng-trap.S
> index 9e40ebfe2163..f7960d7cea96 100644
> --- a/arch/arm/lib32/semihosting-trap.S
> +++ b/arch/arm/lib32/semihosting-trap.S
> @@ -1,18 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2015 Zodiac Inflight Innovations */
> +
>  /*
>   * semihosting-trap.S -- Assembly code needed to make a semihosting call
>   *
> - * Copyright (c) 2015 Zodiac Inflight Innovations
>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> - *
> - * This software is licensed under the terms of the GNU General Public
> - * License version 2, as published by the Free Software Foundation, and
> - * may be copied, distributed, and modified under those terms.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> - * GNU General Public License for more details.
> - *
>   */
>  =

>  #include <linux/linkage.h>
> diff --git a/arch/arm/lib32/semihosting.c b/arch/arm/lib32/semihosting.c
> index 9fc3b6b62c78..57b412e08ded 100644
> --- a/arch/arm/lib32/semihosting.c
> +++ b/arch/arm/lib32/semihosting.c
> @@ -1,21 +1,12 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2015 Zodiac Inflight Innovations
> +// SPDX-FileCopyrightText: 2014 Broadcom Corporation
> +
>  /*
>   * semihosting.c -- ARM Semihoting API implementation
>   *
> - * Copyright (c) 2015 Zodiac Inflight Innovations
>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> - *
>   * based on a smiliar code from U-Boot
> - * Copyright (c) 2014 Broadcom Corporation
> - *
> - * This software is licensed under the terms of the GNU General Public
> - * License version 2, as published by the Free Software Foundation, and
> - * may be copied, distributed, and modified under those terms.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> - * GNU General Public License for more details.
> - *
>   */
>  =

>  #include <common.h>
> -- =

> 2.29.2
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
