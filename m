Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b00wL-0004ft-M7
 for barebox@lists.infradead.org; Tue, 10 May 2016 06:14:42 +0000
Date: Tue, 10 May 2016 08:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160510061420.GY19714@pengutronix.de>
References: <1462791497-5107-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462791497-5107-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM: mxs: add parameter to mx28_mem_init to allow custom
 memory config
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 09, 2016 at 12:58:17PM +0200, Uwe Kleine-K=F6nig wrote:
> Rename the already global array of default memory settings to make the
> intended usage more obvious.
> =

> Also make generous use of the const keyword.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/duckbill/lowlevel.c           |  2 +-
>  arch/arm/boards/freescale-mx28-evk/lowlevel.c |  2 +-
>  arch/arm/boards/karo-tx28/lowlevel.c          |  2 +-
>  arch/arm/mach-mxs/include/mach/init.h         |  4 ++--
>  arch/arm/mach-mxs/mem-init.c                  | 12 ++++++------
>  5 files changed, 11 insertions(+), 11 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbi=
ll/lowlevel.c
> index 49563a0876e0..c00a9a0b0423 100644
> --- a/arch/arm/boards/duckbill/lowlevel.c
> +++ b/arch/arm/boards/duckbill/lowlevel.c
> @@ -55,7 +55,7 @@ static noinline void duckbill_init(void)
>  =

>  	pr_debug("initializing SDRAM...\n");
>  =

> -	mx28_mem_init();
> +	mx28_mem_init(mx28_dram_vals_default);
>  =

>  	pr_debug("DONE\n");
>  }
> diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boa=
rds/freescale-mx28-evk/lowlevel.c
> index 1f567568da54..4d45a03ba289 100644
> --- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> @@ -47,7 +47,7 @@ static noinline void freescale_mx28evk_init(void)
>  =

>  	pr_debug("initializing SDRAM...\n");
>  =

> -	mx28_mem_init();
> +	mx28_mem_init(mx28_dram_vals_default);
>  =

>  	pr_debug("DONE\n");
>  }
> diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-=
tx28/lowlevel.c
> index 96a8b9bfc66b..d072637de7d8 100644
> --- a/arch/arm/boards/karo-tx28/lowlevel.c
> +++ b/arch/arm/boards/karo-tx28/lowlevel.c
> @@ -47,7 +47,7 @@ static noinline void karo_tx28_init(void)
>  =

>  	pr_debug("initializing SDRAM...\n");
>  =

> -	mx28_mem_init();
> +	mx28_mem_init(mx28_dram_vals_default);
>  =

>  	pr_debug("DONE\n");
>  }
> diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/in=
clude/mach/init.h
> index 90b413e47ee4..6526d303a1a4 100644
> --- a/arch/arm/mach-mxs/include/mach/init.h
> +++ b/arch/arm/mach-mxs/include/mach/init.h
> @@ -18,11 +18,11 @@ void mx28_power_init(int __has_battery, int __use_bat=
tery_input,
>  		int __use_5v_input);
>  void mxs_power_wait_pswitch(void);
>  =

> -extern uint32_t mx28_dram_vals[];
> +extern const uint32_t mx28_dram_vals_default[190];
>  extern uint32_t mx23_dram_vals[];
>  =

>  void mx23_mem_init(void);
> -void mx28_mem_init(void);
> +void mx28_mem_init(const uint32_t dram_vals[190]);
>  void mxs_mem_setup_cpu_and_hbus(void);
>  void mxs_mem_setup_vdda(void);
>  void mxs_mem_init_clock(unsigned char divider);
> diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
> index 43165ac100e4..ac8bfee18e7c 100644
> --- a/arch/arm/mach-mxs/mem-init.c
> +++ b/arch/arm/mach-mxs/mem-init.c
> @@ -87,7 +87,7 @@ int mxs_early_reset_block(struct mxs_register_32 *reg)
>  	return 0;
>  }
>  =

> -uint32_t mx28_dram_vals[] =3D {
> +const uint32_t mx28_dram_vals_default[190] =3D {
>  /*
>   * i.MX28 DDR2 at 200MHz
>   */
> @@ -158,12 +158,12 @@ uint32_t mx23_dram_vals[] =3D {
>  	0x00010000
>  };
>  =

> -static void mx28_initialize_dram_values(void)
> +static void mx28_initialize_dram_values(const uint32_t dram_vals[190])
>  {
>  	int i;
>  =

> -	for (i =3D 0; i < ARRAY_SIZE(mx28_dram_vals); i++)
> -		writel(mx28_dram_vals[i], IMX_SDRAMC_BASE + (4 * i));
> +	for (i =3D 0; i < 190; i++)
> +		writel(dram_vals[i], IMX_SDRAMC_BASE + (4 * i));
>  }
>  =

>  static void mx23_initialize_dram_values(void)
> @@ -320,7 +320,7 @@ void mx23_mem_init(void)
>  =

>  #define PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2	(0x3 << 16)
>  =

> -void mx28_mem_init(void)
> +void mx28_mem_init(const uint32_t dram_vals[190])
>  {
>  	mxs_early_delay(11000);
>  =

> @@ -338,7 +338,7 @@ void mx28_mem_init(void)
>  	/* Clear START bit from DRAM_CTL16 */
>  	clrbits_le32(IMX_SDRAMC_BASE + 0x40, 1);
>  =

> -	mx28_initialize_dram_values();
> +	mx28_initialize_dram_values(dram_vals);
>  =

>  	/* Clear SREFRESH bit from DRAM_CTL17 */
>  	clrbits_le32(IMX_SDRAMC_BASE + 0x44, 1);
> -- =

> 2.8.0.rc3
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
