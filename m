Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTwC-0005mw-03
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:44:37 +0000
Date: Tue, 24 Nov 2020 09:44:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201124084434.GC14718@pengutronix.de>
References: <20201123160128.15947-1-a.fatoum@pengutronix.de>
 <20201123160128.15947-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201123160128.15947-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/3] LICENSES: exceptions: factor out eCos-exception-2.0
 for GPL
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 23, 2020 at 05:01:27PM +0100, Ahmad Fatoum wrote:
> We have code imported from eCos that's licensed with this exception.
> Replace instances of the exceptions with a SPDX-License-Identifier
> referencing the exception in our LICENSES directory.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  LICENSES/exceptions/eCos-exception-2.0 | 13 +++++++++++++
>  common/dummy_malloc.c                  | 21 +--------------------
>  drivers/mtd/nand/nand_ecc.c            | 22 +---------------------
>  drivers/serial/arm_dcc.c               | 21 +--------------------
>  4 files changed, 16 insertions(+), 61 deletions(-)
>  create mode 100644 LICENSES/exceptions/eCos-exception-2.0
> 
> diff --git a/LICENSES/exceptions/eCos-exception-2.0 b/LICENSES/exceptions/eCos-exception-2.0
> new file mode 100644
> index 000000000000..291103666f10
> --- /dev/null
> +++ b/LICENSES/exceptions/eCos-exception-2.0
> @@ -0,0 +1,13 @@
> +SPDX-Exception-Identifier: eCos-exception-2.0
> +SPDX-URL: https://spdx.org/licenses/eCos-exception-2.0.html
> +SPDX-Licenses: GPL-2.0-only, GPL-2.0-or-later, GPL-2.0, GPL-2.0+
> +License-Text:
> +  As a special exception, if other files instantiate templates or use macros or
> +  inline functions from this file, or you compile this file and link it with
> +  other works to produce a work based on this file, this file does not by itself
> +  cause the resulting work to be covered by the GNU General Public License.
> +  However the source code for this file must still be made available in
> +  accordance with section (3) of the GNU General Public License.
> +
> +  This exception does not invalidate any other reasons why a work based on this
> +  file might be covered by the GNU General Public License.
> diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
> index 0120d9be2e85..ed74bd2f2302 100644
> --- a/common/dummy_malloc.c
> +++ b/common/dummy_malloc.c
> @@ -1,25 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only WITH eCos-exception-2.0 */
>  /*
>   * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - * As a special exception, if other files instantiate templates or use macros
> - * or inline functions from this file, or you compile this file and link it
> - * with other works to produce a work based on this file, this file does not
> - * by itself cause the resulting work to be covered by the GNU General Public
> - * License. However the source code for this file must still be made available
> - * in accordance with section (3) of the GNU General Public License.
> -
> - * This exception does not invalidate any other reasons why a work based on
> - * this file might be covered by the GNU General Public License.
>   */

This looks like I accidently copied the wrong header. I don't think I
did this on purpose. It doesn't make much sense to me when compiling
against dummy malloc is different than compiling against tlsf malloc or
dlmalloc.

>  #include <common.h>
>  #include <malloc.h>
> diff --git a/drivers/mtd/nand/nand_ecc.c b/drivers/mtd/nand/nand_ecc.c
> index fd6ad7edc8e5..741282093df9 100644
> --- a/drivers/mtd/nand/nand_ecc.c
> +++ b/drivers/mtd/nand/nand_ecc.c

I'll drop this hunk, it's gone with the recent NAND layer update.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
