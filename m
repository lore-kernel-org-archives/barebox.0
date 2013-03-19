Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHwfn-0004oR-Aa
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 13:33:52 +0000
Date: Tue, 19 Mar 2013 08:40:42 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130319134042.GZ16050@kryptos>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
 <1363684920-3034-6-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363684920-3034-6-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 5/5] ARM: zynq: Add support for the Avnet Zedboard
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 19, 2013 at 10:22:00AM +0100, Steffen Trumtrar wrote:
> The Avnet ZedBoard is an evalboard with a Zynq-7020 based MPSoC.
> There is also a Digilent ZedBoard, that is the same but only for
> academic customers.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boards/avnet-zedboard/Makefile            |   1 +
>  arch/arm/boards/avnet-zedboard/board.c             |  38 ++++
>  arch/arm/boards/avnet-zedboard/config.h            |   4 +
>  .../boards/avnet-zedboard/env/init/config-board    |   7 +
>  arch/arm/boards/avnet-zedboard/flash_header.c      |  76 +++++++
>  arch/arm/boards/avnet-zedboard/lowlevel.c          | 252 +++++++++++++++++++++
>  arch/arm/configs/zedboard_defconfig                |  45 ++++
>  7 files changed, 423 insertions(+)
>  create mode 100644 arch/arm/boards/avnet-zedboard/Makefile
>  create mode 100644 arch/arm/boards/avnet-zedboard/board.c
>  create mode 100644 arch/arm/boards/avnet-zedboard/config.h
>  create mode 100644 arch/arm/boards/avnet-zedboard/env/init/config-board
>  create mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
>  create mode 100644 arch/arm/boards/avnet-zedboard/lowlevel.c
>  create mode 100644 arch/arm/configs/zedboard_defconfig
> 
> diff --git a/arch/arm/boards/avnet-zedboard/Makefile b/arch/arm/boards/avnet-zedboard/Makefile
> new file mode 100644
> index 0000000..5c05544
> --- /dev/null
> +++ b/arch/arm/boards/avnet-zedboard/Makefile
> @@ -0,0 +1 @@
> +obj-y += board.o lowlevel.o flash_header.o

Should lowlevel.o and flash_header.o only be built into the PBL image?

