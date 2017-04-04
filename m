Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvTfD-0006z5-1H
 for barebox@lists.infradead.org; Tue, 04 Apr 2017 18:58:50 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 4 Apr 2017 18:58:24 +0000
Message-ID: <1491332304.18442.64.camel@kymetacorp.com>
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
 <20170403105523.16797-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20170403105523.16797-5-s.trumtrar@pengutronix.de>
Content-Language: en-US
Content-ID: <0D0E10E388E7E8429920D5720140C7CD@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 4/7] ARM: socfpga: add arria10 support
To: "s.trumtrar@pengutronix.de" <s.trumtrar@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2017-04-03 at 12:55 +0200, Steffen Trumtrar wrote:

> +	vco = src_hz;
> +	vco /= (1 + denom);
> +	vco *= (1 + numer);

Don't you get rounding error by dividing first?

> +	/* dedicated pins */
> +	writel(pinmux->dedicated_io_4, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x0c);
> +	writel(pinmux->dedicated_io_5, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x10);
> +	writel(pinmux->dedicated_io_6, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x14);
> +	writel(pinmux->dedicated_io_7, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x18);
> +	writel(pinmux->dedicated_io_8, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x1c);
> +	writel(pinmux->dedicated_io_9, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x20);
> +	writel(pinmux->dedicated_io_10, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x24);
> +	writel(pinmux->dedicated_io_11, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x28);
> +	writel(pinmux->dedicated_io_12, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x2c);
> +	writel(pinmux->dedicated_io_13, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x30);
> +	writel(pinmux->dedicated_io_14, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x34);
> +	writel(pinmux->dedicated_io_15, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x38);
> +	writel(pinmux->dedicated_io_16, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x3c);
> +	writel(pinmux->dedicated_io_17, ARRIA10_PINMUX_DEDICATED_IO_ADDR + 0x40);
> +
> +	writel(pinmux->cfg_dedicated_io_bank, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x00);
> +	writel(pinmux->cfg_dedicated_io_1, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x04);
> +	writel(pinmux->cfg_dedicated_io_2, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x08);
> +	writel(pinmux->cfg_dedicated_io_3, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x0c);
> +	writel(pinmux->cfg_dedicated_io_4, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x10);
> +	writel(pinmux->cfg_dedicated_io_5, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x14);
> +	writel(pinmux->cfg_dedicated_io_6, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x18);
> +	writel(pinmux->cfg_dedicated_io_7, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x1c);
> +	writel(pinmux->cfg_dedicated_io_8, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x20);
> +	writel(pinmux->cfg_dedicated_io_9, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x24);
> +	writel(pinmux->cfg_dedicated_io_10, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x28);
> +	writel(pinmux->cfg_dedicated_io_11, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x2c);
> +	writel(pinmux->cfg_dedicated_io_12, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x30);
> +	writel(pinmux->cfg_dedicated_io_13, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x3c);
> +	writel(pinmux->cfg_dedicated_io_14, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x38);
> +	writel(pinmux->cfg_dedicated_io_15, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x3c);
> +	writel(pinmux->cfg_dedicated_io_16, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x40);
> +	writel(pinmux->cfg_dedicated_io_17, ARRIA10_PINMUX_DEDICATED_IO_CFG_ADDR + 0x44);

Sure are a lot of copied lines there.  Wouldn't an array and loop be
more elegant?


> +void arria10_reset_deassert_dedicated_peripherals(void)
> +{
> +	uint32_t mask0 = 0;
> +	uint32_t mask1 = 0;
> +	uint32_t mask = 0;
> +
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_SDMMCECC;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_QSPIECC;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_NANDECC;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_DMAECC;
> +
> +	/* enable ECC OCP first */
> +	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST, mask);
> +
> +	mask = 0;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_SDMMC;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_QSPI;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_NAND;
> +	mask |= ARRIA10_RSTMGR_PER0MODRST_DMA;

It looks like the peripherals to bring out of reset are hard coded here?
Should unused peripherals be brought out of reset?

> +
> +	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST, mask);
> +
> +	mask = ARRIA10_RSTMGR_PER1MODRST_L4SYSTMR0;

How come this time mask isn't set to 0 first like the two blocks above?
I.e., why not write it in a consistent style?

> +
> +	mask |= ARRIA10_RSTMGR_PER1MODRST_UART1;
> +	mask |= ARRIA10_RSTMGR_PER1MODRST_UART0;
> +
> +	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST, mask);

