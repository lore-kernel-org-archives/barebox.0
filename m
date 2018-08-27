Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuDcU-0002xd-TG
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 09:15:36 +0000
Date: Mon, 27 Aug 2018 11:15:21 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180827091521.k26nbfoh6cqx5bvj@pengutronix.de>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
 <20180825210315.4661-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180825210315.4661-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/6] ARM: imx51-zii-rdu1: Swtich to using Linux clock tree
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

In Subject: s/Swtich/Switch/
 
  - Roland

On Sat, Aug 25, 2018 at 02:03:11PM -0700, Andrey Smirnov wrote:
> In order to provide missing USB clocks.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/dts/imx51-zii-rdu1.dts | 4 ++++
>  arch/arm/mach-imx/Kconfig       | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
> index 7e0e337ae..9021b04a1 100644
> --- a/arch/arm/dts/imx51-zii-rdu1.dts
> +++ b/arch/arm/dts/imx51-zii-rdu1.dts
> @@ -31,6 +31,10 @@
>  	};
>  };
>  
> +&clks {
> +	compatible = "barebox,imx51-ccm";
> +};
> +
>  &ecspi1 {
>  	spinor: flash@1 {
>  		partition@0 {
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 4fa00bfdb..dca5ee0bf 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -412,6 +412,7 @@ config MACH_VF610_TWR
>  config MACH_ZII_RDU1
>  	bool "ZII i.MX51 RDU1"
>  	select ARCH_IMX51
> +	select COMMON_CLK_OF_PROVIDER
>  	select MACH_FREESCALE_MX51_PDK_POWER
>  
>  config MACH_ZII_RDU2
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
