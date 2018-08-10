Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foD6I-0003RU-IE
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:29:32 +0000
Received: by mail-io0-x241.google.com with SMTP id i18-v6so8569402ioj.13
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:29:20 -0700 (PDT)
MIME-Version: 1.0
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
 <20180810163500.12042-8-r.hieber@pengutronix.de>
In-Reply-To: <20180810163500.12042-8-r.hieber@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:29:07 -0700
Message-ID: <CAHQ1cqECyzAkhA9ULmQDtQ=EUgszYeU-r7s6LNbhFdk4fhV_3w@mail.gmail.com>
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
Subject: Re: [PATCH v2 07/14] ARM: MXS: refactor mx2*_power_init source
 configuration
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Aug 10, 2018 at 9:36 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
>
> Having three ints as parameter suggests that we can use up to 2^3
> power configurations for the system, but when we look at the code, the
> power setup is packaged in if {...} else if {...} else if {...} blocks,
> so setting more than one parameter to 1 is useless here.
>
> Refactor the parameters into an enum to get rid of that suggestion.
>
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  arch/arm/boards/duckbill/lowlevel.c           |  2 +-
>  arch/arm/boards/freescale-mx28-evk/lowlevel.c |  2 +-
>  arch/arm/boards/imx233-olinuxino/lowlevel.c   |  2 +-
>  arch/arm/boards/karo-tx28/lowlevel.c          |  2 +-
>  arch/arm/mach-mxs/include/mach/init.h         | 20 ++++++--
>  arch/arm/mach-mxs/power-init.c                | 49 +++++++------------
>  6 files changed, 37 insertions(+), 40 deletions(-)
>
> diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
> index cb60667323..3f8e4ad271 100644
> --- a/arch/arm/boards/duckbill/lowlevel.c
> +++ b/arch/arm/boards/duckbill/lowlevel.c
> @@ -51,7 +51,7 @@ static noinline void duckbill_init(void)
>
>         pr_debug("initializing power...\n");
>
> -       mx28_power_init(0, 0, 1);
> +       mx28_power_init(POWER_USE_5V);
>
>         pr_debug("initializing SDRAM...\n");
>
> diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> index 2c8d27e801..b6a8793c9e 100644
> --- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> @@ -43,7 +43,7 @@ static noinline void freescale_mx28evk_init(void)
>
>         pr_debug("initializing power...\n");
>
> -       mx28_power_init(0, 1, 0);
> +       mx28_power_init(POWER_USE_BATTERY_INPUT);
>
>         pr_debug("initializing SDRAM...\n");
>
> diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> index bfb50be717..c6cf26b61d 100644
> --- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
> +++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> @@ -154,7 +154,7 @@ static noinline void imx23_olinuxino_init(void)
>
>         pr_debug("initializing power...\n");
>
> -       mx23_power_init(0, 0, 1);
> +       mx23_power_init(POWER_USE_5V);
>
>         pr_debug("initializing SDRAM...\n");
>
> diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
> index abc223d3b4..5a6a3e3519 100644
> --- a/arch/arm/boards/karo-tx28/lowlevel.c
> +++ b/arch/arm/boards/karo-tx28/lowlevel.c
> @@ -43,7 +43,7 @@ static noinline void karo_tx28_init(void)
>
>         pr_debug("initializing power...\n");
>
> -       mx28_power_init(0, 1, 0);
> +       mx28_power_init(POWER_USE_BATTERY_INPUT);
>
>         pr_debug("initializing SDRAM...\n");
>
> diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
> index 66dfd635de..46cf514a86 100644
> --- a/arch/arm/mach-mxs/include/mach/init.h
> +++ b/arch/arm/mach-mxs/include/mach/init.h
> @@ -12,10 +12,22 @@
>
>  void mxs_early_delay(int delay);
>
> -void mx23_power_init(int __has_battery, int __use_battery_input,
> -               int __use_5v_input);
> -void mx28_power_init(int __has_battery, int __use_battery_input,
> -               int __use_5v_input);
> +/**
> + * Power configuration of the system:
> + * - POWER_USE_5V: use 5V input as power supply
> + * - POWER_USE_BATTERY: use battery input when the system is supplied by a battery
> + * - POWER_USE_BATTERY_INPUT: use battery input when the system is supplied by
> + *   a DC source (instead of a real battery) on the battery input
> + */
> +enum mxs_power_config {
> +       POWER_USE_5V                    = 0b00000000,
> +       POWER_USE_BATTERY               = 0b00000001,
> +       POWER_USE_BATTERY_INPUT         = 0b00000010,
> +       __POWER_USE_MASK                = 0b00000011,
> +};
> +
> +void mx23_power_init(const int config);
> +void mx28_power_init(const int config);
>  void mxs_power_wait_pswitch(void);
>
>  extern const uint32_t mx28_dram_vals_default[190];
> diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
> index 595b51c5ba..a07ff9d676 100644
> --- a/arch/arm/mach-mxs/power-init.c
> +++ b/arch/arm/mach-mxs/power-init.c
> @@ -24,21 +24,7 @@
>  #include <mach/regs-rtc.h>
>  #include <mach/regs-lradc.h>
>
> -/*
> - * has_battery - true when this board has a battery.
> - */
> -static int has_battery;
> -
> -/*
> - * use_battery_input - true when this board is supplied from the
> - * battery input, but has a DC source instead of a real battery
> - */
> -static int use_battery_input;
> -
> -/*
> - * use_5v_input - true when this board can use the 5V input
> - */
> -static int use_5v_input;
> +static int power_config;

