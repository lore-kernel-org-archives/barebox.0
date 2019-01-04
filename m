Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfN7o-0002sr-Ki
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 10:54:50 +0000
Received: by mail-lf1-x143.google.com with SMTP id y11so25138654lfj.4
 for <barebox@lists.infradead.org>; Fri, 04 Jan 2019 02:54:48 -0800 (PST)
Date: Fri, 4 Jan 2019 13:54:44 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190104135444.01b4689b768453fa22fca68a@gmail.com>
In-Reply-To: <20190104081741.mxdgg4dwm4l5s4ki@pengutronix.de>
References: <20190104015641.e6d525f098c5e272694faa62@gmail.com>
 <20190104081741.mxdgg4dwm4l5s4ki@pengutronix.de>
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
Subject: Re: barebox on Canon A1100
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Thomas Huth <thuth@redhat.com>, Peter Maydell <peter.maydell@linaro.org>, QEMU Developers <qemu-devel@nongnu.org>, qemu-arm <qemu-arm@nongnu.org>

On Fri, 4 Jan 2019 09:17:41 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Jan 04, 2019 at 01:56:41AM +0300, Antony Pavlov wrote:
> > Hi Sascha!
> > =

> > I have some good news and some bad news.
> > =

> > First the good news.
> > =

> > Barebox was used for Day 18 of QEMU 2018 advent (https://www.qemu-adven=
t-calendar.org/2018/).
> > =

> > Here is a quote:
> > =

> >   > This is an image for QEMU's emulated Canon A1100 Arm machine:
> >   > Play 2048 in the Barebox firmware environment.
> =

> Hey nice :)
> =

> > =

> > The bad news.
> > =

> > Current master branch barebox for Canon A1100 does not work under qemu,
> > barebox v2017.02.0 was used for qemu advent.
> > =

> > Thomas Huth reported the problem in the qemu-devel mailing
> > list two months ago. Please see https://www.mail-archive.com/qemu-devel=
@nongnu.org/msg571887.html
> > for details.
> > =

> > The commit a43e2bbc468a71 breaks barebox for Canon A1100:
> > =

> >   > commit a43e2bbc468a71fb8825e8acafb7fac7ad7c6dad
> >   > Author: Sascha Hauer <s.hauer@pengutronix.de>
> >   > Date:   Wed Mar 7 10:04:07 2018 +0100
> >   >
> >   >    ARM: return positive offset in get_runtime_offset()
> > =

> > Any suggestion?
> =

> Yes, try again with a recent barebox. There was a bug in this commit that
> should be fixed with the following:
>
> | commit 0230365df6601cd561c9e3e368c96222076ec9f5
> | Author: Sascha Hauer <s.hauer@pengutronix.de>
> | Date:   Wed Dec 12 08:55:31 2018 +0100
> | =

> |     ARM: fix setup_c when runtime offset is !=3D 0
> |     =

> |     The runtime offset has to be added to the memcpy source address and
> |     substracted from the return address. This should have been changed =
in
> |     a43e2bbc46 which changed from returning the negative runtime offset
> |     into changing the positive runtime offset. Instead a43e2bbc46 only
> |     changed a zero substraction ("subs r4, r0, #0") into a zero addition
> |     ("adds r4, r0, #0") which was used as a equal to zero test and chan=
ged
> |     nothing. This part is reverted here.
> |     =

> |     Fixes wrong copy / return locations when setup_c is called with
> |     different runtime and link addresses.
> |     =

> |     fixes: a43e2bbc46 ("ARM: return positive offset in get_runtime_offs=
et()")
> |     =

> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Thanks for noting!

I have just tested recent master branch barebox with qemu-3.1.0 from Debian=
 unstable.
It works!

Here is the log:

$ qemu-system-arm --version
QEMU emulator version 3.1.0 (Debian 1:3.1+dfsg-2)
Copyright (c) 2003-2018 Fabrice Bellard and the QEMU Project developers
$ qemu-system-arm -M canon-a1100 -display none -serial stdio -bios barebox.=
canon-a1100.bin
Switch to console [cs0]


barebox 2018.12.0-00140-g64fc4ac1b5 #1 Fri Jan 4 13:36:42 MSK 2019


Board: Canon PowerShot A1100 IS
digic-gpio c0220000.gpio.of: probed gpiochip-1 with base 0
cfi_flash f8000000.flash@f8000000.of: found cfi flash at 0xf8000000, size 4=
 MiB
malloc space: 0x00100000 -> 0x002fffff (size 2 MiB)
running /env/bin/init...
/env/bin/init not found
canon-a1100 > /


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
