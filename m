Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNqp-0008Ek-1H
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:46:48 +0000
Date: Wed, 22 Aug 2018 09:46:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822074635.wfst65srfuqne7l6@pengutronix.de>
References: <20180821152001.5747-1-aleksander@aleksander.es>
 <20180821152001.5747-2-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821152001.5747-2-aleksander@aleksander.es>
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
Subject: Re: [PATCH 1/4] ratp: implement i2c read/write support
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Aug 21, 2018 at 05:19:58PM +0200, Aleksander Morgado wrote:
> Introduce two new RATP commands that allow running i2c read/write
> operations, very similar in format to the already existing md/mw
> RATP commands.
> 
> The messages are defined with a fixed 16-bit long register field, but
> it will only be treated as a 16-bit address if I2C_FLAG_WIDE_ADDRESS
> is set in the message flags field. If this flag is unset, the start
> register address is assumed 8-bit long.
> 
> If the message includes the I2C_FLAG_MASTER_MODE flag, the start
> register field is ignored and a i2c master send/receive operation is
> performed.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  common/ratp/Makefile |   1 +
>  common/ratp/i2c.c    | 281 +++++++++++++++++++++++++++++++++++++++++++
>  include/ratp_bb.h    |   4 +
>  3 files changed, 286 insertions(+)
>  create mode 100644 common/ratp/i2c.c
> 
> diff --git a/common/ratp/Makefile b/common/ratp/Makefile
> index 2c6d674f6..0234b55c1 100644
> --- a/common/ratp/Makefile
> +++ b/common/ratp/Makefile
> @@ -4,3 +4,4 @@ obj-y += getenv.o
>  obj-y += md.o
>  obj-y += mw.o
>  obj-y += reset.o
> +obj-y += i2c.o
> diff --git a/common/ratp/i2c.c b/common/ratp/i2c.c
> new file mode 100644
> index 000000000..b8d055b67
> --- /dev/null
> +++ b/common/ratp/i2c.c
> @@ -0,0 +1,281 @@
> +/*
> + * Copyright (c) 2011-2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <ratp_bb.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +
> +/* NOTE:
> + *  - Fixed-size fields (e.g. integers) are given just after the header.
> + *  - Variable-length fields are stored inside the buffer[] and their position
> + *    within the buffer[] and their size are given as fixed-sized fields after
> + *    the header.
> + *  The message may be extended at any time keeping backwards compatibility,
> + *  as the position of the buffer[] is given by the buffer_offset field. i.e.
> + *  increasing the buffer_offset field we can extend the fixed-sized section
> + *  to add more fields.
> + */
> +
> +#define I2C_FLAG_WIDE_ADDRESS (1 << 0)
> +#define I2C_FLAG_MASTER_MODE  (1 << 1)
> +
> +struct ratp_bb_i2c_read_request {
> +	struct ratp_bb header;
> +	uint16_t buffer_offset;
> +	uint8_t  bus;
> +	uint8_t  addr;

I wonder how we see the RATP support. If it's for adhoc debugging then
bus/addr is fine. The caller should have no expectations that the bus
number is constant though. Likewise for the address which might change
across different board revisions.

Should we have support for resolving names, which could be provided by
aliases in dt?

We could still add name resolving support later as a separate call, I
just thought that now is the time to think how we proceed.

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
