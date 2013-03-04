Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbbQ-0005Yj-8M
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:03:18 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UCbbK-0004NT-TZ
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 21:03:10 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UCbbK-0003Hz-SQ
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 21:03:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 21:03:03 +0100
Message-Id: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Add relocatable binary support
To: barebox@lists.infradead.org

The following adds relocatable binary support for ARM. This can
be useful when a suitable memory location for the barebox binary
is not known at compile time, for example when compiling for multiple
SoCs.

In most cases enabling this feature will only result in the visible
effect that the binary gets bigger, so this feature is fully optional.
The relocatable support can be enabled for the PBL and the real binary
independently for greater flexibility and better debugability.

This series has been tested on various boards and I hope I have
covered all combinations of PBL enabled/disabled, PBL relocation
enabled/disabled, relocation enabled/disabled and MMU enabled/disabled.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      ARM: make cpu architecture detection available as static inline function
      ARM: add early mmu cache flush function and use it in setup_c
      ARM: provide accessor functions for linker variables
      ARM boards: Use accessor functions to access linker variables
      ARN: fixup vector addresses for relocatable binaries
      ARM: Add relocatable binary support

 arch/arm/Kconfig                               |  9 ++++
 arch/arm/Makefile                              |  4 ++
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c |  3 +-
 arch/arm/cpu/Makefile                          |  3 ++
 arch/arm/cpu/cache.c                           | 33 +++++++++++++
 arch/arm/cpu/common.c                          | 68 ++++++++++++++++++++++++++
 arch/arm/cpu/cpu.c                             | 34 +------------
 arch/arm/cpu/exceptions.S                      | 55 ++++++++++++++++++---
 arch/arm/cpu/mmu.c                             |  2 +
 arch/arm/cpu/setupc.S                          | 62 +++++++++++++++++++++++
 arch/arm/cpu/start-pbl.c                       | 18 +++++--
 arch/arm/cpu/start.c                           |  5 ++
 arch/arm/include/asm/barebox-arm.h             | 34 +++++++++++++
 arch/arm/include/asm/cache.h                   |  8 +++
 arch/arm/include/asm/mmu.h                     |  1 -
 arch/arm/include/asm/sections.h                | 33 +++++++++++++
 arch/arm/include/asm/system_info.h             | 43 ++++++++++++++++
 arch/arm/lib/barebox.lds.S                     | 17 +++++++
 arch/arm/lib/runtime-offset.S                  | 32 ++++++++++++
 arch/arm/mach-imx/external-nand-boot.c         | 27 +++++-----
 arch/arm/pbl/Makefile                          |  3 ++
 arch/arm/pbl/zbarebox.lds.S                    | 16 ++++++
 common/Kconfig                                 |  2 +-
 drivers/mtd/nand/nand_s3c24xx.c                |  2 +-
 pbl/Kconfig                                    | 10 ++++
 25 files changed, 466 insertions(+), 58 deletions(-)
 create mode 100644 arch/arm/cpu/common.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
