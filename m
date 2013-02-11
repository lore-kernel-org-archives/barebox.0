Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4s5A-0000Vk-Rl
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 12:02:02 +0000
Received: from mail428.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1B623104EA39
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 13:12:20 +0100 (CET)
Date: Mon, 11 Feb 2013 13:00:49 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130211120049.GX19322@game.jcrosoft.org>
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
Subject: [PATCH 0/3 v2] arm: add ARM Vexpress support
To: barebox@lists.infradead.org

Hi,

The following changes since commit e43e1498f65fe03cfc6b2744247eeccf27b26876:

  MIPS: pbl: fix none compression support (2013-02-05 09:43:17 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/vexpress

for you to fetch changes up to b57ea102c02881da1400537d61dbec9e5c6a6ea1:

  arm: add vexpress board support (2013-02-11 04:56:09 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      clocksource: add ARM AMBA SP804 support
      arm: add macro cpu_is_xxx
      arm: add vexpress board support

 arch/arm/Kconfig                               |   10 ++++++++
 arch/arm/Makefile                              |    2 ++
 arch/arm/boards/vexpress/Kconfig               |   10 ++++++++
 arch/arm/boards/vexpress/Makefile              |    4 ++++
 arch/arm/boards/vexpress/config.h              |    5 ++++
 arch/arm/boards/vexpress/env/config            |   41 ++++++++++++++++++++++++++++++++
 arch/arm/boards/vexpress/init.c                |  142 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/vexpress/lowlevel.c            |   20 ++++++++++++++++
 arch/arm/configs/vexpress_ca9_defconfig        |   61 +++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/vexpress_defconfig            |   60 ++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/hardware/arm_timer.h      |    5 ++++
 arch/arm/include/asm/hardware/sp810.h          |   68 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/system_info.h             |   63 ++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-vexpress/Kconfig                 |   18 ++++++++++++++
 arch/arm/mach-vexpress/Makefile                |    3 +++
 arch/arm/mach-vexpress/devices.c               |   73 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-vexpress/include/mach/clkdev.h   |    7 ++++++
 arch/arm/mach-vexpress/include/mach/debug_ll.h |   33 ++++++++++++++++++++++++++
 arch/arm/mach-vexpress/include/mach/devices.h  |   22 +++++++++++++++++
 arch/arm/mach-vexpress/reset.c                 |   22 +++++++++++++++++
 arch/arm/mach-vexpress/v2m.c                   |   85 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/clocksource/Kconfig                    |    4 ++++
 drivers/clocksource/Makefile                   |    1 +
 drivers/clocksource/amba-sp804.c               |   94 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/amba/sp805.h                     |   32 +++++++++++++++++++++++++
 25 files changed, 885 insertions(+)
 create mode 100644 arch/arm/boards/vexpress/Kconfig
 create mode 100644 arch/arm/boards/vexpress/Makefile
 create mode 100644 arch/arm/boards/vexpress/config.h
 create mode 100644 arch/arm/boards/vexpress/env/config
 create mode 100644 arch/arm/boards/vexpress/init.c
 create mode 100644 arch/arm/boards/vexpress/lowlevel.c
 create mode 100644 arch/arm/configs/vexpress_ca9_defconfig
 create mode 100644 arch/arm/configs/vexpress_defconfig
 create mode 100644 arch/arm/include/asm/hardware/sp810.h
 create mode 100644 arch/arm/mach-vexpress/Kconfig
 create mode 100644 arch/arm/mach-vexpress/Makefile
 create mode 100644 arch/arm/mach-vexpress/devices.c
 create mode 100644 arch/arm/mach-vexpress/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-vexpress/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-vexpress/include/mach/devices.h
 create mode 100644 arch/arm/mach-vexpress/reset.c
 create mode 100644 arch/arm/mach-vexpress/v2m.c
 create mode 100644 drivers/clocksource/amba-sp804.c
 create mode 100644 include/linux/amba/sp805.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
