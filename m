Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG2cb-000720-Jk
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 07:30:43 +0000
Date: Thu, 14 Mar 2013 08:30:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130314073040.GB1906@pengutronix.de>
References: <1363097053-25784-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363097053-25784-1-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 1/2] AM33XX: Move muxing defines to header file
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Tue, Mar 12, 2013 at 03:04:12PM +0100, Teresa G=E1mez wrote:
> The muxing in the am33xx_mux.c file is not generic as the muxing
> setup does not fit for every board. Move the structs and functions
> to the mach/am33xx-mux.h so board dependend mux setups can be
> created.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Looks good to me. Jan is more familiar with the am33xx. Jan,
could you have a look on it?

Sascha

> ---
>  arch/arm/boards/beaglebone/board.c           |    4 +-
>  arch/arm/boards/beaglebone/lowlevel.c        |    2 +-
>  arch/arm/boards/pcm051/board.c               |    2 +-
>  arch/arm/mach-omap/am33xx_mux.c              |  246 +-------------------=
------
>  arch/arm/mach-omap/include/mach/am33xx-mux.h |  246 ++++++++++++++++++++=
+++++-
>  5 files changed, 252 insertions(+), 248 deletions(-)
> =

> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beagleb=
one/board.c
> index e4b8b0a..70c6070 100644
> --- a/arch/arm/boards/beaglebone/board.c
> +++ b/arch/arm/boards/beaglebone/board.c
> @@ -95,7 +95,7 @@ static void beaglebone_eth_init(void)
>  =

>  	writel(0, AM33XX_MAC_MII_SEL);
>  =

> -	enable_mii1_pin_mux();
> +	am33xx_enable_mii1_pin_mux();
>  =

>  	am33xx_add_cpsw(&cpsw_data);
>  }
> @@ -104,7 +104,7 @@ static int beaglebone_devices_init(void)
>  {
>  	am33xx_add_mmc0(NULL);
>  =

> -	enable_i2c0_pin_mux();
> +	am33xx_enable_i2c0_pin_mux();
>  	beaglebone_eth_init();
>  =

>  	armlinux_set_bootparams((void *)0x80000100);
> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beag=
lebone/lowlevel.c
> index 76ac90b..a9737d9 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -243,7 +243,7 @@ static int beaglebone_board_init(void)
>  		beaglebone_sram_init();
>  =

>  	/* Enable pin mux */
> -	enable_uart0_pin_mux();
> +	am33xx_enable_uart0_pin_mux();
>  =

>  	return 0;
>  }
> diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/boar=
d.c
> index 9739a2c..a38d844 100644
> --- a/arch/arm/boards/pcm051/board.c
> +++ b/arch/arm/boards/pcm051/board.c
> @@ -52,7 +52,7 @@ mem_initcall(pcm051_mem_init);
>  =

