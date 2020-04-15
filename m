Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfhS-000223-Us
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 10:55:24 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 03FAsktf021033
 for <barebox@lists.infradead.org>; Wed, 15 Apr 2020 19:54:46 +0900
Received: by mail-vs1-f48.google.com with SMTP id g184so756432vsc.0
 for <barebox@lists.infradead.org>; Wed, 15 Apr 2020 03:54:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200415075917.54999-1-masahiroy@kernel.org>
 <20200415094018.GL1694@pengutronix.de>
In-Reply-To: <20200415094018.GL1694@pengutronix.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 19:54:09 +0900
Message-ID: <CAK7LNAR-tti5gXSbS3SpJ0Vurkcbv2naDE-J0TZL0EqNLFzbiA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] libfdt: update <linux/libfdt.h> and <linux/libfdt_env.h>
 to Linux 5.7-rc1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 15, 2020 at 6:40 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Apr 15, 2020 at 04:59:17PM +0900, Masahiro Yamada wrote:
> > Fix the relative include path in <linux/libfdt.h>
> >
> > Including <linux/kernel.h> is too much. <linux/limits.h> is enough
> > for INT_MAX.
> >
> > Define INT32_MAX and UINT32_MAX in the same way as Linux does.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  include/linux/libfdt.h     | 2 +-
> >  include/linux/libfdt_env.h | 7 ++++---
> >  2 files changed, 5 insertions(+), 4 deletions(-)
>
> Applied, thanks.
>
> >
> > diff --git a/include/linux/libfdt.h b/include/linux/libfdt.h
> > index ef2467213..90ed4ebfa 100644
> > --- a/include/linux/libfdt.h
> > +++ b/include/linux/libfdt.h
> > @@ -3,6 +3,6 @@
> >  #define _INCLUDE_LIBFDT_H_
> >
> >  #include <linux/libfdt_env.h>
> > -#include "../scripts/dtc/libfdt/libfdt.h"
> > +#include "../../scripts/dtc/libfdt/libfdt.h"
>
> I wonder why this obviously wrong path worked before.


This is because the $(srctree)/include/
is added to the header search paths.


The top Makefile defines it as follows:

LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
                   $(if $(KBUILD_SRC), -I$(srctree)/include) \
                   -I$(srctree)/arch/$(ARCH)/include \
                   -I$(objtree)/arch/$(ARCH)/include \
                   -include $(srctree)/include/linux/kconfig.h



The previous "../scripts/dtc/libfdt/libfdt.h"
works because it is relative to $(srctree)/include/


---
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
