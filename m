Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOy78-0001LO-Ka
 for barebox@lists.infradead.org; Thu, 16 Apr 2020 06:35:08 +0000
Date: Thu, 16 Apr 2020 08:35:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200416063504.GS1694@pengutronix.de>
References: <20200415075917.54999-1-masahiroy@kernel.org>
 <20200415094018.GL1694@pengutronix.de>
 <CAK7LNAR-tti5gXSbS3SpJ0Vurkcbv2naDE-J0TZL0EqNLFzbiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAR-tti5gXSbS3SpJ0Vurkcbv2naDE-J0TZL0EqNLFzbiA@mail.gmail.com>
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
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 15, 2020 at 07:54:09PM +0900, Masahiro Yamada wrote:
> On Wed, Apr 15, 2020 at 6:40 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Wed, Apr 15, 2020 at 04:59:17PM +0900, Masahiro Yamada wrote:
> > > Fix the relative include path in <linux/libfdt.h>
> > >
> > > Including <linux/kernel.h> is too much. <linux/limits.h> is enough
> > > for INT_MAX.
> > >
> > > Define INT32_MAX and UINT32_MAX in the same way as Linux does.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > >  include/linux/libfdt.h     | 2 +-
> > >  include/linux/libfdt_env.h | 7 ++++---
> > >  2 files changed, 5 insertions(+), 4 deletions(-)
> >
> > Applied, thanks.
> >
> > >
> > > diff --git a/include/linux/libfdt.h b/include/linux/libfdt.h
> > > index ef2467213..90ed4ebfa 100644
> > > --- a/include/linux/libfdt.h
> > > +++ b/include/linux/libfdt.h
> > > @@ -3,6 +3,6 @@
> > >  #define _INCLUDE_LIBFDT_H_
> > >
> > >  #include <linux/libfdt_env.h>
> > > -#include "../scripts/dtc/libfdt/libfdt.h"
> > > +#include "../../scripts/dtc/libfdt/libfdt.h"
> >
> > I wonder why this obviously wrong path worked before.
> 
> 
> This is because the $(srctree)/include/
> is added to the header search paths.
> 
> 
> The top Makefile defines it as follows:
> 
> LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
>                    $(if $(KBUILD_SRC), -I$(srctree)/include) \
>                    -I$(srctree)/arch/$(ARCH)/include \
>                    -I$(objtree)/arch/$(ARCH)/include \
>                    -include $(srctree)/include/linux/kconfig.h
> 
> 
> 
> The previous "../scripts/dtc/libfdt/libfdt.h"
> works because it is relative to $(srctree)/include/

Ah, "file" falls back to <file> when file is not found in the relative
path. I tend to forget that.

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
