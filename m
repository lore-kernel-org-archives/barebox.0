Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W65Kp-0005Ce-O5
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 21:27:44 +0000
Received: by mail-la0-f53.google.com with SMTP id e16so818077lan.12
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 13:27:19 -0800 (PST)
Date: Thu, 23 Jan 2014 01:35:29 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140123013529.b2e75ff11bcbe9492a743726@gmail.com>
In-Reply-To: <20140122111558.GA24917@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
 <20140122111558.GA24917@pengutronix.de>
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
Subject: Re: [PATCH 00/13] MIPS: add initial Loongson-based boards support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 22 Jan 2014 12:15:58 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sat, Jan 18, 2014 at 07:12:50PM +0400, Antony Pavlov wrote:
> > This patch series adds very initial Loongson CPU family support.
> > The only supported board is Loongson-1B-based LS1B development board.
> > =

> > The Loongson-1B SoC has good support in the mainline linux kernel,
> > so many things can be ported from linux in the future. =

> > =

> > [PATCH 01/13] MIPS: add initial Loongson-based boards support
> > [PATCH 02/13] MIPS: add initial Loongson-family documentation
> > [PATCH 03/13] MIPS: add Loongson-1B CPU Kbuild stuff
> > [PATCH 04/13] MIPS: add initial Loongson-1X SoC stuff
> > [PATCH 05/13] MIPS: add Loongson-1B processor constants and CPU probe
> > [PATCH 06/13] MIPS: mach-loongson: add loongson-ls1b board
> > [PATCH 07/13] MIPS: mach-loongson: add DEBUG_LL support
> > [PATCH 08/13] MIPS: loongson-ls1b: add DEBUG_LL support
> > [PATCH 09/13] MIPS: loongson-ls1b: add ns16550-based console
> > [PATCH 10/13] MIPS: loongson-ls1b: add PBL support
> > [PATCH 11/13] MIPS: loongson-ls1b: add NMON support
> > [PATCH 12/13] MIPS: loongson-ls1b: add documentation
> > [PATCH 13/13] MIPS: add loongson-ls1b_defconfig
> =

> Compilation of the loongson-ls1b_defconfig fails with:
> =

> In file included from arch/mips/mach-loongson/include/mach/debug_ll.h:24,
>                  from include/debug_ll.h:31,
>                  from common/console.c:36:
> arch/mips/boards/loongson-ls1b//include/board/debug_ll.h:25:28: error: ma=
ch/loongson1.h: No such file or directory
> In file included from arch/mips/mach-loongson/include/mach/debug_ll.h:25,
>                  from include/debug_ll.h:31,
>                  from common/console.c:36:
> /ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debu=
g_ll_ns16550.h: In function 'PUTC_LL':
> /ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debu=
g_ll_ns16550.h:62: error: 'LS1X_UART2_BASE' undeclared (first use in this f=
unction)
> /ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debu=
g_ll_ns16550.h:62: error: (Each undeclared identifier is reported only once
> /ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debu=
g_ll_ns16550.h:62: error: for each function it appears in.)
> make[1]: *** [common/console.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> scripts/Makefile.build:41: /ptx/work/dude/WORK_A/sha/barebox/barebox-test=
/arch/mips/mach-loongson/Makefile: No such file or directory
> make[1]: *** No rule to make target `/ptx/work/dude/WORK_A/sha/barebox/ba=
rebox-test/arch/mips/mach-loongson/Makefile'.  Stop.
> make: *** [arch/mips/mach-loongson] Error 2
> make: *** Waiting for unfinished jobs....
> arch/mips/boards/loongson-ls1b/serial.c:5:28: error: mach/loongson1.h: No=
 such file or directory
> arch/mips/boards/loongson-ls1b/serial.c: In function 'console_init':
> arch/mips/boards/loongson-ls1b/serial.c:17: warning: implicit declaration=
 of function 'KSEG1ADDR'
> arch/mips/boards/loongson-ls1b/serial.c:17: error: 'LS1X_UART2_BASE' unde=
clared (first use in this function)
> arch/mips/boards/loongson-ls1b/serial.c:17: error: (Each undeclared ident=
ifier is reported only once
> arch/mips/boards/loongson-ls1b/serial.c:17: error: for each function it a=
ppears in.)
> =

> arch/mips/mach-loongson/include/mach/loongson1.h and
> arch/mips/mach-loongson/Makefile seem to be missing. Could you respin wit=
h the missing files?

The missing files are from "[PATCH 04/13] MIPS: add initial Loongson-1X SoC=
 stuff".

The missed patch is registered in maillist: see http://lists.infradead.org/=
pipermail/barebox/2014-January/017521.html

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
