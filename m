Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTun-00055t-Cm
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 11:01:00 +0000
Date: Tue, 12 Nov 2019 12:00:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191112110051.5eujr5354pwgrvvu@pengutronix.de>
References: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
 <239d939b-9b3e-d3c8-6f46-5b29aeec1b66@atsonline.de>
 <ac715f82-c7f4-f2fd-1ec4-81fb619a457d@atsonline.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac715f82-c7f4-f2fd-1ec4-81fb619a457d@atsonline.de>
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
Subject: Re: Oselas 2018.12.0 toolchain seems to break barebox for AM335x
To: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Tue, Nov 12, 2019 at 08:48:04AM +0100, Andreas Geisenhainer wrote:
> Good day, everyone.
> =

> *bump*
> =

> On 2019-10-25 10:48 a.m., Andreas Geisenhainer wrote:
> > Hello Sascha, hello barebox-ml.
> > =

> >  > On 2019-07-10 9:58 a.m., Sascha Hauer wrote:
> >  >> On Mon, Jul 08, 2019 at 04:15:00PM +0200, Andreas Geisenhainer wrot=
e:
> >  >>> We're running barebox an a Phytec PhyCORE AM335x platform, and the
> >  >>> behaviour does emerge for the default
> >  >>> "barebox-am335x-phytec-phycore.img"
> >  >>> image from barebox.
> >  >> I just tried to reproduce this on a beaglebone black as this is at
> > least
> >  >> the same SoC. Unfortunately I was not successful.
> > =

> > I finally found the time to reproduce this on a beaglebone black.
> > I tried two different barebox versions (v2018.03 and v2019.10)
> > without any changes to the source.
> > =

> > My current steps where
> > =

> > 1) make am335x_mlo_defconfig / am335x_defconfig
> >  =A0=A0=A0=A0(depending on the version)
> > 2) make
> > 3) copied two files onto the uSD card I booted the boneblack
> >  =A0=A0 from:
> >  =A0=A0=A0 - barebox-am33xx-beaglebone.img (I)
> >  =A0=A0=A0 - barebox-am33xx-phytec-phycore.img (II)
> > 4) booted the boneblack and loaded each file manually using the
> >  =A0=A0 `bootm` command.
> > =

> > =

> > I'm working under the following assumption:
> >  =A0a) the beagleboneblack image is working for our AM335x-phycore
> >  =A0b) the phytec-phycore image should work on a boneblack
> >  =A0=A0=A0=A0 (at least rudimentary)
> > =

> > When I'm using the OSELAS.2018.02.0 toolchain a) und b) hold up.
> > Additionally we get
> >  =A0 c) on the boneblack both images (I) and (II) are working
> > =

> > With the OSELAS.2019.09.0 toolchain, the boneblack image (I) is
> > working on the boneblack, but the phycore-image (II) is not.
> > =

> > There seem to be at least two slightly different behaviors
> > I've been observing:
> > Yesterday it justs stops working, no further output, nothing (see Part
> > B) within attachment.
> > Two days ago it complained about a "unhandled NULL pointer dereference",
> > followed by a reset of the chip (i captured that within the attachment
> > at C).
> > =

> > One more point: I've chosen to build the toolchains for
> > "arm-cortexa8-linux-gnueabihf".
> > To rule out problems with this decision I build a more generic
> > "arm-v7a-linux-gnueabihf"
> > one, but the problem persists with it, too.
> > =

> > Is there anything more I can do on my end?
> > I'm open for any ideas, here. :)
> =

> Was anyone able find something regarding this?
> =

> Do some crazy ideas exist anywhere?

Sorry for the delay, I probably knew this issue will be something
unfortunate to look at...

Anyway, I can reproduce this issue here. The problem goes down to
am335x_sdram_size() which is executed at an address which it is not
linked at. Beginning from a certain compiler version gcc is clever
enough to compile the switch/case used there to assign a variable
as a lookup table placed in the data section. This table is looked for
not at the address we are running at (somewhere in SDRAM), but at
an offset to the address we are linked at (0x0). There are two solutions
to this, first one I'd like to apply to master, see appended patch. This
is only a local change to the affected file. However, other files
may suffer from the same issue.
The second solution is to add -fPIE to CPPFLAGS which is a more general
approach. I'd like to give this a try in -next.

Sascha

-----------------------------8<---------------------------

From 3b8b70bfd743c303349f67c892631cb04c2b3c68 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2019 11:53:48 +0100
Subject: [PATCH] ARM: am335x: Fix am335x_sdram_size() not running at link
 address

am335x_sdram_size() may be called when we are not running at the
address we are linked at. This means tree switch conversions and
jump tables will not work. Disable these in the CFLAGS for this
file.
This fixes a crash in am335x_sdram_size() with newer gcc versions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 36b2aa090e..06cd191f95 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -22,6 +22,8 @@ pbl-$(CONFIG_ARCH_OMAP3) +=3D omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) +=3D omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) +=3D omap4_generic.o omap4_clock.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) +=3D am33xx_generic.o am33xx_clock.o am33xx_=
mux.o am3xxx.o
+CFLAGS_pbl-am33xx_generic.o :=3D -fno-tree-switch-conversion -fno-jump-tab=
les
+CFLAGS_am33xx_generic.o :=3D -fno-tree-switch-conversion -fno-jump-tables
 obj-pbl-$(CONFIG_ARCH_AM35XX) +=3D am3xxx.o am35xx_emif4.o
 obj-$(CONFIG_ARCH_AM33XX) +=3D am33xx_scrm.o
 obj-$(CONFIG_ARCH_OMAP3) +=3D omap3_clock.o
-- =

2.24.0.rc1



-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
