Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ1dS-0003EI-6W
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 11:59:24 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F3258FF893B
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 14:00:29 +0200 (CEST)
Date: Sat, 14 Apr 2012 13:41:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120414114127.GF2074@game.jcrosoft.org>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334325273-1701-2-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] ARM: add initial i.MX6 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:54 Fri 13 Apr     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig                     |    7 +-
>  arch/arm/mach-imx/Makefile                    |    1 +
>  arch/arm/mach-imx/imx6.c                      |   71 +
>  arch/arm/mach-imx/include/mach/clock-imx6.h   |  530 +++
>  arch/arm/mach-imx/include/mach/devices-imx6.h |   46 +
>  arch/arm/mach-imx/include/mach/generic.h      |    6 +
>  arch/arm/mach-imx/include/mach/imx-regs.h     |    2 +
>  arch/arm/mach-imx/include/mach/imx6-anadig.h  |  721 ++++
>  arch/arm/mach-imx/include/mach/imx6-regs.h    |  132 +
>  arch/arm/mach-imx/include/mach/imx6.h         |    6 +
>  arch/arm/mach-imx/include/mach/iomux-mx6.h    | 5630 +++++++++++++++++++++++++
>  arch/arm/mach-imx/speed-imx6.c                |  393 ++
>  drivers/mci/Kconfig                           |    2 +-
>  include/asm-generic/barebox.lds.h             |    7 +-
>  14 files changed, 7551 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/mach-imx/imx6.c
>  create mode 100644 arch/arm/mach-imx/include/mach/clock-imx6.h
>  create mode 100644 arch/arm/mach-imx/include/mach/devices-imx6.h
>  create mode 100644 arch/arm/mach-imx/include/mach/imx6-anadig.h
>  create mode 100644 arch/arm/mach-imx/include/mach/imx6-regs.h
>  create mode 100644 arch/arm/mach-imx/include/mach/imx6.h
>  create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx6.h
>  create mode 100644 arch/arm/mach-imx/speed-imx6.c
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 2f317c2..8a0979a 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -68,7 +68,7 @@ choice
>  
>  config ARCH_IMX_INTERNAL_BOOT
>  	bool "support internal boot mode"
> -	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51 || ARCH_IMX53
> +	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
select it via the soc will be simpler
>  
>  config ARCH_IMX_EXTERNAL_BOOT
>  	bool "support external boot mode"
> @@ -165,6 +165,11 @@ config ARCH_IMX53
>  	select CPU_V7
>  	select ARCH_HAS_FEC_IMX
>  
> +config ARCH_IMX6
> +	bool "i.MX6"
> +	select ARCH_HAS_FEC_IMX
> +	select CPU_V7
> +
>  endchoice
>  
>  # ----------------------------------------------------------
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index a9aa9e2..03e2421 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
>  obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
>  obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o
>  obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o
> +obj-$(CONFIG_ARCH_IMX6) += speed-imx6.o imx6.o iomux-v3.o
>  obj-$(CONFIG_IMX_CLKO)	+= clko.o
>  obj-$(CONFIG_IMX_IIM)	+= iim.o
>  obj-$(CONFIG_NAND_IMX) += nand.o
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> new file mode 100644
> index 0000000..a443343
> --- /dev/null
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -0,0 +1,71 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <init.h>
> +#include <common.h>
> +#include <io.h>
> +#include <sizes.h>
> +#include <mach/imx6-regs.h>
> +
> +#include "gpio.h"
> +
> +void *imx_gpio_base[] = {
> +	(void *)MX6_GPIO1_BASE_ADDR,
> +	(void *)MX6_GPIO2_BASE_ADDR,
> +	(void *)MX6_GPIO3_BASE_ADDR,
> +	(void *)MX6_GPIO4_BASE_ADDR,
> +	(void *)MX6_GPIO5_BASE_ADDR,
> +	(void *)MX6_GPIO6_BASE_ADDR,
> +	(void *)MX6_GPIO7_BASE_ADDR,
> +};
> +
> +int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
> +
> +void imx6_init_lowlevel(void)
> +{
> +	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
> +	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
> +
> +	/*
> +	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> +	 * not forced to user-mode.
> +	 */
> +	writel(0x77777777, aips1);
> +	writel(0x77777777, aips1 + 0x4);
> +	writel(0, aips1 + 0x40);
> +	writel(0, aips1 + 0x44);
> +	writel(0, aips1 + 0x48);
> +	writel(0, aips1 + 0x4c);
> +	writel(0, aips1 + 0x50);
> +
> +	writel(0x77777777, aips2);
> +	writel(0x77777777, aips2 + 0x4);
> +	writel(0, aips2 + 0x40);
> +	writel(0, aips2 + 0x44);
> +	writel(0, aips2 + 0x48);
> +	writel(0, aips2 + 0x4c);
> +	writel(0, aips2 + 0x50);
> +
> +	/* enable all clocks */
> +	writel(0xffffffff, 0x020c4068);
> +	writel(0xffffffff, 0x020c406c);
> +	writel(0xffffffff, 0x020c4070);
> +	writel(0xffffffff, 0x020c4074);
> +	writel(0xffffffff, 0x020c4078);
> +	writel(0xffffffff, 0x020c407c);
> +	writel(0xffffffff, 0x020c4080);
> +}
for a tablette or a mobile point of view if we be better to enable the needed
only


