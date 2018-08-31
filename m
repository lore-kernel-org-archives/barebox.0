Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvctv-00088T-LD
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:27:25 +0000
Date: Fri, 31 Aug 2018 08:27:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831062711.zajvdeuaqbsxnra3@pengutronix.de>
References: <20180829132632.28601-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829132632.28601-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] arm: mach-imx: remove unused header
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 03:26:32PM +0200, Michael Grzeschik wrote:
> The defines are also in mach/clocks-imx6.h prefixed
> with MXC instead of MX6.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---

Applied, thanks

Sascha

>  .../flash-header-nitrogen6dl-1g.imxcfg        |  1 -
>  .../flash-header-nitrogen6dl-2g.imxcfg        |  1 -
>  .../flash-header-nitrogen6q-1g.imxcfg         |  1 -
>  .../flash-header-nitrogen6q-2g.imxcfg         |  1 -
>  .../flash-header-nitrogen6qp-max.imxcfg       |  1 -
>  .../flash-header-ventana-quad-1gx64.imxcfg    |  1 -
>  .../karo-tx6x/flash-header-tx6dl-1g.imxcfg    |  1 -
>  .../arm/mach-imx/include/mach/imx6-ccm-regs.h | 24 -------------------
>  8 files changed, 31 deletions(-)
>  delete mode 100644 arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
> 
> diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
> index 0773f4d276..47b572db46 100644
> --- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
> +++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6dl-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "800mhz_4x128mx16.imxcfg"
> diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
> index 6622c517fa..cf3716dbaa 100644
> --- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
> +++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6dl-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "800mhz_4x256mx16.imxcfg"
> diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
> index bd4134f8a9..8ed987daa8 100644
> --- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
> +++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6q-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "1066mhz_4x128mx16.imxcfg"
> diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
> index 89aa21c300..e6d97d11c1 100644
> --- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
> +++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6q-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "1066mhz_4x256mx16.imxcfg"
> diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
> index 66f0e1a860..50bbfc5bdd 100644
> --- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
> +++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6q-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "1066mhz_4x512mx16-qp.imxcfg"
> diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
> index f4506f1da5..b9a6fc12ff 100644
> --- a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
> +++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6q-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "quad_128x64.imxcfg"
> diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
> index 2a1c42aeed..b7a914fba5 100644
> --- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
> +++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
> @@ -4,7 +4,6 @@ dcdofs 0x400
>  
>  #include <mach/imx6-ddr-regs.h>
>  #include <mach/imx6dl-ddr-regs.h>
> -#include <mach/imx6-ccm-regs.h>
>  
>  #include "ram-base.imxcfg"
>  #include "1600mhz_4x128mx16.imxcfg"
> diff --git a/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
> deleted file mode 100644
> index 099d5621de..0000000000
> --- a/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -/*
> - * Copyright (C) Freescale Semiconductor, Inc.
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> -
> -#define MX6_CCM_CCOSR		0x020c4060
> -#define MX6_CCM_CCGR0		0x020C4068
> -#define MX6_CCM_CCGR1		0x020C406c
> -#define MX6_CCM_CCGR2		0x020C4070
> -#define MX6_CCM_CCGR3		0x020C4074
> -#define MX6_CCM_CCGR4		0x020C4078
> -#define MX6_CCM_CCGR5		0x020C407c
> -#define MX6_CCM_CCGR6		0x020C4080
> -
> -#define MX6_PMU_MISC2		0x020C8170
> -- 
> 2.18.0
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
