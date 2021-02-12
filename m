Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAVWM-0000Zr-7W
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 10:17:55 +0000
Date: Fri, 12 Feb 2021 11:17:52 +0100
Message-ID: <20210212101752.GM19583@pengutronix.de>
References: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
 <20210210142704.1855761-2-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210142704.1855761-2-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] imx8:pinfunc: fix definition
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 10, 2021 at 03:27:03PM +0100, Enrico Scholz wrote:
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  dts/src/arm64/freescale/imx8mm-pinfunc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied this one and 3/3, thanks

Sascha

> diff --git a/dts/src/arm64/freescale/imx8mm-pinfunc.h b/dts/src/arm64/freescale/imx8mm-pinfunc.h
> index 5ccc4cc91959..a003e6af3353 100644
> --- a/dts/src/arm64/freescale/imx8mm-pinfunc.h
> +++ b/dts/src/arm64/freescale/imx8mm-pinfunc.h
> @@ -124,7 +124,7 @@
>  #define MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD                                     0x0A4 0x30C 0x000 0x0 0x0
>  #define MX8MM_IOMUXC_SD1_CMD_GPIO2_IO1                                      0x0A4 0x30C 0x000 0x5 0x0
>  #define MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0                                 0x0A8 0x310 0x000 0x0 0x0
> -#define MX8MM_IOMUXC_SD1_DATA0_GPIO2_IO2                                    0x0A8 0x31  0x000 0x5 0x0
> +#define MX8MM_IOMUXC_SD1_DATA0_GPIO2_IO2                                    0x0A8 0x310 0x000 0x5 0x0
>  #define MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1                                 0x0AC 0x314 0x000 0x0 0x0
>  #define MX8MM_IOMUXC_SD1_DATA1_GPIO2_IO3                                    0x0AC 0x314 0x000 0x5 0x0
>  #define MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2                                 0x0B0 0x318 0x000 0x0 0x0
> -- 
> 2.29.2
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
