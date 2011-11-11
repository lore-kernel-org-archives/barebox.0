Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ROobd-00078O-38
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 10:45:10 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EB59C10000F8
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2011 11:51:04 +0100 (CET)
Date: Fri, 11 Nov 2011 11:43:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111111104334.GB15318@game.jcrosoft.org>
References: <1318417430-2039-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318417430-2039-1-git-send-email-premi@ti.com>
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
Subject: Re: [PATCH v3] omap: Unify run_shell() in xload configuration
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On 16:33 Wed 12 Oct     , Sanjeev Premi wrote:
> Currently, there are multiple definitions of run_shell()
> for each board that can be build in "xload" configuration.
> Now there is only one function used by all boards.
> 
> The functions defined in xload.c are used only when "xload"
> configuration used; but it gets compiled unconditionally.
> This has been fixed as well.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>


Best Regards,
J.
> ---
> 
>  Change in v3:
>     Added function omap_bootsrc() to replace the #ifdef
>     around the switch-case.
> 
>  Change in v2:
>     Fixed the typo in the subject s/iomap/omap/
>     ...observed when mail reached my inbox :(
> 
>  Only build tested with these commands:
>    make distclean ; make omap3530_beagle_defconfig ; make ;
>    make distclean ; make omap3530_beagle_xload_defconfig ; make ;
>    make distclean ; make panda_xload_defconfig ; make ;
>    make distclean ; make panda_defconfig ; make ;
>    make distclean ; make pcm049_defconfig ; make ;
>    make distclean ; make pcm049_xload_defconfig ; make ;
> 
> 
>  arch/arm/boards/omap/board-beagle.c |   31 --------------------------
>  arch/arm/boards/panda/board.c       |   19 ----------------
>  arch/arm/boards/pcm049/board.c      |   30 -------------------------
>  arch/arm/mach-omap/Makefile         |    3 +-
>  arch/arm/mach-omap/xload.c          |   41 +++++++++++++++++++++++++++++++++++
>  5 files changed, 43 insertions(+), 81 deletions(-)
> 
> diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
> index 4e7f179..bcebd5c 100644
> --- a/arch/arm/boards/omap/board-beagle.c
> +++ b/arch/arm/boards/omap/board-beagle.c
> @@ -313,34 +313,3 @@ static int beagle_devices_init(void)
>  	return 0;
>  }
>  device_initcall(beagle_devices_init);
> -
> -#ifdef CONFIG_SHELL_NONE
> -
> -int run_shell(void)
> -{
> -	int (*func)(void) = NULL;
> -
> -	switch (omap3_bootsrc()) {
> -	case OMAP_BOOTSRC_MMC1:
> -		printf("booting from MMC1\n");
> -		func = omap_xload_boot_mmc();
> -		break;
> -	case OMAP_BOOTSRC_UNKNOWN:
> -		printf("unknown boot source. Fall back to nand\n");
> -	case OMAP_BOOTSRC_NAND:
> -		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
> -		break;
> -	}
> -
> -	if (!func) {
> -		printf("booting failed\n");
> -		while (1);
> -	}
> -
> -	shutdown_barebox();
> -	func();
> -
> -	while (1);
> -}
> -#endif
> diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
> index 33ec144..cfc5bb9 100644
> --- a/arch/arm/boards/panda/board.c
> +++ b/arch/arm/boards/panda/board.c
> @@ -170,22 +170,3 @@ static int panda_env_init(void)
>  }
>  late_initcall(panda_env_init);
>  #endif
> -
> -
> -#ifdef CONFIG_SHELL_NONE
> -int run_shell(void)
> -{
> -	int (*func)(void);
> -
> -	func = omap_xload_boot_mmc();
> -	if (!func) {
> -		printf("booting failed\n");
> -		while (1);
> -	}
> -
> -	shutdown_barebox();
> -	func();
> -
> -	while (1);
> -}
> -#endif
> diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
> index 3d02779..6814b59 100644
> --- a/arch/arm/boards/pcm049/board.c
> +++ b/arch/arm/boards/pcm049/board.c
> @@ -112,33 +112,3 @@ static int pcm049_devices_init(void)
>  	return 0;
>  }
>  device_initcall(pcm049_devices_init);
> -
> -#ifdef CONFIG_SHELL_NONE
> -int run_shell(void)
> -{
> -	int (*func)(void) = NULL;
> -
> -	switch (omap4_bootsrc()) {
> -	case OMAP_BOOTSRC_MMC1:
> -		printf("booting from MMC1\n");
> -		func = omap_xload_boot_mmc();
> -		break;
> -	case OMAP_BOOTSRC_UNKNOWN:
> -		printf("unknown boot source. Fall back to nand\n");
> -	case OMAP_BOOTSRC_NAND:
> -		printf("booting from NAND\n");
> -		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
> -		break;
> -	}
> -
> -	if (!func) {
> -		printf("booting failed\n");
> -		while (1);
> -	}
> -
> -	shutdown_barebox();
> -	func();
> -
> -	while (1);
> -}
> -#endif
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 7204746..07bf30a 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -25,4 +25,5 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
>  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
>  obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> -obj-y += gpio.o xload.o
> +obj-$(CONFIG_SHELL_NONE) += xload.o
> +obj-y += gpio.o
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 216b9b5..a52a8ba 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -52,3 +52,44 @@ void *omap_xload_boot_mmc(void)
>  
>  	return buf;
>  }
> +
> +enum omap_boot_src omap_bootsrc(void)
> +{
> +#if defined(CONFIG_ARCH_OMAP3)
> +	return omap3_bootsrc();
> +#elif defined(CONFIG_ARCH_OMAP4)
> +	return omap4_bootsrc();
> +#endif
> +}
> +
> +/*
> + * Replaces the default shell in xload configuration
> + */
> +int run_shell(void)
> +{
> +	int (*func)(void) = NULL;
> +
> +	switch (omap_bootsrc())
> +	{
> +	case OMAP_BOOTSRC_MMC1:
> +		printf("booting from MMC1\n");
> +		func = omap_xload_boot_mmc();
> +		break;
> +	case OMAP_BOOTSRC_UNKNOWN:
> +		printf("unknown boot source. Fall back to nand\n");
> +	case OMAP_BOOTSRC_NAND:
> +		printf("booting from NAND\n");
> +		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
> +		break;
> +	}
> +
> +	if (!func) {
> +		printf("booting failed\n");
> +		while (1);
> +	}
> +
> +	shutdown_barebox();
> +	func();
> +
> +	while (1);
> +}
> -- 
> 1.7.0.4
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