Is there a reason to bring system timer0, and uart 0 & 1 out of reset
here, and then a bunch of other peripherals in the same register out of
reset below?  Why not do them all at once?

> +
> +	mask1 |= ARRIA10_RSTMGR_PER1MODRST_I2C3;
> +	mask1 |= ARRIA10_RSTMGR_PER1MODRST_I2C4;
> +	mask1 |= ARRIA10_RSTMGR_PER1MODRST_I2C2;
> +	mask0 |= ARRIA10_RSTMGR_PER0MODRST_EMACECC1 |
> +		 ARRIA10_RSTMGR_PER0MODRST_EMAC1;
> +	mask0 |= ARRIA10_RSTMGR_PER0MODRST_EMACECC2 |
> +		 ARRIA10_RSTMGR_PER0MODRST_EMAC2;
> +	mask0 |= ARRIA10_RSTMGR_PER0MODRST_EMACECC0 |
> +		 ARRIA10_RSTMGR_PER0MODRST_EMAC0;
> +	mask0 |= ARRIA10_RSTMGR_PER0MODRST_SPIS0;
> +	mask0 |= ARRIA10_RSTMGR_PER0MODRST_SPIM0;
> +	mask1 |= ARRIA10_RSTMGR_PER1MODRST_UART1;

uart1 was already brought out of reset in the previous block, why again?

> +	mask1 |= ARRIA10_RSTMGR_PER1MODRST_GPIO2;

Why now mask1 and mask0?  Why not continue the pattern from the previous
three blocks and use mask.

> +
> +	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST,
> +		     mask & ECC_MASK);

This looks like a bug.  mask was last set to the bits for PER*1*MODRST
peripherals but here it is programming PER*0*MODRST register.
 

> +	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST, mask1);
> +	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER0MODRST, mask0);
> +}
> +
> +static const uint32_t per0fpgamasks[] = {
> +	ARRIA10_RSTMGR_PER0MODRST_EMACECC0 |
> +	ARRIA10_RSTMGR_PER0MODRST_EMAC0,
> +	ARRIA10_RSTMGR_PER0MODRST_EMACECC1 |
> +	ARRIA10_RSTMGR_PER0MODRST_EMAC1,
> +	ARRIA10_RSTMGR_PER0MODRST_EMACECC2 |
> +	ARRIA10_RSTMGR_PER0MODRST_EMAC2,
> +	0, /* i2c0 per1mod */

Comments for unset lines look incorrect.  These should be per0modrst
bits, not per1modrst bits.

> +	0, /* i2c1 per1mod */
> +	0, /* i2c0_emac */
> +	0, /* i2c1_emac */
> +	0, /* i2c2_emac */
> +	ARRIA10_RSTMGR_PER0MODRST_NANDECC |
> +	ARRIA10_RSTMGR_PER0MODRST_NAND,
> +	ARRIA10_RSTMGR_PER0MODRST_QSPIECC |
> +	ARRIA10_RSTMGR_PER0MODRST_QSPI,
> +	ARRIA10_RSTMGR_PER0MODRST_SDMMCECC |
> +	ARRIA10_RSTMGR_PER0MODRST_SDMMC,
> +	ARRIA10_RSTMGR_PER0MODRST_SPIM0,
> +	ARRIA10_RSTMGR_PER0MODRST_SPIM1,
> +	ARRIA10_RSTMGR_PER0MODRST_SPIS0,
> +	ARRIA10_RSTMGR_PER0MODRST_SPIS1,
> +	0, /* uart0 per1mod */
> +	0, /* uart1 per1mod */
> +};

This hard codes what peripherals are connected to the FPGA, right?
Shouldn't this come from the device tree?

> +
> +static const uint32_t per1fpgamasks[] = {
> +	0, /* emac0 per0mod */

Ditto, comments don't match the array values, per0 vs per1.

> +	0, /* emac1 per0mod */
> +	0, /* emac2 per0mod */
> +	ARRIA10_RSTMGR_PER1MODRST_I2C0,
> +	ARRIA10_RSTMGR_PER1MODRST_I2C1,
> +	ARRIA10_RSTMGR_PER1MODRST_I2C2, /* i2c0_emac */
> +	ARRIA10_RSTMGR_PER1MODRST_I2C3, /* i2c1_emac */
> +	ARRIA10_RSTMGR_PER1MODRST_I2C4, /* i2c2_emac */
> +	0, /* nand per0mod */
> +	0, /* qspi per0mod */
> +	0, /* sdmmc per0mod */
> +	0, /* spim0 per0mod */
> +	0, /* spim1 per0mod */
> +	0, /* spis0 per0mod */
> +	0, /* spis1 per0mod */
> +	ARRIA10_RSTMGR_PER1MODRST_UART0,
> +	ARRIA10_RSTMGR_PER1MODRST_UART1,
> +};
> +



