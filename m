Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPUe-0007wU-Ol
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:47:53 +0000
Received: by mail-la0-f52.google.com with SMTP id fo13so3087457lab.25
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 00:47:29 -0700 (PDT)
Date: Mon, 3 Jun 2013 11:46:25 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130603114625.775db202a34aabcd581ff461@gmail.com>
In-Reply-To: <20130603073132.GB26150@pengutronix.de>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
 <1370073169-29009-4-git-send-email-antonynpavlov@gmail.com>
 <20130603073132.GB26150@pengutronix.de>
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
Subject: Re: [PATCH 3/6] MIPS: rzx50: pbl: use debug_ll
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 3 Jun 2013 09:31:32 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sat, Jun 01, 2013 at 11:52:46AM +0400, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/boards/rzx50/include/board/board_pbl_start.h |    6 ++++++
> >  arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h  |    4 ++++
> >  2 files changed, 10 insertions(+)
> > =

> > diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/a=
rch/mips/boards/rzx50/include/board/board_pbl_start.h
> > index cba3e7f..f71641a 100644
> > --- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> > +++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> > @@ -18,6 +18,7 @@
> >   */
> >  =

> >  #include <asm/pbl_macros.h>
> > +#include <mach/debug_ll.h>
> >  =

> >  	.macro	board_pbl_start
> >  	.set	push
> > @@ -28,6 +29,11 @@
> >  	/* CPU/SoC specific setup ... */
> >  	/* ... absent */
> >  =

> > +	debug_ll_ns16550_init
> > +
> > +	debug_ll_ns16550_outc '.'
> > +	debug_ll_ns16550_outnl
> > +
> >  	copy_to_link_location	pbl_start
> =

> I had to drop this series beginning from this patch as it breaks
> bisectibility. There seem to be some C stuff leaking in to the
> assembler.

Yes, I have moved the similar C and asm stuff to one place.

> I tried to fix this myself but I wasn't really sure what to
> to. Could you update this based on current master?

Hmm, I used the 'next' branch as the base for this patches.

I'll update the patches in a few hours.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
