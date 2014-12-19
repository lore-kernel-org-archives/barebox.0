Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y1xKT-0006eJ-Jc
 for barebox@lists.infradead.org; Fri, 19 Dec 2014 13:10:50 +0000
Received: by mail-la0-f47.google.com with SMTP id hz20so778562lab.20
 for <barebox@lists.infradead.org>; Fri, 19 Dec 2014 05:10:27 -0800 (PST)
Date: Fri, 19 Dec 2014 17:12:19 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20141219171219.b672ff943c851cbe6adf5006@gmail.com>
In-Reply-To: <20141219064542.GY30369@pengutronix.de>
References: <1418941957-6950-1-git-send-email-antonynpavlov@gmail.com>
 <20141219064542.GY30369@pengutronix.de>
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
Subject: Re: [RFC] introduce ioremap() and dev_ioremap_resource()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 19 Dec 2014 07:45:42 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Dec 19, 2014 at 01:32:37AM +0300, Antony Pavlov wrote:
> > The commit
> > =

> >     commit 0d7a21334536cb36b3c9b64d868acc55aec41332
> >     Author: Antony Pavlov <antonynpavlov@gmail.com>
> >     Date:   Wed Sep 10 11:42:19 2014 +0400
> > =

> >         MIPS: dts: use physical addresses (as Linux does)
> > =

> >         With IOMEM() adapted for MIPS we can use physical addresses
> >         in device tree reg property.
> > =

> > is premature. Current device tree files unusable on real hardware.
> >                           I'M SO SORRY!
> > The patch was tested on qemu, but qemu malta board is tolerant
> > of using physical addresses for accesing to device. Real hardware
> > can throw an exception in this situation.
> > =

> > Additional physical address to virtual address translation on MIPS is n=
eeded.
> > =

> > This commit demonstrate a possible (but not very good) solution.
> > This solution is copied-and-pasted from linux kernel.
> > In linux drivers use devm_ioremap_resource() function, so
> > the patch just replicates similar dev_ioremap_resource() function.
> > =

> > Changing dev_request_mem_region() to dev_ioremap_resource()
> > is not a very good idea because there are too many dev_request_mem_regi=
on()
> > in barebox sources
> > =

> >     barebox$ git grep dev_request_mem_region | wc -l
> >     197
> > =

> > moreover dev_ioremap_resource() has the second 'struct resource *res'
> > argument, so additional dev_get_resource() is needed.
> > =

> > Can we insert ioremap() into dev_request_mem_region() directly?
> > (we also can use already existion IOMEM() macro instead of linux' iorem=
ap()).
> =

> I'm not sure if it's a good idea to put that behind some standard
> lookingioremap() call, because its behaviour is not standard.
> =

> I'm also fine with adding some
> =

> #ifdef CONFIG_MIPS
> 	return mips_iomem(res->start);
> #else
> 	return (void __force __iomem *)res->start;
> #endif
> =

> At least this makes explicit that MIPS has a very special handling.

We already have this in include/common.h

#if defined(CONFIG_MIPS)
#include <asm/addrspace.h>

#define IOMEM(addr) ((void __force __iomem *)CKSEG1ADDR(addr))
#else
#define IOMEM(addr) ((void __force __iomem *)(addr))
#endif

So can I use just

    return IOMEM(res->start);

in dev_request_mem_region()?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
