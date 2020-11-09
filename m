Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc1w1-0002os-Nc
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 07:49:54 +0000
Date: Mon, 9 Nov 2020 08:49:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109074952.GD29830@pengutronix.de>
References: <20201107204728.1900-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201107204728.1900-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH 1/2] sandbox: remove MXS tools from hosttools_defconfig
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Sat, Nov 07, 2020 at 09:47:27PM +0100, Roland Hieber wrote:
> CONFIG_MXS_HOSTTOOLS currently only builds the tools mxsimage and
> mxsboot, which are both only needed to create bootable images for the
> MXS platform, and are not really useful as stand-alone host tools.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  arch/sandbox/configs/hosttools_defconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
> index 72ec0fc462b2..7d3385312488 100644
> --- a/arch/sandbox/configs/hosttools_defconfig
> +++ b/arch/sandbox/configs/hosttools_defconfig
> @@ -2,6 +2,5 @@ CONFIG_IMD=y
>  CONFIG_COMPILE_HOST_TOOLS=y
>  CONFIG_ARCH_IMX_USBLOADER=y
>  CONFIG_MVEBU_HOSTTOOLS=y
> -CONFIG_MXS_HOSTTOOLS=y
>  CONFIG_OMAP3_USB_LOADER=y
>  CONFIG_OMAP4_HOSTTOOL_USBBOOT=y
> -- 
> 2.28.0
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
