Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta9Ug-000162-1n
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 18:21:22 +0000
Received: by mail-ia0-f177.google.com with SMTP id u21so2803726ial.36
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 10:21:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1211181240360.32651@oneiric>
References: <alpine.DEB.2.02.1211181240360.32651@oneiric>
Date: Sun, 18 Nov 2012 22:21:20 +0400
Message-ID: <CAA4bVAEpXjiv-DAG=aF9OfmJBOqHZKadr6xpXOznEB6MPdQMkA@mail.gmail.com>
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
Subject: Re: shouldn't asm-generic/barebox.lds.h be arch-independent?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 18 November 2012 21:52, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   perusing the code to see how the final barebox executable is created
> and ran across this opening to include/asm-generic/barebox.lds.h:
>
> #if defined CONFIG_ARCH_IMX25 || \
>         defined CONFIG_ARCH_IMX35 || \
>         defined CONFIG_ARCH_IMX51 || \
>         defined CONFIG_ARCH_IMX53 || \
>         defined CONFIG_ARCH_IMX6 || \
>         defined CONFIG_X86 || \
>         defined CONFIG_ARCH_EP93XX
> #include <mach/barebox.lds.h>
> #endif
>
> #ifndef PRE_IMAGE
> #define PRE_IMAGE
> #endif
>
>   i find that more than a little confusing and inappropriate -- it
> strikes me that the allegedly "generic" lds.h file shouldn't be
> testing for an arbitrary set of inexplicable machine/arch
> combinations, especially when there is absolutely no explanation about
> what makes that particular set of symbols magic with respect to this
> file.
>
>   a minute or two of perusing shows that what it's for is inserting
> some special "pre-image" content into the executable, but that means
> that for each new selection that needs that, this file will have to be
> changed and that's just messy.
>
>   the linux kernel has a simpler strategy for
> asm-generic/vmlinux.lds.h, as you see in this patch snippet that added
> bss first section functionality to that file earlier this year:
>
> +/*
> + * Allow archectures to redefine BSS_FIRST_SECTIONS to add extra
> + * sections to the front of bss.
> + */
> +#ifndef BSS_FIRST_SECTIONS
> +#define BSS_FIRST_SECTIONS
> +#endif
> +
>  #define BSS(bss_align)                                                 \
>         . = ALIGN(bss_align);                                           \
>         .bss : AT(ADDR(.bss) - LOAD_OFFSET) {                           \
> +               BSS_FIRST_SECTIONS                                      \
>                 *(.bss..page_aligned)                                   \
>                 *(.dynbss)                                              \
>                 *(.bss)                                                 \
>
>   that would seem to be a much nicer solution as it pushes the
> selection of pre-image content back to the architectures where it
> belongs.
>
>   the fact that the current approach is prone to "error" can be seen
> in the file arch/mips/lib/barebox.lds.S:
>
> #include <asm-generic/barebox.lds.h>
>
> OUTPUT_ARCH(mips)
> ENTRY(_start)
> SECTIONS
> {
>         . = TEXT_BASE;
>
>         . = ALIGN(4);
>         .text      :
>         {
>                 _start = .;
>                 *(.text_entry*)
>                 _stext = .;
>                 _text = .;
>                 __bare_init_start = .;
>                 *(.text_bare_init*)
>                 __bare_init_end = .;
>                 *(.text*)
>         }
>         BAREBOX_BARE_INIT_SIZE
>
>         PRE_IMAGE  <--- ?????
>
> apparently, the MIPS architecture is including the "PRE_IMAGE"
> content, despite the fact that it can't possibly be defined.  it's not
> wrong, it's just pointless and potentially confusing.

Unfortunately nowadays MIPS lacks lowlevel initialization support.
Yesterday I mailed RFC about pbl (prebootloader) support. It needs
much work, but IMHO after incorporating MIPS pbl support the status of
"PRE_IMAGE" will be more clear.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
