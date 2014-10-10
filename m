Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XcVtx-0008Ev-Tb
 for barebox@lists.infradead.org; Fri, 10 Oct 2014 08:50:18 +0000
Received: by mail-la0-f41.google.com with SMTP id pn19so2806433lab.0
 for <barebox@lists.infradead.org>; Fri, 10 Oct 2014 01:49:55 -0700 (PDT)
Date: Fri, 10 Oct 2014 12:43:11 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20141010124311.f56a5bb12e439de1ac003f31@gmail.com>
In-Reply-To: <20141010063821.GL4992@pengutronix.de>
References: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
 <20141010063821.GL4992@pengutronix.de>
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
Subject: Re: [PATCH 0/2] mips: qemu-malta: add little-endian mode support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 10 Oct 2014 08:38:21 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Oct 10, 2014 at 12:08:55AM +0400, Antony Pavlov wrote:
> > Antony Pavlov (2):
> >   mips: qemu-malta: add little-endian mode support
> >   Documentation: mips: add little-endian qemu-malta HOWTO
> =

> Hm, nice. Adding big endian support to Arm would not be that simple.

Actually most of mips chips supported by barebox are little-endian only
(bcm47xx, loongson, xburst). So all little-endian support work was
already done before.

Malta is bi-endian but I suppose little-endian mode is more popular
so it is handy to have real working little-endian qemu-malta support.
Nevertheless I prefer to use big-endian qemu-malta most of the time
as it does not need this odd boot image file byte swapping (see
Documentation-related second patch in this series).


> > =

> >  Documentation/boards/mips/qemu-malta.rst | 24 ++++++++++++++++++++++++
> >  arch/mips/Kconfig                        |  1 +
> >  arch/mips/include/asm/gt64120.h          |  7 +++++++
> >  3 files changed, 32 insertions(+)
> > =

> > -- =

> > 2.1.1
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > =

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
