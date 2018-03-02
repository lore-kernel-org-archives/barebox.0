Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erjOW-00024c-GJ
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 12:02:37 +0000
Received: by mail-lf0-x234.google.com with SMTP id v9so12914141lfa.11
 for <barebox@lists.infradead.org>; Fri, 02 Mar 2018 04:02:25 -0800 (PST)
Date: Fri, 2 Mar 2018 15:17:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180302151735.028ad4763bfd8ae7603a5fb9@gmail.com>
In-Reply-To: <20180301110729.pvdxqjqul7klrjyr@pengutronix.de>
References: <20180301110729.pvdxqjqul7klrjyr@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MIPS parallel build breakage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Thu, 1 Mar 2018 12:07:29 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Sam and Antony,
> =

> (Antony because you introduced this and Sam because you have intimate
> knowledge with our build system ;)
> =

> I am trying to solve a problem that annoys me for some years now. The
> problem is that the MIPS defconfigs regularly fail in my autobuilder.
> I usually help myself with trying it again and most of the time it
> then works, but doing this for years increases the pressure to do
> something.
> =

> What happens is that the MIPS builds use include/generated/compile.h:
> =

> > arch/mips/include/asm/pbl_macros.h:28:#include <generated/compile.h>
> =

> This often ends in:
> =

> > In file included from arch/mips/boot/start.S:20:0: arch/mips/include/as=
m/pbl_macros.h:28:31:
> > fatal error: generated/compile.h: No such file or directory
> > compilation terminated.
> =

> include/generated/compile.h is generated in common/Makefile:
> =

> > include/generated/compile.h: FORCE
> > 	@$($(quiet)chk_compile.h)
> > 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@ \
> > 	"$(UTS_MACHINE)" "$(CC) $(KBUILD_CFLAGS)"
> =

> Other users of this file add an explicit dependency on it:
> =

> > # dependencies on generated files need to be listed explicitly
> > $(obj)/version.o: include/generated/compile.h
> =

> This only seems to work though when the dependent file is in the same
> directory, but not when the file is in arch/mips/boot/.
> =

> I tried doing the include/generated/compile.h in Makefile instead of
> common/Makefile, but then the version counting gets confused and causes
> unnecessary rebuilds.
> =

> Any ideas how to solve this?

I can't reproduce parallel build breakage. But I see another problem:
the version string inside mips pbl binary is differ from the version string
inside main barebox binary.

I suppose that the problem is that current build system handles mips asm fi=
les
(which are actually use generated compile.h) and c-files in a different way.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
