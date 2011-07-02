Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from b-pb-sasl-quonix.pobox.com ([208.72.237.35] helo=smtp.pobox.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qd1OC-0006TQ-Uz
	for barebox@lists.infradead.org; Sat, 02 Jul 2011 14:41:45 +0000
Message-ID: <4E0F2E23.4000801@pobox.com>
Date: Sat, 02 Jul 2011 23:41:39 +0900
From: Shinya Kuribayashi <skuribay@pobox.com>
MIME-Version: 1.0
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309317858-11861-2-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] MIPS: add Malta machine support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 6/29/11 12:24 PM, Antony Pavlov wrote:
> The machines use big-endian mode.
> Only supported peripheral is serial port.
>
> Signed-off-by: Antony Pavlov<antonynpavlov@gmail.com>
> ---
>   arch/mips/Kconfig                                |   13 ++++++++
>   arch/mips/Makefile                               |    2 +
>   arch/mips/mach-mti-malta/Kconfig                 |   20 ++++++++++++
>   arch/mips/mach-mti-malta/Makefile                |    1 +
>   arch/mips/mach-mti-malta/include/mach/hardware.h |   32 +++++++++++++++++++
>   arch/mips/mach-mti-malta/reset.c                 |   36 ++++++++++++++++++++++
>   6 files changed, 104 insertions(+), 0 deletions(-)
>   create mode 100644 arch/mips/mach-mti-malta/Kconfig
>   create mode 100644 arch/mips/mach-mti-malta/Makefile
>   create mode 100644 arch/mips/mach-mti-malta/include/mach/hardware.h
>   create mode 100644 arch/mips/mach-mti-malta/reset.c

Just mach-malta would be good?  I don't want to see two '-' hyphens.

I'm working on the ARM kernel these days, and find mach/plat-based
categorizing technique useful/promising, and this is a good opportunity
to try in this MIPS support (even if the Linux/MIPS kernel doesn't).

> diff --git a/arch/mips/mach-mti-malta/include/mach/hardware.h b/arch/mips/mach-mti-malta/include/mach/hardware.h
> new file mode 100644
> index 0000000..f476355
> --- /dev/null
> +++ b/arch/mips/mach-mti-malta/include/mach/hardware.h
> @@ -0,0 +1,32 @@
> +/*
> + * Copyright (c) 2011 Antony Pavlov<antonynpavlov@gmail.com>
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This file is part of barebox.
> + *
> + * barebox is free software: you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation, either version 3 of the License, or
> + * (at your option) any later version.

GPLv3?  I'm not sure which GPL version should be applied to barebox,
but as it's highly based on the Linux kernel technology, GPLv2 (or
later) would be the case.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
