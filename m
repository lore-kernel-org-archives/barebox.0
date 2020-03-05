Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qWc-0007Yk-4r
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 13:26:55 +0000
Date: Thu, 5 Mar 2020 14:26:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200305132652.GU3335@pengutronix.de>
References: <1582794415-151399-1-git-send-email-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582794415-151399-1-git-send-email-y.bas@phytec.de>
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
Subject: Re: [PATCH] ARM: dts: phycore-imx6: change mtd-partition names for
 compatibility with kernel
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 27, 2020 at 10:06:55AM +0100, Yunus Bas wrote:
> The NVMEM-subsystem in newer kernels does not allow identical partition
> names on different subdevices. According to the recommendation, we have to
> rename the partition names to be compatible with actual kernel
> versions.
> 
> To minimize the problems which could possibly arise, the nand device is
> not changed. For all other devices, we prepend the device name to the
> partitions.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> index 69f252b..50cf852 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -29,7 +29,7 @@
>  
>  		environment-spinor {
>  			compatible = "barebox,environment";
> -			device-path = &m25p80, "partname:barebox-environment";
> +			device-path = &m25p80, "partname:nor.barebox-environment";
>  			status = "disabled";
>  		};
>  	};
> @@ -86,22 +86,22 @@
>  		#size-cells = <1>;
>  
>  		partition@0 {
> -			label = "barebox";
> +			label = "nor.barebox";
>  			reg = <0x0 0x100000>;
>  		};
>  
>  		partition@100000 {
> -			label = "barebox-environment";
> +			label = "nor.barebox-environment";
>  			reg = <0x100000 0x20000>;
>  		};
>  
>  		partition@120000 {
> -			label = "oftree";
> +			label = "nor.oftree";
>  			reg = <0x120000 0x20000>;
>  		};
>  
>  		partition@140000 {
> -			label = "kernel";
> +			label = "nor.kernel";
>  			reg = <0x140000 0x0>;
>  		};
>  	};
> -- 
> 2.7.4
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