> diff --git a/arch/arm/mach-imx/include/mach/clock-imx6.h b/arch/arm/mach-imx/include/mach/clock-imx6.h
> new file mode 100644
> index 0000000..d724927
> --- /dev/null
> +++ b/arch/arm/mach-imx/include/mach/clock-imx6.h
> @@ -0,0 +1,530 @@
> +/*
> + * Copyright (C) 2010-2011 Freescale Semiconductor, Inc. All Rights Reserved.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> +
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> +
> + * You should have received a copy of the GNU General Public License along
> + * with this program; if not, write to the Free Software Foundation, Inc.,
> + * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> + */
> +
> +#ifndef __ARCH_ARM_MACH_MX6_CRM_REGS_H__
> +#define __ARCH_ARM_MACH_MX6_CRM_REGS_H__
> +
> +#define MXC_CCM_BASE   MX6_CCM_BASE_ADDR
> +
> +/* Register addresses of CCM*/
> +#define MXC_CCM_CCR		(MXC_CCM_BASE + 0x00)
> +#define MXC_CCM_CCDR		(MXC_CCM_BASE + 0x04)
> +#define MXC_CCM_CSR		(MXC_CCM_BASE + 0x08)
> +#define MXC_CCM_CCSR		(MXC_CCM_BASE + 0x0C)
> +#define MXC_CCM_CACRR		(MXC_CCM_BASE + 0x10)
> +#define MXC_CCM_CBCDR		(MXC_CCM_BASE + 0x14)
> +#define MXC_CCM_CBCMR		(MXC_CCM_BASE + 0x18)
> +#define MXC_CCM_CSCMR1		(MXC_CCM_BASE + 0x1C)
> +#define MXC_CCM_CSCMR2		(MXC_CCM_BASE + 0x20)
> +#define MXC_CCM_CSCDR1		(MXC_CCM_BASE + 0x24)
> +#define MXC_CCM_CS1CDR		(MXC_CCM_BASE + 0x28)
> +#define MXC_CCM_CS2CDR		(MXC_CCM_BASE + 0x2C)
> +#define MXC_CCM_CDCDR		(MXC_CCM_BASE + 0x30)
> +#define MXC_CCM_CHSCDR		(MXC_CCM_BASE + 0x34)
> +#define MXC_CCM_CSCDR2		(MXC_CCM_BASE + 0x38)
> +#define MXC_CCM_CSCDR3		(MXC_CCM_BASE + 0x3C)
> +#define MXC_CCM_CSCDR4		(MXC_CCM_BASE + 0x40)
> +#define MXC_CCM_CWDR		(MXC_CCM_BASE + 0x44)
> +#define MXC_CCM_CDHIPR		(MXC_CCM_BASE + 0x48)
> +#define MXC_CCM_CDCR		(MXC_CCM_BASE + 0x4C)
> +#define MXC_CCM_CTOR		(MXC_CCM_BASE + 0x50)
> +#define MXC_CCM_CLPCR		(MXC_CCM_BASE + 0x54)
> +#define MXC_CCM_CISR		(MXC_CCM_BASE + 0x58)
> +#define MXC_CCM_CIMR		(MXC_CCM_BASE + 0x5C)
> +#define MXC_CCM_CCOSR		(MXC_CCM_BASE + 0x60)
> +#define MXC_CCM_CGPR		(MXC_CCM_BASE + 0x64)
> +#define MXC_CCM_CCGR0		(MXC_CCM_BASE + 0x68)
> +#define MXC_CCM_CCGR1		(MXC_CCM_BASE + 0x6C)
> +#define MXC_CCM_CCGR2		(MXC_CCM_BASE + 0x70)
> +#define MXC_CCM_CCGR3		(MXC_CCM_BASE + 0x74)
> +#define MXC_CCM_CCGR4		(MXC_CCM_BASE + 0x78)
> +#define MXC_CCM_CCGR5		(MXC_CCM_BASE + 0x7C)
> +#define MXC_CCM_CCGR6		(MXC_CCM_BASE + 0x80)
> +#define MXC_CCM_CCGR7		(MXC_CCM_BASE + 0x80)
> +#define MXC_CCM_CMEOR		(MXC_CCM_BASE + 0x88)
> +
> +/* Define the bits in register CCR */
> +#define MXC_CCM_CCR_RBC_EN				(1 << 27)
> +#define MXC_CCM_CCR_REG_BYPASS_CNT_MASK 		(0x3F << 21)
> +#define MXC_CCM_CCR_REG_BYPASS_CNT_OFFSET 		(21)
> +#define MXC_CCM_CCR_WB_COUNT_MASK 			(0x7)
> +#define MXC_CCM_CCR_WB_COUNT_OFFSET			(1 << 16)
> +#define MXC_CCM_CCR_COSC_EN				(1 << 12)
> +#define MXC_CCM_CCR_OSCNT_MASK				(0xFF)
> +#define MXC_CCM_CCR_OSCNT_OFFSET			(0)
> +
> +/* Define the bits in register CCDR */
> +#define MXC_CCM_CCDR_MMDC_CH1_HS_MASK			(1 << 16)
> +#define MXC_CCM_CCDR_MMDC_CH0_HS_MASK			(1 << 17)
> +
> +/* Define the bits in register CSR */
> +#define MXC_CCM_CSR_COSC_READY				(1 << 5)
> +#define MXC_CCM_CSR_REF_EN_B				(1 << 0)
> +
> +/* Define the bits in register CCSR */
> +#define MXC_CCM_CCSR_PDF_540M_AUTO_DIS			(1 << 15)
> +#define MXC_CCM_CCSR_PDF_720M_AUTO_DIS			(1 << 14)
> +#define MXC_CCM_CCSR_PDF_454M_AUTO_DIS			(1 << 13)
> +#define MXC_CCM_CCSR_PDF_508M_AUTO_DIS			(1 << 12)
> +#define MXC_CCM_CCSR_PDF_594M_AUTO_DIS			(1 << 11)
> +#define MXC_CCM_CCSR_PDF_352M_AUTO_DIS			(1 << 10)
> +#define MXC_CCM_CCSR_PDF_400M_AUTO_DIS			(1 << 9)
> +#define MXC_CCM_CCSR_STEP_SEL				(1 << 8)
> +#define MXC_CCM_CCSR_PLL1_SW_CLK_SEL			(1 << 2)
> +#define MXC_CCM_CCSR_PLL2_SW_CLK_SEL			(1 << 1)
> +#define MXC_CCM_CCSR_PLL3_SW_CLK_SEL			(1 << 0)
> +
> +/* Define the bits in register CACRR */
> +#define MXC_CCM_CACRR_ARM_PODF_OFFSET			(0)
> +#define MXC_CCM_CACRR_ARM_PODF_MASK			(0x7)
> +
> +/* Define the bits in register CBCDR */
> +#define MXC_CCM_CBCDR_PERIPH_CLK2_PODF_MASK		(0x7 << 27)
> +#define MXC_CCM_CBCDR_PERIPH_CLK2_PODF_OFFSET		(27)
> +#define MXC_CCM_CBCDR_PERIPH2_CLK2_SEL			(1 << 26)
> +#define MXC_CCM_CBCDR_PERIPH_CLK_SEL			(1 << 25)
> +#define MXC_CCM_CBCDR_MMDC_CH0_PODF_MASK		(0x7 << 19)
> +#define MXC_CCM_CBCDR_MMDC_CH0_PODF_OFFSET		(19)
> +#define MXC_CCM_CBCDR_AXI_PODF_MASK			(0x7 << 16)
> +#define MXC_CCM_CBCDR_AXI_PODF_OFFSET			(16)
> +#define MXC_CCM_CBCDR_AHB_PODF_MASK			(0x7 << 10)
> +#define MXC_CCM_CBCDR_AHB_PODF_OFFSET			(10)
> +#define MXC_CCM_CBCDR_IPG_PODF_MASK			(0x3 << 8)
> +#define MXC_CCM_CBCDR_IPG_PODF_OFFSET			(8)
> +#define MXC_CCM_CBCDR_AXI_ALT_SEL			(1 << 7)
> +#define MXC_CCM_CBCDR_AXI_SEL				(1 << 6)
> +#define MXC_CCM_CBCDR_MMDC_CH1_PODF_MASK		(0x7 << 3)
> +#define MXC_CCM_CBCDR_MMDC_CH1_PODF_OFFSET		(3)
> +#define MXC_CCM_CBCDR_PERIPH2_CLK2_PODF_MASK		(0x7 << 0)
> +#define MXC_CCM_CBCDR_PERIPH2_CLK2_PODF_OFFSET		(0)
> +
> +/* Define the bits in register CBCMR */
> +#define MXC_CCM_CBCMR_GPU3D_SHADER_PODF_MASK		(0x7 << 29)
> +#define MXC_CCM_CBCMR_GPU3D_SHADER_PODF_OFFSET		(29)
> +#define MXC_CCM_CBCMR_GPU3D_CORE_PODF_MASK		(0x7 << 26)
> +#define MXC_CCM_CBCMR_GPU3D_CORE_PODF_OFFSET		(26)
> +#define MXC_CCM_CBCMR_GPU2D_CORE_PODF_MASK		(0x7 << 23)
> +#define MXC_CCM_CBCMR_GPU2D_CORE_PODF_OFFSET		(23)
> +#define MXC_CCM_CBCMR_PRE_PERIPH2_CLK_SEL_MASK		(0x3 << 21)
> +#define MXC_CCM_CBCMR_PRE_PERIPH2_CLK_SEL_OFFSET	(21)
> +#define MXC_CCM_CBCMR_PRE_PERIPH2_CLK2_SEL		(1 << 20)
> +#define MXC_CCM_CBCMR_PRE_PERIPH_CLK_SEL_MASK		(0x3 << 18)
> +#define MXC_CCM_CBCMR_PRE_PERIPH_CLK_SEL_OFFSET		(18)
> +#define MXC_CCM_CBCMR_GPU2D_CLK_SEL_MASK		(0x3 << 16)
> +#define MXC_CCM_CBCMR_GPU2D_CLK_SEL_OFFSET		(16)
> +#define MXC_CCM_CBCMR_VPU_AXI_CLK_SEL_MASK		(0x3 << 14)
> +#define MXC_CCM_CBCMR_VPU_AXI_CLK_SEL_OFFSET		(14)
> +#define MXC_CCM_CBCMR_PERIPH_CLK2_SEL_MASK		(0x3 << 12)
> +#define MXC_CCM_CBCMR_PERIPH_CLK2_SEL_OFFSET		(12)
> +#define MXC_CCM_CBCMR_VDOAXI_CLK_SEL			(1 << 11)
> +#define MXC_CCM_CBCMR_PCIE_AXI_CLK_SEL			(1 << 10)
> +#define MXC_CCM_CBCMR_GPU3D_SHADER_CLK_SEL_MASK		(0x3 << 8)
> +#define MXC_CCM_CBCMR_GPU3D_SHADER_CLK_SEL_OFFSET	(8)
> +#define MXC_CCM_CBCMR_GPU3D_CORE_CLK_SEL_MASK		(0x3 << 4)
> +#define MXC_CCM_CBCMR_GPU3D_CORE_CLK_SEL_OFFSET		(4)
> +#define MXC_CCM_CBCMR_GPU3D_AXI_CLK_SEL			(1 << 1)
> +#define MXC_CCM_CBCMR_GPU2D_AXI_CLK_SEL			(1 << 0)
> +
> +/* Define the bits in register CSCMR1 */
> +#define MXC_CCM_CSCMR1_ACLK_EMI_SLOW_MASK		(0x3 << 29)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_SLOW_OFFSET		(29)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_MASK			(0x3 << 27)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_OFFSET			(27)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_SLOW_PODF_MASK		(0x7 << 23)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_SLOW_PODF_OFFSET	(23)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_PODF_MASK		(0x7 << 20)
> +#define MXC_CCM_CSCMR1_ACLK_EMI_PODF_OFFSET		(20)
> +#define MXC_CCM_CSCMR1_USDHC4_CLK_SEL			(1 << 19)
> +#define MXC_CCM_CSCMR1_USDHC3_CLK_SEL			(1 << 18)
> +#define MXC_CCM_CSCMR1_USDHC2_CLK_SEL			(1 << 17)
> +#define MXC_CCM_CSCMR1_USDHC1_CLK_SEL			(1 << 16)
> +#define MXC_CCM_CSCMR1_SSI3_CLK_SEL_MASK		(0x3 << 14)
> +#define MXC_CCM_CSCMR1_SSI3_CLK_SEL_OFFSET		(14)
> +#define MXC_CCM_CSCMR1_SSI2_CLK_SEL_MASK		(0x3 << 12)
> +#define MXC_CCM_CSCMR1_SSI2_CLK_SEL_OFFSET		(12)
> +#define MXC_CCM_CSCMR1_SSI1_CLK_SEL_MASK		(0x3 << 10)
> +#define MXC_CCM_CSCMR1_SSI1_CLK_SEL_OFFSET		(10)
> +#define MXC_CCM_CSCMR1_PERCLK_PODF_MASK			(0x3F)
> +
> +/* Define the bits in register CSCMR2 */
> +#define MXC_CCM_CSCMR2_ESAI_PRE_SEL_MASK		(0x3 << 19)
> +#define MXC_CCM_CSCMR2_ESAI_PRE_SEL_OFFSET		(19)
> +#define MXC_CCM_CSCMR2_LDB_DI1_IPU_DIV			(1 << 11)
> +#define MXC_CCM_CSCMR2_LDB_DI0_IPU_DIV			(1 << 10)
> +#define MXC_CCM_CSCMR2_CAN_CLK_SEL_MASK			(0x3F << 2)
> +#define MXC_CCM_CSCMR2_CAN_CLK_SEL_OFFSET		(2)
> +
> +/* Define the bits in register CSCDR1 */
> +#define MXC_CCM_CSCDR1_VPU_AXI_PODF_MASK		(0x7 << 25)
> +#define MXC_CCM_CSCDR1_VPU_AXI_PODF_OFFSET		(25)
> +#define MXC_CCM_CSCDR1_USDHC4_PODF_MASK			(0x7 << 22)
> +#define MXC_CCM_CSCDR1_USDHC4_PODF_OFFSET		(22)
> +#define MXC_CCM_CSCDR1_USDHC3_PODF_MASK			(0x7 << 19)
> +#define MXC_CCM_CSCDR1_USDHC3_PODF_OFFSET		(19)
> +#define MXC_CCM_CSCDR1_USDHC2_PODF_MASK			(0x7 << 16)
> +#define MXC_CCM_CSCDR1_USDHC2_PODF_OFFSET		(16)
> +#define MXC_CCM_CSCDR1_USDHC1_PODF_MASK			(0x7 << 11)
> +#define MXC_CCM_CSCDR1_USDHC1_PODF_OFFSET		(11)
> +#define MXC_CCM_CSCDR1_USBOH3_CLK_PRED_OFFSET		(8)
> +#define MXC_CCM_CSCDR1_USBOH3_CLK_PRED_MASK		(0x7 << 8)
> +#define MXC_CCM_CSCDR1_USBOH3_CLK_PODF_OFFSET		(6)
> +#define MXC_CCM_CSCDR1_USBOH3_CLK_PODF_MASK		(0x3 << 6)
> +#define MXC_CCM_CSCDR1_UART_CLK_PODF_MASK		(0x3F)
> +#define MXC_CCM_CSCDR1_UART_CLK_PODF_OFFSET		(0)
> +
> +/* Define the bits in register CS1CDR */
> +#define MXC_CCM_CS1CDR_ESAI_CLK_PODF_MASK		(0x3F << 25)
> +#define MXC_CCM_CS1CDR_ESAI_CLK_PODF_OFFSET		(25)
> +#define MXC_CCM_CS1CDR_SSI3_CLK_PODF_MASK		(0x3F << 16)
> +#define MXC_CCM_CS1CDR_SSI3_CLK_PODF_OFFSET		(16)
> +#define MXC_CCM_CS1CDR_ESAI_CLK_PRED_MASK		(0x3 << 9)
> +#define MXC_CCM_CS1CDR_ESAI_CLK_PRED_OFFSET		(9)
> +#define MXC_CCM_CS1CDR_SSI1_CLK_PRED_MASK		(0x7 << 6)
> +#define MXC_CCM_CS1CDR_SSI1_CLK_PRED_OFFSET		(6)
> +#define MXC_CCM_CS1CDR_SSI1_CLK_PODF_MASK		(0x3F)
> +#define MXC_CCM_CS1CDR_SSI1_CLK_PODF_OFFSET		(0)
> +
> +/* Define the bits in register CS2CDR */
> +#define MXC_CCM_CS2CDR_ENFC_CLK_PODF_MASK		(0x3F << 21)
> +#define MXC_CCM_CS2CDR_ENFC_CLK_PODF_OFFSET		(21)
> +#define MXC_CCM_CS2CDR_ENFC_CLK_PRED_MASK		(0x7 << 18)
> +#define MXC_CCM_CS2CDR_ENFC_CLK_PRED_OFFSET		(18)
> +#define MXC_CCM_CS2CDR_ENFC_CLK_SEL_MASK		(0x3 << 16)
> +#define MXC_CCM_CS2CDR_ENFC_CLK_SEL_OFFSET		(16)
> +#define MXC_CCM_CS2CDR_LDB_DI1_CLK_SEL_MASK		(0x7 << 12)
> +#define MXC_CCM_CS2CDR_LDB_DI1_CLK_SEL_OFFSET		(12)
> +#define MXC_CCM_CS2CDR_LDB_DI0_CLK_SEL_MASK		(0x7 << 9)
> +#define MXC_CCM_CS2CDR_LDB_DI0_CLK_SEL_OFFSET		(9)
> +#define MXC_CCM_CS2CDR_SSI2_CLK_PRED_MASK		(0x7 << 6)
> +#define MXC_CCM_CS2CDR_SSI2_CLK_PRED_OFFSET		(6)
> +#define MXC_CCM_CS2CDR_SSI2_CLK_PODF_MASK		(0x3F)
> +#define MXC_CCM_CS2CDR_SSI2_CLK_PODF_OFFSET		(0)
> +
> +/* Define the bits in register CDCDR */
> +#define MXC_CCM_CDCDR_HSI_TX_PODF_MASK			(0x7 << 29)
> +#define MXC_CCM_CDCDR_HSI_TX_PODF_OFFSET		(29)
> +#define MXC_CCM_CDCDR_HSI_TX_CLK_SEL			(1 << 28)
> +#define MXC_CCM_CDCDR_SPDIF0_CLK_PRED_MASK		(0x7 << 25)
> +#define MXC_CCM_CDCDR_SPDIF0_CLK_PRED_OFFSET		(25)
> +#define MXC_CCM_CDCDR_SPDIF0_CLK_PODF_MASK		(0x7 << 19)
> +#define MXC_CCM_CDCDR_SPDIF0_CLK_PODF_OFFSET		(19)
> +#define MXC_CCM_CDCDR_SPDIF0_CLK_SEL_MASK		(0x3 << 20)
> +#define MXC_CCM_CDCDR_SPDIF0_CLK_SEL_OFFSET		(20)
> +#define MXC_CCM_CDCDR_SPDIF1_CLK_PRED_MASK		(0x7 << 12)
> +#define MXC_CCM_CDCDR_SPDIF1_CLK_PRED_OFFSET		(12)
> +#define MXC_CCM_CDCDR_SPDIF1_CLK_PODF_MASK		(0x7 << 9)
> +#define MXC_CCM_CDCDR_SPDIF1_CLK_PODF_OFFSET		(9)
> +#define MXC_CCM_CDCDR_SPDIF1_CLK_SEL_MASK		(0x3 << 7)
> +#define MXC_CCM_CDCDR_SPDIF1_CLK_SEL_OFFSET		(7)
> +
> +/* Define the bits in register CHSCCDR */
> +#define MXC_CCM_CHSCCDR_IPU1_DI1_PRE_CLK_SEL_MASK	(0x7 << 15)
> +#define MXC_CCM_CHSCCDR_IPU1_DI1_PRE_CLK_SEL_OFFSET	(15)
> +#define MXC_CCM_CHSCCDR_IPU1_DI1_PODF_MASK		(0x7 << 12)
> +#define MXC_CCM_CHSCCDR_IPU1_DI1_PODF_OFFSET		(12)
> +#define MXC_CCM_CHSCCDR_IPU1_DI1_CLK_SEL_MASK		(0x7 << 9)
> +#define MXC_CCM_CHSCCDR_IPU1_DI1_CLK_SEL_OFFSET		(9)
> +#define MXC_CCM_CHSCCDR_IPU1_DI0_PRE_CLK_SEL_MASK	(0x7 << 6)
> +#define MXC_CCM_CHSCCDR_IPU1_DI0_PRE_CLK_SEL_OFFSET	(6)
> +#define MXC_CCM_CHSCCDR_IPU1_DI0_PODF_MASK		(0x7 << 3)
> +#define MXC_CCM_CHSCCDR_IPU1_DI0_PODF_OFFSET		(3)
> +#define MXC_CCM_CHSCCDR_IPU1_DI0_CLK_SEL_MASK		(0x7)
> +#define MXC_CCM_CHSCCDR_IPU1_DI0_CLK_SEL_OFFSET		(0)
> +
> +/* Define the bits in register CSCDR2 */
> +#define MXC_CCM_CSCDR2_ECSPI_CLK_PODF_MASK		(0x3F << 19)
> +#define MXC_CCM_CSCDR2_ECSPI_CLK_PODF_OFFSET		(19)
> +#define MXC_CCM_CHSCCDR_IPU2_DI1_PRE_CLK_SEL_MASK	(0x7 << 15)
> +#define MXC_CCM_CHSCCDR_IPU2_DI1_PRE_CLK_SEL_OFFSET	(15)
> +#define MXC_CCM_CHSCCDR_IPU2_DI1_PODF_MASK		(0x7 << 12)
> +#define MXC_CCM_CHSCCDR_IPU2_DI1_PODF_OFFSET		(12)
> +#define MXC_CCM_CHSCCDR_IPU2_DI1_CLK_SEL_MASK		(0x7 << 9)
> +#define MXC_CCM_CHSCCDR_IPU2_DI1_CLK_SEL_OFFSET		(9)
> +#define MXC_CCM_CHSCCDR_IPU2_DI0_PRE_CLK_SEL_MASK	(0x7 << 6)
> +#define MXC_CCM_CHSCCDR_IPU2_DI0_PRE_CLK_SEL_OFFSET	(6)
> +#define MXC_CCM_CHSCCDR_IPU2_DI0_PODF_MASK		(0x7 << 3)
> +#define MXC_CCM_CHSCCDR_IPU2_DI0_PODF_OFFSET		(3)
> +#define MXC_CCM_CHSCCDR_IPU2_DI0_CLK_SEL_MASK		(0x7)
> +#define MXC_CCM_CHSCCDR_IPU2_DI0_CLK_SEL_OFFSET		(0)
> +
> +/* Define the bits in register CSCDR3 */
> +#define MXC_CCM_CSCDR3_IPU2_HSP_PODF_MASK		(0x7 << 16)
> +#define MXC_CCM_CSCDR3_IPU2_HSP_PODF_OFFSET		(16)
> +#define MXC_CCM_CSCDR3_IPU2_HSP_CLK_SEL_MASK		(0x3 << 14)
> +#define MXC_CCM_CSCDR3_IPU2_HSP_CLK_SEL_OFFSET		(14)
> +#define MXC_CCM_CSCDR3_IPU1_HSP_PODF_MASK		(0x7 << 11)
> +#define MXC_CCM_CSCDR3_IPU1_HSP_PODF_OFFSET		(11)
> +#define MXC_CCM_CSCDR3_IPU1_HSP_CLK_SEL_MASK		(0x3 << 9)
> +#define MXC_CCM_CSCDR3_IPU1_HSP_CLK_SEL_OFFSET		(9)
> +
> +/* Define the bits in register CDHIPR */
> +#define MXC_CCM_CDHIPR_ARM_PODF_BUSY			(1 << 16)
> +#define MXC_CCM_CDHIPR_PERIPH_CLK_SEL_BUSY		(1 << 5)
> +#define MXC_CCM_CDHIPR_MMDC_CH0_PODF_BUSY		(1 << 4)
> +#define MXC_CCM_CDHIPR_PERIPH2_CLK_SEL_BUSY		(1 << 3)
> +#define MXC_CCM_CDHIPR_MMDC_CH1_PODF_BUSY		(1 << 2)
> +#define MXC_CCM_CDHIPR_AHB_PODF_BUSY			(1 << 1)
> +#define MXC_CCM_CDHIPR_AXI_PODF_BUSY			(1)
> +
> +/* Define the bits in register CLPCR */
> +#define MXC_CCM_CLPCR_MASK_L2CC_IDLE			(1 << 27)
> +#define MXC_CCM_CLPCR_MASK_SCU_IDLE			(1 << 26)
> +#define MXC_CCM_CLPCR_MASK_CORE3_WFI			(1 << 25)
> +#define MXC_CCM_CLPCR_MASK_CORE2_WFI			(1 << 24)
> +#define MXC_CCM_CLPCR_MASK_CORE1_WFI			(1 << 23)
> +#define MXC_CCM_CLPCR_MASK_CORE0_WFI			(1 << 22)
> +#define MXC_CCM_CLPCR_BYP_MMDC_CH1_LPM_HS		(1 << 21)
> +#define MXC_CCM_CLPCR_BYP_MMDC_CH0_LPM_HS		(1 << 19)
> +#define MXC_CCM_CLPCR_WB_CORE_AT_LPM			(1 << 17)
> +#define MXC_CCM_CLPCR_WB_PER_AT_LPM			(1 << 17)
> +#define MXC_CCM_CLPCR_COSC_PWRDOWN			(1 << 11)
> +#define MXC_CCM_CLPCR_STBY_COUNT_MASK			(0x3 << 9)
> +#define MXC_CCM_CLPCR_STBY_COUNT_OFFSET			(9)
> +#define MXC_CCM_CLPCR_VSTBY				(1 << 8)
> +#define MXC_CCM_CLPCR_DIS_REF_OSC			(1 << 7)
> +#define MXC_CCM_CLPCR_SBYOS				(1 << 6)
> +#define MXC_CCM_CLPCR_ARM_CLK_DIS_ON_LPM		(1 << 5)
> +#define MXC_CCM_CLPCR_LPSR_CLK_SEL_MASK			(0x3 << 3)
> +#define MXC_CCM_CLPCR_LPSR_CLK_SEL_OFFSET		(3)
> +#define MXC_CCM_CLPCR_BYPASS_PMIC_VFUNC_READY		(1 << 2)
> +#define MXC_CCM_CLPCR_LPM_MASK				(0x3)
> +#define MXC_CCM_CLPCR_LPM_OFFSET			(0)
> +
> +/* Define the bits in register CISR */
> +#define MXC_CCM_CISR_ARM_PODF_LOADED			(1 << 26)
> +#define MXC_CCM_CISR_MMDC_CH0_PODF_LOADED		(1 << 23)
> +#define MXC_CCM_CISR_PERIPH_CLK_SEL_LOADED		(1 << 22)
> +#define MXC_CCM_CISR_MMDC_CH1_PODF_LOADED		(1 << 21)
> +#define MXC_CCM_CISR_AHB_PODF_LOADED			(1 << 20)
> +#define MXC_CCM_CISR_PERIPH2_CLK_SEL_LOADED		(1 << 19)
> +#define MXC_CCM_CISR_AXI_PODF_LOADED			(1 << 17)
> +#define MXC_CCM_CISR_COSC_READY				(1 << 6)
> +#define MXC_CCM_CISR_LRF_PLL				(1)
> +
> +/* Define the bits in register CIMR */
> +#define MXC_CCM_CIMR_MASK_ARM_PODF_LOADED		(1 << 26)
> +#define MXC_CCM_CIMR_MASK_MMDC_CH0_PODF_LOADED		(1 << 23)
> +#define MXC_CCM_CIMR_MASK_PERIPH_CLK_SEL_LOADED		(1 << 22)
> +#define MXC_CCM_CIMR_MASK_MMDC_CH1_PODF_LOADED		(1 << 21)
> +#define MXC_CCM_CIMR_MASK_AHB_PODF_LOADED		(1 << 20)
> +#define MXC_CCM_CIMR_MASK_PERIPH2_CLK_SEL_LOADED	(1 << 22)
> +#define MXC_CCM_CIMR_MASK_AXI_PODF_LOADED		(1 << 17)
> +#define MXC_CCM_CIMR_MASK_COSC_READY			(1 << 6)
> +#define MXC_CCM_CIMR_MASK_LRF_PLL			(1)
> +
> +/* Define the bits in register CCOSR */
> +#define MXC_CCM_CCOSR_CKO2_EN_OFFSET			(1 << 24)
> +#define MXC_CCM_CCOSR_CKO2_DIV_MASK			(0x7 << 21)
> +#define MXC_CCM_CCOSR_CKO2_DIV_OFFSET			(21)
> +#define MXC_CCM_CCOSR_CKO2_SEL_OFFSET			(16)
> +#define MXC_CCM_CCOSR_CKO2_SEL_MASK			(0x1F << 16)
> +#define MXC_CCM_CCOSR_CKOL_EN				(0x1 << 7)
> +#define MXC_CCM_CCOSR_CKOL_DIV_MASK			(0x7 << 4)
> +#define MXC_CCM_CCOSR_CKOL_DIV_OFFSET			(4)
> +#define MXC_CCM_CCOSR_CKOL_SEL_MASK			(0xF)
> +#define MXC_CCM_CCOSR_CKOL_SEL_OFFSET			(0)
> +
> +/* Define the bits in registers CGPR */
> +#define MXC_CCM_CGPR_EFUSE_PROG_SUPPLY_GATE		(1 << 4)
> +#define MXC_CCM_CGPR_MMDC_EXT_CLK_DIS			(1 << 2)
> +#define MXC_CCM_CGPR_PMIC_DELAY_SCALER			(1)
> +
> +/* Define the bits in registers CCGRx */
> +#define MXC_CCM_CCGR_CG_MASK				3
> +
> +#define MXC_CCM_CCGR0_CG15_OFFSET			30
> +#define MXC_CCM_CCGR0_CG15_MASK			(0x3 << 30)
> +#define MXC_CCM_CCGR0_CG14_OFFSET			28
> +#define MXC_CCM_CCGR0_CG14_MASK			(0x3 << 28)
> +#define MXC_CCM_CCGR0_CG13_OFFSET			26
> +#define MXC_CCM_CCGR0_CG13_MASK			(0x3 << 26)
> +#define MXC_CCM_CCGR0_CG12_OFFSET			24
> +#define MXC_CCM_CCGR0_CG12_MASK			(0x3 << 24)
> +#define MXC_CCM_CCGR0_CG11_OFFSET			22
> +#define MXC_CCM_CCGR0_CG11_MASK			(0x3 << 22)
> +#define MXC_CCM_CCGR0_CG10_OFFSET			20
> +#define MXC_CCM_CCGR0_CG10_MASK			(0x3 << 20)
> +#define MXC_CCM_CCGR0_CG9_OFFSET			18
> +#define MXC_CCM_CCGR0_CG9_MASK			(0x3 << 18)
> +#define MXC_CCM_CCGR0_CG8_OFFSET			16
> +#define MXC_CCM_CCGR0_CG8_MASK			(0x3 << 16)
> +#define MXC_CCM_CCGR0_CG7_OFFSET			14
> +#define MXC_CCM_CCGR0_CG6_OFFSET			12
> +#define MXC_CCM_CCGR0_CG5_OFFSET			10
> +#define MXC_CCM_CCGR0_CG5_MASK			(0x3 << 10)
> +#define MXC_CCM_CCGR0_CG4_OFFSET			8
> +#define MXC_CCM_CCGR0_CG4_MASK			(0x3 << 8)
> +#define MXC_CCM_CCGR0_CG3_OFFSET			6
> +#define MXC_CCM_CCGR0_CG3_MASK			(0x3 << 6)
> +#define MXC_CCM_CCGR0_CG2_OFFSET			4
> +#define MXC_CCM_CCGR0_CG2_MASK			(0x3 << 4)
> +#define MXC_CCM_CCGR0_CG1_OFFSET			2
> +#define MXC_CCM_CCGR0_CG1_MASK			(0x3 << 2)
> +#define MXC_CCM_CCGR0_CG0_OFFSET			0
> +#define MXC_CCM_CCGR0_CG0_MASK				3
> +
> +#define MXC_CCM_CCGR1_CG15_OFFSET			30
> +#define MXC_CCM_CCGR1_CG14_OFFSET			28
> +#define MXC_CCM_CCGR1_CG13_OFFSET			26
> +#define MXC_CCM_CCGR1_CG12_OFFSET			24
> +#define MXC_CCM_CCGR1_CG11_OFFSET			22
> +#define MXC_CCM_CCGR1_CG10_OFFSET			20
> +#define MXC_CCM_CCGR1_CG9_OFFSET			18
> +#define MXC_CCM_CCGR1_CG8_OFFSET			16
> +#define MXC_CCM_CCGR1_CG7_OFFSET			14
> +#define MXC_CCM_CCGR1_CG6_OFFSET			12
> +#define MXC_CCM_CCGR1_CG5_OFFSET			10
> +#define MXC_CCM_CCGR1_CG4_OFFSET			8
> +#define MXC_CCM_CCGR1_CG3_OFFSET			6
> +#define MXC_CCM_CCGR1_CG2_OFFSET			4
> +#define MXC_CCM_CCGR1_CG1_OFFSET			2
> +#define MXC_CCM_CCGR1_CG0_OFFSET			0
> +
> +#define MXC_CCM_CCGR2_CG15_OFFSET			30
> +#define MXC_CCM_CCGR2_CG14_OFFSET			28
> +#define MXC_CCM_CCGR2_CG13_OFFSET			26
> +#define MXC_CCM_CCGR2_CG12_OFFSET			24
> +#define MXC_CCM_CCGR2_CG11_OFFSET			22
> +#define MXC_CCM_CCGR2_CG10_OFFSET			20
> +#define MXC_CCM_CCGR2_CG9_OFFSET			18
> +#define MXC_CCM_CCGR2_CG8_OFFSET			16
> +#define MXC_CCM_CCGR2_CG7_OFFSET			14
> +#define MXC_CCM_CCGR2_CG6_OFFSET			12
> +#define MXC_CCM_CCGR2_CG5_OFFSET			10
> +#define MXC_CCM_CCGR2_CG4_OFFSET			8
> +#define MXC_CCM_CCGR2_CG3_OFFSET			6
> +#define MXC_CCM_CCGR2_CG2_OFFSET			4
> +#define MXC_CCM_CCGR2_CG1_OFFSET			2
> +#define MXC_CCM_CCGR2_CG0_OFFSET			0
> +
> +#define MXC_CCM_CCGR3_CG15_OFFSET			30
> +#define MXC_CCM_CCGR3_CG14_OFFSET			28
> +#define MXC_CCM_CCGR3_CG13_OFFSET			26
> +#define MXC_CCM_CCGR3_CG12_OFFSET			24
> +#define MXC_CCM_CCGR3_CG11_OFFSET			22
> +#define MXC_CCM_CCGR3_CG10_OFFSET			20
> +#define MXC_CCM_CCGR3_CG9_OFFSET			18
> +#define MXC_CCM_CCGR3_CG8_OFFSET			16
> +#define MXC_CCM_CCGR3_CG7_OFFSET			14
> +#define MXC_CCM_CCGR3_CG6_OFFSET			12
> +#define MXC_CCM_CCGR3_CG5_OFFSET			10
> +#define MXC_CCM_CCGR3_CG4_OFFSET			8
> +#define MXC_CCM_CCGR3_CG3_OFFSET			6
> +#define MXC_CCM_CCGR3_CG2_OFFSET			4
> +#define MXC_CCM_CCGR3_CG1_OFFSET			2
> +#define MXC_CCM_CCGR3_CG0_OFFSET			0
> +
> +#define MXC_CCM_CCGR4_CG15_OFFSET			30
> +#define MXC_CCM_CCGR4_CG14_OFFSET			28
> +#define MXC_CCM_CCGR4_CG13_OFFSET			26
> +#define MXC_CCM_CCGR4_CG12_OFFSET			24
> +#define MXC_CCM_CCGR4_CG11_OFFSET			22
> +#define MXC_CCM_CCGR4_CG10_OFFSET			20
> +#define MXC_CCM_CCGR4_CG9_OFFSET			18
> +#define MXC_CCM_CCGR4_CG8_OFFSET			16
> +#define MXC_CCM_CCGR4_CG7_OFFSET			14
> +#define MXC_CCM_CCGR4_CG6_OFFSET			12
> +#define MXC_CCM_CCGR4_CG5_OFFSET			10
> +#define MXC_CCM_CCGR4_CG4_OFFSET			8
> +#define MXC_CCM_CCGR4_CG3_OFFSET			6
> +#define MXC_CCM_CCGR4_CG2_OFFSET			4
> +#define MXC_CCM_CCGR4_CG1_OFFSET			2
> +#define MXC_CCM_CCGR4_CG0_OFFSET			0
> +
> +#define MXC_CCM_CCGR5_CG15_OFFSET			30
> +#define MXC_CCM_CCGR5_CG14_OFFSET			28
> +#define MXC_CCM_CCGR5_CG14_MASK			(0x3 << 28)
> +#define MXC_CCM_CCGR5_CG13_OFFSET			26
> +#define MXC_CCM_CCGR5_CG13_MASK			(0x3 << 26)
> +#define MXC_CCM_CCGR5_CG12_OFFSET			24
> +#define MXC_CCM_CCGR5_CG12_MASK			(0x3 << 24)
> +#define MXC_CCM_CCGR5_CG11_OFFSET			22
> +#define MXC_CCM_CCGR5_CG11_MASK			(0x3 << 22)
> +#define MXC_CCM_CCGR5_CG10_OFFSET			20
> +#define MXC_CCM_CCGR5_CG10_MASK			(0x3 << 20)
> +#define MXC_CCM_CCGR5_CG9_OFFSET			18
> +#define MXC_CCM_CCGR5_CG9_MASK			(0x3 << 18)
> +#define MXC_CCM_CCGR5_CG8_OFFSET			16
> +#define MXC_CCM_CCGR5_CG8_MASK			(0x3 << 16)
> +#define MXC_CCM_CCGR5_CG7_OFFSET			14
> +#define MXC_CCM_CCGR5_CG7_MASK			(0x3 << 14)
> +#define MXC_CCM_CCGR5_CG6_OFFSET			12
> +#define MXC_CCM_CCGR5_CG6_MASK			(0x3 << 12)
> +#define MXC_CCM_CCGR5_CG5_OFFSET			10
> +#define MXC_CCM_CCGR5_CG4_OFFSET			8
> +#define MXC_CCM_CCGR5_CG3_OFFSET			6
> +#define MXC_CCM_CCGR5_CG2_OFFSET			4
> +#define MXC_CCM_CCGR5_CG2_MASK			(0x3 << 4)
> +#define MXC_CCM_CCGR5_CG1_OFFSET			2
> +#define MXC_CCM_CCGR5_CG0_OFFSET			0
> +
> +#define MXC_CCM_CCGR6_CG15_OFFSET			30
> +#define MXC_CCM_CCGR6_CG14_OFFSET			28
> +#define MXC_CCM_CCGR6_CG14_MASK			(0x3 << 28)
> +#define MXC_CCM_CCGR6_CG13_OFFSET			26
> +#define MXC_CCM_CCGR6_CG13_MASK			(0x3 << 26)
> +#define MXC_CCM_CCGR6_CG12_OFFSET			24
> +#define MXC_CCM_CCGR6_CG12_MASK			(0x3 << 24)
> +#define MXC_CCM_CCGR6_CG11_OFFSET			22
> +#define MXC_CCM_CCGR6_CG11_MASK			(0x3 << 22)
> +#define MXC_CCM_CCGR6_CG10_OFFSET			20
> +#define MXC_CCM_CCGR6_CG10_MASK			(0x3 << 20)
> +#define MXC_CCM_CCGR6_CG9_OFFSET			18
> +#define MXC_CCM_CCGR6_CG9_MASK			(0x3 << 18)
> +#define MXC_CCM_CCGR6_CG8_OFFSET			16
> +#define MXC_CCM_CCGR6_CG8_MASK			(0x3 << 16)
> +#define MXC_CCM_CCGR6_CG7_OFFSET			14
> +#define MXC_CCM_CCGR6_CG7_MASK			(0x3 << 14)
> +#define MXC_CCM_CCGR6_CG6_OFFSET			12
> +#define MXC_CCM_CCGR6_CG6_MASK			(0x3 << 12)
> +#define MXC_CCM_CCGR6_CG5_OFFSET			10
> +#define MXC_CCM_CCGR6_CG4_OFFSET			8
> +#define MXC_CCM_CCGR6_CG3_OFFSET			6
> +#define MXC_CCM_CCGR6_CG2_OFFSET			4
> +#define MXC_CCM_CCGR6_CG2_MASK			(0x3 << 4)
> +#define MXC_CCM_CCGR6_CG1_OFFSET			2
> +#define MXC_CCM_CCGR6_CG0_OFFSET			0
> +
> +#define MXC_CCM_CCGR7_CG15_OFFSET			30
> +#define MXC_CCM_CCGR7_CG14_OFFSET			28
> +#define MXC_CCM_CCGR7_CG14_MASK			(0x3 << 28)
> +#define MXC_CCM_CCGR7_CG13_OFFSET			26
> +#define MXC_CCM_CCGR7_CG13_MASK			(0x3 << 26)
> +#define MXC_CCM_CCGR7_CG12_OFFSET			24
> +#define MXC_CCM_CCGR7_CG12_MASK			(0x3 << 24)
> +#define MXC_CCM_CCGR7_CG11_OFFSET			22
> +#define MXC_CCM_CCGR7_CG11_MASK			(0x3 << 22)
> +#define MXC_CCM_CCGR7_CG10_OFFSET			20
> +#define MXC_CCM_CCGR7_CG10_MASK			(0x3 << 20)
> +#define MXC_CCM_CCGR7_CG9_OFFSET			18
> +#define MXC_CCM_CCGR7_CG9_MASK			(0x3 << 18)
> +#define MXC_CCM_CCGR7_CG8_OFFSET			16
> +#define MXC_CCM_CCGR7_CG8_MASK			(0x3 << 16)
> +#define MXC_CCM_CCGR7_CG7_OFFSET			14
> +#define MXC_CCM_CCGR7_CG7_MASK			(0x3 << 14)
> +#define MXC_CCM_CCGR7_CG6_OFFSET			12
> +#define MXC_CCM_CCGR7_CG6_MASK			(0x3 << 12)
you can not use the offset for the mask?
> +#define MXC_CCM_CCGR7_CG5_OFFSET			10
> +#define MXC_CCM_CCGR7_CG4_OFFSET			8
> +#define MXC_CCM_CCGR7_CG3_OFFSET			6
> +#define MXC_CCM_CCGR7_CG2_OFFSET			4
> +#define MXC_CCM_CCGR7_CG2_MASK			(0x3 << 4)
> +#define MXC_CCM_CCGR7_CG1_OFFSET			2
> +#define MXC_CCM_CCGR7_CG0_OFFSET			0
> +
> +#endif				/* __ARCH_ARM_MACH_MX6_CRM_REGS_H__ */
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index 3c0be96..e853ca1 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -1,5 +1,10 @@
>  
> -#if defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX35 || defined CONFIG_ARCH_IMX51 || defined CONFIG_ARCH_IMX53 || defined CONFIG_X86
> +#if defined CONFIG_ARCH_IMX25 || \
> +	defined CONFIG_ARCH_IMX35 || \
> +	defined CONFIG_ARCH_IMX51 || \
> +	defined CONFIG_ARCH_IMX53 || \
> +	defined CONFIG_ARCH_IMX6 || \
> +	defined CONFIG_X86
can we have a CONFIG_HAVE_MACH something instead
>  #include <mach/barebox.lds.h>
>  #endif

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
