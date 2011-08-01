Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsnS-0003eO-CL
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:44:43 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id EAD84FF9400
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:45:36 +0200 (CEST)
Date: Mon, 1 Aug 2011 15:26:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110801132643.GH6255@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: rework MMU support
To: barebox@lists.infradead.org

Hi,

	This series reworks the barebox MMU support. We now use second
	level page tables which allows us to remap the dma coherent area
	dynamically. We don't have to map our sdram twice anymore which
	helps us on newer systems with big memory.

	As a bonus there is no board specific MMU code anymore. All a board
	has to do to enable MMU support via Kconfig is to register its SDRAM banks
	at mem_initcall

The following changes since commit b821d73607cc6387b1ee588af97a44e8eb2b4fe2:

  Merge branch 'resource' of git://uboot.jcrosoft.org/barebox into next (2011-08-01 14:10:38 +0200)

are available in the git repository at:

  git://uboot.jcrosoft.org/barebox.git mmu

Jean-Christophe PLAGNIOL-VILLARD (2):
      arm: introduce arm_add_mem_device to register dram device
      init: introduce mem, mmu and postmmu initcall

Sascha Hauer (7):
      ARM cache l2x0: depend on MMU
      ARM: move armlinux_add_dram to location which is always compiled
      ARM l2x0: make init function static inline if l2 is not available
      ARM: pass size to dma_free_coherent
      ARM boards: move sdram setup before mmu setup
      ARM: rework MMU support
      ARM boards: remove now unnecessary mmu calls

 arch/arm/boards/a9m2410/a9m2410.c                 |   20 ++-
 arch/arm/boards/a9m2440/a9m2440.c                 |   20 ++-
 arch/arm/boards/at91rm9200ek/init.c               |    9 +-
 arch/arm/boards/at91sam9260ek/init.c              |    9 +-
 arch/arm/boards/at91sam9261ek/init.c              |    9 +-
 arch/arm/boards/at91sam9263ek/init.c              |    9 +-
 arch/arm/boards/at91sam9m10g45ek/init.c           |    8 +-
 arch/arm/boards/chumby_falconwing/falconwing.c    |   21 +--
 arch/arm/boards/edb93xx/edb93xx.c                 |   46 +++---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   26 +---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   24 +---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   28 +---
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   31 +---
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   15 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   30 ++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |   11 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |   26 +---
 arch/arm/boards/freescale-mx53-loco/board.c       |   33 +----
 arch/arm/boards/guf-cupid/board.c                 |   26 +--
 arch/arm/boards/guf-neso/board.c                  |   25 +---
 arch/arm/boards/imx21ads/imx21ads.c               |   12 +-
 arch/arm/boards/imx27ads/imx27ads.c               |   12 +-
 arch/arm/boards/karo-tx25/board.c                 |   36 +----
 arch/arm/boards/karo-tx28/tx28.c                  |   21 +--
 arch/arm/boards/mini2440/mini2440.c               |   15 +-
 arch/arm/boards/mmccpu/init.c                     |    9 +-
 arch/arm/boards/netx/netx.c                       |   13 +-
 arch/arm/boards/nhk8815/setup.c                   |    8 +-
 arch/arm/boards/omap/board-beagle.c               |   14 +-
 arch/arm/boards/omap/board-omap3evm.c             |   14 +-
 arch/arm/boards/omap/board-sdp343x.c              |   24 +--
 arch/arm/boards/panda/board.c                     |   18 +--
 arch/arm/boards/pcm037/pcm037.c                   |   41 ++----
 arch/arm/boards/pcm038/pcm038.c                   |   29 +---
 arch/arm/boards/pcm043/pcm043.c                   |   27 ++--
 arch/arm/boards/pcm049/board.c                    |   23 +--
 arch/arm/boards/phycard-i.MX27/pca100.c           |   23 +---
 arch/arm/boards/pm9261/init.c                     |    9 +-
 arch/arm/boards/pm9263/init.c                     |    9 +-
 arch/arm/boards/pm9g45/init.c                     |    9 +-
 arch/arm/boards/scb9328/env/config                |   56 +++++++
 arch/arm/boards/scb9328/scb9328.c                 |   12 +-
 arch/arm/boards/versatile/versatilepb.c           |    8 +-
 arch/arm/cpu/Kconfig                              |    2 +-
 arch/arm/cpu/cpu.c                                |   14 ++
 arch/arm/cpu/mmu.c                                |  178 +++++++++++++++++----
 arch/arm/include/asm/armlinux.h                   |   10 +-
 arch/arm/include/asm/memory.h                     |   24 ++--
 arch/arm/include/asm/mmu.h                        |   28 +++-
 arch/arm/lib/armlinux.c                           |   19 +--
 arch/arm/mach-at91/at91rm9200_devices.c           |    6 +-
 arch/arm/mach-at91/at91sam9260_devices.c          |    6 +-
 arch/arm/mach-at91/at91sam9261_devices.c          |    6 +-
 arch/arm/mach-at91/at91sam9263_devices.c          |    6 +-
 arch/arm/mach-at91/at91sam9g45_devices.c          |    6 +-
 arch/arm/mach-nomadik/8815.c                      |    6 +-
 arch/arm/mach-versatile/core.c                    |    6 +-
 drivers/base/resource.c                           |   15 ++
 drivers/usb/gadget/fsl_udc.c                      |    2 +-
 include/common.h                                  |    1 +
 include/init.h                                    |   11 +-
 61 files changed, 616 insertions(+), 598 deletions(-)
 create mode 100644 arch/arm/boards/scb9328/env/config

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
