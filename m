Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3T50-0001Do-VX
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 17:17:08 +0000
Received: from mail183.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id CBE9EFF9AF6
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 18:07:11 +0100 (CET)
Date: Tue, 23 Dec 2014 18:07:09 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20141223170709.GA15818@ns203013.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/9] versatilepb, console, graphichs serie
To: barebox@lists.infradead.org

Hi,

	here is a patch series of different stuff

	To prepare the adding of the USB Keyboard and other GUI related
	patches

	Versatilepb:
	 - move to defaultenv-2

	Graphics:
	 - fix
	  - defaultenv-2


The following changes since commit 631be8e6cbe003f469a7e6b54046a743b710d989:

  blspec: print error when devicetree not found (2014-12-16 14:29:23 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/for-next

for you to fetch changes up to 3457c1de8201cbe6ca24ddba75df789fad8b6095:

  defaultenv-2: create a specific defaultenv for splash (2014-12-23 05:51:11 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      kfifo: allow to pass a null point on kfifo_free
      efika-mx-smartbook: enable led hearbeat on mail
      grapric_utils: set_pixel only write 16bit in 16bit mode
      versatilepb: move barebox to 32 MiB and use zImage
      versatilepb: switch to defaultenv-2
      console: factorize kfifo input support
      poller: allow to restrict the poller frequency
      console: allow to specify the device id
      defaultenv-2: create a specific defaultenv for splash

 arch/arm/boards/efika-mx-smartbook/board.c           |  2 ++
 arch/arm/boards/versatile/env/boot.d/001-nor         |  1 +
 arch/arm/boards/versatile/env/boot.d/101-nor-update  |  1 +
 arch/arm/boards/versatile/env/boot/nor               | 15 +++++++++++++++
 arch/arm/boards/versatile/env/boot/nor-update        | 14 ++++++++++++++
 arch/arm/boards/versatile/env/config                 | 38 --------------------------------------
 arch/arm/boards/versatile/env/init/automount         | 11 +++++++++++
 arch/arm/boards/versatile/env/init/mtdparts-nor      | 11 +++++++++++
 arch/arm/boards/versatile/env/init/ps1               |  7 +++++++
 arch/arm/boards/versatile/env/nv/boot.default        |  1 +
 arch/arm/boards/versatile/env/nv/hostname            |  1 +
 arch/arm/boards/versatile/env/nv/linux.bootargs.base |  1 +
 arch/arm/boards/versatile/versatilepb.c              |  4 ++--
 arch/arm/configs/versatilepb_defconfig               | 31 ++++++++++++++++++++++++++++---
 arch/arm/mach-versatile/Kconfig                      |  4 ++++
 common/Kconfig                                       |  8 ++++++++
 common/console.c                                     | 10 +++++++++-
 common/console_common.c                              | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c                              |  4 ++++
 common/poller.c                                      | 11 ++++++++++-
 defaultenv/Makefile                                  |  1 +
 defaultenv/defaultenv-2-splash/bin/splash            | 15 +++++++++++++++
 defaultenv/defaultenv-2-splash/init/splash           |  3 +++
 defaultenv/defaultenv.c                              |  2 ++
 drivers/input/Kconfig                                |  4 ++++
 drivers/input/gpio_keys.c                            | 43 ++++++-------------------------------------
 drivers/input/imx_keypad.c                           | 29 ++---------------------------
 drivers/input/qt1070.c                               | 28 ++--------------------------
 drivers/input/twl6030_pwrbtn.c                       | 32 ++------------------------------
 drivers/usb/gadget/u_serial.c                        |  1 +
 include/console.h                                    | 23 +++++++++++++++++++++++
 include/gpio_keys.h                                  |  1 -
 include/poller.h                                     |  3 +++
 lib/gui/graphic_utils.c                              |  2 +-
 lib/kfifo.c                                          |  2 ++
 35 files changed, 268 insertions(+), 167 deletions(-)
 create mode 120000 arch/arm/boards/versatile/env/boot.d/001-nor
 create mode 120000 arch/arm/boards/versatile/env/boot.d/101-nor-update
 create mode 100644 arch/arm/boards/versatile/env/boot/nor
 create mode 100644 arch/arm/boards/versatile/env/boot/nor-update
 delete mode 100644 arch/arm/boards/versatile/env/config
 create mode 100644 arch/arm/boards/versatile/env/init/automount
 create mode 100644 arch/arm/boards/versatile/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/versatile/env/init/ps1
 create mode 100644 arch/arm/boards/versatile/env/nv/boot.default
 create mode 100644 arch/arm/boards/versatile/env/nv/hostname
 create mode 100644 arch/arm/boards/versatile/env/nv/linux.bootargs.base
 create mode 100644 defaultenv/defaultenv-2-splash/bin/splash
 create mode 100644 defaultenv/defaultenv-2-splash/init/splash

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
