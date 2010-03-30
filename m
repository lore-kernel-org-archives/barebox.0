Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHd-0001Mm-K3
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:06:58 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1NwZHc-00015T-4n
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 13:06:56 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NwZHc-0004wJ-3a
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 13:06:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:43 +0200
Message-Id: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: More patches for next merge window
To: barebox@lists.infradead.org

Here are some more patches. Mostly cleanup needed to add second level
cache support for ARM.

Sascha


The following changes since commit 30bf8c26098c2b8537b648eb6eb8fa3e887ab7b9:
  Sascha Hauer (1):
        hush: allow fancy prompts

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (12):
      make reset_cpu a __noreturn function
      make panic and hang __noreturn functions
      introduce a arch_shutdown call and call it from shutdown_barebox
      blackfin: implement arch_shutdown call
      go command: shutdown barebox before calling an application
      remove now unused arch_execute
      ARM: replace cleanup_before_linux with the generic shutdown_barebox function
      pass arguments to dma_* as unsigned long as the kernel does
      ARM: Add a wrapper around dma_* functions
      add l2x0 cache support
      pcm043: enable l2x0 cache
      netx eth driver: remove local definition of ARRAY_SIZE

 arch/arm/cpu/Kconfig                  |    8 ++
 arch/arm/cpu/Makefile                 |    2 +
 arch/arm/cpu/cache-armv4.S            |    6 +-
 arch/arm/cpu/cache-armv5.S            |    6 +-
 arch/arm/cpu/cache-armv6.S            |    6 +-
 arch/arm/cpu/cache-armv7.S            |   12 +-
 arch/arm/cpu/cache-l2x0.c             |  183 +++++++++++++++++++++++++++++++++
 arch/arm/cpu/cpu.c                    |   12 +--
 arch/arm/cpu/mmu.c                    |   28 +++++-
 arch/arm/include/asm/common.h         |    2 +-
 arch/arm/include/asm/mmu.h            |   27 ++++-
 arch/arm/lib/armlinux.c               |    6 +-
 arch/arm/mach-at91/clocksource.c      |    5 +-
 arch/arm/mach-ep93xx/clocksource.c    |    2 +-
 arch/arm/mach-imx/Kconfig             |    3 +-
 arch/arm/mach-imx/clocksource.c       |    2 +-
 arch/arm/mach-netx/generic.c          |    5 +-
 arch/arm/mach-omap/omap3_generic.c    |    2 +-
 arch/arm/mach-s3c24xx/generic.c       |    2 +-
 arch/blackfin/include/asm/common.h    |    2 +-
 arch/blackfin/lib/board.c             |    8 +--
 arch/blackfin/lib/cpu.c               |    5 +-
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c           |    2 +-
 arch/sandbox/os/common.c              |    2 +-
 arch/x86/mach-i386/reset.c            |    2 +-
 board/pcm043/pcm043.c                 |   15 ++--
 commands/go.c                         |   19 ++--
 common/startup.c                      |    5 +-
 drivers/net/fec_imx.c                 |    3 +-
 drivers/net/netx_eth.c                |    2 -
 drivers/usb/gadget/fsl_udc.c          |    3 +-
 drivers/usb/usb_ehci_core.c           |    4 +-
 include/common.h                      |    8 +-
 lib/vsprintf.c                        |    2 +-
 35 files changed, 324 insertions(+), 79 deletions(-)
 create mode 100644 arch/arm/cpu/cache-l2x0.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
