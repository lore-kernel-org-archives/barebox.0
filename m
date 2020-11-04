Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaDiL-0002WY-Hj
 for barebox@lists.infradead.org; Wed, 04 Nov 2020 08:00:18 +0000
Date: Wed, 4 Nov 2020 09:00:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201104080014.GZ26805@pengutronix.de>
References: <20201103114948.31021-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103114948.31021-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: boards: qemu-virt64: use SPDX-License Ids
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 03, 2020 at 12:49:47PM +0100, Rouven Czerwinski wrote:
> Cleanup while looking at the code for virt64.
> =

> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/boards/qemu-virt64/init.c          | 2 +-
>  arch/arm/boards/qemu-virt64/lowlevel.c      | 2 +-
>  arch/arm/boards/qemu-virt64/lowlevel_init.S | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/boards/qemu-virt64/init.c b/arch/arm/boards/qemu-vi=
rt64/init.c
> index 19cfcae1f0..06ae96d474 100644
> --- a/arch/arm/boards/qemu-virt64/init.c
> +++ b/arch/arm/boards/qemu-virt64/init.c
> @@ -1,7 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
>   *
> - * GPLv2 only
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/qemu-virt64/lowlevel.c b/arch/arm/boards/qem=
u-virt64/lowlevel.c
> index fcb052369a..745e364df6 100644
> --- a/arch/arm/boards/qemu-virt64/lowlevel.c
> +++ b/arch/arm/boards/qemu-virt64/lowlevel.c
> @@ -1,7 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft=
.com>
>   *
> - * GPLv2 only
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/qemu-virt64/lowlevel_init.S b/arch/arm/board=
s/qemu-virt64/lowlevel_init.S
> index 1967fadb6c..672750fa7b 100644
> --- a/arch/arm/boards/qemu-virt64/lowlevel_init.S
> +++ b/arch/arm/boards/qemu-virt64/lowlevel_init.S
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-License-Identifier: GPL-2.0+ */

https://spdx.org/licenses/ lists both GPL-2.0-or-later and GPL-2.0+, but
GPL-2.0+ is in the list of deprecated License identifiers, do we use
other lists?

We have 1056 times the former and 996 times the latter in the tree. If
anything, let's do a mass conversion, but not individual files.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