[..]
> diff --git a/arch/arm/boards/avnet-zedboard/flash_header.c b/arch/arm/boards/avnet-zedboard/flash_header.c
> new file mode 100644
> index 0000000..e7e2f8d
> --- /dev/null
> +++ b/arch/arm/boards/avnet-zedboard/flash_header.c
> @@ -0,0 +1,76 @@
[..]
> +#define REG(a, v) { .addr = cpu_to_le32(a), .val = cpu_to_le32(v), }
> +
> +struct zynq_reg_entry __ps7reg_entry_section reg_entry[] = {
> +	REG(ZYNQ_SLCR_UNLOCK, 0x0000DF0D),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_CLK_621_TRUE, 0x00000001),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_APER_CLK_CTRL, 0x01FC044D),
> +
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028008),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CFG, 0x000FA220),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028010),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028011),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028010),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028000),
> +
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E008),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CFG, 0x001452C0),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E010),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E011),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E010),
> +	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E000),
> +
> +	REG(0xf8000150, 0x00000a03),
> +
> +	/* stop */
> +	REG(0xFFFFFFFF, 0x00000000),
> +};
> +
[..]
> diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
> new file mode 100644
> index 0000000..b50886e
> --- /dev/null
> +++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
[..]
> +void __naked barebox_arm_reset_vector(void)
> +{
> +	/* open sesame */
> +	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
> +
> +	/* turn on LD9 */
> +	writel(0x00000200, 0xF800071C);
> +	writel(0x00000080, 0xE000A204);
> +	writel(0x00000080, 0xE000A000);
> +
> +	/* ps7_clock_init_data */
> +	writel(0x1F000200, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_CLK_CTRL);
> +	writel(0x00F00701, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DCI_CLK_CTRL);
> +	writel(0x00002803, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
> +	writel(0x00000A03, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DBG_CLK_CTRL);
> +	writel(0x00000501, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PCAP_CLK_CTRL);
> +	writel(0x00000000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_TOPSW_CLK_CTRL);
> +	writel(0x00100A00, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA0_CLK_CTRL);
> +	writel(0x00100700, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA1_CLK_CTRL);
> +	writel(0x00101400, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA2_CLK_CTRL);
> +	writel(0x00101400, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_FPGA3_CLK_CTRL);
> +	/* 6:2:1 mode */
> +	writel(0x00000001, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_CLK_621_TRUE);
> +	writel(0x01FC044D, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_APER_CLK_CTRL);
> +
> +	/* configure the PLLs */
> +	/* ARM PLL */
> +	writel(0x00028008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
> +	writel(0x000FA220, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CFG);
> +	writel(0x00028010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
> +	writel(0x00028011, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
> +	writel(0x00028010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);

Any particular reason why you are configuring the ARM and IO PLLs twice?
(once in the ps7_reg section in the flash header, and once here?)

> +
> +	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_ARM_LOCK))
> +		;
> +	writel(0x00028000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL);
> +
> +	/* DDR PLL */
> +	/* set to bypass mode */
> +	writel(0x0001A018, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
> +	/* assert reset */
> +	writel(0x0001A019, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
> +	/* set feedback divs */
> +	writel(0x00020019, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
> +	writel(0x0012C220, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CFG);
> +	/* set ddr2xclk and ddr3xclk: 3,2 */
> +	writel(0x0C200003, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_CLK_CTRL);
> +	/* deassert reset */
> +	writel(0x00020018, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
> +	/* wait pll lock */
> +	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_DDR_LOCK))
> +		;
> +	/* remove bypass mode */
> +	writel(0x00020008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_DDR_PLL_CTRL);
> +
> +	/* IO PLL */
> +	writel(0x0001E008, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
> +	writel(0x001452C0, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CFG);
> +	writel(0x0001E010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
> +	writel(0x0001E011, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
> +	writel(0x0001E010, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
> +
> +	while (!(readl(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_PLL_STATUS) & PLL_IO_LOCK))
> +		;
> +	writel(0x0001E000, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL);
> +
> +	/*
> +	 * INP_TYPE[1:2] = {off, vref, diff, lvcmos}
> +	 * DCI_UPDATE[3], TERM_EN[4]
> +	 * DCI_TYPE[5:6] = {off, drive, res, term}
> +	 * IBUF_DISABLE_MODE[7] = {ibuf, ibuf_disable}
> +	 * TERM_DISABLE_MODE[8] = {always, dynamic}
> +	 * OUTPUT_EN[9:10] = {ibuf, res, res, obuf}
> +	 * PULLUP_EN[11]
> +	 */
> +	writel(0x00000600, ZYNQ_DDRIOB_ADDR0);
> +	writel(0x00000600, ZYNQ_DDRIOB_ADDR1);
> +	writel(0x00000672, ZYNQ_DDRIOB_DATA0);
> +	writel(0x00000672, ZYNQ_DDRIOB_DATA1);
> +	writel(0x00000674, ZYNQ_DDRIOB_DIFF0);
> +	writel(0x00000674, ZYNQ_DDRIOB_DIFF1);
> +	writel(0x00000600, ZYNQ_DDRIOB_CLOCK);
> +	/*
> +	 * Drive_P[0:6], Drive_N[7:13]
> +	 * Slew_P[14:18], Slew_N[19:23]
> +	 * GTL[24:26], RTerm[27:31]
> +	 */
> +	writel(0x00D6861C, ZYNQ_DDRIOB_DRIVE_SLEW_ADDR);
> +	writel(0x00F9861C, ZYNQ_DDRIOB_DRIVE_SLEW_DATA);
> +	writel(0x00F9861C, ZYNQ_DDRIOB_DRIVE_SLEW_DIFF);
> +	writel(0x00D6861C, ZYNQ_DDRIOB_DRIVE_SLEW_CLOCK);
> +	/*
> +	 * VREF_INT_EN[0]
> +	 * VREF_SEL[1:4] = {0001=0.6V, 0100=0.75V, 1000=0.9V}
> +	 * VREF_EXT_EN[5:6] = {dis/dis, dis/en, en/dis, en/en}
> +	 * RES[7:8], REFIO_EN[9]
> +	 */
> +	/* FIXME: Xilinx sets this to internal, but Zedboard should support
> +	   external VRef, too */
> +	writel(0x00000E09, ZYNQ_DDRIOB_DDR_CTRL);
> +	/*
> +	 * RESET[0], ENABLE[1]
> +	 * NREF_OPT1[6:7], NREF_OPT2[8:10], NREF_OPT4[11:13]
> +	 * PREF_OPT1[14:15], PREF_OPT2[17:19], UPDATE_CONTROL[20]
> +	 */
> +	writel(0x00000021, ZYNQ_DDRIOB_DCI_CTRL);
> +	writel(0x00000020, ZYNQ_DDRIOB_DCI_CTRL);
> +	writel(0x00100823, ZYNQ_DDRIOB_DCI_CTRL);
> +
> +	while (!(readl(ZYNQ_DDRIOB_DCI_STATUS) & DCI_DONE))
> +		;
> +
> +	writel(0x0E00E07F, 0xF8007000);
> +
> +	/* ps7_ddr_init_data */
> +	writel(0x00000080, 0XF8006000);
> +	writel(0x00081081, 0XF8006004);
> +	writel(0x03C0780F, 0XF8006008);
> +	writel(0x02001001, 0XF800600C);
> +	writel(0x00014001, 0XF8006010);
> +	writel(0x0004159B, 0XF8006014);
> +	writel(0x452460D2, 0XF8006018);
> +	writel(0x720238E5, 0XF800601C);
> +	writel(0x272872D0, 0XF8006020);
[..]
> +	writel(0x000003FF, 0XF800621C);
> +	writel(0x000003FF, 0XF8006220);
> +	writel(0x000003FF, 0XF8006224);
> +	writel(0x00000000, 0XF80062A8);
> +	writel(0x00000000, 0XF80062AC);
> +	writel(0x00005125, 0XF80062B0);
> +	writel(0x000012A8, 0XF80062B4);
> +	writel(0x00000081, 0XF8006000);

Interestingly, this data is identical for the zc702.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
