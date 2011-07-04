Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdfVX-0005tE-8b
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 09:32:00 +0000
Date: Mon, 4 Jul 2011 11:31:55 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110704093155.GI4338@pengutronix.de>
References: <20110704051347.GJ28000@game.jcrosoft.org>
	<20110704075925.GD4338@pengutronix.de>
	<CAB9v_DHtGHydZUxn6rJi7RZ_ZZ7encjz=E9TJeL0gwm02TQscw@mail.gmail.com>
	<20110704090853.GF4338@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110704090853.GF4338@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mach-versatile: debug_ll.h licenc
To: Alexey Zaytsev <alexey.zaytsev@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 04, 2011 at 11:08:53AM +0200, Uwe Kleine-K=F6nig wrote:
> On Mon, Jul 04, 2011 at 12:58:34PM +0400, Alexey Zaytsev wrote:
> > 2011/7/4 Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>:
> > > On Mon, Jul 04, 2011 at 07:13:47AM +0200, Jean-Christophe PLAGNIOL-VI=
LLARD wrote:
> > >> Hi,
> > >>
> > >> =A0 =A0 =A0 ./arch/arm/mach-versatile/include/mach/debug_ll.h
> > >> =A0 =A0 =A0 Can you put this file under gpl v2 or later
> > >>
> > >> =A0 =A0 =A0 Barebox is GPLv2 Only project
> > > INAL, but I think this is not a problem. Barebox itself just doesn't
> > > make use of the possibility to use a later version of the GPL. Still =
you
> > > can pick that file out of barebox and use it in a GPL v3 project.
> > >
> > > But maybe I just didn't get what you intended with your mail.
> > =

> > This is a problem. If some files are gpl 2 only, and others are gpl 3
> > only, you can't distribute the result, as the licenses are not
> > compatible.
> We're not talking about "gpl v3 only" (or "v3 or later") here. Including a
> "v2 or later" header in a "v2 only" .c file should be no problem.
Ah, OK, I misread Jean-Christophe's question "Can you put this file
under gpl v2 or later" as "Is currently put under gpl v2 or later".

Sorry for the noise,
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
