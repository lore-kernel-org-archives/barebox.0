Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSSTv-0002Bc-Gd
 for barebox@lists.infradead.org; Thu, 10 May 2012 12:28:35 +0000
Date: Thu, 10 May 2012 14:28:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120510122828.GP27341@pengutronix.de>
References: <1336596699-19841-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336596699-19841-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] arm: mxs: get MAC from OCOTP for MX28EVK
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 09, 2012 at 10:51:39PM +0200, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   25 +++++++++++++++++++++++--
>  arch/arm/mach-mxs/Kconfig                     |    1 +
>  2 files changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> index 9168ed8..f0b256b 100644
> --- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> +++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> @@ -22,17 +22,18 @@
>  #include <init.h>
>  #include <mci.h>
>  #include <io.h>
> +#include <net.h>
>  
>  #include <mach/clock.h>
>  #include <mach/imx-regs.h>
>  #include <mach/iomux-imx28.h>
>  #include <mach/mci.h>
> +#include <mach/fb.h>
> +#include <mach/ocotp.h>
>  
>  #include <asm/armlinux.h>
>  #include <asm/mmu.h>
>  
> -#include <mach/fb.h>
> -
>  #include <generated/mach-types.h>
>  
>  #define MX28EVK_FEC_PHY_RESET_GPIO	141
> @@ -118,6 +119,22 @@ static struct mxs_mci_platform_data mci_pdata = {
>  };
>  
>  /* fec */
> +void mx28_evk_get_ethaddr(void)
> +{
> +	u8 mac[6] = { 0x00, 0x04, 0x9f, 0x00, 0x00, 0x00 };
> +	u8 tmp;
> +	int ret;
> +
> +	ret = mxs_ocotp_read(mac + 3, 3, 0);
> +	if (ret != 3)
> +		return;
> +
> +	tmp = mac[5];
> +	mac[5] = mac[3];
> +	mac[3] = tmp;
> +	eth_register_ethaddr(0, mac);

Maybe the following would be readable a bit better?

	u8 macpart[3], mac[6];

	ret = mxs_ocotp_read(tmpmac, 3, 0);
	if (ret != 3) {
		pr_err("go away!\n");
		return;
	}

	mac[0] = 0x00;
	mac[1] = 0x04;
	mac[2] = 0x9f;
	mac[3] = tmpmac[2];
	mac[4] = tmpmac[1];
	mac[5] = tmpmac[0];

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
