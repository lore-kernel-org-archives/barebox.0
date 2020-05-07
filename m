Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgFY-0004aC-7L
 for barebox@lists.infradead.org; Thu, 07 May 2020 13:07:44 +0000
Date: Thu, 7 May 2020 15:07:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200507130737.GD5877@pengutronix.de>
References: <20200505123610.11307-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505123610.11307-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: dlink-dir-320: remove useless board file
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 05, 2020 at 03:36:10PM +0300, Antony Pavlov wrote:
> The board file calls only barebox_set_hostname().
> Since we can extract host name from devicetree,
> we can drop board file.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boards/dlink-dir-320/Makefile |  1 -
>  arch/mips/boards/dlink-dir-320/board.c  | 15 ---------------
>  2 files changed, 16 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
> index 01c7a259e9..b08c4a93ca 100644
> --- a/arch/mips/boards/dlink-dir-320/Makefile
> +++ b/arch/mips/boards/dlink-dir-320/Makefile
> @@ -1,2 +1 @@
> -obj-y += board.o
>  lwl-y += lowlevel.o
> diff --git a/arch/mips/boards/dlink-dir-320/board.c b/arch/mips/boards/dlink-dir-320/board.c
> deleted file mode 100644
> index b75812cefe..0000000000
> --- a/arch/mips/boards/dlink-dir-320/board.c
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) 2011, 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - */
> -
> -#include <common.h>
> -#include <init.h>
> -
> -static int dir320_console_init(void)
> -{
> -	barebox_set_hostname("dir320");
> -
> -	return 0;
> -}
> -console_initcall(dir320_console_init);
> -- 
> 2.25.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
