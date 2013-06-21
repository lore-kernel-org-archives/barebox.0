Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f51.google.com ([209.85.215.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq4N4-0008Oc-0q
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 16:39:35 +0000
Received: by mail-la0-f51.google.com with SMTP id fq12so7433965lab.24
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 09:39:08 -0700 (PDT)
Date: Fri, 21 Jun 2013 20:37:45 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130621203745.932331ebb1544b8246d480d2@gmail.com>
In-Reply-To: <20130621154840.GF32299@pengutronix.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
 <20130621154840.GF32299@pengutronix.de>
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
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 21 Jun 2013 17:48:40 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Well done, Oleksij! Congratulations!

Thanks, Sascha!

Now we have in the next branch THE FIRST PUBLICLY AVAILABLE FULLY SUPPORTED=
 "HARDWARE" MIPS-based BOARD!

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
> =

> Applied, thanks
> =

> Sascha
> =

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
