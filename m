Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8KFd-0001G1-Jr
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 06:38:08 +0000
Date: Tue, 17 Apr 2018 08:37:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180417063744.hnxitzm5psxbxfcc@pengutronix.de>
References: <20180301110729.pvdxqjqul7klrjyr@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180301110729.pvdxqjqul7klrjyr@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

On Thu, Mar 01, 2018 at 12:07:29PM +0100, Sascha Hauer wrote:
> Hi Sam and Antony,
> 
> (Antony because you introduced this and Sam because you have intimate
> knowledge with our build system ;)
> 
> I am trying to solve a problem that annoys me for some years now. The
> problem is that the MIPS defconfigs regularly fail in my autobuilder.
> I usually help myself with trying it again and most of the time it
> then works, but doing this for years increases the pressure to do
> something.
> 
> What happens is that the MIPS builds use include/generated/compile.h:
> 
> > arch/mips/include/asm/pbl_macros.h:28:#include <generated/compile.h>
> 
> This often ends in:
> 
> > In file included from arch/mips/boot/start.S:20:0: arch/mips/include/asm/pbl_macros.h:28:31:
> > fatal error: generated/compile.h: No such file or directory
> > compilation terminated.
> 
> include/generated/compile.h is generated in common/Makefile:
> 
> > include/generated/compile.h: FORCE
> > 	@$($(quiet)chk_compile.h)
> > 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@ \
> > 	"$(UTS_MACHINE)" "$(CC) $(KBUILD_CFLAGS)"
> 
> Other users of this file add an explicit dependency on it:
> 
> > # dependencies on generated files need to be listed explicitly
> > $(obj)/version.o: include/generated/compile.h
> 
> This only seems to work though when the dependent file is in the same
> directory, but not when the file is in arch/mips/boot/.
> 
> I tried doing the include/generated/compile.h in Makefile instead of
> common/Makefile, but then the version counting gets confused and causes
> unnecessary rebuilds.
> 
> Any ideas how to solve this?

We still have no solution for this. I dropped MIPS from my autobuilder,
so we won't catch any build errors on MIPS anymore :(

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
