Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDQDI-0000Ds-PF
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 02:05:51 +0000
Received: by mail-ea0-f175.google.com with SMTP id d1so1335384eab.20
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2013 18:05:38 -0800 (PST)
Date: Thu, 7 Mar 2013 03:06:50 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130307020649.GA945@x61s.8.8.8.8>
References: <1362425866-1356-3-git-send-email-s.hauer@pengutronix.de>
 <1362613518-15456-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362613518-15456-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] beagle: add missing mmc twl and control init
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Mar 07, 2013 at 12:45:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> take from xloader
> 
> with this the mmc work even when booting from nand
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/beagle/board.c |   29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
> index bed4651..6e69e87 100644
> --- a/arch/arm/boards/beagle/board.c
> +++ b/arch/arm/boards/beagle/board.c
> @@ -63,6 +63,7 @@
>  #include <linux/err.h>
>  #include <usb/ehci.h>
>  #include <mach/xload.h>
> +#include <mfd/twl4030.h>
>  
>  #ifdef CONFIG_DRIVER_SERIAL_NS16550
>  
> @@ -109,6 +110,32 @@ static struct gpmc_nand_platform_data nand_plat = {
>  	.nand_cfg = &omap3_nand_cfg,
>  };
>  
> +/* T2 Register definitions */
> +#define CONTROL_DEV_CONF0	0x48002274
> +#define CONTROL_PBIAS_LITE	0x48002520
> +
> +static void beagle_add_mmc(void)
> +{
> +	unsigned int value = 0;
> +	struct twl4030 *t = twl4030_get();
> +
> +	if (!t) {
> +		pr_warn("twl4030 not ready to setup mmc\n");
> +	} else {
> +		twl4030_reg_write(t, TWL4030_USB_OTHER_FUNC_CTRL_CLR, 0x20);
> +		twl4030_reg_write(t, TWL4030_USB_OTHER_IFC_CTRL_CLR, 0x2);
> +	}
> +
> +	value = readl(CONTROL_PBIAS_LITE);
> +	value |= (1 << 2) | (1 << 1) | (1 << 9);
> +	writel(value, CONTROL_PBIAS_LITE);
> +
> +	value = readl(CONTROL_DEV_CONF0);
> +	writel(value | (1 << 24), CONTROL_PBIAS_LITE);
> +
> +	omap3_add_mmc1(NULL);
> +}
> +
>  static int beagle_mem_init(void)
>  {
>  	omap_add_ram0(SZ_128M);
> @@ -132,7 +159,7 @@ static int beagle_devices_init(void)
>  #endif
>  	omap_add_gpmc_nand_device(&nand_plat);
>  
> -	omap3_add_mmc1(NULL);
> +	beagle_add_mmc();
>  

I had a similar problem with twl6030 and pcm049 some time ago...

See commit:

659f150e90d8bfcf8aa4c51bd3ab552f42e288f0

Please make sure this will work when you insert a mmc card after
beagle_mem_init call.

In my case, I need to add the VMMC setup at probing time in omap_hsmmc.
The reason is that twl6030 doesn't setup VMMC if a mmc card is not insert.

Maybe twl4030 do the same.

Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
