Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S2Irb-0001CS-1S
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 08:56:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1S2IrT-0005tz-PN
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 09:56:43 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1S2IrT-0003CG-OK
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 09:56:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Feb 2012 09:56:38 +0100
Message-Id: <1330419401-11994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Thumb2 support
To: barebox@lists.infradead.org

Add some preparation to support Thumb2 support and finally Thumb2
support itself.

Sascha Hauer (3):
      ARM: move exception vectors away from start of binary
      ARM: get runtime offset of board_init_lowlevel_return by using separate section
      ARM: Allow to compile in thumb-2 mode

 arch/arm/Kconfig                                   |   12 +++++
 arch/arm/Makefile                                  |   11 ++++-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 +-
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    3 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 +-
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 +-
 arch/arm/cpu/cpu.c                                 |   27 ++++++++++++
 arch/arm/cpu/exceptions.S                          |    1 +
 arch/arm/cpu/mmu.c                                 |    4 +-
 arch/arm/cpu/start.c                               |   44 ++++++++++++--------
 arch/arm/include/asm/barebox-arm-head.h            |   36 ++++++++++++++++
 arch/arm/include/asm/barebox-arm.h                 |    3 +
 arch/arm/include/asm/unified.h                     |    8 ++--
 arch/arm/lib/armlinux.c                            |   17 +++++++-
 arch/arm/lib/barebox.lds.S                         |    7 +++-
 commands/go.c                                      |    6 ++-
 common/misc.c                                      |    3 +
 include/common.h                                   |    6 +++
 22 files changed, 173 insertions(+), 36 deletions(-)
 create mode 100644 arch/arm/include/asm/barebox-arm-head.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
