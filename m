Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ito6b-00024H-B4
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 07:37:47 +0000
Date: Tue, 21 Jan 2020 08:37:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200121073739.wwyjp5n74vlpdt7q@pengutronix.de>
References: <20200120085647.19784-1-r.czerwinski@pengutronix.de>
 <20200120085647.19784-4-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120085647.19784-4-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2 4/5] ARM: mach-imx: test PL310 write access
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 20, 2020 at 09:56:47AM +0100, Rouven Czerwinski wrote:
> If OP-TEE early loading is performed, OP-TEE will configure the PL210
> and lock write access to the controller from the normal world. Test this
> by trying to write the same value back and do not configure if we can
> not write to the PL310.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 41e0066add..c6fd862379 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -11,6 +11,7 @@
>   *
>   */
>  
> +#include <abort.h>
>  #include <init.h>
>  #include <common.h>
>  #include <io.h>
> @@ -273,6 +274,22 @@ int imx6_devices_init(void)
>  	return 0;
>  }
>  
> +static bool imx6_can_write_l2x0(void)
> +{
> +	void __iomem *l2x0_base = IOMEM(0x00a02000);
> +	u32 val;
> +	/*
> +	 * Mask data aborts and try to access the PL210. If OP-TEE is running we
> +	 * will receive a data-abort and assume barebox is running in the normal
> +	 * world.
> +	 */
> +	val = readl(l2x0_base + L2X0_PREFETCH_CTRL);
> +
> +	data_abort_mask();
> +	writel(val, l2x0_base + L2X0_PREFETCH_CTRL);
> +	return data_abort_unmask();
> +}
> +
>  static int imx6_mmu_init(void)
>  {
>  	void __iomem *l2x0_base = IOMEM(0x00a02000);
> @@ -281,6 +298,9 @@ static int imx6_mmu_init(void)
>  	if (!cpu_is_mx6())
>  		return 0;
>  
> +	if (imx6_can_write_l2x0())
> +		return 0;

Function name seems wrong, should be imx6_cannot_write_l2x0()

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
