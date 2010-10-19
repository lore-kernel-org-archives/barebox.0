Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj3-0005qg-TZ
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:35 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1P8Bj1-0001Hs-TA
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 14:55:31 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1P8Bj1-0004BP-SF
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 14:55:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:54:48 +0200
Message-Id: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: sparse fixes
To: barebox@lists.infradead.org

Hi all,

I recently tried to run make C=1. Here are the results. There are
enough sparse warnings left to fix though.

Sascha


The following changes since commit e9ff34657a9aeb42bd76141e97b0fb047ebfde58:

  eukrea_cpuimx35: update board support (2010-10-14 16:03:03 +0200)

are available in the git repository at:
  none ..BRANCH.NOT.VERIFIED..

Sascha Hauer (42):
      glob: sparse fixes
      fnmatch:sparse fixes
      readline: sparse fixes
      edit: sparse fixes
      command.h: sparse fixes
      crc32: sparse fixes
      copy_file: sparse fixes
      commands/mem.c: sparse fixes
      dlmalloc: sparse fixes
      console: sparse fixes
      notifier: sparse fixes
      fec_imx: sparse fixes
      imx gpio: sparse fixes
      imx clocksource: sparse fixes
      armlinux: sparse fixes
      arch/arm/cpu/cpu.c: sparse fixes
      cache-l2x0: sparse fixes
      speed-imx35: sparse fixes
      imx_dump_clocks: sparse fixes
      i.MX serial: sparse fixes
      i.MX remove wdog registers from header files
      hush: sparse fixes
      ramfs: sparse fixes
      common/env.c: sparse fixes
      version_string: sparse fixes
      imx-nand: sparse fixes
      ping: make locally used functions static
      arm div0: sparse fixes
      edit: make locally used variable static
      common/environment.c: sparse fixes
      commands/mem.c: make locally used function static
      bootm: sparse fixes
      net: make locally used functions static
      lib/driver.c: sparse fixes
      remove dead ldiv code
      common/memsize.c: add missing include
      i.MX speed: add missing include
      libbb: sparse fixes
      remove strange flush_cache functions
      pcm043: ifx compiler warning
      arm interrupts.c: sparse fixes
      process_escape_sequence: Add missing include

 arch/arm/boards/pcm043/pcm043.c             |    4 +-
 arch/arm/cpu/cache-l2x0.c                   |    2 +-
 arch/arm/cpu/cpu.c                          |    1 +
 arch/arm/cpu/interrupts.c                   |   10 +++-
 arch/arm/lib/Makefile                       |    1 -
 arch/arm/lib/armlinux.c                     |    3 +-
 arch/arm/lib/cache.c                        |   36 -----------
 arch/arm/lib/div0.c                         |    5 +-
 arch/arm/mach-imx/clocksource.c             |   25 ++++++--
 arch/arm/mach-imx/gpio.c                    |   15 +++--
 arch/arm/mach-imx/include/mach/clock.h      |    2 +
 arch/arm/mach-imx/include/mach/imx-nand.h   |    4 +-
 arch/arm/mach-imx/include/mach/imx1-regs.h  |    8 ---
 arch/arm/mach-imx/include/mach/imx21-regs.h |    8 ---
 arch/arm/mach-imx/include/mach/imx27-regs.h |    8 ---
 arch/arm/mach-imx/include/mach/imx31-regs.h |   10 ---
 arch/arm/mach-imx/include/mach/imx35-regs.h |   10 ---
 arch/arm/mach-imx/include/mach/imx51-regs.h |    7 --
 arch/arm/mach-imx/speed-imx25.c             |    3 +-
 arch/arm/mach-imx/speed-imx35.c             |    9 ++-
 arch/arm/mach-imx/speed.c                   |    1 +
 arch/ppc/lib/Makefile                       |    1 -
 arch/ppc/lib/cache.c                        |   50 ---------------
 arch/sandbox/os/common.c                    |    5 --
 commands/bootm.c                            |    2 +-
 commands/edit.c                             |    4 +-
 commands/loadb.c                            |    1 -
 commands/loads.c                            |    1 -
 commands/mem.c                              |    2 +-
 commands/version.c                          |    1 -
 common/console.c                            |    8 +-
 common/dlmalloc.c                           |   41 ++++++------
 common/env.c                                |    2 +-
 common/environment.c                        |    2 +-
 common/hush.c                               |   10 ++--
 common/memsize.c                            |    1 +
 drivers/net/fec_imx.c                       |    8 +-
 drivers/net/fec_imx.h                       |    6 +-
 drivers/serial/serial_imx.c                 |   89 ++++++++++++++-------------
 fs/ramfs.c                                  |    2 +-
 include/cache.h                             |    1 -
 include/command.h                           |    7 +-
 include/common.h                            |    4 +
 include/image.h                             |    1 +
 include/notifier.h                          |    1 +
 lib/Makefile                                |    1 -
 lib/copy_file.c                             |    2 +
 lib/crc32.c                                 |    2 +-
 lib/driver.c                                |    4 +-
 lib/fnmatch.c                               |    5 +-
 lib/glob.c                                  |   36 ++++-------
 lib/ldiv.c                                  |   55 ----------------
 lib/libbb.c                                 |    2 +-
 lib/process_escape_sequence.c               |    1 +
 lib/readline.c                              |    6 +-
 net/net.c                                   |    4 +-
 net/ping.c                                  |    4 +-
 57 files changed, 186 insertions(+), 358 deletions(-)
 delete mode 100644 arch/arm/lib/cache.c
 delete mode 100644 arch/ppc/lib/cache.c
 delete mode 100644 lib/ldiv.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
