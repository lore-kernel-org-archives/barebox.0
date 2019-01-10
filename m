Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghXzf-0000e4-SZ
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 10:55:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id g11-v6so9298234ljk.3
 for <barebox@lists.infradead.org>; Thu, 10 Jan 2019 02:55:23 -0800 (PST)
Date: Thu, 10 Jan 2019 13:55:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190110135519.87505f79ee6e4be71c710cca@gmail.com>
In-Reply-To: <20190110083825.fgez6zfmfwyqafw2@pengutronix.de>
References: <20190109202754.29784-1-antonynpavlov@gmail.com>
 <20190110083825.fgez6zfmfwyqafw2@pengutronix.de>
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
Subject: Re: [RFC] ARM: zynq: fix "'IO_SPACE_LIMIT' redefined" warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Thu, 10 Jan 2019 09:38:25 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Jan 09, 2019 at 11:27:54PM +0300, Antony Pavlov wrote:
> > The patch fixes the following compiler's warning:
> > =

> > In file included from include/common.h:33:0,
> >                  from arch/arm/mach-zynq/zynq.c:18:
> > arch/arm/include/asm/io.h:4:0: warning: "IO_SPACE_LIMIT" redefined
> >  #define IO_SPACE_LIMIT 0
> > =

> > In file included from
> > arch/arm/mach-zynq/zynq.c:17:0:
> > include/asm-generic/io.h:92:0: note: this is the location of the previo=
us definition
> >  #define IO_SPACE_LIMIT 0xffff
> > =

> > Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/arm/mach-zynq/zynq.c | 1 -
> >  1 file changed, 1 deletion(-)
> > =

> > diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
> > index a0a8d0d249..dd8f12c16a 100644
> > --- a/arch/arm/mach-zynq/zynq.c
> > +++ b/arch/arm/mach-zynq/zynq.c
> > @@ -14,7 +14,6 @@
> >   */
> >  =

> >  #include <asm/system.h>
> > -#include <asm-generic/io.h>
> =

> asm-generic/io.h shouldn't be included directly, but only from asm/io.h
> if it decides to do so. io.h includes asm/io.h, so this is the one that
> should be included instead.

common.h includes asm/io.h, please see full patch context:

--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -14,7 +14,6 @@
  */
 =

 #include <asm/system.h>
-#include <asm-generic/io.h>
 #include <common.h>
 #include <init.h>
 #include <restart.h>


The question is, should we just drop this "#include <asm-generic/io.h>" or
change "#include <asm-generic/io.h>" into "#include <io.h>".

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
