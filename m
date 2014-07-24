Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAOIN-0002um-N0
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 19:03:19 +0000
Received: by mail-lb0-f176.google.com with SMTP id u10so2593507lbd.21
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 12:02:53 -0700 (PDT)
Date: Thu, 24 Jul 2014 23:15:32 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140724231532.698d6010bea69b79920ead86@gmail.com>
In-Reply-To: <1406219999.4590.31.camel@weser.hi.pengutronix.de>
References: <20140724200545.009a9c6c143abf1b344721a5@gmail.com>
 <1406218113.4590.26.camel@weser.hi.pengutronix.de>
 <20140724204645.108a023a6a3047737e0a2b8a@gmail.com>
 <1406219999.4590.31.camel@weser.hi.pengutronix.de>
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
Subject: Re: Tegra2 USB issue
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 24 Jul 2014 18:39:59 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Donnerstag, den 24.07.2014, 20:46 +0400 schrieb Antony Pavlov:
> > On Thu, 24 Jul 2014 18:08:33 +0200
> > Lucas Stach <l.stach@pengutronix.de> wrote:
> > =

> > > Am Donnerstag, den 24.07.2014, 20:05 +0400 schrieb Antony Pavlov:
> > > > Hi!
> > > > =

> > > > I have just tested this commit
> > > > =

> > > > commit d8bdd537220dd83912949f19ba67029bd1f11c58
> > > > Author: Lucas Stach <dev@lynxeye.de>
> > > > Date:   Fri Apr 12 12:28:14 2013 +0200
> > > > =

> > > >     tegra: switch to proper CPU type
> > > >     =

> > > >     Tegras main CPUs are all ARMv7.
> > > >     =

> > > >     Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > > >     Tested-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > =

> > > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > > index bb9b47b..dfb7e24 100644
> > > > --- a/arch/arm/Kconfig
> > > > +++ b/arch/arm/Kconfig
> > > > @@ -137,7 +137,7 @@ config ARCH_VEXPRESS
> > > >  =

> > > >  config ARCH_TEGRA
> > > >         bool "Nvidia Tegra-based boards"
> > > > -       select CPU_ARM926T
> > > > +       select CPU_V7
> > > >         select HAS_DEBUG_LL
> > > >  =

> > > >  config ARCH_ZYNQ
> > > > =

> > > > This commit breaks 'usb' command --- it does not scan devices anymo=
re, just hangs.
> > > > =

> > > > I have used codesourcery arm-2013.11 toolchain.
> > > > =

> > > I haven't tested USB myself, as I'm not using second stage barebox af=
ter
> > > u-boot and there's still things missing for USB to work on first stag=
e.
> > > Currently only SDMMMC is fully supported.
> > =

> > How I can run barebox from barebox (u-boot) on AC100?
> > =

> Um, how did you test things before? I personally haven't used second

I have AC100 with u-boot burned into the flash.
Here is my AC100 test seance:

 1. reset AC100 (activate reset pin for 1 second and deactivate it;
    i use USB-relay board for this task at the moment);
 2. wait for u-boot prompt;
 3. load barebox.bin via y-modem;
 4. use 'go' commmand for running barebox.

You can see that I always use barebox second stage image.

> stage for a long time. For u-boot you need to copy the barebox image
> into the right spot (0x108000 for T20) and issue 'go' command. For
> barebox a 'bootm /path/to/image' should do, but I won't guarantee that I
> didn't break anything for second stage.
> =

> > > Are you testing exactly this commit? If so you might need to apply
> > > 431d8a247dfa63f817cda137a81dbb2244d413dc "arm: properly init alignment
> > > trap bit", as USB might trigger an unaligned access.
> > =

> > Thanks!
> > I'll try to apply 431d8a.. tomorrow.
> > =

> > > > I'll try to check latest barebox from next, but just now I have no =
means to burn
> > > > barebox-tegra20-toshiba-ac100.img into AC100's ROM.
> > > > =

> > > You'll notice that a newer barebox won't build images for AC100 that =
are
> > > suitable to burn into a boot media, because there are no BCTs publicly
> > > available for this device. The resulting AC100 image is only useful f=
or
> > > starting with TegraRCM.
> > =

> > I work with my AC100 remotely so I can't press Ctrl-ESC on every boot f=
or TegraRCM recovery mode.
> > How I can run barebox from barebox (u-boot) on AC100?
> > =

> New barebox has a 'tegrarcm' command that will drop you right into
> recovery mode, but obviously won't help if the machine is hanging.

Hmm, I have to see it :)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
