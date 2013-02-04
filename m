Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2PYm-00041t-N0
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 17:10:25 +0000
Date: Mon, 4 Feb 2013 18:10:23 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20130204171023.GA24542@pengutronix.de>
References: <1359995179-2519-1-git-send-email-m.grzeschik@pengutronix.de>
 <1359995179-2519-4-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359995179-2519-4-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 2/3] mxs_spi: initial commit
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Somehow this patch doesn't have the corrent subject.
I will resend. Thanks.

On Mon, Feb 04, 2013 at 05:26:19PM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   28 +++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> index 4311473..325365b 100644
> --- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> +++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> @@ -30,6 +30,7 @@
>  #include <mach/mci.h>
>  #include <mach/fb.h>
>  #include <mach/ocotp.h>
> +#include <spi/spi.h>
>  
>  #include <asm/armlinux.h>
>  #include <asm/mmu.h>
> @@ -126,6 +127,13 @@ static const uint32_t mx28evk_pads[] = {
>  	GPMI_ALE | VE_3_3V,
>  	GPMI_CLE | VE_3_3V,
>  	GPMI_RESETN,		/* act as WP, external PU */
> +
> +	/* SSP */
> +	SSP2_D0 | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* MISO DO */
> +	SSP2_D3 | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* SS0 !CS */
> +	SSP2_CMD | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* MOSI DIO */
> +	SSP2_SCK | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* CLK */
> +
>  };
>  
>  static struct mxs_mci_platform_data mci_pdata = {
> @@ -225,6 +233,17 @@ static int mx28_evk_mem_init(void)
>  }
>  mem_initcall(mx28_evk_mem_init);
>  
> +static const struct spi_board_info mx28evk_spi_board_info[] = {
> +	{
> +		.name = "m25p80",
> +		/* we leave this with the lower frequency
> +		   as the ssp unit otherwise locks up */
> +		.max_speed_hz = 32000000,
> +		.bus_num = 2,
> +		.chip_select = 0,
> +	}
> +};
> +
>  static int mx28_evk_devices_init(void)
>  {
>  	int i;
> @@ -235,8 +254,11 @@ static int mx28_evk_devices_init(void)
>  
>  	/* enable IOCLK0 to run at the PLL frequency */
>  	imx_set_ioclk(0, 480000000);
> +	imx_set_ioclk(1, 320000000);
>  	/* run the SSP unit clock at 100 MHz */
>  	imx_set_sspclk(0, 100000000, 1);
> +	/* run the SSP unit 2 clock at 160Mhz */
> +	imx_set_sspclk(2, 160000000, 1);
>  
>  	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
>  	armlinux_set_architecture(MACH_TYPE_MX28EVK);
> @@ -259,6 +281,12 @@ static int mx28_evk_devices_init(void)
>  	add_generic_device("mxs_nand", 0, NULL, MXS_GPMI_BASE, 0x2000,
>  			   IORESOURCE_MEM, NULL);
>  
> +	spi_register_board_info(mx28evk_spi_board_info,
> +			ARRAY_SIZE(mx28evk_spi_board_info));
> +
> +	add_generic_device("mxs_spi", 2, NULL, IMX_SSP2_BASE, 0x2000,
> +			   IORESOURCE_MEM, NULL);
> +
>  	return 0;
>  }
>  device_initcall(mx28_evk_devices_init);
> -- 
> 1.7.10.4
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
