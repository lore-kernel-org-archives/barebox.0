Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZDth-00073G-Bx
 for barebox@lists.infradead.org; Mon, 15 Aug 2016 09:09:37 +0000
Date: Mon, 15 Aug 2016 11:09:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160815090911.GU20657@pengutronix.de>
References: <CAAMcf8DgyE7AkOJ-JnZuYsMSL84qp2Srbgr=Kv5RkqEOTjqB-Q@mail.gmail.com>
 <CAHQ1cqGwJRt+h=R9xp1vQY7cDZ7npdqQtuB8NuaHw30H1fkAkg@mail.gmail.com>
 <1470731825.2243.9.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470731825.2243.9.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Issue with MMU-less OMAP4
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, =?iso-8859-15?Q?Vicen=E7?= <vicencb@gmail.com>

On Tue, Aug 09, 2016 at 10:37:05AM +0200, Lucas Stach wrote:
> Am Montag, den 08.08.2016, 23:11 -0700 schrieb Andrey Smirnov:
> > On Mon, Aug 8, 2016 at 8:10 AM, Vicen=E7 <vicencb@gmail.com> wrote:
> > > Hello,
> > > I've updated the barebox version running on an archosG9 board since a
> > > long time ago and it broke.
> > > After searching for the problem found the commit causing the issue:
> > > http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dcommitdiff;h=3Ddba6b49=
19e5b678b3b78b828b54504913577d337
> > > When booting from USB is desired in an OMAP4 system, the MMU needs to
> > > be disabled because the ROM code that deals with the USB
> > > communications does not get on well with it.
> > >
> > > The issue is that it "hangs" when calling:
> > > set_vbar((unsigned int)vectors);
> > > I have no idea on how to fix the issue other than reverting the commi=
t.
> > >
> > =

> > I don't have extensive knowledge of OMAP4 since I never worked with
> > that SoC. However from tidbits of information that I am gleaning from
> > comments in Barebox it seems that particular version of functionality
> > makes use of interrupts. This gives me a strong suspicion that what
> > happens is that as soon as set_vbar() call is done (which will
> > re-point CPU to a different interrupt vector table) one of the
> > interrupts arrives and sends the processor into la-la land, since
> > Barebox exception table doesn't have anything but basic entries.
> > =

> > So, if my guess is correct, what was happening prior to that commit
> > was that on any hardware, in MMU-less mode, Barebox would not re-point
> > the CPU to it's own exception handles and as such would not handle
> > them at all(incorrect behavior), however that was a desired behavior
> > on OMAP4 since this would result in ROM code doing all of the
> > exception/interrupt handling work. And if that is the case fixing the
> > problem for the rest of the SoCs, broke it for OMAP4 which was relying
> > on control being passed to ROM for interrupt handling.
> > =

> > I guess the simplest fix for this problem would be just to do:
> > =

> >    if (IS_ENABLED(CONFIG_OMA4_USBBOOT))
> >         return 0;
> > =

> > as a first thing in nommu_v7_vectors_init. As well as maybe making
> > ARM_EXCEPTION dependent on MMU || !OMAP4_USBBOOT.
> > =

> > Sascha, any preferences/suggestions?
> =

> I think you are on the wrong track here. The likely issue is that on
> OMAP only the ROM code runs in the secure world, the bootloader is
> already started as non-secure.

It's probably more a sidetrack than really the wrong track. See
f98e20c582edae2713049e771f56e5e3e2ff4e31. The OMAP4 USB mode indeed uses
interrupts, so modifying the vectors won't work, even if we could change
VBAR.

> =

> The register to set the VBAR is a secure only register and will trap
> with an undefined instruction exception if you try to set it from the
> non-secure world.
> =

> So the correct fix would be to check if we are running non-secure and
> skipping any setup code that depends on barebox running in secure mode.
> This isn't really trivial, as the register to check for the current mode
> is only implemented if the processor supports the V7 security extension
> and will trap otherwise.

Ok, can we find out if the current processor supports the V7 security
extension?

Hm, we use set_vbar() also when the MMU is enabled. Does that mean that
currently barebox on OMAP4 is generally broken?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
