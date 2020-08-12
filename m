Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5nGZ-0007c9-23
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 09:41:51 +0000
Date: Wed, 12 Aug 2020 11:41:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200812094149.GP9475@pengutronix.de>
References: <20200811094330.4754-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811094330.4754-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2 1/4] ARM: imx8mm: select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 from IMX8MM_EVK
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 11, 2020 at 11:43:27AM +0200, Lucas Stach wrote:
> Without this select the necessary DDR PHY firmware files will be missing
> when only building for the i.MX8MM-EVK board.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 7e4265900479..007845c6d13d 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -525,6 +525,7 @@ config MACH_NXP_IMX6ULL_EVK
>  config MACH_NXP_IMX8MM_EVK
>  	bool "NXP i.MX8MM EVK Board"
>  	select ARCH_IMX8MM
> +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MM_ATF
>  	select ARM_SMCCC
>  	select MCI_IMX_ESDHC_PBL
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
