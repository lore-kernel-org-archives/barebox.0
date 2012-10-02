Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ2ss-0006pT-LF
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 13:51:39 +0000
Date: Tue, 2 Oct 2012 15:51:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121002135127.GY1322@pengutronix.de>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348973437-31132-7-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 30, 2012 at 04:50:34AM +0200, vj wrote:
> ---
>  arch/arm/cpu/cpu.c                              |   1 +
>  arch/arm/mach-omap/Kconfig                      |   7 +
>  arch/arm/mach-omap/Makefile                     |   1 +
>  arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 ++++++++
>  arch/arm/mach-omap/omap4_generic.c              |  13 +
>  arch/arm/mach-omap/omap4_rom_usb.c              | 186 +++++++++++
>  scripts/.gitignore                              |   1 +
>  scripts/Makefile                                |   4 +
>  scripts/omap4_usbboot.c                         | 416 ++++++++++++++++++++++++
>  scripts/usb.h                                   |  61 ++++
>  scripts/usb_linux.c                             | 397 ++++++++++++++++++++++
>  11 files changed, 1229 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
>  create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
>  create mode 100644 scripts/omap4_usbboot.c
>  create mode 100644 scripts/usb.h
>  create mode 100644 scripts/usb_linux.c
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

This is a generic arm file. If you want to change something here, please
send a separate patch with this change and explain what it does (and why
it does it)

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
