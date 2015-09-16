Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc8Bu-0001Cz-AN
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 08:35:47 +0000
Date: Wed, 16 Sep 2015 10:35:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150916083523.GE4018@pengutronix.de>
References: <1442385648-6063-1-git-send-email-u74147@gmail.com>
 <20150916105033.d6d9a93ef5344d0c12ad4334@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150916105033.d6d9a93ef5344d0c12ad4334@gmail.com>
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
Subject: Re: [PATCH] MIPS: start.S depends on banner
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Kevin Du Huanpeng <u74147@gmail.com>

On Wed, Sep 16, 2015 at 10:50:33AM +0300, Antony Pavlov wrote:
> On Wed, 16 Sep 2015 14:40:48 +0800
> Kevin Du Huanpeng <u74147@gmail.com> wrote:
> 
> > Signed-off-by: Kevin Du Huanpeng <u74147@gmail.com>
> > ---
> >  arch/mips/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> > index aeb5c04..fde4c2e 100644
> > --- a/arch/mips/Kconfig
> > +++ b/arch/mips/Kconfig
> > @@ -6,6 +6,7 @@ config MIPS
> >  	select HAS_KALLSYMS
> >  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> >  	select HAVE_CONFIGURABLE_TEXT_BASE
> > +	select BANNER
> >  	default y
> >  
> >  config SYS_SUPPORTS_BIG_ENDIAN
> > -- 
> > 1.9.1
> > 
> 
> IMHO we can make banner use in start.S optional. E.g.:
> 
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index 7e2ae5e..f3a6a00 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -22,8 +22,10 @@
>  #include <asm/mipsregs.h>
>  #include <asm/asm.h>
>  #include <asm-generic/memory_layout.h>
> +#ifdef CONFIG_BANNER
>  #include <generated/compile.h>
>  #include <generated/utsrelease.h>
> +#endif

CONFIG_BANNER and this compilation failure have nothing to do with each
other.

The problem we have is that start.S may get compiled before
generated/compile.h is generated. This is because there is no
Make dependency from start.S to generated/compile.h. Look at
common/Makefile. There we have:

$(obj)/version.o: include/generated/compile.h

This makes sure that generated/compile.h is generated before compiling
version.c.

In arch/mips/boot/Makefile we would need:

$(obj)/start.o: include/generated/compile.h

The problem is that we do not have the rule to generate compile.h
available in this Makefile, so we would also need:

       chk_compile.h = :
 quiet_chk_compile.h = echo '  CHK     $@'
silent_chk_compile.h = :
include/generated/compile.h: FORCE
	@$($(quiet)chk_compile.h)
	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@ \
	"$(UTS_MACHINE)" "$(CC) $(KBUILD_CFLAGS)"

in arch/mips/boot/Makefile.

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
