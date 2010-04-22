Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4vf4-00011i-OA
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 12:37:47 +0000
Date: Thu, 22 Apr 2010 14:37:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422123740.GS7882@pengutronix.de>
References: <alpine.LRH.2.00.1004141327120.2049@localhost.localdomain>
	<20100416075656.GX7882@pengutronix.de>
	<i2yba216b431004190159h873158a1qacee1d4686455e1a@mail.gmail.com>
	<20100422113543.GO7882@pengutronix.de>
	<alpine.LRH.2.00.1004221347110.21066@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.00.1004221347110.21066@localhost.localdomain>
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
Subject: Re: [PATCH v2] MX25PDK: Add support for 64MiB DDR2 SDRAM
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 22, 2010 at 01:47:49PM +0200, Ivo Clarysse wrote:
> Newer Freescale 3-Stack development systems are equipped
> with 64MiB of DDR2 SDRAM, instead of the 128MiB of mDDR SDRAM
> with which earlier versions were shipped.
> 
> Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>

Ok, applied to next.

Sascha

> ---
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 10561f0..02d5db9 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -6,7 +6,8 @@ config ARCH_TEXT_BASE
>  	default 0x08f00000 if MACH_MX1ADS
>  	default 0xc0000000 if MACH_IMX21ADS
>  	default 0xa0000000 if MACH_IMX27ADS
> -	default 0x87f00000 if MACH_FREESCALE_MX25_3STACK
> +	default 0x83f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
> +	default 0x87f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
>  	default 0x87f00000 if MACH_FREESCALE_MX35_3STACK
>  	default 0xa7f00000 if MACH_PCA100
>  	default 0xa0000000 if MACH_PCM038
> @@ -300,6 +301,15 @@ config EUKREA_CPUIMX27_QUART4
>  	bool "Q4"
>  endchoice
>  endif
> +if MACH_FREESCALE_MX25_3STACK
> +choice
> +	prompt "SDRAM Type"
> +config FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
> +	bool "64 MB (DDR2)"
> +config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
> +	bool "128 MB (mDDR)"
> +endchoice
> +endif
>  endmenu
> 
>  menu "i.MX specific settings        "
> diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
> index 5590e55..5b802ad 100644
> --- a/board/freescale-mx25-3-stack/3stack.c
> +++ b/board/freescale-mx25-3-stack/3stack.c
> @@ -48,6 +48,27 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
>  	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
>  	{ .ptr_type = 4, .addr = 0xb8002054, .val = 0x22252521, },
>  	{ .ptr_type = 4, .addr = 0xb8002058, .val = 0x22220a00, },
> +#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
> +	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x0076e83a, },
> +	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000304, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, },
> +	{ .ptr_type = 4, .addr = 0x80000f00, .val = 0x12344321, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, },
> +	{ .ptr_type = 1, .addr = 0x82000000, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x83000000, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x80000333, .val = 0xda, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, },
> +	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12344321, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2210000, },
> +	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
> +	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, },
> +	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x81000780, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, },
> +#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
>  	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
>  	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
>  	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x21, },
> @@ -59,6 +80,9 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
>  	{ .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
>  	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216880, },
>  	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
> +#else
> +#error "Unsupported SDRAM type"
> +#endif
>  	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
>  };
> 
> @@ -99,7 +123,13 @@ static struct memory_platform_data sdram_pdata = {
>  static struct device_d sdram0_dev = {
>  	.name     = "mem",
>  	.map_base = IMX_SDRAM_CS0,
> +#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
> +	.size     = 64 * 1024 * 1024,
> +#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
>  	.size     = 128 * 1024 * 1024,
> +#else
> +#error "Unsupported SDRAM type"
> +#endif
>  	.platform_data = &sdram_pdata,
>  };
> 
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
