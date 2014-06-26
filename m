Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X02pE-0006H8-Uj
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 06:06:27 +0000
Date: Thu, 26 Jun 2014 08:05:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626060558.GY15686@pengutronix.de>
References: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/4] arm: add errata workarounds
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 25, 2014 at 09:18:18AM +0200, Lucas Stach wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Header only implementation, so they can be pulled
> into the individual SoC cpu init functions.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/include/asm/errata.h | 67 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 arch/arm/include/asm/errata.h
> 
> diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
> new file mode 100644
> index 0000000..e2ffd87
> --- /dev/null
> +++ b/arch/arm/include/asm/errata.h
> @@ -0,0 +1,67 @@
> +/*
> + * Copyright (C) 2014 Lucas Stach, Pengutronix
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +static inline void enable_arm_errata_716044_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c1, c0, 0\n"
> +		"orr	r0, r0, #1 << 11\n"
> +		"mcr	p15, 0, r0, c1, c0, 0\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_742230_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 4\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_743622_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 6\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_751472_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 11\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_761320_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 21\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> +
> +static inline void enable_arm_errata_794072_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c15, c0, 1\n"
> +		"orr	r0, r0, #1 << 4\n"
> +		"mcr	p15, 0, r0, c15, c0, 1\n"
> +	);
> +}
> -- 
> 1.9.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
