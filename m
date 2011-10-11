Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RDjLB-0007ev-Q9
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 20:54:22 +0000
Received: from mail423.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 074E2FFAC2E
	for <barebox@lists.infradead.org>;
	Tue, 11 Oct 2011 22:55:34 +0200 (CEST)
Date: Tue, 11 Oct 2011 22:30:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111011203011.GJ18064@game.jcrosoft.org>
References: <1318346600-13360-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318346600-13360-1-git-send-email-premi@ti.com>
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
Subject: Re: [PATCH v2] omap: Unify run_shell() in xload configuration
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

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
> index 216b9b5..ac859fa 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -52,3 +52,39 @@ void *omap_xload_boot_mmc(void)
>  
>  	return buf;
>  }
> +
> +/*
> + * Replaces the default shell in xload configuration
> + */
> +int run_shell(void)
> +{
> +	int (*func)(void) = NULL;
> +
> +#if defined(CONFIG_ARCH_OMAP3)
> +	switch (omap3_bootsrc())
> +#elif  defined(CONFIG_ARCH_OMAP4)
> +	switch (omap4_bootsrc())
> +#endif
I really don't like this

please create a small local station like this to manage the OMAPx

static u32 omap_bootsrc(void)
{
#if defined(CONFIG_ARCH_OMAP3)
	return omap3_bootsrc())
#elif defined(CONFIG_ARCH_OMAP4)
	return omap4_bootsrc())
	switch (omap4_bootsrc())
#endif
}

and then
	switch (omap_bootsrc()) {


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
