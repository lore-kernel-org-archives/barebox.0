Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZxCHU-0007lP-QM
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 11:12:37 +0000
Received: by lffz63 with SMTP id z63so50577029lff.0
 for <barebox@lists.infradead.org>; Fri, 13 Nov 2015 03:12:14 -0800 (PST)
Date: Fri, 13 Nov 2015 14:35:44 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151113143544.05def88a37e14a4722eaad1b@gmail.com>
In-Reply-To: <CAGm1_ktg_gmMN41X0v5h_ShO8FpYPFE_NHvhx=on8tZ8G-HtMA@mail.gmail.com>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <CAGm1_ktg_gmMN41X0v5h_ShO8FpYPFE_NHvhx=on8tZ8G-HtMA@mail.gmail.com>
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
Subject: Re: [RFC 0/4] FIT Support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 11 Nov 2015 12:39:14 +0100
Yegor Yefremov <yegorslists@googlemail.com> wrote:

> On Thu, Mar 12, 2015 at 3:39 PM, Jan Luebbe <jlu@pengutronix.de> wrote:
> > Hi,
> >
> > this is the current work-in-progress state of my FIT support patches.
> > The FIT loading code has basically been rewritten from scratch, as the
> > original U-Boot code uses libfdt and barebox's DT support works on an
> > in-memory tree.
> >
> > These patches apply on v2015.03.0.
> > The two patches from Sascha are required for the basic RSA support.
> > The third patch adds FIT support.
> > The fourth patch contains some test data to use in the sandbox.
> >
> > $ ./barebox -i key.dtb -i sign-configs.itb
> > add file key.dtb()
> > add file sign-configs.itb()
> >
> > barebox 2015.03.0-00005-g574d35e191f7-dirty #81 Thu Mar 12 14:57:13 CET=
 2015
> >
> > Board: barebox sandbox
> > ...
> > Hit any key to stop autoboot:  3
> > barebox@barebox sandbox:/ oftree -l /dev/fd0
> > barebox@barebox sandbox:/ bootm /dev/fd1
> >
> > Loading open firmware Device Tree flattened Binary '/dev/fd1'
> > FIT '/dev/fd1': 'Chrome OS kernel image with one or more FDT blobs'
> > FIT configuration 'conf@1' (no description)
> > sig OK
> > FIT image 'kernel@1' (no description)
> > hash OK
> > FIT image 'fdt@1': 'snow'
> > hash OK
> >
> > Jan Luebbe (2):
> >   FIT: add FIT image support
> >   FIT: add test config and data [do not merge]
> >
> > Sascha Hauer (2):
> >   digest: Make filename arguments const
> >   Add rsa support
> >
> >  arch/arm/lib/bootm.c                   |  74 +++++
> >  arch/sandbox/configs/sandbox_defconfig |  33 +-
> >  commands/Kconfig                       |   8 +
> >  common/Kconfig                         |   7 +
> >  common/Makefile                        |   1 +
> >  common/digest.c                        |   8 +-
> >  common/image-fit.c                     | 585 +++++++++++++++++++++++++=
++++++++
> >  crypto/Kconfig                         |   3 +
> >  crypto/Makefile                        |   1 +
> >  crypto/rsa.c                           | 411 +++++++++++++++++++++++
> >  include/asm-generic/errno.h            |   5 +
> >  include/digest.h                       |   8 +-
> >  include/image-fit.h                    |  42 +++
> >  include/rsa.h                          |  54 +++
> >  key.dtb                                | Bin 0 -> 1023 bytes
> >  key.dts                                |  27 ++
> >  sign-configs.itb                       | Bin 0 -> 2453 bytes
> >  17 files changed, 1247 insertions(+), 20 deletions(-)
> >  create mode 100644 common/image-fit.c
> >  create mode 100644 crypto/rsa.c
> >  create mode 100644 include/image-fit.h
> >  create mode 100644 include/rsa.h
> >  create mode 100644 key.dtb
> >  create mode 100644 key.dts
> >  create mode 100644 sign-configs.itb
> >
> > --
> > 2.1.4
> =

> What the state of FIT support in Barebox?

Sascha!

Could you tell us, please,
is there any interest in FIT support in Barebox?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
