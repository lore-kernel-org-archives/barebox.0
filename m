Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhDKf-0005Cj-PI
 for barebox@lists.infradead.org; Tue, 28 May 2013 06:24:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UhDKK-0004CU-2K
 for barebox@lists.infradead.org; Tue, 28 May 2013 08:24:08 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UhDKK-0002Ji-1N
 for barebox@lists.infradead.org; Tue, 28 May 2013 08:24:08 +0200
Date: Tue, 28 May 2013 08:24:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130528062408.GS32299@pengutronix.de>
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
Subject: v2013.05.1 stable release
To: barebox@lists.infradead.org

Hi All,

We have a stable update for the may release. This contains a fix
on ARM for a corrupt memset, so all ARM users should update. Various
ARM v7 cache patches also make it worth updating for affected users.
For more details what's included see below.

Sascha

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

Sascha Hauer (8):
      fdt: Fix dt memreserve entry
      ARM: invalidate data caches during early init
      ARM: i.MX: Allow disabling SDRAM autodetection
      ARM: i.MX: ccxmx51: detect SDRAM size by board id
      pbl: Fix typo in make causing pbl files to be rebuilt
      ARM: pbl: fix make dependencies
      make: Add barebox_default_env.* to targets
      Release v2013.05.1

Steffen Trumtrar (2):
      defaultenv-2: Fix settings entry
      ARM i.MX53: tqma53: fix console entry

 Makefile                                |  2 +-
 arch/arm/Makefile                       | 13 +-----
 arch/arm/boards/ccxmx51/ccxmx51.c       | 63 +++++++++++++++++++---------
 arch/arm/boards/ccxmx51/ccxmx51.h       |  1 +
 arch/arm/boards/ccxmx51/lowlevel.c      |  4 +-
 arch/arm/boards/sama5d3xek/env/config   |  2 +-
 arch/arm/boards/tqma53/env/config-board |  2 +-
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
 common/Makefile                         |  2 +
 defaultenv-2/menu/menu/settings         |  2 +-
 drivers/of/fdt.c                        |  3 +-
 scripts/Makefile.build                  |  2 +-
 21 files changed, 161 insertions(+), 90 deletions(-)
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
