Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4yjM-0000vL-Ti
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 19:07:57 +0000
Received: from mail194.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 65E91FF9C75
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 20:23:13 +0100 (CET)
Date: Mon, 11 Feb 2013 20:06:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130211190648.GA19322@game.jcrosoft.org>
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
Subject: [PATCH 0/3 v2] arm: add Calxeda Highbank support
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

Hi,

	v2:
	 fix cc tag so Rob can receive the patch
	 add oftree support to xgmac

	The following patch serie add the support of the Quad Core Cortex-A9
	Highbank from Calxeda

	As I do not have the real hardware this is only tested on qemu

	Rob could confirm if this work on real hw

	This patch serie depends on the amba sp804 patch and the ahci patch serie

The following changes since commit ad65d793bbaccc4b97422c612322d3d9885c8cfd:

  ahci: handle COMINIT received during spin-up (2013-02-11 07:45:37 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/highbank

for you to fetch changes up to 48648694bbf909d53034c5b5c6ed019506ea5999:

  highbank: add l2x0 support (2013-02-11 12:02:58 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      highbank: add xgmac support
      arm: add highbank support
      highbank: add l2x0 support

 arch/arm/Kconfig                               |   12 ++
 arch/arm/Makefile                              |    2 +
 arch/arm/boards/highbank/Makefile              |    4 +
 arch/arm/boards/highbank/config.h              |    5 +
 arch/arm/boards/highbank/env/config            |   34 +++++
 arch/arm/boards/highbank/init.c                |   46 +++++++
 arch/arm/boards/highbank/lowlevel.c            |   17 +++
 arch/arm/configs/highbank_defconfig            |   61 +++++++++
 arch/arm/mach-highbank/Kconfig                 |   18 +++
 arch/arm/mach-highbank/Makefile                |    4 +
 arch/arm/mach-highbank/cache-l2x0.c            |   45 +++++++
 arch/arm/mach-highbank/core.c                  |   50 ++++++++
 arch/arm/mach-highbank/core.h                  |    2 +
 arch/arm/mach-highbank/devices.c               |   50 ++++++++
 arch/arm/mach-highbank/include/mach/clkdev.h   |    7 ++
 arch/arm/mach-highbank/include/mach/debug_ll.h |   26 ++++
 arch/arm/mach-highbank/include/mach/devices.h  |   16 +++
 arch/arm/mach-highbank/include/mach/gpio.h     |    1 +
 arch/arm/mach-highbank/reset.c                 |   22 ++++
 arch/arm/mach-highbank/smc.S                   |   27 ++++
 arch/arm/mach-highbank/sysregs.h               |   52 ++++++++
 drivers/net/Kconfig                            |    3 +
 drivers/net/Makefile                           |    1 +
 drivers/net/xgmac.c                            |  740 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 24 files changed, 1245 insertions(+)
 create mode 100644 arch/arm/boards/highbank/Makefile
 create mode 100644 arch/arm/boards/highbank/config.h
 create mode 100644 arch/arm/boards/highbank/env/config
 create mode 100644 arch/arm/boards/highbank/init.c
 create mode 100644 arch/arm/boards/highbank/lowlevel.c
 create mode 100644 arch/arm/configs/highbank_defconfig
 create mode 100644 arch/arm/mach-highbank/Kconfig
 create mode 100644 arch/arm/mach-highbank/Makefile
 create mode 100644 arch/arm/mach-highbank/cache-l2x0.c
 create mode 100644 arch/arm/mach-highbank/core.c
 create mode 100644 arch/arm/mach-highbank/core.h
 create mode 100644 arch/arm/mach-highbank/devices.c
 create mode 100644 arch/arm/mach-highbank/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-highbank/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-highbank/include/mach/devices.h
 create mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
 create mode 100644 arch/arm/mach-highbank/reset.c
 create mode 100644 arch/arm/mach-highbank/smc.S
 create mode 100644 arch/arm/mach-highbank/sysregs.h
 create mode 100644 drivers/net/xgmac.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
