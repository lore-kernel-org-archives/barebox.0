Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfUvi-0003iG-4Q
 for barebox@lists.infradead.org; Thu, 23 May 2013 12:47:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UfUvM-0008WB-9c
 for barebox@lists.infradead.org; Thu, 23 May 2013 14:47:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UfUvM-0004ws-8j
 for barebox@lists.infradead.org; Thu, 23 May 2013 14:47:16 +0200
Date: Thu, 23 May 2013 14:47:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523124716.GL32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: stable releases
To: barebox@lists.infradead.org

Hi All,

I more and more notice that we are not able to find and eliminate
bugs before the release but often weeks after a release.

After trying to avoid the additional work for as long as I could
I feel we have to do something about it, so I intend to do stable
releases more frequently.

So if you have a patch included in stable releases please add a
'Stable' tag to the patch, possibly followed by the oldest release
the patch is relevant for, so:

Stable: v2013.04.0

See the following patches which I currently have collected for the
next stable release (v2013.05.1). I'll release this in the next few
days. If you want to have patches added, please say so.

Sascha


8<---------------------------------------------------------------

The following changes since commit 5fdb9c0829b12e042e8fa1131bf2eee180e2b11b:

  Release v2013.05.0 (2013-05-06 09:28:07 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git stable/v2013.05

for you to fetch changes up to 95ce3f3ffe29a968f40ee43eaea5f65f9f73b72b:

  ARM: ccmx51: Another fix SDRAM size detection (2013-05-23 09:31:31 +0200)

----------------------------------------------------------------
Alexander Shiyan (1):
      ARM: ccmx51: Another fix SDRAM size detection

Alexandre Belloni (1):
      sama5d3xek: correct rootfs nand partition

Enrico Scholz (3):
      ARM v7: fix mmu-off operation
      ARM v7: v7_mmu_cache_flush(): do not restore r0-r3 (minor optimization)
      ARM v7: added v7_mmu_cache_invalidate()

Juergen Beisert (1):
      MXS: fix SoC detecting

Lucas Stach (1):
      arm: properly init alignment trap bit

Nicolas Pitre (1):
      ARM: fix the memset fix

Sascha Hauer (4):
      fdt: Fix dt memreserve entry
      ARM: invalidate data caches during early init
      ARM: i.MX: Allow disabling SDRAM autodetection
      ARM: i.MX: ccxmx51: detect SDRAM size by board id

Steffen Trumtrar (1):
      defaultenv-2: Fix settings entry

 arch/arm/boards/ccxmx51/ccxmx51.c       | 63 +++++++++++++++++++---------
 arch/arm/boards/ccxmx51/ccxmx51.h       |  1 +
 arch/arm/boards/ccxmx51/lowlevel.c      |  4 +-
 arch/arm/boards/sama5d3xek/env/config   |  2 +-
 arch/arm/cpu/cache-armv7.S              | 74 ++++++++++++++++++++-------------
 arch/arm/cpu/cache.c                    | 21 ++++++++++
 arch/arm/cpu/start-pbl.c                |  2 +
 arch/arm/cpu/start.c                    |  2 +
 arch/arm/include/asm/barebox-arm-head.h |  2 +-
 arch/arm/include/asm/cache.h            |  5 +++
 arch/arm/lib/memset.S                   | 33 ++++++---------
 arch/arm/mach-imx/esdctl.c              | 14 +++++++
 arch/arm/mach-imx/include/mach/esdctl.h |  1 +
 arch/arm/mach-mxs/imx.c                 |  1 +
 defaultenv-2/menu/menu/settings         |  2 +-
 drivers/of/fdt.c                        |  3 +-
 16 files changed, 154 insertions(+), 76 deletions(-)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
