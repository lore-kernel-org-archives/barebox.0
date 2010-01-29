Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NamIg-0006Oj-Ke
	for barebox@lists.infradead.org; Fri, 29 Jan 2010 08:33:59 +0000
Date: Fri, 29 Jan 2010 09:33:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100129083348.GL19551@pengutronix.de>
References: <ba216b431001280321i1e649402v7ca0dd9c2661a2f8@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba216b431001280321i1e649402v7ca0dd9c2661a2f8@mail.gmail.com>
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
Subject: Re: [PATCH 1/1] Fix nand_imx for i.MX21
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 28, 2010 at 12:21:18PM +0100, Ivo Clarysse wrote:
> Recent changes to the nand_imx driver broke it for i.MX21 systems;
> the i.MX21 NAND controller is more akin to the one in i.MX27/i.MX31,
> than to the one in i.MX25/i.MX35.

Thanks. Applied.

Sascha

> 
> Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
> ---
> diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h
> b/arch/arm/mach-imx/include/mach/imx21-regs.h
> index b8cb060..904177b 100644
> --- a/arch/arm/mach-imx/include/mach/imx21-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
> @@ -107,6 +107,7 @@
>  #define MPCTL1_BRMO		(1 << 6)
>  #define MPCTL1_LF		(1 << 15)
> 
> +#define PCCR0_NFC_EN   (1 << 19)
>  #define PCCR1_GPT1_EN	(1 << 25)
> 
>  #define CCSR_32K_SR		(1 << 15)
> diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
> index 7c57ec4..c228f96 100644
> --- a/arch/arm/mach-imx/nand.c
> +++ b/arch/arm/mach-imx/nand.c
> @@ -59,7 +59,7 @@ void imx_nand_set_layout(int writesize, int datawidth)
>  	writel(rcsr, IMX_CCM_BASE + CCM_RCSR);
>  }
> 
> -#elif defined CONFIG_ARCH_IMX27
> +#elif defined(CONFIG_ARCH_IMX21) || defined (CONFIG_ARCH_IMX27)
> 
>  #define FMCR_NF_FMS		(1 << 5)
>  #define FMCR_NF_16BIT_SEL	(1 << 4)
> diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
> index 5811e27..70db8f9 100644
> --- a/drivers/nand/nand_imx.c
> +++ b/drivers/nand/nand_imx.c
> @@ -32,8 +32,8 @@
> 
>  #define DVR_VER "2.0"
> 
> -#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35() || cpu_is_mx21())
> -#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27())
> +#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
> +#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
> 
>  /*
>   * Addresses for NFC registers
> @@ -249,6 +249,16 @@ static void __nand_boot_init send_cmd(struct
> imx_nand_host *host, u16 cmd)
>  	writew(cmd, host->regs + NFC_FLASH_CMD);
>  	writew(NFC_CMD, host->regs + NFC_CONFIG2);
> 
> +	if (cpu_is_mx21() && (cmd == NAND_CMD_RESET)) {
> +		/* Reset completion is indicated by NFC_CONFIG2 */
> +		/* being set to 0 */
> +		int i;
> +		for (i = 0; i < 100000; i++) {
> +			if (readw(host->regs + NFC_CONFIG2) == 0) {
> +				break;
> +			}
> +		}
> +	} else
>  	/* Wait for operation to complete */
>  	wait_op_done(host);
>  }
> @@ -826,9 +836,13 @@ static int __init imxnd_probe(struct device_d *dev)
>  	struct nand_ecclayout *oob_smallpage, *oob_largepage;
>  	u16 tmp;
>  	int err = 0;
> +
>  #ifdef CONFIG_ARCH_IMX27
>  	PCCR1 |= PCCR1_NFC_BAUDEN;
>  #endif
> +#ifdef CONFIG_ARCH_IMX21
> +	PCCR0 |= PCCR0_NFC_EN;
> +#endif
>  	/* Allocate memory for MTD device structure and private data */
>  	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
>  			NAND_MAX_OOBSIZE, GFP_KERNEL);
> @@ -1015,7 +1029,13 @@ void __nand_boot_init imx_nand_load_image(void
> *dest, int size)
>  {
>  	struct imx_nand_host host;
>  	u32 tmp, page, block, blocksize, pagesize;
> -
> +#ifdef CONFIG_ARCH_IMX21
> +	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
> +	if (tmp & (1 << 5))
> +		host.pagesize_2k = 1;
> +	else
> +		host.pagesize_2k = 0;
> +#endif
>  #ifdef CONFIG_ARCH_IMX27
>  	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
>  	if (tmp & (1 << 5))
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
