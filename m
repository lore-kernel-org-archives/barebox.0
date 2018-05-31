Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOPLN-00014J-6b
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:18:38 +0000
Date: Thu, 31 May 2018 17:18:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180531151812.4ayinus52lte2cbn@pengutronix.de>
References: <20180528214400.28252-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180528214400.28252-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] dove: move memory controller remapping before RAM
 detection
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 28, 2018 at 11:43:59PM +0200, Uwe Kleine-K=F6nig wrote:
> Compared to other mvebu cpus the memory controller registers are in
> their own register window that can be moved independently of the mbus
> register window.
> =

> Since commit f05c6e095cf8 the available RAM configured by the boot ROM
> is read out earlier. This happens to be before the memory controller
> register window is moved and so dove_memory_find() fails. To fix this
> move the memory controller window together with the mbus window.
> =

> This change allows to boot barebox first stage again on a Solidrun
> Cubox.
> =

> Fixes: f05c6e095cf8 ("mvebu: rework how memory is detected")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/mach-mvebu/common.c | 29 +++++++++++++++++++++++++++++
>  arch/arm/mach-mvebu/dove.c   | 22 ----------------------
>  2 files changed, 29 insertions(+), 22 deletions(-)
> =

> diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> index fa971da11e75..e951bc06276a 100644
> --- a/arch/arm/mach-mvebu/common.c
> +++ b/arch/arm/mach-mvebu/common.c
> @@ -37,6 +37,10 @@
>  #define DOVE_SDRAM_MAP_VALID		BIT(0)
>  #define DOVE_SDRAM_LENGTH_SHIFT		16
>  #define DOVE_SDRAM_LENGTH_MASK		(0x00f << DOVE_SDRAM_LENGTH_SHIFT)
> +#define DOVE_SDRAM_REGS_BASE_DECODE	0x10
> +
> +#define DOVE_CPU_CTRL			(MVEBU_REMAP_INT_REG_BASE + 0xd025c)
> +#define DOVE_AXI_CTRL			(MVEBU_REMAP_INT_REG_BASE + 0xd0224)
>  =

>  #define KIRKWOOD_SDRAM_BASE		(IOMEM(MVEBU_REMAP_INT_REG_BASE) + 0x00000)
>  #define KIRKWOOD_DDR_BASE_CSn(n)	(0x1500 + ((n) * 0x8))
> @@ -192,8 +196,33 @@ static void mvebu_remap_registers(void)
>  =

>  void __naked __noreturn dove_barebox_entry(void *boarddata)
>  {
> +	uint32_t val;
> +	void __iomem *mcbase =3D mvebu_get_initial_int_reg_base() + 0x800000;
> +
>  	mvebu_remap_registers();
>  =

> +	/*
> +	 * On dove there is an additional register window that is expected to be
> +	 * located 0x800000 after the main register window. This contains the
> +	 * DDR registers.
> +	 */
> +	val =3D readl(mcbase + DOVE_SDRAM_REGS_BASE_DECODE) & 0x0000ffff;
> +	val |=3D (unsigned long)DOVE_SDRAM_BASE & 0xffff0000;
> +	writel(val, mcbase + DOVE_SDRAM_REGS_BASE_DECODE);
> +
> +	/* tell the axi controller about where to find the DDR controller */
> +	val =3D readl(DOVE_AXI_CTRL) & 0x007fffff;
> +	val |=3D (unsigned long)DOVE_SDRAM_BASE & 0xff800000;
> +	writel(val, DOVE_AXI_CTRL);
> +
> +	/*
> +	 * The AXI units internal space base starts at the same address as the
> +	 * DDR controller.
> +	 */
> +	val =3D readl(DOVE_CPU_CTRL) & 0xffff0000;
> +	val |=3D ((unsigned long)DOVE_SDRAM_BASE & 0xffff0000) >> 16;
> +	writel(val, DOVE_CPU_CTRL);
> +
>  	barebox_arm_entry(0, dove_memory_find(), boarddata);
>  }
>  =

> diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
> index 1cdb7e1b8296..37fde63f18de 100644
> --- a/arch/arm/mach-mvebu/dove.c
> +++ b/arch/arm/mach-mvebu/dove.c
> @@ -22,27 +22,6 @@
>  #include <linux/mbus.h>
>  #include <mach/dove-regs.h>
>  =

> -static inline void dove_remap_mc_regs(void)
> -{
> -	void __iomem *mcboot =3D IOMEM(DOVE_BOOTUP_MC_REGS);
> -	uint32_t val;
> -
> -	/* remap ahb slave base */
> -	val  =3D readl(DOVE_CPU_CTRL) & 0xffff0000;
> -	val |=3D (DOVE_REMAP_MC_REGS & 0xffff0000) >> 16;
> -	writel(val, DOVE_CPU_CTRL);
> -
> -	/* remap axi bridge address */
> -	val  =3D readl(DOVE_AXI_CTRL) & 0x007fffff;
> -	val |=3D DOVE_REMAP_MC_REGS & 0xff800000;
> -	writel(val, DOVE_AXI_CTRL);
> -
> -	/* remap memory controller base address */
> -	val =3D readl(mcboot + SDRAM_REGS_BASE_DECODE) & 0x0000ffff;
> -	val |=3D DOVE_REMAP_MC_REGS & 0xffff0000;
> -	writel(val, mcboot + SDRAM_REGS_BASE_DECODE);
> -}
> -
>  static void __noreturn dove_restart_soc(struct restart_handler *rst)
>  {
>  	/* enable and assert RSTOUTn */
> @@ -62,7 +41,6 @@ static int dove_init_soc(void)
>  	barebox_set_model("Marvell Dove");
>  	barebox_set_hostname("dove");
>  =

> -	dove_remap_mc_regs();
>  	mvebu_mbus_init();
>  =

>  	return 0;
> -- =

> 2.17.0
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
