Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8kGn-0002OA-GZ
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 05:34:34 +0000
Received: by mail-la0-f54.google.com with SMTP id y1so2241857lam.27
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2014 21:34:11 -0800 (PST)
Date: Thu, 30 Jan 2014 09:42:36 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140130094236.d5399b714cb38ad0fd141926@gmail.com>
In-Reply-To: <20140127082415.GS16215@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
 <20140122111558.GA24917@pengutronix.de>
 <20140123013529.b2e75ff11bcbe9492a743726@gmail.com>
 <20140123070218.GF16215@pengutronix.de>
 <20140123143301.56549abbc0544e29206cf327@gmail.com>
 <20140127082415.GS16215@pengutronix.de>
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

On Mon, 27 Jan 2014 09:24:15 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jan 23, 2014 at 02:33:01PM +0400, Antony Pavlov wrote:
> > On Thu, 23 Jan 2014 08:02:19 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Thu, Jan 23, 2014 at 01:35:29AM +0400, Antony Pavlov wrote:
> > > > On Wed, 22 Jan 2014 12:15:58 +0100
> > > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > > =

> > > > > On Sat, Jan 18, 2014 at 07:12:50PM +0400, Antony Pavlov wrote:
> > > > > make: *** Waiting for unfinished jobs....
> > > > > arch/mips/boards/loongson-ls1b/serial.c:5:28: error: mach/loongso=
n1.h: No such file or directory
> > > > > arch/mips/boards/loongson-ls1b/serial.c: In function 'console_ini=
t':
> > > > > arch/mips/boards/loongson-ls1b/serial.c:17: warning: implicit dec=
laration of function 'KSEG1ADDR'
> > > > > arch/mips/boards/loongson-ls1b/serial.c:17: error: 'LS1X_UART2_BA=
SE' undeclared (first use in this function)
> > > > > arch/mips/boards/loongson-ls1b/serial.c:17: error: (Each undeclar=
ed identifier is reported only once
> > > > > arch/mips/boards/loongson-ls1b/serial.c:17: error: for each funct=
ion it appears in.)
> > > > > =

> > > > > arch/mips/mach-loongson/include/mach/loongson1.h and
> > > > > arch/mips/mach-loongson/Makefile seem to be missing. Could you re=
spin with the missing files?
> > > > =

> > > > The missing files are from "[PATCH 04/13] MIPS: add initial Loongso=
n-1X SoC stuff".
> > > > =

> > > > The missed patch is registered in maillist: see http://lists.infrad=
ead.org/pipermail/barebox/2014-January/017521.html
> > > =

> > > Indeed. For some reason I didn't receive that mail. I picked it from =
the
> > > ml archive now.
> > =

> > I have just fetched next branch from barebox.org.
> > =

> > Now the "MIPS: add initial Loongson-1X SoC stuff" patch is just after a=
ll loongson-related
> > patches save "add loongson-ls1b_defconfig".
> > =

> > Could you please put it before the "add loongson-ls1b board" patch?
> =

> Ok. Just did that.

I have just updated from git://git.pengutronix.de/git/barebox.git.

Here is a short log:

$ git log --pretty=3Doneline arch/mips | cut -c 42- | head -n 18
Merge branch 'for-next/mips' into next
MIPS: mach-ar231x: Fix uninitialized variable
MIPS: csrc-r4k: use CLOCKSOURCE_MASK() macro
MIPS: add loongson-ls1b_defconfig
MIPS: loongson-ls1b: add documentation
MIPS: loongson-ls1b: add NMON support
MIPS: loongson-ls1b: add PBL support
MIPS: loongson-ls1b: add ns16550-based console
MIPS: loongson-ls1b: add DEBUG_LL support
MIPS: mach-loongson: add DEBUG_LL support
MIPS: add initial Loongson-1X SoC stuff
MIPS: mach-loongson: add loongson-ls1b board
MIPS: add Loongson-1B processor constants and CPU probe
MIPS: add Loongson-1B CPU Kbuild stuff
MIPS: add initial Loongson-family documentation
MIPS: add initial Loongson-based boards support
mips asm/types.h: add #ifndef to fix compile error
MIPS: import exception registers saving from linux kernel

You can see that "MIPS: add initial Loongson-1X SoC stuff" is AFTER "MIPS: =
mach-loongson: add loongson-ls1b board".

This breaks loongson-ls1b board build without "Loongson-1X SoC stuff":

scripts/Makefile.build:41: /home/antony/barebox.git/arch/mips/mach-loongson=
/Makefile: No such file or directory
make[1]: *** No rule to make target `/home/antony/barebox.git/arch/mips/mac=
h-loongson/Makefile'.  Stop.
make: *** [arch/mips/mach-loongson] Error 2

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
