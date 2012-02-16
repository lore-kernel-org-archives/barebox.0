Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxyWi-0007eD-2S
 for barebox@lists.infradead.org; Thu, 16 Feb 2012 10:25:28 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3CFFDFFA013
 for <barebox@lists.infradead.org>; Thu, 16 Feb 2012 11:27:47 +0100 (CET)
Date: Thu, 16 Feb 2012 11:18:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120216101836.GL1214@game.jcrosoft.org>
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
Subject: [PULL] gpio_keys
To: barebox@lists.infradead.org

HI,

	please found the patch series to add gpio_keys as console and the
	support of the DAB-MMX for Calao USB

The following changes since commit 4b06ebc820aa9a46dfb73c7050b073d8224b4b70:

  defaultenv/boot: add getopt option support to select boot mode (2012-02-14 15:01:52 +0100)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git gpio_keys

Jean-Christophe PLAGNIOL-VILLARD (4):
      add gpio keyboard support
      readkey: add define for Ascii keys
      at91: at91_register_uart return device
      usb-a926x: add DAB MMX Daughter board support

 arch/arm/boards/usb-a926x/init.c         |  108 ++++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig               |    9 +++
 arch/arm/mach-at91/at91rm9200_devices.c  |    6 +-
 arch/arm/mach-at91/at91sam9260_devices.c |    6 +-
 arch/arm/mach-at91/at91sam9261_devices.c |    6 +-
 arch/arm/mach-at91/at91sam9263_devices.c |    6 +-
 arch/arm/mach-at91/at91sam9g45_devices.c |    6 +-
 arch/arm/mach-at91/include/mach/board.h  |    2 +-
 common/menu.c                            |    6 +-
 drivers/Kconfig                          |    1 +
 drivers/Makefile                         |    1 +
 drivers/input/Kconfig                    |   19 +++++
 drivers/input/Makefile                   |    1 +
 drivers/input/gpio_keys.c                |  115 ++++++++++++++++++++++++++++++
 include/driver.h                         |    5 ++
 include/gpio_keys.h                      |   30 ++++++++
 include/readkey.h                        |    4 +
 17 files changed, 312 insertions(+), 19 deletions(-)
 create mode 100644 drivers/input/Kconfig
 create mode 100644 drivers/input/Makefile
 create mode 100644 drivers/input/gpio_keys.c
 create mode 100644 include/gpio_keys.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