>  static int pcm051_devices_init(void)
>  {
> -	enable_mmc0_pin_mux();
> +	am33xx_enable_mmc0_pin_mux();
>  =

>  	am33xx_add_mmc0(NULL);
>  =

> diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_=
mux.c
> index 3d7f245..36fe379 100644
> --- a/arch/arm/mach-omap/am33xx_mux.c
> +++ b/arch/arm/mach-omap/am33xx_mux.c
> @@ -15,242 +15,12 @@
>  #include <common.h>
>  #include <config.h>
>  #include <asm/io.h>
> +#include <mach/am33xx-mux.h>
>  #include <mach/am33xx-silicon.h>
>  =

>  #define MUX_CFG(value, offset)	\
>  	__raw_writel(value, (AM33XX_CTRL_BASE + offset));
>  =

> -/* PAD Control Fields */
> -#define SLEWCTRL	(0x1 << 6)
> -#define	RXACTIVE	(0x1 << 5)
> -#define	PULLUP_EN	(0x1 << 4) /* Pull UP Selection */
> -#define PULLUDEN	(0x0 << 3) /* Pull up enabled */
> -#define PULLUDDIS	(0x1 << 3) /* Pull up disabled */
> -#define MODE(val)	val
> -
> -/*
> - * PAD CONTROL OFFSETS
> - * Field names corresponds to the pad signal name
> - */
> -/* TODO replace with defines */
> -struct pad_signals {
> -	int gpmc_ad0;
> -	int gpmc_ad1;
> -	int gpmc_ad2;
> -	int gpmc_ad3;
> -	int gpmc_ad4;
> -	int gpmc_ad5;
> -	int gpmc_ad6;
> -	int gpmc_ad7;
> -	int gpmc_ad8;
> -	int gpmc_ad9;
> -	int gpmc_ad10;
> -	int gpmc_ad11;
> -	int gpmc_ad12;
> -	int gpmc_ad13;
> -	int gpmc_ad14;
> -	int gpmc_ad15;
> -	int gpmc_a0;
> -	int gpmc_a1;
> -	int gpmc_a2;
> -	int gpmc_a3;
> -	int gpmc_a4;
> -	int gpmc_a5;
> -	int gpmc_a6;
> -	int gpmc_a7;
> -	int gpmc_a8;
> -	int gpmc_a9;
> -	int gpmc_a10;
> -	int gpmc_a11;
> -	int gpmc_wait0;
> -	int gpmc_wpn;
> -	int gpmc_be1n;
> -	int gpmc_csn0;
> -	int gpmc_csn1;
> -	int gpmc_csn2;
> -	int gpmc_csn3;
> -	int gpmc_clk;
> -	int gpmc_advn_ale;
> -	int gpmc_oen_ren;
> -	int gpmc_wen;
> -	int gpmc_be0n_cle;
> -	int lcd_data0;
> -	int lcd_data1;
> -	int lcd_data2;
> -	int lcd_data3;
> -	int lcd_data4;
> -	int lcd_data5;
> -	int lcd_data6;
> -	int lcd_data7;
> -	int lcd_data8;
> -	int lcd_data9;
> -	int lcd_data10;
> -	int lcd_data11;
> -	int lcd_data12;
> -	int lcd_data13;
> -	int lcd_data14;
> -	int lcd_data15;
> -	int lcd_vsync;
> -	int lcd_hsync;
> -	int lcd_pclk;
> -	int lcd_ac_bias_en;
> -	int mmc0_dat3;
> -	int mmc0_dat2;
> -	int mmc0_dat1;
> -	int mmc0_dat0;
> -	int mmc0_clk;
> -	int mmc0_cmd;
> -	int mii1_col;
> -	int mii1_crs;
> -	int mii1_rxerr;
> -	int mii1_txen;
> -	int mii1_rxdv;
> -	int mii1_txd3;
> -	int mii1_txd2;
> -	int mii1_txd1;
> -	int mii1_txd0;
> -	int mii1_txclk;
> -	int mii1_rxclk;
> -	int mii1_rxd3;
> -	int mii1_rxd2;
> -	int mii1_rxd1;
> -	int mii1_rxd0;
> -	int rmii1_refclk;
> -	int mdio_data;
> -	int mdio_clk;
> -	int spi0_sclk;
> -	int spi0_d0;
> -	int spi0_d1;
> -	int spi0_cs0;
> -	int spi0_cs1;
> -	int ecap0_in_pwm0_out;
> -	int uart0_ctsn;
> -	int uart0_rtsn;
> -	int uart0_rxd;
> -	int uart0_txd;
> -	int uart1_ctsn;
> -	int uart1_rtsn;
> -	int uart1_rxd;
> -	int uart1_txd;
> -	int i2c0_sda;
> -	int i2c0_scl;
> -	int mcasp0_aclkx;
> -	int mcasp0_fsx;
> -	int mcasp0_axr0;
> -	int mcasp0_ahclkr;
> -	int mcasp0_aclkr;
> -	int mcasp0_fsr;
> -	int mcasp0_axr1;
> -	int mcasp0_ahclkx;
> -	int xdma_event_intr0;
> -	int xdma_event_intr1;
> -	int nresetin_out;
> -	int porz;
> -	int nnmi;
> -	int osc0_in;
> -	int osc0_out;
> -	int rsvd1;
> -	int tms;
> -	int tdi;
> -	int tdo;
> -	int tck;
> -	int ntrst;
> -	int emu0;
> -	int emu1;
> -	int osc1_in;
> -	int osc1_out;
> -	int pmic_power_en;
> -	int rtc_porz;
> -	int rsvd2;
> -	int ext_wakeup;
> -	int enz_kaldo_1p8v;
> -	int usb0_dm;
> -	int usb0_dp;
> -	int usb0_ce;
> -	int usb0_id;
> -	int usb0_vbus;
> -	int usb0_drvvbus;
> -	int usb1_dm;
> -	int usb1_dp;
> -	int usb1_ce;
> -	int usb1_id;
> -	int usb1_vbus;
> -	int usb1_drvvbus;
> -	int ddr_resetn;
> -	int ddr_csn0;
> -	int ddr_cke;
> -	int ddr_ck;
> -	int ddr_nck;
> -	int ddr_casn;
> -	int ddr_rasn;
> -	int ddr_wen;
> -	int ddr_ba0;
> -	int ddr_ba1;
> -	int ddr_ba2;
> -	int ddr_a0;
> -	int ddr_a1;
> -	int ddr_a2;
> -	int ddr_a3;
> -	int ddr_a4;
> -	int ddr_a5;
> -	int ddr_a6;
> -	int ddr_a7;
> -	int ddr_a8;
> -	int ddr_a9;
> -	int ddr_a10;
> -	int ddr_a11;
> -	int ddr_a12;
> -	int ddr_a13;
> -	int ddr_a14;
> -	int ddr_a15;
> -	int ddr_odt;
> -	int ddr_d0;
> -	int ddr_d1;
> -	int ddr_d2;
> -	int ddr_d3;
> -	int ddr_d4;
> -	int ddr_d5;
> -	int ddr_d6;
> -	int ddr_d7;
> -	int ddr_d8;
> -	int ddr_d9;
> -	int ddr_d10;
> -	int ddr_d11;
> -	int ddr_d12;
> -	int ddr_d13;
> -	int ddr_d14;
> -	int ddr_d15;
> -	int ddr_dqm0;
> -	int ddr_dqm1;
> -	int ddr_dqs0;
> -	int ddr_dqsn0;
> -	int ddr_dqs1;
> -	int ddr_dqsn1;
> -	int ddr_vref;
> -	int ddr_vtp;
> -	int ddr_strben0;
> -	int ddr_strben1;
> -	int ain7;
> -	int ain6;
> -	int ain5;
> -	int ain4;
> -	int ain3;
> -	int ain2;
> -	int ain1;
> -	int ain0;
> -	int vrefp;
> -	int vrefn;
> -};
> -
> -struct module_pin_mux {
> -	short reg_offset;
> -	unsigned char val;
> -};
> -
> -#define PAD_CTRL_BASE	0x800
> -#define OFFSET(x)	(unsigned int) (&((struct pad_signals *) \
> -				(PAD_CTRL_BASE))->x)
> -
>  static const __maybe_unused struct module_pin_mux uart0_pin_mux[] =3D {
>  	{OFFSET(uart0_rxd), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* UART0_RXD */
>  	{OFFSET(uart0_txd), (MODE(0) | PULLUDEN)},		/* UART0_TXD */
> @@ -469,7 +239,7 @@ static const __maybe_unused struct module_pin_mux spi=
1_pin_mux[] =3D {
>  /*
>   * Configure the pin mux for the module
>   */
> -static void configure_module_pin_mux(const struct module_pin_mux *mod_pi=
n_mux)
> +void configure_module_pin_mux(const struct module_pin_mux *mod_pin_mux)
>  {
>  	int i;
>  =

> @@ -480,32 +250,32 @@ static void configure_module_pin_mux(const struct m=
odule_pin_mux *mod_pin_mux)
>  		MUX_CFG(mod_pin_mux[i].val, mod_pin_mux[i].reg_offset);
>  }
>  =

> -void enable_mii1_pin_mux(void)
> +void am33xx_enable_mii1_pin_mux(void)
>  {
>  	configure_module_pin_mux(mii1_pin_mux);
>  }
>  =

> -void enable_i2c0_pin_mux(void)
> +void am33xx_enable_i2c0_pin_mux(void)
>  {
>  	configure_module_pin_mux(i2c0_pin_mux);
>  }
>  =

> -void enable_i2c1_pin_mux(void)
> +void am33xx_enable_i2c1_pin_mux(void)
>  {
>  	configure_module_pin_mux(i2c1_pin_mux);
>  }
>  =

> -void enable_i2c2_pin_mux(void)
> +void am33xx_enable_i2c2_pin_mux(void)
>  {
>  	configure_module_pin_mux(i2c2_pin_mux);
>  }
>  =

> -void enable_uart0_pin_mux(void)
> +void am33xx_enable_uart0_pin_mux(void)
>  {
>  	configure_module_pin_mux(uart0_pin_mux);
>  }
>  =

> -void enable_mmc0_pin_mux(void)
> +void am33xx_enable_mmc0_pin_mux(void)
>  {
>  	configure_module_pin_mux(mmc0_pin_mux);
>  }
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach=
-omap/include/mach/am33xx-mux.h
> index 6078b3a..896e958 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
> @@ -13,11 +13,245 @@
>  #ifndef __AM33XX_MUX_H__
>  #define __AM33XX_MUX_H__
>  =

> -extern void enable_mii1_pin_mux(void);
> -extern void enable_i2c0_pin_mux(void);
> -extern void enable_i2c1_pin_mux(void);
> -extern void enable_i2c2_pin_mux(void);
> -extern void enable_uart0_pin_mux(void);
> -extern void enable_mmc0_pin_mux(void);
> +/* PAD Control Fields */
> +#define SLEWCTRL	(0x1 << 6)
> +#define	RXACTIVE	(0x1 << 5)
> +#define	PULLUP_EN	(0x1 << 4) /* Pull UP Selection */
> +#define PULLUDEN	(0x0 << 3) /* Pull up enabled */
> +#define PULLUDDIS	(0x1 << 3) /* Pull up disabled */
> +#define MODE(val)	val
> +
> +/*
> + * PAD CONTROL OFFSETS
> + * Field names corresponds to the pad signal name
> + */
> +/* TODO replace with defines */
> +struct pad_signals {
> +	int gpmc_ad0;
> +	int gpmc_ad1;
> +	int gpmc_ad2;
> +	int gpmc_ad3;
> +	int gpmc_ad4;
> +	int gpmc_ad5;
> +	int gpmc_ad6;
> +	int gpmc_ad7;
> +	int gpmc_ad8;
> +	int gpmc_ad9;
> +	int gpmc_ad10;
> +	int gpmc_ad11;
> +	int gpmc_ad12;
> +	int gpmc_ad13;
> +	int gpmc_ad14;
> +	int gpmc_ad15;
> +	int gpmc_a0;
> +	int gpmc_a1;
> +	int gpmc_a2;
> +	int gpmc_a3;
> +	int gpmc_a4;
> +	int gpmc_a5;
> +	int gpmc_a6;
> +	int gpmc_a7;
> +	int gpmc_a8;
> +	int gpmc_a9;
> +	int gpmc_a10;
> +	int gpmc_a11;
> +	int gpmc_wait0;
> +	int gpmc_wpn;
> +	int gpmc_be1n;
> +	int gpmc_csn0;
> +	int gpmc_csn1;
> +	int gpmc_csn2;
> +	int gpmc_csn3;
> +	int gpmc_clk;
> +	int gpmc_advn_ale;
> +	int gpmc_oen_ren;
> +	int gpmc_wen;
> +	int gpmc_be0n_cle;
> +	int lcd_data0;
> +	int lcd_data1;
> +	int lcd_data2;
> +	int lcd_data3;
> +	int lcd_data4;
> +	int lcd_data5;
> +	int lcd_data6;
> +	int lcd_data7;
> +	int lcd_data8;
> +	int lcd_data9;
> +	int lcd_data10;
> +	int lcd_data11;
> +	int lcd_data12;
> +	int lcd_data13;
> +	int lcd_data14;
> +	int lcd_data15;
> +	int lcd_vsync;
> +	int lcd_hsync;
> +	int lcd_pclk;
> +	int lcd_ac_bias_en;
> +	int mmc0_dat3;
> +	int mmc0_dat2;
> +	int mmc0_dat1;
> +	int mmc0_dat0;
> +	int mmc0_clk;
> +	int mmc0_cmd;
> +	int mii1_col;
> +	int mii1_crs;
> +	int mii1_rxerr;
> +	int mii1_txen;
> +	int mii1_rxdv;
> +	int mii1_txd3;
> +	int mii1_txd2;
> +	int mii1_txd1;
> +	int mii1_txd0;
> +	int mii1_txclk;
> +	int mii1_rxclk;
> +	int mii1_rxd3;
> +	int mii1_rxd2;
> +	int mii1_rxd1;
> +	int mii1_rxd0;
> +	int rmii1_refclk;
> +	int mdio_data;
> +	int mdio_clk;
> +	int spi0_sclk;
> +	int spi0_d0;
> +	int spi0_d1;
> +	int spi0_cs0;
> +	int spi0_cs1;
> +	int ecap0_in_pwm0_out;
> +	int uart0_ctsn;
> +	int uart0_rtsn;
> +	int uart0_rxd;
> +	int uart0_txd;
> +	int uart1_ctsn;
> +	int uart1_rtsn;
> +	int uart1_rxd;
> +	int uart1_txd;
> +	int i2c0_sda;
> +	int i2c0_scl;
> +	int mcasp0_aclkx;
> +	int mcasp0_fsx;
> +	int mcasp0_axr0;
> +	int mcasp0_ahclkr;
> +	int mcasp0_aclkr;
> +	int mcasp0_fsr;
> +	int mcasp0_axr1;
> +	int mcasp0_ahclkx;
> +	int xdma_event_intr0;
> +	int xdma_event_intr1;
> +	int nresetin_out;
> +	int porz;
> +	int nnmi;
> +	int osc0_in;
> +	int osc0_out;
> +	int rsvd1;
> +	int tms;
> +	int tdi;
> +	int tdo;
> +	int tck;
> +	int ntrst;
> +	int emu0;
> +	int emu1;
> +	int osc1_in;
> +	int osc1_out;
> +	int pmic_power_en;
> +	int rtc_porz;
> +	int rsvd2;
> +	int ext_wakeup;
> +	int enz_kaldo_1p8v;
> +	int usb0_dm;
> +	int usb0_dp;
> +	int usb0_ce;
> +	int usb0_id;
> +	int usb0_vbus;
> +	int usb0_drvvbus;
> +	int usb1_dm;
> +	int usb1_dp;
> +	int usb1_ce;
> +	int usb1_id;
> +	int usb1_vbus;
> +	int usb1_drvvbus;
> +	int ddr_resetn;
> +	int ddr_csn0;
> +	int ddr_cke;
> +	int ddr_ck;
> +	int ddr_nck;
> +	int ddr_casn;
> +	int ddr_rasn;
> +	int ddr_wen;
> +	int ddr_ba0;
> +	int ddr_ba1;
> +	int ddr_ba2;
> +	int ddr_a0;
> +	int ddr_a1;
> +	int ddr_a2;
> +	int ddr_a3;
> +	int ddr_a4;
> +	int ddr_a5;
> +	int ddr_a6;
> +	int ddr_a7;
> +	int ddr_a8;
> +	int ddr_a9;
> +	int ddr_a10;
> +	int ddr_a11;
> +	int ddr_a12;
> +	int ddr_a13;
> +	int ddr_a14;
> +	int ddr_a15;
> +	int ddr_odt;
> +	int ddr_d0;
> +	int ddr_d1;
> +	int ddr_d2;
> +	int ddr_d3;
> +	int ddr_d4;
> +	int ddr_d5;
> +	int ddr_d6;
> +	int ddr_d7;
> +	int ddr_d8;
> +	int ddr_d9;
> +	int ddr_d10;
> +	int ddr_d11;
> +	int ddr_d12;
> +	int ddr_d13;
> +	int ddr_d14;
> +	int ddr_d15;
> +	int ddr_dqm0;
> +	int ddr_dqm1;
> +	int ddr_dqs0;
> +	int ddr_dqsn0;
> +	int ddr_dqs1;
> +	int ddr_dqsn1;
> +	int ddr_vref;
> +	int ddr_vtp;
> +	int ddr_strben0;
> +	int ddr_strben1;
> +	int ain7;
> +	int ain6;
> +	int ain5;
> +	int ain4;
> +	int ain3;
> +	int ain2;
> +	int ain1;
> +	int ain0;
> +	int vrefp;
> +	int vrefn;
> +};
> +
> +struct module_pin_mux {
> +	short reg_offset;
> +	unsigned char val;
> +};
> +
> +#define PAD_CTRL_BASE	0x800
> +#define OFFSET(x)	(unsigned int) (&((struct pad_signals *) \
> +				(PAD_CTRL_BASE))->x)
> +
> +extern void configure_module_pin_mux(const struct module_pin_mux *mod_pi=
n_mux);
> +
> +/* Standard mux settings */
> +extern void am33xx_enable_mii1_pin_mux(void);
> +extern void am33xx_enable_i2c0_pin_mux(void);
> +extern void am33xx_enable_i2c1_pin_mux(void);
> +extern void am33xx_enable_i2c2_pin_mux(void);
> +extern void am33xx_enable_uart0_pin_mux(void);
> +extern void am33xx_enable_mmc0_pin_mux(void);
>  =

>  #endif /*__AM33XX_MUX_H__ */
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
