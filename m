Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mU-E8
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:43 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1R8T1i-0005Wa-MF
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 10:28:30 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1R8T1i-00066R-Jw
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 10:28:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:15 +0200
Message-Id: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: more ppc and pcm030 cleanup
To: barebox@lists.infradead.org

Sascha Hauer (14):
      ppc: remove mgt5100 support from code
      ppc: add a get_pc() function
      remove EARLY_INIT and EARLY_CONSOLE support
      ppc mpc5200: add function to determine configured sdram size
      ppc mpc5200: add function to configure a chipselect
      ppc mpc5200: add function to setup bus clocks
      ppc mpc5200b: cleanup lowlevel startup
      pcm030: use new functionality
      ppc: hardcode sdram base to 0x0
      mpc5200: hardcode MBAR to 0xf0000000
      mpc5200: hardcode internal sram for initram
      pcm030: fix /dev/self0 and /dev/env0
      ppc mpc5200: remove bus clock switching from generic code
      pcm030: cleanup config.h

 arch/arm/boards/karo-tx28/tx28-stk5.c        |    1 -
 arch/mips/lib/barebox.lds.S                  |    4 -
 arch/ppc/Kconfig                             |    9 --
 arch/ppc/boards/pcm030/barebox.lds.S         |    4 -
 arch/ppc/boards/pcm030/config.h              |   66 +-------------
 arch/ppc/boards/pcm030/pcm030.c              |   80 +++++++---------
 arch/ppc/include/asm/common.h                |   19 ++++
 arch/ppc/lib/board.c                         |    3 -
 arch/ppc/lib/board_data.c                    |    2 +-
 arch/ppc/mach-mpc5xxx/Kconfig                |    3 -
 arch/ppc/mach-mpc5xxx/cpu.c                  |  132 ++++++++++++++++++++++++--
 arch/ppc/mach-mpc5xxx/cpu_init.c             |   35 +------
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h |   12 +++
 arch/ppc/mach-mpc5xxx/start.S                |  100 ++++----------------
 common/Kconfig                               |   17 ----
 common/console.c                             |   36 +-------
 common/startup.c                             |   28 ------
 common/version.c                             |    5 +-
 drivers/serial/serial_mpc5xxx.c              |   25 -----
 include/common.h                             |    2 +-
 include/linux/ctype.h                        |    3 +-
 include/reloc.h                              |   62 ------------
 lib/vsprintf.c                               |    1 -
 23 files changed, 225 insertions(+), 424 deletions(-)
 delete mode 100644 include/reloc.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
