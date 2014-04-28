Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Weell-0003GH-Av
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 06:10:26 +0000
Date: Mon, 28 Apr 2014 08:10:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428061003.GM5858@pengutronix.de>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/4] imx6:mmdc: Move register defines to header file
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Hi Christian,

I applied 1/4 and 2/4 for now.

Sascha

On Fri, Apr 25, 2014 at 01:54:25PM +0200, Christian Hemp wrote:
> Move mmdc register defines to mmdc header file.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  arch/arm/mach-imx/imx6-mmdc.c              |   37 --------------------------
>  arch/arm/mach-imx/include/mach/imx6-mmdc.h |   39 ++++++++++++++++++++++++++++
>  2 files changed, 39 insertions(+), 37 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
> index d1de593..9686bee 100644
> --- a/arch/arm/mach-imx/imx6-mmdc.c
> +++ b/arch/arm/mach-imx/imx6-mmdc.c
> @@ -20,43 +20,6 @@
>  #include <mach/imx6-regs.h>
>  #include <mach/imx6-mmdc.h>
>  
> -#define P0_IPS (void __iomem *)MX6_MMDC_P0_BASE_ADDR
> -#define P1_IPS (void __iomem *)MX6_MMDC_P1_BASE_ADDR
> -
> -#define MDCTL		0x000
> -#define MDPDC		0x004
> -#define MDSCR		0x01c
> -#define MDMISC		0x018
> -#define MDREF		0x020
> -#define MAPSR		0x404
> -#define MPZQHWCTRL	0x800
> -#define MPWLGCR		0x808
> -#define MPWLDECTRL0	0x80c
> -#define MPWLDECTRL1	0x810
> -#define MPPDCMPR1	0x88c
> -#define MPSWDAR		0x894
> -#define MPRDDLCTL	0x848
> -#define MPMUR		0x8b8
> -#define MPDGCTRL0	0x83c
> -#define MPDGCTRL1	0x840
> -#define MPRDDLCTL	0x848
> -#define MPWRDLCTL	0x850
> -#define MPRDDLHWCTL	0x860
> -#define MPWRDLHWCTL	0x864
> -#define MPDGHWST0	0x87c
> -#define MPDGHWST1	0x880
> -#define MPDGHWST2	0x884
> -#define MPDGHWST3	0x888
> -
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5a8)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5b0)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x524)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x51c)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS4	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x518)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS5	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x50c)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS6	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5b8)
> -#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS7	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5c0)
> -
>  int mmdc_do_write_level_calibration(void)
>  {
>  	u32 esdmisc_val, zq_val;
> diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> index 4ad939e..3152e16 100644
> --- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> +++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
> @@ -1,6 +1,45 @@
>  #ifndef __MACH_MMDC_H
>  #define __MACH_MMDC_H
>  
> +
> +#define P0_IPS (void __iomem *)MX6_MMDC_P0_BASE_ADDR
> +#define P1_IPS (void __iomem *)MX6_MMDC_P1_BASE_ADDR
> +
> +#define MDCTL		0x000
> +#define MDPDC		0x004
> +#define MDSCR		0x01c
> +#define MDMISC		0x018
> +#define MDREF		0x020
> +#define MAPSR		0x404
> +#define MPZQHWCTRL	0x800
> +#define MPWLGCR		0x808
> +#define MPWLDECTRL0	0x80c
> +#define MPWLDECTRL1	0x810
> +#define MPPDCMPR1	0x88c
> +#define MPSWDAR		0x894
> +#define MPRDDLCTL	0x848
> +#define MPMUR		0x8b8
> +#define MPDGCTRL0	0x83c
> +#define MPDGCTRL1	0x840
> +#define MPRDDLCTL	0x848
> +#define MPWRDLCTL	0x850
> +#define MPRDDLHWCTL	0x860
> +#define MPWRDLHWCTL	0x864
> +#define MPDGHWST0	0x87c
> +#define MPDGHWST1	0x880
> +#define MPDGHWST2	0x884
> +#define MPDGHWST3	0x888
> +
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5a8)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5b0)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x524)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS3	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x51c)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS4	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x518)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS5	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x50c)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS6	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5b8)
> +#define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS7	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5c0)
> +
> +
>  int mmdc_do_write_level_calibration(void);
>  int mmdc_do_dqs_calibration(void);
>  
> -- 
> 1.7.0.4
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