I might be missing something, so take this with a grain of salt. It
seems like if you change this variable to be "power_use" and
initialize it accordingly (maybe using a new helper function
mxs_power_use() that does the bitmasking) you should be able to cut
down on amount of (power_config & __POWER_USE_MASK) statements you
have further in the code.

Thanks,
Andrey Smirnov

>
>  static void mxs_power_status(void)
>  {
> @@ -514,7 +500,8 @@ static void mxs_power_enable_4p2(void)
>                 POWER_5VCTRL_HEADROOM_ADJ_MASK,
>                 0x4 << POWER_5VCTRL_HEADROOM_ADJ_OFFSET);
>
> -       if (has_battery || use_battery_input)
> +       if ((power_config & __POWER_USE_MASK) == POWER_USE_BATTERY ||
> +           (power_config & __POWER_USE_MASK) == POWER_USE_BATTERY_INPUT)
>                 dropout_ctrl = POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL;
>         else
>                 dropout_ctrl = POWER_DCDC4P2_DROPOUT_CTRL_SRC_4P2;
> @@ -1182,16 +1169,15 @@ static void mx23_ungate_power(void)
>   *
>   * This function calls all the power block initialization functions in
>   * proper sequence to start the power block.
> + *
> + * @config: see enum mxs_power_config for possible options
>   */
> -void mx23_power_init(int __has_battery, int __use_battery_input,
> -               int __use_5v_input)
> +void mx23_power_init(const int config)
>  {
>         struct mxs_power_regs *power_regs =
>                 (struct mxs_power_regs *)IMX_POWER_BASE;
>
> -       has_battery = __has_battery;
> -       use_battery_input = __use_battery_input;
> -       use_5v_input = __use_5v_input;
> +       power_config = config;
>
>         mx23_ungate_power();
>
> @@ -1204,11 +1190,11 @@ void mx23_power_init(int __has_battery, int __use_battery_input,
>
>         mxs_src_power_init();
>
> -       if (has_battery)
> +       if ((power_config & __POWER_USE_MASK) == POWER_USE_BATTERY)
>                 mxs_power_configure_power_source();
> -       else if (use_battery_input)
> +       else if ((power_config & __POWER_USE_MASK) == POWER_USE_BATTERY_INPUT)
>                 mxs_enable_battery_input();
> -       else if (use_5v_input)
> +       else if ((power_config & __POWER_USE_MASK) == POWER_USE_5V)
>                 mxs_boot_valid_5v();
>
>         mxs_power_clock2pll();
> @@ -1243,16 +1229,15 @@ void mx23_power_init(int __has_battery, int __use_battery_input,
>   *
>   * This function calls all the power block initialization functions in
>   * proper sequence to start the power block.
> + *
> + * @config: see enum mxs_power_config for possible options
>   */
> -void mx28_power_init(int __has_battery, int __use_battery_input,
> -               int __use_5v_input)
> +void mx28_power_init(const int config)
>  {
>         struct mxs_power_regs *power_regs =
>                 (struct mxs_power_regs *)IMX_POWER_BASE;
>
> -       has_battery = __has_battery;
> -       use_battery_input = __use_battery_input;
> -       use_5v_input = __use_5v_input;
> +       power_config = config;
>
>         mxs_power_status();
>         mxs_power_clock2xtal();
> @@ -1264,11 +1249,11 @@ void mx28_power_init(int __has_battery, int __use_battery_input,
>
>         mxs_src_power_init();
>
> -       if (has_battery)
> +       if ((power_config & __POWER_USE_MASK) == POWER_USE_BATTERY)
>                 mxs_power_configure_power_source();
> -       else if (use_battery_input)
> +       else if ((power_config & __POWER_USE_MASK) == POWER_USE_BATTERY_INPUT)
>                 mxs_enable_battery_input();
> -       else if (use_5v_input)
> +       else if ((power_config & __POWER_USE_MASK) == POWER_USE_5V)
>                 mxs_boot_valid_5v();
>
>         mxs_power_clock2pll();
> --
> 2.18.0
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
