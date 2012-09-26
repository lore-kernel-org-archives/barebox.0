Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGmJ6-0005kh-2c
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 07:45:21 +0000
Date: Wed, 26 Sep 2012 09:45:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926074516.GJ1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
 <1348613994-1793-5-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348613994-1793-5-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 4/7] Add USB booting capabilities to OMAP
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 12:59:51AM +0200, vj wrote:
> ---
>  arch/arm/cpu/cpu.c                              |   1 +
>  arch/arm/lib/barebox.lds.S                      |  10 +
>  arch/arm/mach-omap/Kconfig                      |  21 +
>  arch/arm/mach-omap/Makefile                     |   1 +
>  arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 146 +++++
>  arch/arm/mach-omap/omap4_generic.c              |   2 +
>  arch/arm/mach-omap/omap4_rom_usb.c              | 189 ++++++
>  arch/arm/mach-omap/xload.c                      |  26 +
>  scripts/.gitignore                              |   1 +
>  scripts/Makefile                                |   3 +
>  scripts/usbboot.c                               | 797 ++++++++++++++++++++++++
>  11 files changed, 1197 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
>  create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
>  create mode 100644 scripts/usbboot.c
> 
> diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
> index 71ef8c0..05343de 100644
> --- a/arch/arm/cpu/cpu.c
> +++ b/arch/arm/cpu/cpu.c
> @@ -89,6 +89,7 @@ void arch_shutdown(void)
>  		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
>  	);
>  #endif
> +	__asm__ __volatile__ ("cpsid i\n");
>  }
>  
>  #ifdef CONFIG_THUMB2_BAREBOX
> diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> index a69013f..ff7b63d 100644
> --- a/arch/arm/lib/barebox.lds.S
> +++ b/arch/arm/lib/barebox.lds.S
> @@ -97,6 +97,16 @@ SECTIONS
>  	__bss_start = .;
>  	.bss : { *(.bss*) }
>  	__bss_stop = .;
> +#ifdef CONFIG_SHARE_USB_HANDLE
> +    /*
> +     * Reserve space for the USB handle
> +     */
> +	. = CONFIG_USB_HANDLE_HANDOVER;
> +	. = ALIGN(4);
> +	__usb_handle = .;
> +	/* . += sizeof(struct usb); */
> +	. += 84;
> +#endif

If I understand correctly the first stage loader puts some data here
where a second stage barebox (configured with the same value for
CONFIG_USB_HANDLE_HANDOVER) will pick it up.

This seems to be a bit fragile. Fortunately Jan has posted a series
that gives the control of the reset vector to the boards, which means
that both stages do not have to agree on an addres, but instead a
pointer can be passed from the first to the second stage.

> +int usb_open(void)

So this uses the OMAP4 ROM to do USB communication, right? The functions
should have a omap_rom_* prefix then, otherwise it's not clear for a
reader which context these functions have.

The calling of the ROM code btw explains why the setting of VBAR breaks
USB boot. The ROM probably uses the vectors.

> +
> +	n = rom_get_per_driver(&pusb->io, boot->device_type);
> +	if (n)
> +		return n;
> +
> +	pusb->dread.xfer_mode = boot->xfer_mode;
> +	pusb->dread.options = boot->options;
> +	pusb->dread.device_type = boot->device_type;
> +
> +	pusb->dwrite.xfer_mode = boot->xfer_mode;
> +	pusb->dwrite.options = boot->options;
> +	pusb->dwrite.device_type = boot->device_type;
> +#else
> +#ifdef CONFIG_MMU
> +#error USB communications not working under MMU

You can add the following to CONFIG_OMAP4_USB_BOOT instead:

	depends on !MMU

So that an invalid config is not allowed in the first place.


> diff --git a/scripts/usbboot.c b/scripts/usbboot.c

This should also be named omap4-usbboot.c, or maybe, if the works on
other OMAPs, just omap-usboot.c

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
