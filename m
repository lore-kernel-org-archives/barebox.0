Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6HTD-0002in-Ob
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 10:25:12 +0000
Received: by mail-la0-f41.google.com with SMTP id mc6so1302855lab.0
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2014 02:24:48 -0800 (PST)
Date: Thu, 23 Jan 2014 14:33:01 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140123143301.56549abbc0544e29206cf327@gmail.com>
In-Reply-To: <20140123070218.GF16215@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
 <20140122111558.GA24917@pengutronix.de>
 <20140123013529.b2e75ff11bcbe9492a743726@gmail.com>
 <20140123070218.GF16215@pengutronix.de>
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

On Thu, 23 Jan 2014 08:02:19 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jan 23, 2014 at 01:35:29AM +0400, Antony Pavlov wrote:
> > On Wed, 22 Jan 2014 12:15:58 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Sat, Jan 18, 2014 at 07:12:50PM +0400, Antony Pavlov wrote:
> > > make: *** Waiting for unfinished jobs....
> > > arch/mips/boards/loongson-ls1b/serial.c:5:28: error: mach/loongson1.h=
: No such file or directory
> > > arch/mips/boards/loongson-ls1b/serial.c: In function 'console_init':
> > > arch/mips/boards/loongson-ls1b/serial.c:17: warning: implicit declara=
tion of function 'KSEG1ADDR'
> > > arch/mips/boards/loongson-ls1b/serial.c:17: error: 'LS1X_UART2_BASE' =
undeclared (first use in this function)
> > > arch/mips/boards/loongson-ls1b/serial.c:17: error: (Each undeclared i=
dentifier is reported only once
> > > arch/mips/boards/loongson-ls1b/serial.c:17: error: for each function =
it appears in.)
> > > =

> > > arch/mips/mach-loongson/include/mach/loongson1.h and
> > > arch/mips/mach-loongson/Makefile seem to be missing. Could you respin=
 with the missing files?
> > =

> > The missing files are from "[PATCH 04/13] MIPS: add initial Loongson-1X=
 SoC stuff".
> > =

> > The missed patch is registered in maillist: see http://lists.infradead.=
org/pipermail/barebox/2014-January/017521.html
> =

> Indeed. For some reason I didn't receive that mail. I picked it from the
> ml archive now.

I have just fetched next branch from barebox.org.

Now the "MIPS: add initial Loongson-1X SoC stuff" patch is just after all l=
oongson-related
patches save "add loongson-ls1b_defconfig".

Could you please put it before the "add loongson-ls1b board" patch?

--
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
