Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrvDc-00005D-98
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 18:12:58 +0000
Date: Thu, 19 Jul 2012 20:12:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719181252.GF30009@pengutronix.de>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
 <1342711817-866-6-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342711817-866-6-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 6/6] PCM038: Read UID from fuses and pass this value to
 kernel as serial number
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 07:30:17PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/pcm038/pcm038.c |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 5b0afc3..1bdb93c 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -40,6 +40,7 @@
>  #include <mach/spi.h>
>  #include <mach/iomux-mx27.h>
>  #include <mach/devices-imx27.h>
> +#include <mach/iim.h>
>  #include <mfd/mc13xxx.h>
>  
>  #include "pll.h"
> @@ -193,6 +194,7 @@ mem_initcall(pcm038_mem_init);
>  static int pcm038_devices_init(void)
>  {
>  	int i;
> +	u64 uid;

The upper two bytes of uid are used unitialized.

>  	char *envdev;
>  
>  	unsigned int mode[] = {
> @@ -316,6 +318,8 @@ static int pcm038_devices_init(void)
>  
>  	printf("Using environment in %s Flash\n", envdev);
>  
> +	if (imx_iim_read(1, 1, &uid, 6) == 6)
> +		armlinux_set_serial(uid);

With this patch I just realized that my serial becomes:

-6345008925011607552

Having negative numbers here is a bit odd. Looking at it export_env_ull
does:

        char *valstr = asprintf("%lld", val);

Which clearly is a signed number. Maybe this should be changed to "0x%016llx"
(which of course is not your fault)

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
