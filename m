Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjOOI-000453-Oi
	for barebox@lists.infradead.org; Wed, 20 Jul 2011 04:28:11 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 4B4A5FFA17D
	for <barebox@lists.infradead.org>;
	Wed, 20 Jul 2011 06:28:39 +0200 (CEST)
Date: Wed, 20 Jul 2011 06:11:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110720041118.GD15388@game.jcrosoft.org>
References: <1311111546-888-1-git-send-email-antonynpavlov@gmail.com>
	<1311111546-888-13-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311111546-888-13-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v7 13/15] MIPS: add initial D-Link DIR-320 wireless
	router support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
> new file mode 100644
> index 0000000..6e878cd
> --- /dev/null
> +++ b/arch/mips/boards/dlink-dir-320/serial.c
> @@ -0,0 +1,61 @@
> +/*
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + */
> +
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <ns16550.h>
> +#include <mach/hardware.h>
> +#include <asm/io.h>
> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +static unsigned int dir320_uart_read(unsigned long base, unsigned char reg_idx)
> +{
> +	return __raw_readb((char *)base + reg_idx);
> +}
> +
> +/** to work with the 8250 UART driver implementation we need this function */
> +static void dir320_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
> +{
> +	__raw_writeb(val, (char *)base + reg_idx);
> +}
can we drop those duplicated function with malta and other

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
