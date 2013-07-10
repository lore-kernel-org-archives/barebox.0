Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwttD-0003hT-6z
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:53:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1Uwtsq-0005j3-9L
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 14:52:36 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1Uwtsq-0004PL-7i
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 14:52:36 +0200
Date: Wed, 10 Jul 2013 14:52:36 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20130710125236.GE29932@pengutronix.de>
References: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] ARM: Add "verbose" parameter for start_linux procedure
To: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 11:00:39AM +0400, Alexander Shiyan wrote:
> This patch will make a normal booting more silent.

Why? Booting the kernel is the most important task for barebox. Why
shouldn't we see a few lines about what is actually happening here by
default.

If you really want no output then introduce a 'quiet' option.

Michael

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/include/asm/armlinux.h |  2 +-
>  arch/arm/lib/armlinux.c         | 16 +++++++++-------
>  arch/arm/lib/bootm.c            |  3 ++-
>  arch/arm/lib/bootu.c            |  2 +-
>  arch/arm/lib/bootz.c            |  2 +-
>  5 files changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
> index 07479fb..15cae14 100644
> --- a/arch/arm/include/asm/armlinux.h
> +++ b/arch/arm/include/asm/armlinux.h
> @@ -38,6 +38,6 @@ static inline void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
>  struct image_data;
>  
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
> -		unsigned long initrd_size, void *oftree);
> +		unsigned long initrd_size, void *oftree, int verbose);
>  
>  #endif /* __ARCH_ARMLINUX_H */
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 40a63ea..84372af 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -227,8 +227,8 @@ static void setup_end_tag (void)
>  	params->hdr.size = 0;
>  }
>  
> -static void setup_tags(unsigned long initrd_address,
> -		unsigned long initrd_size, int swap)
> +static void setup_tags(unsigned long initrd_address, unsigned long initrd_size,
> +		       int swap, int verbose)
>  {
>  	const char *commandline = linux_bootargs_get();
>  
> @@ -247,8 +247,9 @@ static void setup_tags(unsigned long initrd_address,
>  #endif
>  	setup_end_tag();
>  
> -	printf("commandline: %s\n"
> -	       "arch_number: %d\n", commandline, armlinux_get_architecture());
> +	if (verbose)
> +		printf("commandline: %s\narch_number: %d\n",
> +		       commandline, armlinux_get_architecture());
>  
>  }
>  
> @@ -258,17 +259,18 @@ void armlinux_set_bootparams(void *params)
>  }
>  
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
> -		unsigned long initrd_size, void *oftree)
> +		unsigned long initrd_size, void *oftree, int verbose)
>  {
>  	void (*kernel)(int zero, int arch, void *params) = adr;
>  	void *params = NULL;
>  	int architecture;
>  
>  	if (oftree) {
> -		printf("booting Linux kernel with devicetree\n");
> +		if (verbose)
> +			printf("booting Linux kernel with devicetree\n");
>  		params = oftree;
>  	} else {
> -		setup_tags(initrd_address, initrd_size, swap);
> +		setup_tags(initrd_address, initrd_size, swap, verbose);
>  		params = armlinux_bootparams;
>  	}
>  	architecture = armlinux_get_architecture();
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 0786e22..c5ac0d8 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -106,7 +106,8 @@ static int __do_bootm_linux(struct image_data *data, int swap)
>  		printf("...\n");
>  	}
>  
> -	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
> +	start_linux((void *)kernel, swap, initrd_start, initrd_size,
> +		    data->oftree, bootm_verbose(data));
>  
>  	reset_cpu(0);
>  
> diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
> index fdb0362..c394f5e 100644
> --- a/arch/arm/lib/bootu.c
> +++ b/arch/arm/lib/bootu.c
> @@ -26,7 +26,7 @@ static int do_bootu(int argc, char *argv[])
>  	oftree = of_get_fixed_tree(NULL);
>  #endif
>  
> -	start_linux(kernel, 0, 0, 0, oftree);
> +	start_linux(kernel, 0, 0, 0, oftree, 1);
>  
>  	return 1;
>  }
> diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
> index e32a77b..b402fce 100644
> --- a/arch/arm/lib/bootz.c
> +++ b/arch/arm/lib/bootz.c
> @@ -112,7 +112,7 @@ static int do_bootz(int argc, char *argv[])
>  	oftree = of_get_fixed_tree(NULL);
>  #endif
>  
> -	start_linux(zimage, swap, 0, 0, oftree);
> +	start_linux(zimage, swap, 0, 0, oftree, 1);
>  
>  	return 0;
>  
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
