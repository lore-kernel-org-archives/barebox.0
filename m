Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfN0D-0000uc-V9
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 10:47:00 +0000
Date: Fri, 4 Jan 2019 11:46:55 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190104104655.xgwbijdqbay2pq5u@pengutronix.de>
References: <20181219080403.13737-1-shc_work@mail.ru>
 <20181219080403.13737-2-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181219080403.13737-2-shc_work@mail.ru>
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
Subject: Re: [PATCH 02/10] serial: clps711x: Switch to SPDX identifier
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Wed, Dec 19, 2018 at 11:03:55AM +0300, Alexander Shiyan wrote:
> Adopt the SPDX license identifier headers to ease license compliance
> management.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/serial/serial_clps711x.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
> index 9a9ae24c0..c21ca6510 100644
> --- a/drivers/serial/serial_clps711x.c
> +++ b/drivers/serial/serial_clps711x.c
> @@ -1,13 +1,5 @@
> -/*
> - * Simple CLPS711X serial driver
> - *
> - * (C) Copyright 2012-2014 Alexander Shiyan <shc_work@mail.ru>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - */
> +// SPDX-License-Identifier: GPL-2.0+
> +/* Author: Alexander Shiyan <shc_work@mail.ru> */

Your removed the "Copyright" here and replaced it with "Author", but in
some jurisdictions copyright and authorship are actually different
things, and most automated license compliance tools only look for the
string "Copyright", so your change will probably mean that your name
will not be picked up as copyright. Was this change made deliberately?

Same goes for "[PATCH 06/10] gpio: clps711x: Switch to SPDX identifier".

 - Roland

>  
>  #include <common.h>
>  #include <malloc.h>
> -- 
> 2.13.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
