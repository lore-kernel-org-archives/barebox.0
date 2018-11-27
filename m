Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRYGg-0004us-81
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 07:58:51 +0000
Date: Tue, 27 Nov 2018 08:58:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181127075836.wlgxpyi47ej7ut7i@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
 <20181127073714.16472-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181127073714.16472-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 02/10] MIPS: add arch/mips/lib/pbl.lds.S
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 27, 2018 at 08:37:06AM +0100, Oleksij Rempel wrote:
> we need it for multiimage support.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/lib/pbl.lds.S | 54 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 arch/mips/lib/pbl.lds.S
> 
> diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
> new file mode 100644
> index 0000000000..51dd088d51
> --- /dev/null
> +++ b/arch/mips/lib/pbl.lds.S
> @@ -0,0 +1,54 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * (C) Copyright 2018 Oleksij Rempel <o.rempel@pengutronix.de>, Pengutronix
> + * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + */
> +
> +#include <asm-generic/barebox.lds.h>
> +#include <asm-generic/memory_layout.h>
> +
> +OUTPUT_ARCH("mips")
> +ENTRY(pbl_start)

It seems this is not used.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
