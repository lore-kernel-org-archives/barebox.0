Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erm4c-00062j-TF
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 14:54:17 +0000
Date: Fri, 2 Mar 2018 15:54:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180302145402.oqssaqvsh4h6dupg@pengutronix.de>
References: <20180301110729.pvdxqjqul7klrjyr@pengutronix.de>
 <20180302151735.028ad4763bfd8ae7603a5fb9@gmail.com>
 <20180302123401.zb5ltrledrhdwbfj@pengutronix.de>
 <20180302163731.a476bd3c03884101dafbaac1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180302163731.a476bd3c03884101dafbaac1@gmail.com>
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
Subject: Re: MIPS parallel build breakage
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Fri, Mar 02, 2018 at 04:37:31PM +0300, Antony Pavlov wrote:
> On Fri, 2 Mar 2018 13:34:01 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Fri, Mar 02, 2018 at 03:17:35PM +0300, Antony Pavlov wrote:
> > > On Thu, 1 Mar 2018 12:07:29 +0100
> > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > 
> > > > Hi Sam and Antony,
> > > > 
> > > > (Antony because you introduced this and Sam because you have intimate
> > > > knowledge with our build system ;)
> > > > 
> > > > I am trying to solve a problem that annoys me for some years now. The
> > > > problem is that the MIPS defconfigs regularly fail in my autobuilder.
> > > > I usually help myself with trying it again and most of the time it
> > > > then works, but doing this for years increases the pressure to do
> > > > something.
> > > > 
> > > > What happens is that the MIPS builds use include/generated/compile.h:
> > > > 
> > > > > arch/mips/include/asm/pbl_macros.h:28:#include <generated/compile.h>
> > > > 
> > > > This often ends in:
> > > > 
> > > > > In file included from arch/mips/boot/start.S:20:0: arch/mips/include/asm/pbl_macros.h:28:31:
> > > > > fatal error: generated/compile.h: No such file or directory
> > > > > compilation terminated.
> > > > 
> > > > include/generated/compile.h is generated in common/Makefile:
> > > > 
> > > > > include/generated/compile.h: FORCE
> > > > > 	@$($(quiet)chk_compile.h)
> > > > > 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@ \
> > > > > 	"$(UTS_MACHINE)" "$(CC) $(KBUILD_CFLAGS)"
> > > > 
> > > > Other users of this file add an explicit dependency on it:
> > > > 
> > > > > # dependencies on generated files need to be listed explicitly
> > > > > $(obj)/version.o: include/generated/compile.h
> > > > 
> > > > This only seems to work though when the dependent file is in the same
> > > > directory, but not when the file is in arch/mips/boot/.
> > > > 
> > > > I tried doing the include/generated/compile.h in Makefile instead of
> > > > common/Makefile, but then the version counting gets confused and causes
> > > > unnecessary rebuilds.
> > > > 
> > > > Any ideas how to solve this?
> > > 
> > > I can't reproduce parallel build breakage.
> > 
> > The failure starts here when using 6 threads or more and only when
> > compiling the black-swift_defconfig. After one successful build I can
> > reproduce this reliably here with:
> > 
> > rm -f include/generated/compile.h && make -j 6
> > 
> > > But I see another problem:
> > > the version string inside mips pbl binary is differ from the version string
> > > inside main barebox binary.
> > > 
> > > I suppose that the problem is that current build system handles mips asm files
> > > (which are actually use generated compile.h) and c-files in a different way.
> > 
> > Ups. How do the strings differ?
> 
> insert generated version into pbl by using mips_barebox_10h:
> 
> barebox$ git diff
> diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
> index 5c1537262e..6e85a7009a 100644
> --- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
> +++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
> @@ -43,18 +43,8 @@
>         .set    push
>         .set    noreorder
>  
> -       b       __start
> -        nop
> +       mips_barebox_10h
>  
> -       /*
> -          On MIPS Technologies boards
> -          0x1fc00010 address is reserved for BoardID
> -       */
> -       .org    0x10
> -       .word   0xffffffff
> -       .word   0xffffffff
> -
> -__start:
>         mips_disable_interrupts
>  
>         /* cpu specific setup ... */
> barebox$ make mrproper
> ...
> barebox$ export ARCH=mips
> barebox$ export CROSS_COMPILE=mips-linux-gnu-
> barebox$ make qemu-malta_defconfig
> ...
> barebox$ make -j3 -s
> ...
> barebox$ xxd barebox-flash-image | head -n 6
> 00000000: 1000 0017 0000 0000 0000 0000 0000 0000  ................
> 00000010: 6261 7265 626f 7820 3230 3138 2e30 322e  barebox 2018.02.
> 00000020: 302d 3030 3037 392d 6731 6564 6462 3064  0-00079-g1eddb0d
> 00000030: 3338 322d 6469 7274 7920 2330 2046 7269  382-dirty #0 Fri
>                                                            ^^^^^^^
> 00000040: 204d 6172 2032 2031 363a 3032 3a32 3920   Mar 2 16:02:29 
> 00000050: 4d53 4b20 3230 3138 0000 0000 0000 0000  MSK 2018........
> 
> #0, 16:02:29 !!!!!!!!
> 
> barebox$ qemu-system-mips -nodefaults -M malta -m 256 \
> >                          -nographic -serial stdio -monitor null \
> >                          -bios barebox-flash-image
> 
> 
> barebox 2018.02.0-00079-g1eddb0d382-dirty #1 Fri Mar 2 16:02:38 MSK 2018
>                                         ^^^^^^^
> 
> #1, 16:02:38 !!!!!!!!

I can imagine this also goes down to the missing dependency. UTS_VERSION
contains the build number (the number behind the #) and the build date.

Now if the PBL macros lack the dependency and generated/compile.h is
included *before* it is re-generated whereas the files in common do have
the dependency and generated/compile.h is included after it has been
re-generated then you get the effect that you see above.

> 
> > Another obvious way to fix the issue is to remove UTS_RELEASE and
> > UTS_VERSION from the pbl headers. Would that be an option?
> 
> It isn't a __good__ option.

Why not? the IMD stuff was specifically designed to read the barebox
version from an image. What else do you need that makes the version
necessary at a fixed offset in the binary?

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
