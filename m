Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpuoO-00012S-VS
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 06:27:09 +0000
Received: by mail-la0-f44.google.com with SMTP id er20so6763890lab.31
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2013 23:26:46 -0700 (PDT)
Date: Fri, 21 Jun 2013 10:25:25 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130621102525.8cdf578379630c9ff8d6052a@gmail.com>
In-Reply-To: <20130621053017.GW32299@pengutronix.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
 <20130621053017.GW32299@pengutronix.de>
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
Subject: Re: [PATCH 0/8] low level initialisation for ar2313
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 21 Jun 2013 07:30:17 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Oleksij, Antony,
> =

> I'm fine with this series. Antony, do you have comments?

The series looks good!

But in the last minute I made a small fix for the "MIPS: pbl: add pbl_sleep=
 macro" patch.

It's a shame, but generated label inside assembly macros are not "local" (a=
t least I have not found how to make them local in my toolchain). =


As the user of the pbl_sleep can use generated label "1" (this label alread=
y used in pbl_sleep), there can be some painful side effects, e.g. =


1:                    // user's generated label

   ...                // some user code

   pbl_sleep t1 100

   ...                // another user code

   b 1b               // jump to the back label "1"


Inside the pbl_sleep macro we have one more "1" label, so the jump instruct=
ion of the
example transfer control not to the user's label "1" but to label "1" insid=
e pbl_sleep. =


So I propose a ad-hoc solution.

--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -32,8 +32,8 @@
        .set push
        .set noreorder
        li      \reg, \count
-1:
-       bgtz    \reg, 1b
+254:
+       bgtz    \reg, 254b
         addi   \reg, -1
        .set    pop
        .endm

The programmers are lazy (at least many of them), they like short names "1"=
, "2"
and "254" is very long name, so the conflict is not expected.
To prevent conflicts like this we can make a convention "don't use generate=
d labels 200-255 in you assembler pbl code". =


Is there a need for series/patch reposting for fixing the issue?

> On Wed, Jun 19, 2013 at 11:11:25AM +0200, Oleksij Rempel wrote:
> > this patch set add low level initialisation for Atheros ar2313
> > and board based on this chip - Netgear wg102.
> > =

> > Antony Pavlov (2):
> >   MIPS: pbl: add mips_barebox_10h asm macro
> >   MIPS: mach-ar231x: enable DEBUG_LL
> > =

> > Oleksij Rempel (6):
> >   MIPS: pbl: add pbl_sleep macro
> >   MIPS: pbl: add pbl_probe_mem macro
> >   MIPS: mach-ar231x: add lowlevel init pbl macros
> >   MIPS: netgear-wg102: add pbl support
> >   MIPS: netgear-wg102: add debug_ll
> >   netgear-wg102: pbl, add extra check for mem config
> > =

> >  arch/mips/Kconfig                                  |   1 +
> >  .../netgear-wg102/include/board/board_pbl_start.h  |  77 +++++++++
> >  .../boards/netgear-wg102/include/board/debug_ll.h  |  33 ++++
> >  arch/mips/include/asm/pbl_macros.h                 |  38 +++++
> >  arch/mips/mach-ar231x/Kconfig                      |   2 +
> >  arch/mips/mach-ar231x/include/mach/debug_ll.h      |  27 ++++
> >  arch/mips/mach-ar231x/include/mach/pbl_macros.h    | 177 +++++++++++++=
++++++++
> >  7 files changed, 355 insertions(+)
> >  create mode 100644 arch/mips/boards/netgear-wg102/include/board/board_=
pbl_start.h
> >  create mode 100644 arch/mips/boards/netgear-wg102/include/board/debug_=
ll.h
> >  create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h
> >  create mode 100644 arch/mips/mach-ar231x/include/mach/pbl_macros.h
> > =

> > -- =

> > 1.8.1.2
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
