Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YqGgf-0003eL-Il
 for barebox@lists.infradead.org; Thu, 07 May 2015 07:57:44 +0000
Date: Thu, 7 May 2015 09:57:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150507075719.GP6325@pengutronix.de>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
 <1430940733-4415-8-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430940733-4415-8-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 07/18] i.MX51: babbage: Implement CONFIG_DEBUG_LL
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 06, 2015 at 12:32:02PM -0700, Andrey Smirnov wrote:
> Implement bits of configuraion needed to configure early debug output
> support.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 42 +++++++++++++++++++++++
>  arch/arm/mach-imx/include/mach/clock-imx51_53.h   |  5 +--
>  2 files changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> index 0f453f3..ffb0548 100644
> --- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
> @@ -1,9 +1,47 @@
> +#include <debug_ll.h>
> +#include <mach/clock-imx51_53.h>
>  #include <common.h>
>  #include <mach/esdctl.h>
>  #include <mach/generic.h>
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> +#ifdef CONFIG_DEBUG_LL
> +static inline void setup_uart(void)
> +{

I removed the #ifdef, this function called only when CONFIG_DEBUG_LL is
enabled anyway.

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
