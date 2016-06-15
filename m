Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bD47G-000802-Ht
 for barebox@lists.infradead.org; Wed, 15 Jun 2016 06:15:55 +0000
Date: Wed, 15 Jun 2016 08:15:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160615061532.GD9677@pengutronix.de>
References: <1465888006-39463-1-git-send-email-poggi.raph@gmail.com>
 <1465888006-39463-4-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1465888006-39463-4-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v2 03/12] arm: introduce lib64 for arm64 related stuff
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 14, 2016 at 09:06:37AM +0200, Raphael Poggi wrote:
> diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
> new file mode 100644
> index 0000000..a424293
> --- /dev/null
> +++ b/arch/arm/lib64/Makefile
> @@ -0,0 +1,10 @@
> +obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
> +obj-$(CONFIG_BOOTM)	+= bootm.o
> +obj-y	+= div0.o
> +obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
> +obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
> +extra-y += barebox.lds
> +
> +pbl-y	+= lib1funcs.o
> +pbl-y	+= ashldi3.o
> +pbl-y	+= div0.o
> diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
> new file mode 100644
> index 0000000..21a2292
> --- /dev/null
> +++ b/arch/arm/lib64/armlinux.c
> @@ -0,0 +1,275 @@

[...]

> +static void setup_tags(unsigned long initrd_address,
> +		unsigned long initrd_size, int swap)
> +{
> +	const char *commandline = linux_bootargs_get();
> +
> +	setup_start_tag();
> +	setup_memory_tags();
> +	setup_commandline_tag(commandline, swap);
> +
> +	if (initrd_size)
> +		setup_initrd_tag(initrd_address, initrd_size);
> +
> +	setup_revision_tag();
> +	setup_serial_tag();
> +#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
> +	if (atag_appender != NULL)
> +		params = atag_appender(params);
> +#endif
> +	setup_end_tag();
> +
> +	printf("commandline: %s\n"
> +	       "arch_number: %d\n", commandline, armlinux_get_architecture());
> +
> +}

All the code around ATAGs can be removed. ARM64 is device tree only and
won't ever need this.

> +
> +void start_linux(void *adr, int swap, unsigned long initrd_address,
> +		unsigned long initrd_size, void *oftree)
> +{
> +	void (*kernel)(int zero, int arch, void *params) = adr;
> +	void *params = NULL;
> +	int architecture;
> +
> +	if (oftree) {
> +		pr_debug("booting kernel with devicetree\n");
> +		params = oftree;
> +	} else {
> +		setup_tags(initrd_address, initrd_size, swap);
> +		params = armlinux_get_bootparams();
> +	}
> +	architecture = armlinux_get_architecture();
> +
> +	shutdown_barebox();
> +
> +	kernel(0, architecture, params);
> +}

> diff --git a/arch/arm/lib64/bootm.c b/arch/arm/lib64/bootm.c

This file is an exact copy of arch/arm/lib/bootm.c as of a324fb5a, so it
seems that either the 32bit version works for arm64 or this is untested.

Have you already booted a kernel? Does it work? Although starting a
kernel is admittedly a key feature for a bootloader, we could drop the
code from the initial arm64 porting effort if it doesn't work yet.

> diff --git a/arch/arm/lib64/module.c b/arch/arm/lib64/module.c

Please drop this file. I suppose it won't work on arm64 anyway, so
there's no need to carry a nonworking copy of arm32 module support in
the arm64 tree.

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
