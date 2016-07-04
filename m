Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Uy-0001jC-J3
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:49:05 +0000
Date: Mon, 4 Jul 2016 11:48:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704094841.GC20656@pengutronix.de>
References: <1467321854-15090-1-git-send-email-akurz@blala.de>
 <1467321854-15090-2-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467321854-15090-2-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 2/2] imx35-regs: add and use common CGR element shifters
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, eric@eukrea.com

On Thu, Jun 30, 2016 at 11:24:14PM +0200, Alexander Kurz wrote:
> Add some missing Clock Gate Register element shifters which were implemented
> as magic numbers in the arm/boards directory. Use the new shifters for
> inproved code readability.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/boards/eukrea_cpuimx35/lowlevel.c      |  9 +++++----
>  arch/arm/boards/guf-cupid/lowlevel.c            |  5 +++--
>  arch/arm/boards/phytec-phycore-imx35/lowlevel.c |  6 +++---
>  arch/arm/mach-imx/include/mach/imx35-regs.h     | 15 +++++++++++++++
>  4 files changed, 26 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> index 83c25fe..5573657 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> @@ -92,17 +92,18 @@ void __bare_init __naked barebox_arm_reset_vector(void)
>  	writel(0x00001000, ccm_base + MX35_CCM_PDR0);
>  
>  	r = readl(ccm_base + MX35_CCM_CGR0);
> -	r |= 0x00300000;
> +	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
>  	writel(r, ccm_base + MX35_CCM_CGR0);
>  
>  	r = readl(ccm_base + MX35_CCM_CGR1);
> -	r |= 0x00030C00;
> -	r |= 0x00000003;
> +	r |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
> +	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
> +	r |= 0x3 << MX35_CCM_CGR1_IOMUX_SHIFT;
>  	writel(r, ccm_base + MX35_CCM_CGR1);
>  
>  	/* enable watchdog asap */
>  	r = readl(ccm_base + MX35_CCM_CGR2);
> -	r |= 0x03000000;
> +	r |= 0x3 << MX35_CCM_CGR2_WDOG_SHIFT;
>  	writel(r, ccm_base + MX35_CCM_CGR2);
>  
>  	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
> diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
> index bcd2a24..31b7cdf 100644
> --- a/arch/arm/boards/guf-cupid/lowlevel.c
> +++ b/arch/arm/boards/guf-cupid/lowlevel.c
> @@ -294,11 +294,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
>  
>  	/* configure clock-gates */
>  	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
> -	r0 |= 0x00300000;
> +	r0 |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
>  	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
>  
>  	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
> -	r0 |= 0x00000c03;
> +	r0 |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
> +	r0 |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
>  	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
>  
>  	/* Configure SDRAM */
> diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
> index 1ad5439..577fcd9 100644
> --- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
> @@ -104,12 +104,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
>  		writel(CCM_PDR0_399, ccm_base + MX35_CCM_PDR0);
>  
>  	r = readl(ccm_base + MX35_CCM_CGR0);
> -	r |= 0x00300000;
> +	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
>  	writel(r, ccm_base + MX35_CCM_CGR0);
>  
>  	r = readl(ccm_base + MX35_CCM_CGR1);
> -	r |= 0x00000C00;
> -	r |= 0x00000003;
> +	r |= 0x3 << X35_CCM_CGR1_FEC_SHIFT;

Added a missing 'M' here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
