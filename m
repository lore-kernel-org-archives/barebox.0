Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3yrC-0005ZI-AU
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 10:12:27 +0000
Date: Mon, 25 Jan 2021 11:12:24 +0100
Message-ID: <20210125101224.GG31738@pengutronix.de>
References: <20210125100047.7498-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125100047.7498-1-shc_work@mail.ru>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: imx6qdl: pfla02: Use NAND pinmux entries from
 upstream
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Jan 25, 2021 at 01:00:47PM +0300, Alexander Shiyan wrote:
> The gpminand pinmux entries are in the upstream dtsi now, so use them.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 24 ------------------------
>  1 file changed, 24 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> index f499ca568..e1aa3183b 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -127,30 +127,6 @@
>  				MX6QDL_PAD_SD4_DAT7__GPIO2_IO15	0x80000000
>  			>;
>  		};
> -
> -		pinctrl_gpmi_nand: gpminandgrp {
> -			fsl,pins = <
> -				MX6QDL_PAD_NANDF_CLE__NAND_CLE     0xb0b1
> -				MX6QDL_PAD_NANDF_ALE__NAND_ALE     0xb0b1
> -				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B   0xb0b1
> -				MX6QDL_PAD_NANDF_RB0__NAND_READY_B 0xb000
> -				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B   0xb0b1
> -				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B   0xb0b1
> -				MX6QDL_PAD_NANDF_CS2__NAND_CE2_B   0xb0b1
> -				MX6QDL_PAD_NANDF_CS3__NAND_CE3_B   0xb0b1
> -				MX6QDL_PAD_SD4_CMD__NAND_RE_B      0xb0b1
> -				MX6QDL_PAD_SD4_CLK__NAND_WE_B      0xb0b1
> -				MX6QDL_PAD_NANDF_D0__NAND_DATA00   0xb0b1
> -				MX6QDL_PAD_NANDF_D1__NAND_DATA01   0xb0b1
> -				MX6QDL_PAD_NANDF_D2__NAND_DATA02   0xb0b1
> -				MX6QDL_PAD_NANDF_D3__NAND_DATA03   0xb0b1
> -				MX6QDL_PAD_NANDF_D4__NAND_DATA04   0xb0b1
> -				MX6QDL_PAD_NANDF_D5__NAND_DATA05   0xb0b1
> -				MX6QDL_PAD_NANDF_D6__NAND_DATA06   0xb0b1
> -				MX6QDL_PAD_NANDF_D7__NAND_DATA07   0xb0b1
> -				MX6QDL_PAD_SD4_DAT0__NAND_DQS      0x00b1
> -			>;
> -		};
>  	};
>  };
>  
> -- 
> 2.26.2
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
