Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8p6U-0000uz-JC
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 10:44:15 +0000
Received: by mail-lb0-f170.google.com with SMTP id u14so2417542lbd.29
 for <barebox@lists.infradead.org>; Thu, 30 Jan 2014 02:43:50 -0800 (PST)
Date: Thu, 30 Jan 2014 14:52:15 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140130145215.904657d266e52fdae3ff5364@gmail.com>
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

I have just fetched last next branch.

Sorry, Sascha, but 'git log --pretty=3Doneline arch/mips | cut -c 42- | hea=
d -n 18'
shows that the problem have not gone.

Please see =

http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dcommit;h=3D2785363e21f7b4999=
fd15c8c8eb3d50589eaf07f

your git web says just the same: 'MIPS: mach-loongson: add loongson-ls1b bo=
ard' is the parent for 'MIPS: add initial Loongson-1X SoC stuff'.


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
