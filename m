Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x243.google.com ([2a00:1450:4010:c04::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adgJM-0005ab-6u
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 15:46:08 +0000
Received: by mail-lb0-x243.google.com with SMTP id bc4so5497903lbc.0
 for <barebox@lists.infradead.org>; Wed, 09 Mar 2016 07:45:47 -0800 (PST)
Date: Wed, 9 Mar 2016 19:12:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160309191201.be9faa984b1459f8fb1b11b6@gmail.com>
In-Reply-To: <20160309172324.8c59a55c9c6c01e958ec1288@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
 <1457357426-9868-6-git-send-email-antonynpavlov@gmail.com>
 <20160309132814.GA31470@pengutronix.de>
 <20160309172324.8c59a55c9c6c01e958ec1288@gmail.com>
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
Subject: Re: [PATCH 05/15] MIPS: add initial R4000-style cache support
To: Sascha Hauer <s.hauer@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, 9 Mar 2016 17:23:24 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> On Wed, 9 Mar 2016 14:28:14 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

> > Hi Antony,
> > =

> > On Mon, Mar 07, 2016 at 04:30:16PM +0300, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > ---
> > >  arch/mips/include/asm/cacheops.h |  7 ++++++
> > >  arch/mips/include/asm/io.h       |  3 +++
> > >  arch/mips/lib/c-r4k.c            | 48 ++++++++++++++++++++++++++++++=
++++++++++
> > >  3 files changed, 58 insertions(+)
> > > =

> > > index ff68677..4fe046a 100644
> > > --- a/arch/mips/lib/c-r4k.c
> > > +++ b/arch/mips/lib/c-r4k.c
> > > @@ -10,10 +10,58 @@
> > >  #include <common.h>
> > >  #include <asm/io.h>
> > >  #include <asm/mipsregs.h>
> > > +#include <asm/cache.h>
> > =

> > This breaks bisectibility. asm/cache.h is introduced with the next.
> > patch. I tried swapping the patches but got merge conflicts. Shall I
> > squash both patches or do you have another preferred solution?
> =

> I'm so sorry!
> I'll fix it by myself and resend the series.

Hmmm. It look like the patchseries is in the next branch.

So I just send fixups.


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
