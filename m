Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZUio-0002oe-QR
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 07:57:48 +0000
Date: Mon, 2 Nov 2020 08:57:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102075745.GQ26805@pengutronix.de>
References: <20201029211404.105840-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029211404.105840-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] net: Replace license and copyright boilerplate by SPDX
 identfiers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

On Thu, Oct 29, 2020 at 10:14:04PM +0100, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert the copyright statements
> to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  net/eth.c        | 17 ++---------------
>  net/ifup.c       | 20 +++++---------------
>  net/lib.c        | 24 +++++++-----------------
>  net/net.c        | 24 +++++++-----------------
>  net/netconsole.c | 19 ++++---------------
>  net/nfs.h        | 10 ++--------
>  net/rarp.h       | 18 ++----------------
>  net/sntp.c       | 11 +----------
>  8 files changed, 30 insertions(+), 113 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/net/eth.c b/net/eth.c
> index 85110ef69585..626b35d5cc65 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -1,18 +1,5 @@
> -/*
> - * (C) Copyright 2001-2004
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
> +// SPDX-FileCopyrightText: 2001-2004 Wolfgang Denk <wd@denx.de>, DENX So=
ftware Engineering
>  =

>  #include <common.h>
>  #include <command.h>
> diff --git a/net/ifup.c b/net/ifup.c
> index 4b69777c164d..a74037939b8a 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -1,18 +1,8 @@
> -/*
> - * ifup.c - bring up network interfaces
> - *
> - * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more detaiifup.
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2014 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +
> +/* ifup.c - bring up network interfaces */
> +
>  #define pr_fmt(fmt)  "ifup: " fmt
>  =

>  #include <environment.h>
> diff --git a/net/lib.c b/net/lib.c
> index 8dc35c1e52a6..d4536441bd71 100644
> --- a/net/lib.c
> +++ b/net/lib.c
> @@ -1,24 +1,14 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2015 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +// SPDX-FileCopyrightText: 1994-2000 Neil Russell
> +// SPDX-FileCopyrightText: 2000 Roland Borde
> +// SPDX-FileCopyrightText: 2000 Paolo Scaffardi
> +// SPDX-FileCopyrightText: 2000-2002 Wolfgang Denk <wd@denx.de>
> +
>  /*
>   * net.c - barebox networking support
>   *
> - * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
>   * based on U-Boot (LiMon) code
> - *
> - * Copyright 1994 - 2000 Neil Russell.
> - * Copyright 2000 Roland Borde
> - * Copyright 2000 Paolo Scaffardi
> - * Copyright 2000-2002 Wolfgang Denk, wd@denx.de
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  =

>  #include <common.h>
> diff --git a/net/net.c b/net/net.c
> index e6ac4c68faee..4dffc1bd523a 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -1,24 +1,14 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2010 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +// SPDX-FileCopyrightText: 1994-2000 Neil Russell
> +// SPDX-FileCopyrightText: 2000 Roland Borde
> +// SPDX-FileCopyrightText: 2000 Paolo Scaffardi
> +// SPDX-FileCopyrightText: 2000-2002 Wolfgang Denk <wd@denx.de>
> +
>  /*
>   * net.c - barebox networking support
>   *
> - * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
>   * based on U-Boot (LiMon) code
> - *
> - * Copyright 1994 - 2000 Neil Russell.
> - * Copyright 2000 Roland Borde
> - * Copyright 2000 Paolo Scaffardi
> - * Copyright 2000-2002 Wolfgang Denk, wd@denx.de
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  =

>  #define pr_fmt(fmt) "net: " fmt
> diff --git a/net/netconsole.c b/net/netconsole.c
> index 0fece65a2379..43f78997b81c 100644
> --- a/net/netconsole.c
> +++ b/net/netconsole.c
> @@ -1,18 +1,7 @@
> -/*
> - * netconsole.c - network console support
> - *
> - * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2010 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +
> +/* netconsole.c - network console support */
>  =

>  #define pr_fmt(fmt) "netconsole: " fmt
>  =

> diff --git a/net/nfs.h b/net/nfs.h
> index 7c7a648e46b1..e9ac5f299af0 100644
> --- a/net/nfs.h
> +++ b/net/nfs.h
> @@ -1,11 +1,5 @@
> -/*
> - * (C) Masami Komiya <mkomiya@sonare.it> 2004
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2, or (at
> - * your option) any later version.
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2004 Masami Komiya <mkomiya@sonare.it> */
>  =

>  #ifndef __NFS_H__
>  #define __NFS_H__
> diff --git a/net/rarp.h b/net/rarp.h
> index 24659fde2141..0986b02513fb 100644
> --- a/net/rarp.h
> +++ b/net/rarp.h
> @@ -1,19 +1,5 @@
> -/*
> - * (C) Copyright 2000
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
> -
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2000 Wolfgang Denk <wd@denx.de>, DENX Softwar=
e Engineering */
>  =

>  #ifndef __RARP_H__
>  #define __RARP_H__
> diff --git a/net/sntp.c b/net/sntp.c
> index b4e6d6439c37..45449fd95b1e 100644
> --- a/net/sntp.c
> +++ b/net/sntp.c
> @@ -1,13 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; version 2.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
> - * General Public License for more details.
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
>  =

>  #include <common.h>
>  #include <asm/byteorder.h>
> -- =

> 2.28.0
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
