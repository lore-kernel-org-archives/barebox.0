Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9QOk-0000CQ-3u
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 07:56:16 +0000
Date: Mon, 8 Oct 2018 09:56:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008075602.4ysulffrylf7tslq@pengutronix.de>
References: <20181008063303.16743-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008063303.16743-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: rdu2: Remove now redundant RAVE SP
 properties/nodes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2018 at 11:33:02PM -0700, Andrey Smirnov wrote:
> Remove RAVE SP properties/nodes that are now availible from upstream
> Linux DTS files.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 16 ----------------
>  1 file changed, 16 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
> index a74fb4783..f63b5d2ed 100644
> --- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
> +++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
> @@ -66,19 +66,7 @@
>  			nvmem-cell-names = "boot-source";
>  		};
>  
> -		eeprom@a3 {
> -			compatible = "zii,rave-sp-eeprom";
> -			reg = <0xa3 0x4000>;
> -			zii,eeprom-name = "dds-eeprom";
> -		};
> -
>  		eeprom@a4 {
> -			compatible = "zii,rave-sp-eeprom";
> -			reg = <0xa4 0x4000>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -			zii,eeprom-name = "main-eeprom";
> -
>  			boot_source: boot-source@83 {
>  				reg = <0x83 1>;
>  			};
> @@ -91,10 +79,6 @@
>  				reg = <0x190 6>;
>  			};
>  		};
> -
> -		backlight {
> -			compatible = "zii,rave-sp-backlight";
> -		};
>  	};
>  };
>  
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
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
