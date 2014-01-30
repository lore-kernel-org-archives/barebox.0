Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8qyd-0004Og-JB
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 12:44:16 +0000
Received: by mail-lb0-f181.google.com with SMTP id z5so2437497lbh.26
 for <barebox@lists.infradead.org>; Thu, 30 Jan 2014 04:43:53 -0800 (PST)
Date: Thu, 30 Jan 2014 16:52:18 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140130165218.a9e1b53bd5dd766449feb5ff@gmail.com>
In-Reply-To: <20140130094541.GU16215@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
 <20140122111558.GA24917@pengutronix.de>
 <20140123013529.b2e75ff11bcbe9492a743726@gmail.com>
 <20140123070218.GF16215@pengutronix.de>
 <20140123143301.56549abbc0544e29206cf327@gmail.com>
 <20140127082415.GS16215@pengutronix.de>
 <20140130094236.d5399b714cb38ad0fd141926@gmail.com>
 <20140130094541.GU16215@pengutronix.de>
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

On Thu, 30 Jan 2014 10:45:42 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> > I have just updated from git://git.pengutronix.de/git/barebox.git.
> > =

> > Here is a short log:
> > =

> > $ git log --pretty=3Doneline arch/mips | cut -c 42- | head -n 18
> > Merge branch 'for-next/mips' into next
> > MIPS: mach-ar231x: Fix uninitialized variable
> > MIPS: csrc-r4k: use CLOCKSOURCE_MASK() macro
> > MIPS: add loongson-ls1b_defconfig
> > MIPS: loongson-ls1b: add documentation
> > MIPS: loongson-ls1b: add NMON support
> > MIPS: loongson-ls1b: add PBL support
> > MIPS: loongson-ls1b: add ns16550-based console
> > MIPS: loongson-ls1b: add DEBUG_LL support
> > MIPS: mach-loongson: add DEBUG_LL support
> > MIPS: add initial Loongson-1X SoC stuff
> > MIPS: mach-loongson: add loongson-ls1b board
> > MIPS: add Loongson-1B processor constants and CPU probe
> > MIPS: add Loongson-1B CPU Kbuild stuff
> > MIPS: add initial Loongson-family documentation
> > MIPS: add initial Loongson-based boards support
> > mips asm/types.h: add #ifndef to fix compile error
> > MIPS: import exception registers saving from linux kernel
> > =

> > You can see that "MIPS: add initial Loongson-1X SoC stuff" is AFTER "MI=
PS: mach-loongson: add loongson-ls1b board".
> > =

> > This breaks loongson-ls1b board build without "Loongson-1X SoC stuff":
> =

> Try again. Hopefully I got it right this time.
> =

> Sascha

Now (Thu Jan 30 16:50:29 MSK 2014), the first loongson-board commit is

commit 0208fdb15b83e4aaad12ee71695adb88229efab3
Author: Antony Pavlov <antonynpavlov@gmail.com>
Date:   Sat Jan 18 19:12:56 2014 +0400

    MIPS: mach-loongson: add loongson-ls1b board
    =

    Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

It builds fine, thanks!


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
