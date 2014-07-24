Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XALyR-0005hN-DZ
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 16:34:32 +0000
Received: by mail-lb0-f179.google.com with SMTP id v6so2451826lbi.38
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 09:34:08 -0700 (PDT)
Date: Thu, 24 Jul 2014 20:46:45 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140724204645.108a023a6a3047737e0a2b8a@gmail.com>
In-Reply-To: <1406218113.4590.26.camel@weser.hi.pengutronix.de>
References: <20140724200545.009a9c6c143abf1b344721a5@gmail.com>
 <1406218113.4590.26.camel@weser.hi.pengutronix.de>
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

On Thu, 24 Jul 2014 18:08:33 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Donnerstag, den 24.07.2014, 20:05 +0400 schrieb Antony Pavlov:
> > Hi!
> > =

> > I have just tested this commit
> > =

> > commit d8bdd537220dd83912949f19ba67029bd1f11c58
> > Author: Lucas Stach <dev@lynxeye.de>
> > Date:   Fri Apr 12 12:28:14 2013 +0200
> > =

> >     tegra: switch to proper CPU type
> >     =

> >     Tegras main CPUs are all ARMv7.
> >     =

> >     Signed-off-by: Lucas Stach <dev@lynxeye.de>
> >     Tested-by: Antony Pavlov <antonynpavlov@gmail.com>
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > =

> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index bb9b47b..dfb7e24 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -137,7 +137,7 @@ config ARCH_VEXPRESS
> >  =

> >  config ARCH_TEGRA
> >         bool "Nvidia Tegra-based boards"
> > -       select CPU_ARM926T
> > +       select CPU_V7
> >         select HAS_DEBUG_LL
> >  =

> >  config ARCH_ZYNQ
> > =

> > This commit breaks 'usb' command --- it does not scan devices anymore, =
just hangs.
> > =

> > I have used codesourcery arm-2013.11 toolchain.
> > =

> I haven't tested USB myself, as I'm not using second stage barebox after
> u-boot and there's still things missing for USB to work on first stage.
> Currently only SDMMMC is fully supported.

How I can run barebox from barebox (u-boot) on AC100?

> Are you testing exactly this commit? If so you might need to apply
> 431d8a247dfa63f817cda137a81dbb2244d413dc "arm: properly init alignment
> trap bit", as USB might trigger an unaligned access.

Thanks!
I'll try to apply 431d8a.. tomorrow.

> > I'll try to check latest barebox from next, but just now I have no mean=
s to burn
> > barebox-tegra20-toshiba-ac100.img into AC100's ROM.
> > =

> You'll notice that a newer barebox won't build images for AC100 that are
> suitable to burn into a boot media, because there are no BCTs publicly
> available for this device. The resulting AC100 image is only useful for
> starting with TegraRCM.

I work with my AC100 remotely so I can't press Ctrl-ESC on every boot for T=
egraRCM recovery mode.
How I can run barebox from barebox (u-boot) on AC100?


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
