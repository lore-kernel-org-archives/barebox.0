Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008Dd-Po
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:21 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1O7OXh-0004l2-2N
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 09:52:17 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1O7OXg-0004Zc-Qe
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 09:52:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:51:58 +0200
Message-Id: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1904398471=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: patches for next v2
To: barebox@lists.infradead.org

--===============1904398471==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Hi all,

Here are the patches for reimplementing the lowlevel code in C again
with the changes suggested by Jean-Christophe integrated

Sascha


The following changes since commit 3a1617d96f8b4e093917bf05fca4d1e0bd6983e0:
  Uwe Kleine-K�nig (1):
        clock: fix possible error on overflow in is_timeout

are available in the git repository at:

  git+ssh://sha@git.pengutronix.de/git/barebox.git pu

Sascha Hauer (17):
      i.MX35 stack: Fix mc9sdz60 reset register offset
      ARM: use memalign in dma_alloc_coherent to assure alignment
      fsl_udc: make it work with MMU on
      Increase MAX_FILES to 128
      fix _update scripts
      define __LINUX_ARM_ARCH__ for armv6 processors
      ARM: Add get_cr/set_cr functions
      ARM: update icache functions to use get_cr/set_cr
      pcm043: Speed up NAND controller before copying barebox image
      add arm helper function to determine the program counter
      arm: remove unused variables from header file
      arm: move __mmu_cache_flush to bare_init section
      arm: reimplement startup code in C
      i.MX: remove __REG from esd controller regs. use readl/writel instead
      pcm043: reimplement lowlevel code in C
      i.MX35: Fix ahbclock calculation
      pcm038: reimplement lowlevel code in C

 arch/arm/Makefile                            |    1 +
 arch/arm/cpu/Makefile                        |    6 +-
 arch/arm/cpu/cache-armv4.S                   |    2 +
 arch/arm/cpu/cache-armv5.S                   |    2 +
 arch/arm/cpu/cache-armv6.S                   |    3 +
 arch/arm/cpu/cache-armv7.S                   |    2 +
 arch/arm/cpu/cpu.c                           |   94 ++---------
 arch/arm/cpu/mmu.c                           |    2 +-
 arch/arm/cpu/start-arm.S                     |  248 --------------------------
 arch/arm/cpu/start.c                         |  108 +++++++++++
 arch/arm/include/asm/barebox-arm.h           |   10 +-
 arch/arm/include/asm/common.h                |   18 ++
 arch/arm/include/asm/system.h                |   72 ++++++++
 arch/arm/lib/barebox.lds.S                   |    2 +-
 arch/arm/mach-imx/include/mach/esdctl.h      |   10 +-
 arch/arm/mach-imx/speed-imx35.c              |    4 +-
 board/a9m2410/env/bin/_update                |    2 +-
 board/a9m2440/env/bin/_update                |    2 +-
 board/at91sam9260ek/env/bin/_update          |    2 +-
 board/at91sam9263ek/env/bin/_update          |    2 +-
 board/eukrea_cpuimx27/env/bin/_update        |    2 +-
 board/freescale-mx25-3-stack/env/bin/_update |    2 +-
 board/freescale-mx35-3-stack/3stack.c        |    4 +-
 board/freescale-mx35-3-stack/env/bin/_update |    2 +-
 board/imx27ads/env/bin/_update               |    2 +-
 board/ipe337/env/bin/_update                 |    2 +-
 board/kp_ukd_r1_num/env/bin/_update          |    2 +-
 board/mmccpu/env/bin/_update                 |    2 +-
 board/pcm037/env/bin/_update                 |    2 +-
 board/pcm038/Makefile                        |    2 +-
 board/pcm038/env/bin/_update                 |    2 +-
 board/pcm038/lowlevel.c                      |  117 ++++++++++++
 board/pcm038/lowlevel_init.S                 |  116 ------------
 board/pcm038/pcm038.c                        |    9 -
 board/pcm043/Makefile                        |    2 +-
 board/pcm043/env/bin/_update                 |    2 +-
 board/pcm043/lowlevel.c                      |  214 ++++++++++++++++++++++
 board/pcm043/lowlevel_init.S                 |  231 ------------------------
 board/pcm043/pcm043.c                        |   10 -
 board/phycard-i.MX27/env/bin/_update         |    2 +-
 board/phycore_mcf54xx/env/bin/_update        |    2 +-
 board/pm9263/env/bin/_update                 |    2 +-
 drivers/usb/gadget/fsl_udc.c                 |   11 +-
 include/stdio.h                              |    2 +-
 44 files changed, 595 insertions(+), 741 deletions(-)
 delete mode 100644 arch/arm/cpu/start-arm.S
 create mode 100644 arch/arm/cpu/start.c
 create mode 100644 arch/arm/include/asm/system.h
 create mode 100644 board/pcm038/lowlevel.c
 delete mode 100644 board/pcm038/lowlevel_init.S
 create mode 100644 board/pcm043/lowlevel.c
 delete mode 100644 board/pcm043/lowlevel_init.S




--===============1904398471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1904398471==--
