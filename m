Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIIQ1-00019E-Vq
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 12:14:46 +0000
Received: by ieje14 with SMTP id e14so11057959iej.36
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 05:14:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1348973437-31132-7-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
Date: Sun, 30 Sep 2012 16:14:41 +0400
Message-ID: <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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

On 30 September 2012 06:50, vj <vicencb@gmail.com> wrote:
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
>                 : "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
>         );
>  #endif
> +       __asm__ __volatile__ ("cpsid i\n");
>  }
>
>  #ifdef CONFIG_THUMB2_BAREBOX
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index d735284..16583cb 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -96,6 +96,13 @@ config ARCH_TEXT_BASE
>         default 0x80e80000 if MACH_OMAP343xSDP
>         default 0x80e80000 if MACH_BEAGLE
>
> +config OMAP4_USBBOOT
> +       bool "enable booting from USB"
> +       default n
> +       depends on ARCH_OMAP4 && !MMU
> +       help
> +         Enable this to enable USB booting
> +

Can we add more detailed description here? E.g.:

Say Y here if you want to be able to boot <name of the chip family
here> from USB.
You need an utility program called <name of the program here> to boot
from USB. Please read <file name or URL here> for more information.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
