Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXeNO-0008CA-LZ
 for barebox@lists.infradead.org; Thu, 24 May 2012 20:11:22 +0000
Date: Thu, 24 May 2012 22:11:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120524201106.GC30400@pengutronix.de>
References: <1337866065-6775-1-git-send-email-agalakhov@gmail.com>
 <1337866065-6775-3-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337866065-6775-3-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 2/2] Add FriendlyArm Tiny210 board (S5PV210)
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 24, 2012 at 07:27:45PM +0600, Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
> +
> +#define ADDR_V210_SDMMC_BASE	0xD0037488
> +#define ADDR_CopySDMMCtoMem	0xD0037F98
> +
> +#define RR(x) (*(volatile uint32_t*)(x))
> +

why not use regular readl/writel here?

> +int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t block_count)
> +{
> +	typedef uint32_t (*func_t) (int32_t, uint32_t, uint16_t, uint32_t*, int8_t);
> +	uint32_t chbase = RR(ADDR_V210_SDMMC_BASE);
> +	func_t func = (func_t)RR(ADDR_CopySDMMCtoMem);
> +	int chan = (chbase - 0xEB000000) >> 20;
> +	if (chan != 0 && chan != 2)
> +		return 0;
> +	return func(chan, start_block, block_count, (uint32_t*)dest, 0) ? 1 : 0;
> +}
> +
> +
> +void __bare_init board_init_lowlevel(void)
> +{
> +	uint32_t r;
> +
> +#ifdef CONFIG_S3C_PLL_INIT
> +	s5p_init_pll();
> +#endif

Can we do without pll init? If not, the ifdef should not be here.

> +
> +	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
> +		return; /* No, we don't. */
> +
> +#ifdef CONFIG_S3C_SDRAM_INIT
> +	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
> +#endif

Does it make sense to run this code without SDRAM setup code? It seems
the ifdef should not be here. Without SDRAM setup code you'll jump to
nirvana below.

> +
> +	if (! s5p_irom_load_mmc((void*)TEXT_BASE - 16, 1, (barebox_image_size + 16 + 511) / 512))
> +		while (1) { } /* hang */
> +
> +	/* Jump to SDRAM */
> +	r = (unsigned)TEXT_BASE;
> +	__asm__ __volatile__("mov pc, %0" : : "r"(r));
> +	while (1) { } /* hang */
> +}
> diff --git a/arch/arm/boards/tiny210/tiny210.c b/arch/arm/boards/tiny210/tiny210.c
> +static int tiny210_mem_init(void)
> +{
> +	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s5p_get_memory_size());
> +	return 0;
> +}
> +mem_initcall(tiny210_mem_init);
> +
> +static int tiny210_console_init(void)
> +{
> +	/*
> +	 * configure the UART1 right now, as barebox will
> +	 * start to send data immediately
> +	 */
> +	s3c_gpio_mode(GPA00_RXD0 | ENABLE_PU);
> +	s3c_gpio_mode(GPA01_TXD0);
> +	s3c_gpio_mode(GPA02_NCTS0 | ENABLE_PU);
> +	s3c_gpio_mode(GPA03_NRTS0);
> +
> +	add_generic_device("s3c_serial", -1, NULL,

Please use DEVICE_ID_DYNAMIC instead of -1.

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
