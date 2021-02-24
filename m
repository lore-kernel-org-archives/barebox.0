Delivery-date: Wed, 24 Feb 2021 09:55:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpxd-0004hO-Sm
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:55:57 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpxc-0000Ap-Qy
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:55:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D9JQe1SkWxods8oaa2JrTPCqlk4ImjYqBy4xoYOrZxE=; b=DPfqkUTQjynNwo/ehSPYyf9dc
	yEb1sMINNVeWFz95pZa6fQpcMJmzv5K8hg/XRew01xj93BvArSpxd8b+MHmjObvuPx3uh+Lz8+SQx
	B163yoTAp4saV7edqBmo2Ew0/qVOobFJDqrDLcN3TenLDfvs2X8S/OGDxAcaHuTpylTQheoecePB8
	PygtCqvGIXh1N+6SYid6+AqqO54HEJdGxTLUvE/OJh4YRHmBgXNSQ42npKa4U2e9tw3SbqQmwtWKp
	581TX+OtNZOhZHGdCrxRP1oJF5I3/UOIdVXLmOb6KRjd5nvQZQvoznOdBBhZyzKr/f0LH8/k4U5EC
	CG2zKzLaA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpwR-0007Uv-2L; Wed, 24 Feb 2021 08:54:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpwM-0007Tj-O8
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:54:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpwL-0008NL-Cw; Wed, 24 Feb 2021 09:54:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpwL-0006cU-44; Wed, 24 Feb 2021 09:54:37 +0100
Date: Wed, 24 Feb 2021 09:54:37 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20210224085437.GK5549@pengutronix.de>
References: <20210223172851.68579-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210223172851.68579-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:54:26 up 6 days, 12:18, 61 users, load average: 0.16, 0.18, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_035438_908508_86FC4E65 
X-CRM114-Status: GOOD (  23.60  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: davinci: Replace license and copyright boilerplate
 by SPDX identifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 23, 2021 at 06:28:51PM +0100, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert the copyright statements
> to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-davinci/include/mach/debug_ll.h | 17 ++---------------
>  arch/arm/mach-davinci/include/mach/hardware.h |  8 +++-----
>  arch/arm/mach-davinci/include/mach/serial.h   |  8 +++-----
>  arch/arm/mach-davinci/include/mach/time.h     |  8 +++-----
>  arch/arm/mach-davinci/time.c                  |  8 +++-----
>  5 files changed, 14 insertions(+), 35 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-davinci/include/mach/debug_ll.h b/arch/arm/mac=
h-davinci/include/mach/debug_ll.h
> index d509e849f39d..60a8d2a5f184 100644
> --- a/arch/arm/mach-davinci/include/mach/debug_ll.h
> +++ b/arch/arm/mach-davinci/include/mach/debug_ll.h
> @@ -1,18 +1,5 @@
> -/*
> - * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com> =
*/
>  =

>  /** @file
>   *  This File contains declaration for early output support
> diff --git a/arch/arm/mach-davinci/include/mach/hardware.h b/arch/arm/mac=
h-davinci/include/mach/hardware.h
> index ea9f48184404..8ab824800e0c 100644
> --- a/arch/arm/mach-davinci/include/mach/hardware.h
> +++ b/arch/arm/mach-davinci/include/mach/hardware.h
> @@ -1,12 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2007 Deep Root Systems, LLC. */
> +
>  /*
>   * Hardware definitions common to all DaVinci family processors
>   *
>   * Author: Kevin Hilman, Deep Root Systems, LLC
> - *
> - * 2007 (c) Deep Root Systems, LLC. This file is licensed under
> - * the terms of the GNU General Public License version 2. This program
> - * is licensed "as is" without any warranty of any kind, whether express
> - * or implied.
>   */
>  #ifndef __ASM_ARCH_HARDWARE_H
>  #define __ASM_ARCH_HARDWARE_H
> diff --git a/arch/arm/mach-davinci/include/mach/serial.h b/arch/arm/mach-=
davinci/include/mach/serial.h
> index bc7449f3d765..03e8ef43dd7c 100644
> --- a/arch/arm/mach-davinci/include/mach/serial.h
> +++ b/arch/arm/mach-davinci/include/mach/serial.h
> @@ -1,12 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. */
> +
>  /*
>   * DaVinci serial device definitions
>   *
>   * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
> - *
> - * 2007 (c) MontaVista Software, Inc. This file is licensed under
> - * the terms of the GNU General Public License version 2. This program
> - * is licensed "as is" without any warranty of any kind, whether express
> - * or implied.
>   */
>  #ifndef __ASM_ARCH_SERIAL_H
>  #define __ASM_ARCH_SERIAL_H
> diff --git a/arch/arm/mach-davinci/include/mach/time.h b/arch/arm/mach-da=
vinci/include/mach/time.h
> index 34781b6ec5a7..6456205859c5 100644
> --- a/arch/arm/mach-davinci/include/mach/time.h
> +++ b/arch/arm/mach-davinci/include/mach/time.h
> @@ -1,12 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. */
> +
>  /*
>   * Local header file for DaVinci time code.
>   *
>   * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
> - *
> - * 2007 (c) MontaVista Software, Inc. This file is licensed under
> - * the terms of the GNU General Public License version 2. This program
> - * is licensed "as is" without any warranty of any kind, whether express
> - * or implied.
>   */
>  #ifndef __ARCH_ARM_MACH_DAVINCI_TIME_H
>  #define __ARCH_ARM_MACH_DAVINCI_TIME_H
> diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
> index 5b57fe61929b..52b3ac3e6823 100644
> --- a/arch/arm/mach-davinci/time.c
> +++ b/arch/arm/mach-davinci/time.c
> @@ -1,12 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. */
> +
>  /*
>   * DaVinci timer subsystem
>   *
>   * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
> - *
> - * 2007 (c) MontaVista Software, Inc. This file is licensed under
> - * the terms of the GNU General Public License version 2. This program
> - * is licensed "as is" without any warranty of any kind, whether express
> - * or implied.
>   */
>  =

>  #include <common.h>
> -- =

> 2.30.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

