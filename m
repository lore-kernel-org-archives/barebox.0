Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X77UX-00083x-BL
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 18:30:18 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so1480373lbi.13
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 11:29:54 -0700 (PDT)
Date: Tue, 15 Jul 2014 22:42:19 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140715224219.19f604e6d856a3aff702f702@gmail.com>
In-Reply-To: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: Update/include some functions from the Kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 15 Jul 2014 15:49:28 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

After rebasing over latest next I have got many warnings like this:

  CC      common/filetype.o
In file included from include/common.h:26:0,
                 from common/filetype.c:18:
include/linux/bitops.h: In function 'hweight_long':
include/linux/bitops.h:77:2: warning: implicit declaration of function 'hwe=
ight32' [-Wimplicit-function-declaration]
  return sizeof(w) =3D=3D 4 ? hweight32(w) : hweight64(w);
  ^
include/linux/bitops.h:77:2: warning: implicit declaration of function 'hwe=
ight64' [-Wimplicit-function-declaration]
include/linux/bitops.h: In function 'fls_long':
include/linux/bitops.h:175:2: warning: implicit declaration of function 'fl=
s64' [-Wimplicit-function-declaration]
  return fls64(l);
  ^



> This adds/updates some lowlevel bitmap/bitop stuff from the
> Kernel. Needed by upcoming USB updates.
> =

> Sascha
> =

> ----------------------------------------------------------------
> Sascha Hauer (5):
>       include: Add DECLARE_BITMAP from kernel
>       include: Add round_up/round_down macros from kernel
>       include: Add foreign endianess adding functions from kernel
>       lib: Add bitmap functions from kernel
>       include: update bitop functions from kernel
> =

>  include/asm-generic/bitops/hweight.h |  15 +
>  include/linux/bitmap.h               | 285 ++++++++++++
>  include/linux/bitops.h               | 214 ++++++++-
>  include/linux/byteorder/generic.h    |  29 ++
>  include/linux/kernel.h               |  13 +
>  include/linux/types.h                |   3 +
>  lib/Makefile                         |   1 +
>  lib/bitmap.c                         | 839 +++++++++++++++++++++++++++++=
++++++
>  8 files changed, 1398 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/bitmap.h
>  create mode 100644 lib/bitmap.c
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
