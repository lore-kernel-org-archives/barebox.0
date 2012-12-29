Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TotIV-0006Ak-DE
 for barebox@lists.infradead.org; Sat, 29 Dec 2012 10:05:44 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EB0C1FF94D3
 for <barebox@lists.infradead.org>; Sat, 29 Dec 2012 11:18:22 +0100 (CET)
Date: Sat, 29 Dec 2012 11:04:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121229100404.GA22953@game.jcrosoft.org>
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
Subject: [PATCH 0/7] at91: add bootstrap support
To: barebox@lists.infradead.org

Hi,

	This patch serie introduce a common bootstrap code
	aka xloder for TI and at91bootstrap for Atmel
	to barebox

	As I do not have with me right now a TI platform I did not switch
	it to the new generic bootstrap code.

	On at91 add it on the calao usb-a9263 test on nand and spi
	This patch serie depends on the previous at91 patch series

The following changes since commit 9f7f67ca887b26a4488edf5fa171a78e142e0a5b:

  at91: drop AT91_BASE_PIOx for soc specific one for none boot code (2012-12-29 01:37:47 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_bootstrap

for you to fetch changes up to 44bfbedb17c35a99aa0f9a2a16330d2928b9ba31:

  at91: usb_a9263: add bootstrap version (2012-12-29 17:56:45 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      at91: add test commamd to emulate bootrom boot
      at91sam926x: lowlevel add external boot support
      at91: sam926x: switch lowlevel param to c code
      at91: usb-a9263 add lowlevel init
      introduce common bootstrap code
      at91: add bootstrap version
      at91: usb_a9263: add bootstrap version

 arch/arm/boards/at91sam9263ek/Makefile                |    5 ++
 arch/arm/boards/at91sam9263ek/config.h                |   87 -------------------------------
 arch/arm/boards/at91sam9263ek/lowlevel_init.c         |  104 +++++++++++++++++++++++++++++++++++++
 arch/arm/boards/mmccpu/Makefile                       |    5 ++
 arch/arm/boards/mmccpu/config.h                       |  118 ------------------------------------------
 arch/arm/boards/mmccpu/lowlevel_init.c                |  135 ++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/pm9261/Makefile                       |    5 ++
 arch/arm/boards/pm9261/config.h                       |   87 -------------------------------
 arch/arm/boards/pm9261/lowlevel_init.c                |  102 ++++++++++++++++++++++++++++++++++++
 arch/arm/boards/pm9263/Makefile                       |    5 ++
 arch/arm/boards/pm9263/config.h                       |  103 ------------------------------------
 arch/arm/boards/usb-a926x/Makefile                    |    9 ++++
 arch/arm/boards/usb-a926x/config.h                    |   97 ++++++++++++++++++++++++++++++++++
 arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c       |   16 ++++++
 arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c   |  111 +++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig |   24 +++++++++
 arch/arm/configs/usb_a9263_bootstrap_defconfig        |   23 +++++++++
 arch/arm/mach-at91/Kconfig                            |    7 +++
 arch/arm/mach-at91/Makefile                           |    2 +
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c        |   84 +++++++++++++++++++++---------
 arch/arm/mach-at91/boot_test_cmd.c                    |   97 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/bootstrap.c                        |   86 ++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h  |   33 ++++++++++++
 arch/arm/mach-at91/include/mach/bootstrap.h           |   28 ++++++++++
 include/bootstrap.h                                   |   34 ++++++++++++
 lib/Kconfig                                           |    2 +
 lib/Makefile                                          |    1 +
 lib/bootstrap/Kconfig                                 |   13 +++++
 lib/bootstrap/Makefile                                |    3 ++
 lib/bootstrap/common.c                                |   21 ++++++++
 lib/bootstrap/devfs.c                                 |   98 +++++++++++++++++++++++++++++++++++
 lib/bootstrap/disk.c                                  |   36 +++++++++++++
 32 files changed, 1161 insertions(+), 420 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel_init.c
 create mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
 create mode 100644 arch/arm/boards/pm9261/lowlevel_init.c
 create mode 100644 arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
 create mode 100644 arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c
 create mode 100644 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
 create mode 100644 arch/arm/configs/usb_a9263_bootstrap_defconfig
 create mode 100644 arch/arm/mach-at91/boot_test_cmd.c
 create mode 100644 arch/arm/mach-at91/bootstrap.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
 create mode 100644 arch/arm/mach-at91/include/mach/bootstrap.h
 create mode 100644 include/bootstrap.h
 create mode 100644 lib/bootstrap/Kconfig
 create mode 100644 lib/bootstrap/Makefile
 create mode 100644 lib/bootstrap/common.c
 create mode 100644 lib/bootstrap/devfs.c
 create mode 100644 lib/bootstrap/disk.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
