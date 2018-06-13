Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT0td-0003wi-Lg
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 08:12:51 +0000
Date: Wed, 13 Jun 2018 10:12:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613081237.mcer7kopptxx4t57@pengutronix.de>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
 <20180612205310.25745-32-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180612205310.25745-32-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v5 31/54] Port <linux/iopoll.h> from U-Boot
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 12, 2018 at 01:52:47PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/linux/iopoll.h | 69 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 include/linux/iopoll.h
> 
> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> new file mode 100644
> index 000000000..6e8a6fd71
> --- /dev/null
> +++ b/include/linux/iopoll.h
> @@ -0,0 +1,69 @@
> +/*
> + * Copyright (c) 2012-2014 The Linux Foundation. All rights reserved.
> + *
> + * SPDX-License-Identifier:	GPL-2.0
> + */
> +
> +#ifndef _LINUX_IOPOLL_H
> +#define _LINUX_IOPOLL_H
> +
> +#include <errno.h>
> +#include <io.h>
> +#include <clock.h>
> +
> +/**
> + * readx_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
> + * @op: accessor function (takes @addr as its only argument)
> + * @addr: Address to poll
> + * @val: Variable to read the value into
> + * @cond: Break condition (usually involving @val)
> + * @timeout_ns: Timeout in ns, 0 means never timeout

nanoseconds here,

> + *
> + * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
> + * case, the last read value at @addr is stored in @val.
> + *
> + * When available, you'll probably want to use one of the specialized
> + * macros defined below rather than this macro directly.
> + */
> +#define readx_poll_timeout(op, addr, val, cond, timeout_ns)	\

and here,

> +({ \
> +	uint64_t start = get_time_ns(); \
> +	for (;;) { \
> +		(val) = op(addr); \
> +		if (cond) \
> +			break; \
> +		if (timeout_ns && \
> +		    is_timeout(start, (timeout_ns))) {	\
> +			(val) = op(addr); \
> +			break; \
> +		} \
> +	} \
> +	(cond) ? 0 : -ETIMEDOUT; \
> +})
> +
> +
> +#define readb_poll_timeout(addr, val, cond, timeout_us) \
> +	readx_poll_timeout(readb, addr, val, cond, timeout_us)

but microseconds here?

We should be consistent to the kernel API here, it's too easy to just
copy Linux code without noticing that the units are different.

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
