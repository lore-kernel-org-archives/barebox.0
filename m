Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmjbm-0005Om-WB
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:43:58 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Qmjbk-0004Gn-Ei
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 11:43:52 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1Qmjbk-0001bp-DM
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 11:43:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jul 2011 11:43:43 +0200
Message-Id: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: rework MMU support
To: barebox@lists.infradead.org

This series reworks the barebox MMU support. We now use second
level page tables which allows us to remap the dma coherent area
dynamically. We don't have to map our sdram twice anymore which
helps us on newer systems with big memory.

As a bonus there is no board specific MMU code anymore. All a board
has to do to enable MMU support is to register its SDRAM banks
and call mmu_init().

Sascha Hauer (7):
      ARM cache l2x0: depend on MMU
      ARM: move armlinux_add_dram to location which is always compiled
      ARM l2x0: make init function static inline if l2 is not available
      ARM: pass size to dma_free_coherent
      ARM boards: move sdram setup before mmu setup
      ARM: rework MMU support
      ARM boards: remove now unnecessary mmu calls

 arch/arm/boards/chumby_falconwing/falconwing.c    |   21 +--
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   28 +---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   26 +--
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   25 +--
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   33 +---
 arch/arm/boards/freescale-mx51-pdk/board.c        |   28 +---
 arch/arm/boards/guf-cupid/board.c                 |   22 +--
 arch/arm/boards/guf-neso/board.c                  |   27 +---
 arch/arm/boards/karo-tx25/board.c                 |   38 ++---
 arch/arm/boards/karo-tx28/tx28.c                  |   21 +--
 arch/arm/boards/panda/board.c                     |   18 +--
 arch/arm/boards/pcm037/pcm037.c                   |   42 ++----
 arch/arm/boards/pcm038/pcm038.c                   |   27 +--
 arch/arm/boards/pcm043/pcm043.c                   |   25 +--
 arch/arm/boards/pcm049/board.c                    |   21 +--
 arch/arm/boards/phycard-i.MX27/pca100.c           |   25 +--
 arch/arm/boards/scb9328/env/config                |   56 +++++++
 arch/arm/cpu/Kconfig                              |    2 +-
 arch/arm/cpu/cpu.c                                |   14 ++
 arch/arm/cpu/mmu.c                                |  177 +++++++++++++++++----
 arch/arm/include/asm/armlinux.h                   |    7 +-
 arch/arm/include/asm/memory.h                     |   24 ++--
 arch/arm/include/asm/mmu.h                        |   35 ++++-
 arch/arm/lib/armlinux.c                           |   19 +--
 drivers/usb/gadget/fsl_udc.c                      |    2 +-
 include/common.h                                  |    1 +
 26 files changed, 396 insertions(+), 368 deletions(-)
 create mode 100644 arch/arm/boards/scb9328/env/config

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
