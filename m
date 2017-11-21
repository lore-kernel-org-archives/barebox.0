Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eH2ph-0000XG-2V
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 07:19:03 +0000
Date: Tue, 21 Nov 2017 08:18:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171121071839.mwct5aqt326uv5rw@pengutronix.de>
References: <20171117181345.27141-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171117181345.27141-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: santaro: select i2c
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 17, 2017 at 07:13:45PM +0100, Lucas Stach wrote:
> The board support tries to access a i2c bus to find out which
> touchscreen is connected.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index dc67afac238f..dce24ab90dd3 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -301,6 +301,8 @@ config MACH_DFI_FS700_M60
>  config MACH_GUF_SANTARO
>  	bool "Garz+Fricke Santaro Board"
>  	select ARCH_IMX6
> +	select I2C
> +	select I2C_IMX
>  
>  config MACH_REALQ7
>  	bool "DataModul i.MX6Q Real Qseven Board"
> -- 
> 2.11.0
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
