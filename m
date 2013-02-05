Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2elZ-0008An-Ax
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 09:24:37 +0000
Date: Tue, 5 Feb 2013 10:24:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205092435.GS1906@pengutronix.de>
References: <1359998781-31956-1-git-send-email-m.grzeschik@pengutronix.de>
 <1359998781-31956-4-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359998781-31956-4-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 3/3] mx28evk: add m25p80 flash via ssp2
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 04, 2013 at 06:26:21PM +0100, Michael Grzeschik wrote:
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

unnecessary blank line.

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

	/*
	 * multiline
	 * comment
	 */

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
