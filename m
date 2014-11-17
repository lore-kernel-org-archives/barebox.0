Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XqGuC-00047k-3J
 for barebox@lists.infradead.org; Mon, 17 Nov 2014 07:39:24 +0000
Date: Mon, 17 Nov 2014 08:39:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141117073901.GA30369@pengutronix.de>
References: <1416175114-3132-1-git-send-email-d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416175114-3132-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: Re: [PATCH] mtd: nand-mxs: Gate ENFC_CLK_ROOT clock off before
 changing nand clock rate
To: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 17, 2014 at 12:58:34AM +0300, Dmitry Lavnikevich wrote:
> This fixes NAND initialization issue which appears occasionally on
> some i.MX6 SoCs (particulary was observed on phyCARD-i.MX6 with
> i.MX6Solo).
> 
> Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/clock-imx6.h |  4 ++++
>  drivers/mtd/nand/nand_mxs.c                 | 12 ++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/include/mach/clock-imx6.h b/arch/arm/mach-imx/include/mach/clock-imx6.h
> index 8e5e9d9..ffa889d 100644
> --- a/arch/arm/mach-imx/include/mach/clock-imx6.h
> +++ b/arch/arm/mach-imx/include/mach/clock-imx6.h
> @@ -344,4 +344,8 @@
>  #define MXC_CCM_CGPR_MMDC_EXT_CLK_DIS			(1 << 2)
>  #define MXC_CCM_CGPR_PMIC_DELAY_SCALER			(1)
>  
> +/* Define the bits in register CCGR2 */
> +#define MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_OFFSET		14
> +#define MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK		(3 << 14)
> +
>  #endif				/* __ARCH_ARM_MACH_MX6_CRM_REGS_H__ */
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index d5428bc..9ebddb3 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -34,6 +34,8 @@
>  #include <stmp-device.h>
>  #include <asm/mmu.h>
>  #include <mach/generic.h>
> +#include <mach/clock-imx6.h>
> +#include <mach/imx6-regs.h>
>  
>  #define	MX28_BLOCK_SFTRST				(1 << 31)
>  #define	MX28_BLOCK_CLKGATE				(1 << 30)
> @@ -1254,6 +1256,7 @@ static int mxs_nand_probe(struct device_d *dev)
>  	struct nand_chip *nand;
>  	struct mtd_info *mtd;
>  	enum gpmi_type type;
> +	u32 val;
>  	int err;
>  
>  	err = dev_get_drvdata(dev, (unsigned long *)&type);
> @@ -1277,7 +1280,16 @@ static int mxs_nand_probe(struct device_d *dev)
>  		return PTR_ERR(nand_info->clk);
>  
>  	if (mxs_nand_is_imx6(nand_info)) {
> +		val = readl(MXC_CCM_CCGR2);
> +		val &= ~MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK;
> +		writel(val, MXC_CCM_CCGR2);
> +
>  		clk_set_rate(nand_info->clk, 96000000);
> +
> +		val = readl(MXC_CCM_CCGR2);
> +		val |= MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK;
> +		writel(val, MXC_CCM_CCGR2);
> +
>  		clk_enable(nand_info->clk);
>  		nand_info->dma_channel_base = 0;
>  	} else {
> -- 
> 2.1.3
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
