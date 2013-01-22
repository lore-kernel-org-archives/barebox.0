Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxYxR-00014H-M0
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 08:11:52 +0000
Date: Tue, 22 Jan 2013 09:11:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130122081146.GG1906@pengutronix.de>
References: <20130121142836.GI26329@game.jcrosoft.org>
 <1358778804-31067-1-git-send-email-plagnioj@jcrosoft.com>
 <1358778804-31067-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358778804-31067-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 06/10] at91: sam926x: switch lowlevel param to c code
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 21, 2013 at 03:33:20PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Instead of hardcode define use a struct that the board fill
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9263ek/Makefile             |    5 +
>  arch/arm/boards/at91sam9263ek/config.h             |   99 +-------------
>  arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  104 +++++++++++++++
>  arch/arm/boards/mmccpu/Makefile                    |    5 +
>  arch/arm/boards/mmccpu/config.h                    |  130 +------------------
>  arch/arm/boards/mmccpu/lowlevel_init.c             |  135 ++++++++++++++++++++
>  arch/arm/boards/pm9261/Makefile                    |    5 +
>  arch/arm/boards/pm9261/config.h                    |   99 +-------------
>  arch/arm/boards/pm9261/lowlevel_init.c             |  102 +++++++++++++++
>  arch/arm/boards/pm9263/Makefile                    |    5 +
>  arch/arm/boards/pm9263/config.h                    |  115 +----------------
>  arch/arm/boards/pm9263/lowlevel_init.c             |  121 ++++++++++++++++++
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   64 ++++++----
>  .../mach-at91/include/mach/at91_lowlevel_init.h    |   33 +++++
>  14 files changed, 580 insertions(+), 442 deletions(-)
>  rewrite arch/arm/boards/at91sam9263ek/config.h (95%)
>  create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel_init.c
>  rewrite arch/arm/boards/mmccpu/config.h (97%)
>  create mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
>  rewrite arch/arm/boards/pm9261/config.h (95%)
>  create mode 100644 arch/arm/boards/pm9261/lowlevel_init.c
>  rewrite arch/arm/boards/pm9263/config.h (97%)
>  create mode 100644 arch/arm/boards/pm9263/lowlevel_init.c
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
> 
> diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
> index eb072c0..aecbc5a 100644
> --- a/arch/arm/boards/at91sam9263ek/Makefile
> +++ b/arch/arm/boards/at91sam9263ek/Makefile
> @@ -1 +1,6 @@
>  obj-y += init.o
> +
> +lowlevel_init-y = lowlevel_init.o
> +obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> +
> +pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)

This breaks compilation:

make[1]: Circular arch/arm/boards/at91sam9263ek/lowlevel_init.o <- arch/arm/boards/at91sam9263ek/lowlevel_init.o dependency dropped.


>  	/* configure PIOx as EBI0 D[16-31] */
>  #ifdef CONFIG_ARCH_AT91SAM9263
> -	__raw_writel(CONFIG_SYS_PIOD_PDR_VAL1, AT91_BASE_PIOD + PIO_PDR);
> -	__raw_writel(CONFIG_SYS_PIOD_PPUDR_VAL, AT91_BASE_PIOD + PIO_PUDR);
> -	__raw_writel(CONFIG_SYS_PIOD_PPUDR_VAL, AT91_BASE_PIOD + PIO_ASR);
> +	__raw_writel(cfg.ebi_pio_pdr, AT91_BASE_PIOD + PIO_PDR);
> +	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOD + PIO_PUDR);
> +	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOD + PIO_ASR);
>  #else
> -	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL1, AT91_BASE_PIOC + PIO_PDR);
> -	__raw_writel(CONFIG_SYS_PIOC_PPUDR_VAL, AT91_BASE_PIOC + PIO_PUDR);
> +	__raw_writel(cfg.ebi_pio_pdr, AT91_BASE_PIOC + PIO_PDR);
> +	__raw_writel(cfg.ebi_pio_ppudrL, AT91_BASE_PIOC + PIO_PUDR);

This breaks compilation inpm9261_defconfig:

arch/arm/mach-at91/at91sam926x_lowlevel_init.c: In function 'at91sam926x_lowlevel_init':
arch/arm/mach-at91/at91sam926x_lowlevel_init.c:67:2: error: 'struct at91sam926x_lowlevel_cfg' has no member named 'ebi_pio_ppudrL'

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
