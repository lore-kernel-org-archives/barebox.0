Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHk6b-0007Bd-G7
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 08:44:58 +0000
Date: Mon, 14 Sep 2020 10:44:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914084456.GM4498@pengutronix.de>
References: <1599809857-266934-1-git-send-email-m.otto@phytec.de>
 <1599809857-266934-3-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599809857-266934-3-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH v2 2/2] arch: arm: mach-imx: Add habv4 config file for
 i.MX6ULL
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

Hi Maik,

On Fri, Sep 11, 2020 at 09:37:37AM +0200, Maik Otto wrote:
> The i.MX6ULL has no CAAM engine for Secure Boot on HABv4 (NXP AN4581).
> For i.MX6ULL the engine Software (SW) must used for the image
> validation.
> 
> +++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
> @@ -1,3 +1,3 @@
>  
>  #include "flash-header-phytec-pcl063-512mb.h"
> -#include <mach/habv4-imx6-gencsf.h>
> +#include <mach/habv4-imx6ull-gencsf.h>
> diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> index 17c4d79..ee21e0b 100644
> --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h

I would prefer to rename this file to habv4-imx6-gencsf-template.h and
let it start with:

#ifndef SETUP_HABV4_ENGINE
#error "SETUP_HABV4_ENGINE undefined"
#endif

The habv4-imx6-gencsf.h would then only set the defines and include the
template file like you already did for the i.MX6ULL.

This makes it more clear what defines the file expects.

> @@ -14,7 +14,11 @@ hab Hash Algorithm = sha256
>  hab Engine Configuration = 0
>  hab Certificate Format = X509
>  hab Signature Format = CMS
> +#ifndef SETUP_HABV4_ENGINE
>  hab Engine = CAAM
> +#else
> +hab Engine = SETUP_HABV4_ENGINE
> +#endif
>  
>  hab [Install SRK]
>  hab File = CONFIG_HABV4_TABLE_BIN
> @@ -28,8 +32,12 @@ hab File = CONFIG_HABV4_CSF_CRT_PEM
>  hab [Authenticate CSF]
>  
>  hab [Unlock]
> +#ifndef SETUP_HABV4_ENGINE
>  hab Engine = CAAM
>  hab Features = RNG, MID
> +#else
> +hab Engine = SETUP_HABV4_ENGINE
> +#endif

Do we need this #ifdef here? Can't we instead have a
SETUP_HABV4_FEATURES macro and let the SoC specific files define it as

#define SETUP_HABV4_FEATURES RNG,MID

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
