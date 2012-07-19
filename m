Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrtEj-00030h-Hf
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 16:06:03 +0000
Date: Thu, 19 Jul 2012 18:05:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719160552.GA30009@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <20120719150832.GG22657@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120719150832.GG22657@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Compressed barebox image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 05:08:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:12 Thu 19 Jul     , Sascha Hauer wrote:
> > The following series allows to create a self extracting barebox image.
> > This is done by linking barebox twice, once for the actual binary, but
> > without lowlevel initstuff and once for the lowlevel init stuff, the
> > decompressor and the compressed image.
> > 
> > Using lzo compression the pcm038 image shrinks from 252k to 155k. The
> > series has been tested on the pcm038 second stage, first stage NAND and
> > first stage NOR and also on an i.MX53 LOCO board (also in thumb2 mode)
> > 
> > Using compressed images currently adds to the boot time, at least on
> > my slower arm9 systems. Using the MMU during decompression would help,
> > but this currently isn't implemented.
> > 
> > I think the preparation patches should be ready for merging. The last
> > patch in this series adding compression support I am not that confident
> > with. Currently I am not very happy with the Makefile changes which
> > somehow look like bypassing the kbuild mechanism and handcrufting
> > something that looks like kbuild. If someone has ideas how to improve
> > this, let me know. Nevertheless I would be happy about Tested-by
> > (and does-not-work-for) tags.
> > 
> > Sascha
> > 
> > ----------------------------------------------------------------
> > Sascha Hauer (9):
> >       lzo: Allow for static inlining
> >       ARM lds: remove unused got
> >       ARM: remove board linker script option
> >       ARM: remove exception vectors from boards
> >       ARM startup: calculate offset instead of runtime address
> >       ARM ep93xx: Get rid of special handling in linker file
> >       ARM boards: Use _text rather than TEXT_BASE
> >       ARM: Separate assembler functions into their own section
> >       Add compressed image support
> 
> can you push it on a git?

Here you are. I partly integrated your comments already.

Sascha

The following changes since commit 2f6b1f7690640f571f8e72fc2f2564acb2e13778:

  ARM/MXS: the GPIO bitkeeper enable logic is inverse to the pullup enable logic (2012-07-16 23:30:14 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git work/compressed-image

for you to fetch changes up to af1de0f86036ab8cb8f4a434708a31db21b33de2:

  Add compressed image support (2012-07-19 18:02:02 +0200)

----------------------------------------------------------------
Sascha Hauer (9):
      lzo: Allow for static inlining
      ARM lds: remove unused got
      ARM: remove board linker script option
      ARM: remove exception vectors from boards
      ARM startup: calculate offset instead of runtime address
      ARM ep93xx: Get rid of special handling in linker file
      ARM boards: Use _text rather than TEXT_BASE
      ARM: Separate assembler functions into their own section
      Add compressed image support

 Makefile                                           |   31 ++++++-
 arch/arm/Kconfig                                   |   13 +--
 arch/arm/Makefile                                  |    4 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |    3 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    3 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    7 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    4 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    4 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   11 +--
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 -
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    4 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    8 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   11 +--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    4 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    4 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   11 +--
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    2 +-
 arch/arm/boards/freescale-mx6-arm2/flash_header.c  |    5 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |    4 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    4 +-
 arch/arm/boards/imx21ads/imx21ads.c                |    4 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   10 +--
 arch/arm/boards/karo-tx25/board.c                  |    3 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |    4 +-
 arch/arm/boards/karo-tx51/flash_header.c           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |    3 +-
 arch/arm/boards/pcm037/lowlevel_init.S             |    7 +-
 arch/arm/boards/pcm037/pcm037.c                    |    4 +-
 arch/arm/boards/pcm038/lowlevel.c                  |    4 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    4 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    8 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |    2 +-
 arch/arm/boards/tqma53/flash_header.c              |    5 +-
 arch/arm/cpu/cache-armv4.S                         |    7 +-
 arch/arm/cpu/cache-armv5.S                         |    7 +-
 arch/arm/cpu/cache-armv6.S                         |   11 ++-
 arch/arm/cpu/cache-armv7.S                         |    8 +-
 arch/arm/cpu/start.c                               |   87 +++++++++++++++++---
 arch/arm/lib/Makefile                              |    4 +-
 arch/arm/lib/ashldi3.S                             |    1 +
 arch/arm/lib/ashrdi3.S                             |    1 +
 arch/arm/lib/barebox-compressed.lds.S              |   70 ++++++++++++++++
 arch/arm/lib/barebox.lds.S                         |   11 +--
 arch/arm/lib/findbit.S                             |    9 ++
 arch/arm/lib/io-writesw-armv4.S                    |    2 +
 arch/arm/lib/lib1funcs.S                           |    7 ++
 arch/arm/lib/lshrdi3.S                             |    1 +
 arch/arm/mach-ep93xx/Makefile                      |    2 +-
 arch/arm/mach-ep93xx/header.c                      |    8 ++
 arch/arm/mach-ep93xx/include/mach/barebox.lds.h    |    9 ++
 common/Kconfig                                     |   12 +++
 include/asm-generic/barebox.lds.h                  |    3 +-
 include/asm-generic/memory_layout.h                |    2 +
 include/lzo.h                                      |    8 +-
 lib/decompress_unlzo.c                             |    9 +-
 lib/lzo/lzo1x_decompress.c                         |    2 +-
 lib/vsprintf.c                                     |    2 +-
 piggy.lzo.S                                        |    6 ++
 59 files changed, 358 insertions(+), 132 deletions(-)
 create mode 100644 arch/arm/lib/barebox-compressed.lds.S
 create mode 100644 arch/arm/mach-ep93xx/header.c
 create mode 100644 arch/arm/mach-ep93xx/include/mach/barebox.lds.h
 create mode 100644 piggy.lzo.S
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
