Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYSS-0005OU-B4
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:43:34 +0000
Date: Thu, 11 Jan 2018 09:43:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111084320.zamxlmynpibcyesa@pengutronix.de>
References: <20180110163115.16226-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110163115.16226-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] i.MX: Fix MX7_UART2_BASE_ADDR
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 08:31:14AM -0800, Andrey Smirnov wrote:
> Despite what the Reference Manual says, experiment on i.MX7 SabreSD
> shows that that UART2's base is located at offset 0x90000. This is
> also corroborated by the offset used in dts/src/arm/imx7s.dtsi in
> uart2.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/include/mach/imx7-regs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
> index 8774c32d7..8625d0b61 100644
> --- a/arch/arm/mach-imx/include/mach/imx7-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
> @@ -78,7 +78,7 @@
>  #define MX7_ECSPI2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x30000)
>  #define MX7_ECSPI3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x40000)
>  #define MX7_UART1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x60000)
> -#define MX7_UART2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x70000)
> +#define MX7_UART2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x90000)
>  #define MX7_UART3_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x80000)
>  #define MX7_SAI1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xA0000)
>  #define MX7_SAI2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0xB0000)
> -- 
> 2.14.3
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
