Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx5jy-0006BS-84
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 10:08:31 +0000
Date: Wed, 6 Jan 2021 11:08:28 +0100
Message-ID: <20210106100828.GS19063@pengutronix.de>
References: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/3] i.MX7: Add CCM definitions for UART3
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Dec 16, 2020 at 02:09:47PM +0100, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/imx7-ccm-regs.h | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> index de6eb1bbd10d..5c60794ca74f 100644
> --- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
> @@ -3,6 +3,7 @@
>  
>  #define IMX7_CCM_CCGR_UART1		148
>  #define IMX7_CCM_CCGR_UART2		149
> +#define IMX7_CCM_CCGR_UART3		150
>  
>  #define IMX7_CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
>  
> @@ -16,6 +17,9 @@
>  #define IMX7_UART2_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb000)
>  #define IMX7_UART2_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
>  
> +#define IMX7_UART3_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb080)
> +#define IMX7_UART3_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
> +
>  /* 0 <= n <= 190 */
>  #define IMX7_CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
>  #define IMX7_CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
> -- 
> 2.20.1
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
