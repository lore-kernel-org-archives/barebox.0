Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofOb-00046B-BU
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:15:06 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0EBFDFF936D
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:27:44 +0100 (CET)
Date: Fri, 28 Dec 2012 20:13:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121228191327.GC7216@game.jcrosoft.org>
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
Subject: [PATCH 00/13] at91: cleanup and switch core driver to device/driver
To: barebox@lists.infradead.org

HI,

	cleanup base addresses and start to drop AT91_BASE_SYS to allow
	multiple arch at a time

	switch code drivers to device/drivers

	detect soc a at run time

The following changes since commit adbdc7cd87971b126838950e2dc5eaedfff943d7:

  spi: atmel: request cs pin via gpiolib (2012-12-29 00:35:08 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_cleanup

for you to fetch changes up to 9f7f67ca887b26a4488edf5fa171a78e142e0a5b:

  at91: drop AT91_BASE_PIOx for soc specific one for none boot code (2012-12-29 01:37:47 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (13):
      at91: factorise dbgu address
      at91: enable clock via clock framework
      at91: factoryse PMC address as it's the same on every soc
      at91: pmc: drop AT91_BASE_SYS
      at91: introduce Kconfig to select the dbgu for lowlevel debug
      at91: sync with the kernel address base
      at91: at91sam9: provide its own clkdev for pit
      at91: PIT: switch to platfrom_driver
      at91: autodetect the soc one time at postcore_initcall
      at91: SMC: switch to platfrom_driver
      at91: wdt: drop AT91_SYS_BASE
      at91: introduce AT91SAM9_SMC and AT91SAM9_TIMER
      at91: drop AT91_BASE_PIOx for soc specific one for none boot code

 arch/arm/boards/at91sam9260ek/init.c           |    5 +-
 arch/arm/boards/at91sam9261ek/init.c           |    5 +-
 arch/arm/boards/at91sam9263ek/init.c           |    3 +-
 arch/arm/boards/at91sam9m10g45ek/init.c        |    3 +-
 arch/arm/boards/at91sam9n12ek/init.c           |    5 +-
 arch/arm/boards/at91sam9x5ek/init.c            |    3 +-
 arch/arm/boards/dss11/init.c                   |    9 ++-
 arch/arm/boards/pm9261/init.c                  |    5 +-
 arch/arm/boards/pm9263/init.c                  |    3 +-
 arch/arm/boards/pm9g45/init.c                  |    3 +-
 arch/arm/boards/qil-a9260/init.c               |    3 +-
 arch/arm/boards/tny-a926x/init.c               |    5 +-
 arch/arm/boards/usb-a926x/init.c               |    5 +-
 arch/arm/mach-at91/Kconfig                     |  114 ++++++++++++++++++++++------
 arch/arm/mach-at91/Makefile                    |   21 +++---
 arch/arm/mach-at91/at91rm9200.c                |   25 +++---
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c  |   18 +++--
 arch/arm/mach-at91/at91sam9260.c               |   24 +++---
 arch/arm/mach-at91/at91sam9261.c               |   24 +++---
 arch/arm/mach-at91/at91sam9263.c               |   29 +++----
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   28 +++----
 arch/arm/mach-at91/at91sam926x_time.c          |   68 +++++++++++++----
 arch/arm/mach-at91/at91sam9g45.c               |   29 ++++---
 arch/arm/mach-at91/at91sam9n12.c               |   26 +++----
 arch/arm/mach-at91/at91sam9x5.c                |   26 +++----
 arch/arm/mach-at91/clock.c                     |   50 ++++++------
 arch/arm/mach-at91/generic.h                   |   13 ++++
 arch/arm/mach-at91/include/mach/at91_dbgu.h    |   26 +++----
 arch/arm/mach-at91/include/mach/at91_pit.h     |    8 +-
 arch/arm/mach-at91/include/mach/at91_pmc.h     |   48 ++++++------
 arch/arm/mach-at91/include/mach/at91_wdt.h     |    6 +-
 arch/arm/mach-at91/include/mach/at91rm9200.h   |   22 ++++--
 arch/arm/mach-at91/include/mach/at91sam9260.h  |   37 ++++++---
 arch/arm/mach-at91/include/mach/at91sam9261.h  |   34 ++++++---
 arch/arm/mach-at91/include/mach/at91sam9263.h  |   52 ++++++++-----
 arch/arm/mach-at91/include/mach/at91sam9_smc.h |   50 +++++++++---
 arch/arm/mach-at91/include/mach/at91sam9g45.h  |   44 +++++++----
 arch/arm/mach-at91/include/mach/at91sam9n12.h  |   43 +++++++----
 arch/arm/mach-at91/include/mach/at91sam9x5.h   |   43 +++++++----
 arch/arm/mach-at91/include/mach/cpu.h          |  190 ++++++++++++++++++++++------------------------
 arch/arm/mach-at91/include/mach/debug_ll.h     |    6 +-
 arch/arm/mach-at91/include/mach/hardware.h     |    8 ++
 arch/arm/mach-at91/include/mach/sam9_smc.h     |   33 --------
 arch/arm/mach-at91/sam9_smc.c                  |  146 +++++++++++++++++++++++++++++------
 arch/arm/mach-at91/setup.c                     |  226 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/soc.h                       |   66 ++++++++++++++++
 46 files changed, 1127 insertions(+), 513 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/sam9_smc.h
 create mode 100644 arch/arm/mach-at91/setup.c
 create mode 100644 arch/arm/mach-at91/soc.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
