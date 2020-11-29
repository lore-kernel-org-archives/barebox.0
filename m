Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjSzZ-0004nI-Ja
 for barebox@lists.infradead.org; Sun, 29 Nov 2020 20:08:18 +0000
Date: Sun, 29 Nov 2020 21:08:15 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20201129200815.hrisxvxhhfgftldo@pengutronix.de>
References: <20201126175553.16934-1-a.fatoum@pengutronix.de>
 <20201126175553.16934-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126175553.16934-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 2/4] common: dummy_malloc: remove unintended GPL2
 eCos-exception-2.0
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, ukl@pengutronix.de

On Thu, Nov 26, 2020 at 06:55:51PM +0100, Ahmad Fatoum wrote:
> Apparently, the file should be GPL-2.0-only without exceptions:
> 
> On 24.11.20 09:44, Sascha Hauer wrote[1]:
> > This looks like I accidently copied the wrong header. I don't think I
> > did this on purpose. It doesn't make much sense to me when compiling
> > against dummy malloc is different than compiling against tlsf malloc
> > or dlmalloc.
> 
> Ase dropping exceptions is no relicense, it's ok to do here without
> acknowledgement from all authors. Do so.

I don't understand this reasoning. The exception allowed someone to link
this file with non-GPL code, and by dropping this exception, this
possibility is no longer allowed, so there is a change in license terms.

The only two other authors of this file are Andrey and Jean-Christophe,
hereby CCed.

 - Roland
 
> [1]: <20201124084434.GC14718@pengutronix.de>
> 
> Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2: new patch
> ---
>  common/dummy_malloc.c | 21 +--------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
> 
> diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
> index 0120d9be2e85..d99b5059cf91 100644
> --- a/common/dummy_malloc.c
> +++ b/common/dummy_malloc.c
> @@ -1,25 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
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
>  #include <common.h>
>  #include <malloc.h>
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
