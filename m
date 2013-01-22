Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Txf11-0006XA-OK
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:39:56 +0000
Received: from mail170.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6ADA6DC10D4
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2013 15:49:37 +0100 (CET)
Date: Tue, 22 Jan 2013 15:38:33 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130122143833.GM26329@game.jcrosoft.org>
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
Subject: [PATCH 00/10 v7] at91: add bootstrap support
To: barebox@lists.infradead.org

Hi,

	v7:

	 Makefile bug fix + typo

	v6:
	 allow to pass the fstype for mount (omap usbfs)

	v5:
	 rebase on Sacha SHELL_NONE patch

	v4:
	 make the code arm & mips supported for barebox head detection

	v3:

	send correct patch series and pull

	can we have it on master the v2 does not cange much since v1

	v2:
	 fix whitesapce
	 fix comment
	 fix command default

	This patch serie introduce a common bootstrap code
	aka xloder for TI and at91bootstrap for Atmel
	to barebox

	As I do not have with me right now a TI platform I did not switch
	it to the new generic bootstrap code.

	On at91 add it on the calao usb-a9263 test on nand and spi
	This patch serie depends on the previous Sacha patch for SHELL_NONE

The following changes since commit a0a9331ba745418f1e7871f5bd707e3cc7e89902:

  startup: call a barebox_main function pointer at the end of the startup (2013-01-17 11:56:24 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_bootstrap

for you to fetch changes up to b290fa88fb2c97a1d5b08ded3554c0a464a4562f:

  at91: usb_a9263: add bootstrap version (2013-01-18 17:17:11 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (10):
      filetype: add is_barebox_mips_head support
      filetype: add is_barebox_head
      at91: dump mux command: make it depends on COMMAND_SUPPORT
      at91: add test commamd to emulate bootrom boot
      at91sam926x: lowlevel add external boot support
      at91: sam926x: switch lowlevel param to c code
      at91: usb-a9263 add lowlevel init
      introduce common bootstrap code
      at91: add bootstrap version
      at91: usb_a9263: add bootstrap version

 arch/arm/boards/at91sam9263ek/Makefile                |    4 +++
 arch/arm/boards/at91sam9263ek/config.h                |   87 --------------------------------------------------------------
 arch/arm/boards/at91sam9263ek/lowlevel_init.c         |  104 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/mmccpu/Makefile                       |    4 +++
 arch/arm/boards/mmccpu/config.h                       |  118 ------------------------------------------------------------------------------------
 arch/arm/boards/mmccpu/lowlevel_init.c                |  135 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/pm9261/Makefile                       |    4 +++
 arch/arm/boards/pm9261/config.h                       |   87 --------------------------------------------------------------
 arch/arm/boards/pm9261/lowlevel_init.c                |  102 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/pm9263/Makefile                       |    4 +++
 arch/arm/boards/pm9263/config.h                       |  103 --------------------------------------------------------------------------
 arch/arm/boards/pm9263/lowlevel_init.c                |  121 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/boards/usb-a926x/Makefile                    |    9 +++++++
 arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c       |   16 ++++++++++++
 arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c   |  111 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig |   27 ++++++++++++++++++++
 arch/arm/configs/usb_a9263_bootstrap_defconfig        |   26 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig                            |   16 ++++++++++++
 arch/arm/mach-at91/Makefile                           |    2 ++
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c        |   84 ++++++++++++++++++++++++++++++++++++++++++------------------
 arch/arm/mach-at91/boot_test_cmd.c                    |   95 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/bootstrap.c                        |   95 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h  |   33 ++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/bootstrap.h           |   28 ++++++++++++++++++++
 common/filetype.c                                     |    2 +-
 include/bootstrap.h                                   |   34 +++++++++++++++++++++++++
 include/filetype.h                                    |   21 +++++++++++++++
 lib/Kconfig                                           |    2 ++
 lib/Makefile                                          |    1 +
 lib/bootstrap/Kconfig                                 |   13 ++++++++++
 lib/bootstrap/Makefile                                |    3 +++
 lib/bootstrap/common.c                                |   24 ++++++++++++++++++
 lib/bootstrap/devfs.c                                 |  118 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/bootstrap/disk.c                                  |   37 +++++++++++++++++++++++++++
 34 files changed, 1249 insertions(+), 421 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel_init.c
 create mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
 create mode 100644 arch/arm/boards/pm9261/lowlevel_init.c
 create mode 100644 arch/arm/boards/pm9263/lowlevel_init.c
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
