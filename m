Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAM5s-0000Df-6H
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 16:42:12 +0000
Message-ID: <1406219999.4590.31.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 24 Jul 2014 18:39:59 +0200
In-Reply-To: <20140724204645.108a023a6a3047737e0a2b8a@gmail.com>
References: <20140724200545.009a9c6c143abf1b344721a5@gmail.com>
 <1406218113.4590.26.camel@weser.hi.pengutronix.de>
 <20140724204645.108a023a6a3047737e0a2b8a@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Tegra2 USB issue
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 24.07.2014, 20:46 +0400 schrieb Antony Pavlov:
> On Thu, 24 Jul 2014 18:08:33 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > Am Donnerstag, den 24.07.2014, 20:05 +0400 schrieb Antony Pavlov:
> > > Hi!
> > > 
> > > I have just tested this commit
> > > 
> > > commit d8bdd537220dd83912949f19ba67029bd1f11c58
> > > Author: Lucas Stach <dev@lynxeye.de>
> > > Date:   Fri Apr 12 12:28:14 2013 +0200
> > > 
> > >     tegra: switch to proper CPU type
> > >     
> > >     Tegras main CPUs are all ARMv7.
> > >     
> > >     Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > >     Tested-by: Antony Pavlov <antonynpavlov@gmail.com>
> > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > 
> > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > index bb9b47b..dfb7e24 100644
> > > --- a/arch/arm/Kconfig
> > > +++ b/arch/arm/Kconfig
> > > @@ -137,7 +137,7 @@ config ARCH_VEXPRESS
> > >  
> > >  config ARCH_TEGRA
> > >         bool "Nvidia Tegra-based boards"
> > > -       select CPU_ARM926T
> > > +       select CPU_V7
> > >         select HAS_DEBUG_LL
> > >  
> > >  config ARCH_ZYNQ
> > > 
> > > This commit breaks 'usb' command --- it does not scan devices anymore, just hangs.
> > > 
> > > I have used codesourcery arm-2013.11 toolchain.
> > > 
> > I haven't tested USB myself, as I'm not using second stage barebox after
> > u-boot and there's still things missing for USB to work on first stage.
> > Currently only SDMMMC is fully supported.
> 
> How I can run barebox from barebox (u-boot) on AC100?
> 
Um, how did you test things before? I personally haven't used second
stage for a long time. For u-boot you need to copy the barebox image
into the right spot (0x108000 for T20) and issue 'go' command. For
barebox a 'bootm /path/to/image' should do, but I won't guarantee that I
didn't break anything for second stage.

> > Are you testing exactly this commit? If so you might need to apply
> > 431d8a247dfa63f817cda137a81dbb2244d413dc "arm: properly init alignment
> > trap bit", as USB might trigger an unaligned access.
> 
> Thanks!
> I'll try to apply 431d8a.. tomorrow.
> 
> > > I'll try to check latest barebox from next, but just now I have no means to burn
> > > barebox-tegra20-toshiba-ac100.img into AC100's ROM.
> > > 
> > You'll notice that a newer barebox won't build images for AC100 that are
> > suitable to burn into a boot media, because there are no BCTs publicly
> > available for this device. The resulting AC100 image is only useful for
> > starting with TegraRCM.
> 
> I work with my AC100 remotely so I can't press Ctrl-ESC on every boot for TegraRCM recovery mode.
> How I can run barebox from barebox (u-boot) on AC100?
> 
New barebox has a 'tegrarcm' command that will drop you right into
recovery mode, but obviously won't help if the machine is hanging.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
