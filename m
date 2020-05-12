Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPIt-0000LB-1L
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:26:16 +0000
Date: Tue, 12 May 2020 09:26:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512072613.GY5877@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
 <20200511072140.29610-16-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511072140.29610-16-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 15/23] sandbox: asm: implement <asm/atomic.h>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 09:21:32AM +0200, Ahmad Fatoum wrote:
> For easier code-sharing, the UBIFS code still uses the Kernel's
> atomic accessors. Provide a sandbox <asm/atomic.h> header, so we
> can compile-test UBI under sandbox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/include/asm/atomic.h | 11 +++++++++++
>  arch/sandbox/include/asm/system.h | 14 ++++++++++++++
>  2 files changed, 25 insertions(+)
>  create mode 100644 arch/sandbox/include/asm/atomic.h
>  create mode 100644 arch/sandbox/include/asm/system.h
> 
> diff --git a/arch/sandbox/include/asm/atomic.h b/arch/sandbox/include/asm/atomic.h
> new file mode 100644
> index 000000000000..ef1043493b8f
> --- /dev/null
> +++ b/arch/sandbox/include/asm/atomic.h
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + *  Copyright (c) 2020 Ahmad Fatoum
> + */
> +#ifndef __ASM_SANDBOX_ATOMIC_H
> +#define __ASM_SANDBOX_ATOMIC_H
> +
> +#include <asm/system.h>
> +#include <asm-generic/atomic.h>
> +
> +#endif
> diff --git a/arch/sandbox/include/asm/system.h b/arch/sandbox/include/asm/system.h
> new file mode 100644
> index 000000000000..a9b99b07b9a6
> --- /dev/null
> +++ b/arch/sandbox/include/asm/system.h
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + *  Copyright (c) 2020 Ahmad Fatoum
> + */
> +#ifndef __ASM_SANDBOX_SYSTEM_H
> +#define __ASM_SANDBOX_SYSTEM_H
> +
> +#define local_irq_enable() do { } while (0)
> +#define local_irq_disable() do { } while (0)
> +#define local_save_flags(x) do { (void)x; } while (0)
> +#define local_irq_save(x) do { (void)x; } while (0)
> +#define local_irq_restore(x) do { (void)x; } while (0)

Now we have generic atomic_* functions, but they are only usable on
architectures providing local_irq_* functions, which on barebox are by
definition empty. Why not simply drop the local_irq_* functions
entirely?

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
