Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bAGao-00008Z-4k
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 12:58:51 +0000
Received: by mail-lf0-x243.google.com with SMTP id h68so16151363lfh.3
 for <barebox@lists.infradead.org>; Tue, 07 Jun 2016 05:58:29 -0700 (PDT)
Date: Tue, 7 Jun 2016 15:59:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160607155951.20226a685e377ba8ba7d78d4@gmail.com>
In-Reply-To: <CACqcpZBraDOWWpbk4Qtpi6SKTzJVuDp-fLLn0vpn=a+yJeVHLQ@mail.gmail.com>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-13-git-send-email-poggi.raph@gmail.com>
 <20160607140006.a7739e6fe47c96873ad06534@gmail.com>
 <CACqcpZBraDOWWpbk4Qtpi6SKTzJVuDp-fLLn0vpn=a+yJeVHLQ@mail.gmail.com>
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
Subject: Re: [PATCH 12/12] arm: boards: add virt board
To: =?ISO-8859-1?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 7 Jun 2016 13:53:49 +0200
Rapha=EBl Poggi <poggi.raph@gmail.com> wrote:

> 2016-06-07 13:00 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> > On Thu,  2 Jun 2016 10:06:58 +0200
> > Raphael Poggi <poggi.raph@gmail.com> wrote:
> >
> >> Add qemu virt board which emulates arm64 board.
> >>
> >> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> >> ---
> >>  arch/arm/Kconfig                           |  9 ++++
> >>  arch/arm/boards/Makefile                   |  1 +
> >>  arch/arm/boards/virt/Kconfig               |  8 ++++
> >
> > Can we use a more descriptive 'qemu-virt' name for this machine/board i=
nstead of 'virt'?
> =

> Qemu virt machine support armv7 and armv8 cpu, maybe we can use the
> name "mach-qemu" for the machine and "qemu-virt64" for the board.
> =

> With this approach we use a generic name for the machine (since qemu
> virt machine support armv7/armv8, we do not need to distinguish
> between arm/arm64),
> and made the distinction arm/arm64 only in board name.
> =

> This also lets the possibility, for someone who wants to add support
> for qemu virt arm32 board, to not create another machine folder.
> =

> What do you think about that ?

So you are proposing to introduce these directories:

  arch/arm/boards/qemu-virt64/
  arch/arm/mach-qemu/

I propose to use 'arch/arm/mach-qemu-virt' for machine dir,
because qemu supports several arm-based machines, not only the virt machine.

On the other hand the 'mach-qemu-virt' name is too long
and 'mach-qemu' may be is a better solution.


> >
> >>  arch/arm/boards/virt/Makefile              |  1 +
> >>  arch/arm/boards/virt/env/bin/_update       | 36 ++++++++++++++++
> >>  arch/arm/boards/virt/env/bin/boot          | 38 +++++++++++++++++
> >
> > ... skipped ...
> >
> > --
> > Best regards,
> >   Antony Pavlov
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
