Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJyNv-000281-3q
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 07:33:39 +0000
Date: Mon, 4 Jul 2016 09:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704073317.GE20657@pengutronix.de>
References: <1467321854-15090-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467321854-15090-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] eukrea-cpuimx35: Fix wrong clock gating for ESDHC1
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, eric@eukrea.com

On Thu, Jun 30, 2016 at 11:24:13PM +0200, Alexander Kurz wrote:
> With commit 962d8b89d2ce ("imx35-regs: add defines for USB and SD") the
> shifter argument for the iMX35 ESDHC1 CGR instance has been erroneously
> assigned to CGR1 instead of CGR0. Fix this for the eukrea-cpuimx35 board.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c | 6 ++++--
>  arch/arm/mach-imx/include/mach/imx35-regs.h       | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index 9c4ea13..8b5514b 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -232,10 +232,12 @@ static int eukrea_cpuimx35_core_init(void)
>  {
>  	u32 reg;
>  
> -	/* enable clock for I2C1, SDHC1, USB and FEC */
> +	/* enable clock for I2C1, ESDHC1, USB and FEC */
> +	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
> +	reg |= 0x3 << MX35_CCM_CGR0_ESDHC1_SHIFT;
> +	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
>  	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
>  	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
> -	reg |= 0x3 << MX35_CCM_CGR1_SDHC1_SHIFT;
>  	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT,
>  	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
>  	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
> diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
> index 52e209b..6905400 100644
> --- a/arch/arm/mach-imx/include/mach/imx35-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
> @@ -150,9 +150,9 @@
>  #define MX35_CCM_CGR3	0x38
>  
>  #define MX35_CCM_CGR0_CSPI1_SHIFT	10
> +#define MX35_CCM_CGR0_ESDHC1_SHIFT	26
>  #define MX35_CCM_CGR1_FEC_SHIFT	0
>  #define MX35_CCM_CGR1_I2C1_SHIFT	10
> -#define MX35_CCM_CGR1_SDHC1_SHIFT	26
>  #define MX35_CCM_CGR2_UART2_SHIFT	18
>  #define MX35_CCM_CGR2_USB_SHIFT	22
>  
> -- 
> 2.1.4
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