> +#define DDR_CONFIG_ELEMENTS	(sizeof(ddr_config)/sizeof(uint32_t))

ARRAY_SIZE(ddr_config)


> +void udelay(unsigned long time)
> +{
> +	unsigned long i = 1000 * time;
> +
> +	while (i--)
> +		;
> +}

Is there something wrong with the barebox udelay?  How does this delay
for microseconds?  

> +
> +static void ddr_set_bit(uint32_t ereg, uint32_t bit)
> +{
> +	unsigned int tmp = readl(ereg);
> +
> +	tmp |= (1 << bit);
> +	writel(tmp, ereg);
> +}

Why not use setbits_le32() like the rest of the barebox code?

> +
> +static void ddr_clr_bit(uint32_t ereg, uint32_t bit)
> +{
> +	unsigned int tmp = readl(ereg);
> +
> +	tmp &= ~(1 << bit);
> +	writel(tmp, ereg);
> +}

Ditto, clrbits_le32

> +
> +static void ddr_delay(uint32_t delay)
> +{
> +	int tmr;
> +
> +	for (tmr = 0; tmr < delay; tmr++)
> +		udelay(1000);
> +}

Why not the mdelay() that already exists?


> +/* Function to startup the SDRAM*/
> +static int arria10_sdram_startup(void)
> +{
> +	uint32_t val;
> +	/* Release NOC ddr scheduler from reset */
> +	val = readl(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_BRGMODRST);
> +	val &= ~ARRIA10_RSTMGR_BRGMODRST_DDRSCH;
> +	writel(val, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_BRGMODRST);

clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_BRGMODRST,
             ARRIA10_RSTMGR_BRGMODRST_DDRSCH)


> diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
> index 21804d93df72..d210a6cc2318 100644
> --- a/images/Makefile.socfpga
> +++ b/images/Makefile.socfpga
> @@ -4,11 +4,19 @@
>  
>  # %.socfpgaimg - convert into socfpga image
>  # ----------------------------------------------------------------
> +ifdef CONFIG_ARCH_SOCFPGA_ARRIA10
> +quiet_cmd_socfpga_image = SOCFPGA-IMG $@
> +      cmd_socfpga_image = scripts/socfpga_mkimage -o $@ -b -v1 $<

Why prepend the extra barebox header?

> +
> +$(obj)/%.socfpgaimg: $(obj)/% FORCE
> +	$(call if_changed,socfpga_image)
> +else
>  quiet_cmd_socfpga_image = SOCFPGA-IMG $@
>        cmd_socfpga_image = scripts/socfpga_mkimage -o $@ $<
>  
>  $(obj)/%.socfpgaimg: $(obj)/% FORCE
>  	$(call if_changed,socfpga_image)
Why these two lines above duplicated in the ifdef?  They are the same.

Maybe don't use ifdef and duplicated code and instead have options that
are set based on image type.  Like this:

SOCFPGA_IMAGE_ARGS-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += -v1
SOCFPGA_IMAGE_ARGS-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += -v0
cmd_socfpga_image = scripts/socfpga_mkimage -o $@ $(SOCFPGA_IMAGE_ARGS-y) $<


> +endif
>  
>  # ----------------------- Cyclone5 based boards ---------------------------
>  pblx-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk_xload
> diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
> index d7fe1b1b69f7..3763044aacab 100644
> --- a/scripts/socfpga_mkimage.c
> +++ b/scripts/socfpga_mkimage.c
> @@ -62,6 +62,7 @@ static uint32_t bb_header[] = {
>  	0x00000000,	/* socfpga header */
>  	0x00000000,	/* socfpga header */
>  	0x00000000,	/* socfpga header */
> +	0x00000000,	/* socfpga header */
>  	0xea00006b,	/* entry. b 0x200 (offset may be adjusted) */
>  };

I think this change will break extra barebox header with v0 images.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
