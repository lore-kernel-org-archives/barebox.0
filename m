Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itoFZ-00065J-IC
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 07:47:06 +0000
Date: Tue, 21 Jan 2020 08:46:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200121074659.edpo5mehazotx6ls@pengutronix.de>
References: <20200120085647.19784-1-r.czerwinski@pengutronix.de>
 <20200120085647.19784-2-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120085647.19784-2-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2 2/5] ARM: import setjmp implementation from U-Boot
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 20, 2020 at 09:56:45AM +0100, Rouven Czerwinski wrote:
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/include/asm/setjmp.h | 29 ++++++++++++++++++++++++++++
>  arch/arm/lib32/setjmp.S       | 36 +++++++++++++++++++++++++++++++++++
>  2 files changed, 65 insertions(+)
>  create mode 100644 arch/arm/include/asm/setjmp.h
>  create mode 100644 arch/arm/lib32/setjmp.S
> 
> diff --git a/arch/arm/include/asm/setjmp.h b/arch/arm/include/asm/setjmp.h
> new file mode 100644
> index 0000000000..62bac613d6
> --- /dev/null
> +++ b/arch/arm/include/asm/setjmp.h
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
> + * (C) Copyright 2016 Alexander Graf <agraf@suse.de>
> + */
> +
> +#ifndef _SETJMP_H_
> +#define _SETJMP_H_	1
> +
> +#include <asm/types.h>
> +
> +/*
> + * This really should be opaque, but the EFI implementation wrongly
> + * assumes that a 'struct jmp_buf_data' is defined.
> + */
> +struct jmp_buf_data {
> +#if defined(__aarch64__)
> +	u64  regs[13];
> +#else
> +	u32  regs[10];  /* r4-r9, sl, fp, sp, lr */
> +#endif
> +};
> +
> +typedef struct jmp_buf_data jmp_buf[1];
> +
> +int setjmp(jmp_buf jmp);
> +void longjmp(jmp_buf jmp, int ret);
> +
> +#endif /* _SETJMP_H_ */
> diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S

While you are at it please add arch/arm/lib64/setjmp.S as well. You can
copy it directly from U-Boot.

This patch should also add setjmp.o to the Makefiles. In patch 3/5
you add:

pbl-$(CONFIG_PBL_OPTEE)        += setjmp.o

How does a potential second user select setjmp? You can instead either
add a CONFIG_SETJMP symbol which you select from CONFIG_PBL_OPTEE or
just do a obj-pbl-y += setjmp.o. In this case it's fine to not add a new
symbol for it.

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
