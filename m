Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwWcZ-0007Yt-Eq
	for barebox@lists.infradead.org; Thu, 25 Aug 2011 09:53:12 +0000
Date: Thu, 25 Aug 2011 11:53:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110825095309.GS31404@pengutronix.de>
References: <201108250415.p7P4FmPE009300@home.pavel.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201108250415.p7P4FmPE009300@home.pavel.comp>
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
Subject: Re: [PATCH] iomux-mx25: fix MDIO pin configuration
To: Paul Fertser <fercerpav@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 24, 2011 at 04:30:59PM +0400, Paul Fertser wrote:
> According to the datasheet, PUE is not effective without PKE set.
> 
> Signed-off-by: Paul Fertser <fercerpav@gmail.com>

Applied to master.

Sascha

> ---
>  arch/arm/mach-imx/include/mach/iomux-mx25.h |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/arch/arm/mach-imx/include/mach/iomux-mx25.h
> index e636c7f..ae29323 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx25.h
> @@ -425,7 +425,7 @@
>  #define MX25_PAD_FEC_MDC__AUD4_TXD	IOMUX_PAD(0x3c0, 0x1c8, 0x02, 0x464, 1, NO_PAD_CTRL)
>  #define MX25_PAD_FEC_MDC__GPIO_3_5	IOMUX_PAD(0x3c0, 0x1c8, 0x05, 0, 0, NO_PAD_CTRL)
>  
> -#define MX25_PAD_FEC_MDIO__FEC_MDIO	IOMUX_PAD(0x3c4, 0x1cc, 0x00, 0, 0, PAD_CTL_HYS | PAD_CTL_PUS_22K_UP | PAD_CTL_PUE)
> +#define MX25_PAD_FEC_MDIO__FEC_MDIO	IOMUX_PAD(0x3c4, 0x1cc, 0x00, 0, 0, PAD_CTL_HYS | PAD_CTL_PUS_22K_UP | PAD_CTL_PUE | PAD_CTL_PKE)
>  #define MX25_PAD_FEC_MDIO__AUD4_RXD	IOMUX_PAD(0x3c4, 0x1cc, 0x02, 0x460, 1, NO_PAD_CTRL)
>  #define MX25_PAD_FEC_MDIO__GPIO_3_6	IOMUX_PAD(0x3c4, 0x1cc, 0x05, 0, 0, NO_PAD_CTRL)
>  
> -- 
> 1.7.2.3
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
