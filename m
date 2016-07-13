Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNCdp-00053g-P5
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 05:23:26 +0000
Date: Wed, 13 Jul 2016 07:23:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160713052303.GA20657@pengutronix.de>
References: <1468313287-40587-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1468313287-40587-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] ARM: phytec-som-am335x: Remove kernel and oftree
 partiton in NAND
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 12, 2016 at 10:48:07AM +0200, Teresa Remmet wrote:
> We store kernel and oftree in static UBI volumes now. No need
> for seperate partitions any more.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  .../phytec-som-am335x/defaultenv-physom-am335x/boot/nand     |  6 ++++--
>  arch/arm/dts/am335x-phytec-phycard-som.dtsi                  | 12 +-----------
>  arch/arm/dts/am335x-phytec-phycore-som.dtsi                  | 12 +-----------
>  arch/arm/dts/am335x-phytec-phyflex-som.dtsi                  | 12 +-----------
>  4 files changed, 7 insertions(+), 35 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
> index b9b1bc6..ece44b7 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
> @@ -1,6 +1,8 @@
>  #!/bin/sh
>  
> -global.bootm.image="/dev/nand0.kernel.bb"
> -global.bootm.oftree="/dev/nand0.oftree.bb"
> +[ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
> +
> +global.bootm.image="/dev/nand0.root.ubi.kernel"
> +global.bootm.oftree="/dev/nand0.root.ubi.oftree"
>  
>  global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rw rootfstype=ubifs"
> diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> index 3dd9cad..d608f63 100644
> --- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> +++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> @@ -216,22 +216,12 @@
>  		};
>  
>  		partition@1C0000 {
> -			label = "oftree";
> -			reg = <0x1C0000 0x40000>;
> -		};
> -
> -		partition@200000 {
> -			label = "kernel";
> -			reg = <0x200000 0x800000>;
> -		};
> -
> -		partition@A00000 {
>  			label = "root";
>  			/*
>  			 * Size 0x0 extends partition to
>  			 * end of nand flash.
>  			 */
> -			reg = <0xA00000 0x0>;
> +			reg = <0x1C0000 0x0>;
>  		};
>  	};
>  };
> diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> index 0fc3c96..0b8c454 100644
> --- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> @@ -300,22 +300,12 @@
>  		};
>  
>  		partition@1C0000 {
> -			label = "oftree";
> -			reg = <0x1C0000 0x40000>;
> -		};
> -
> -		partition@200000 {
> -			label = "kernel";
> -			reg = <0x200000 0x800000>;
> -		};
> -
> -		partition@A00000 {
>  			label = "root";
>  			/*
>  			 * Size 0x0 extends partition to
>  			 * end of nand flash.
>  			 */
> -			reg = <0xA00000 0x0>;
> +			reg = <0x1C0000 0x0>;
>  		};
>  	};
>  };
> diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
> index db78cb1..5b8bb5d 100644
> --- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
> +++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
> @@ -314,22 +314,12 @@
>  		};
>  
>  		partition@1C0000 {
> -			label = "oftree";
> -			reg = <0x1C0000 0x40000>;
> -		};
> -
> -		partition@200000 {
> -			label = "kernel";
> -			reg = <0x200000 0x800000>;
> -		};
> -
> -		partition@A00000 {
>  			label = "root";
>  			/*
>  			 * Size 0x0 extends partition to
>  			 * end of nand flash.
>  			 */
> -			reg = <0xA00000 0x0>;
> +			reg = <0x1C0000 0x0>;
>  		};
>  	};
>  };
> -- 
> 1.9.1
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
