Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVV6j-0003xC-Je
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:01:43 +0000
Date: Mon, 4 May 2020 09:01:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504070140.GQ5877@pengutronix.de>
References: <20200430090011.14078-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430090011.14078-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] arm: zylonite: drop empty header
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 11:00:11AM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/zylonite/board.c    |  2 --
>  arch/arm/boards/zylonite/zylonite.h | 19 -------------------
>  2 files changed, 21 deletions(-)
>  delete mode 100644 arch/arm/boards/zylonite/zylonite.h

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/=
board.c
> index 2f2627057146..e90e7dfdb838 100644
> --- a/arch/arm/boards/zylonite/board.c
> +++ b/arch/arm/boards/zylonite/board.c
> @@ -38,8 +38,6 @@
>  #include <asm/mmu.h>
>  #include <generated/mach-types.h>
>  =

> -#include "zylonite.h"
> -
>  static struct smc91c111_pdata smsc91x_pdata;
>  static struct mrvl_nand_platform_data nand_pdata =3D {
>  	.keep_config =3D 0,
> diff --git a/arch/arm/boards/zylonite/zylonite.h b/arch/arm/boards/zyloni=
te/zylonite.h
> deleted file mode 100644
> index 4a0fb90fe9ca..000000000000
> --- a/arch/arm/boards/zylonite/zylonite.h
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -/*
> - * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
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
> -#ifndef _ZYLONITE_H_
> -#define _ZYLONITE_H_
> -
> -
> -#endif /* _ZYLONITE_H */
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
