Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbksi-0005ro-Hd
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 06:37:53 +0000
Date: Wed, 8 Oct 2014 08:37:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141008063730.GX4992@pengutronix.de>
References: <1412537983-5337-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412537983-5337-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] ARM: tegra30: add environment path to Beaver DT
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Oct 05, 2014 at 09:39:42PM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/dts/tegra30-beaver.dts | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)

Applied both, thanks

Sascha

> 
> diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
> index 35b4d7e..94955f9 100644
> --- a/arch/arm/dts/tegra30-beaver.dts
> +++ b/arch/arm/dts/tegra30-beaver.dts
> @@ -11,6 +11,13 @@
>  		rtc1 = "/rtc@7000e000";
>  	};
>  
> +	chosen {
> +		environment@0 {
> +			compatible = "barebox,environment";
> +			device-path = &emmc, "partname:boot1";
> +		};
> +	};
> +
>  	memory {
>  		reg = <0x80000000 0x7ff00000>;
>  	};
> @@ -750,7 +757,7 @@
>  		bus-width = <4>;
>  	};
>  
> -	sdhci@78000600 {
> +	emmc: sdhci@78000600 {
>  		status = "okay";
>  		bus-width = <8>;
>  		non-removable;
> -- 
> 1.9.3
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
