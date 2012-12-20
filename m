Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tlh91-0006du-If
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:30:44 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 50809104ED10
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:39:24 +0100 (CET)
Date: Thu, 20 Dec 2012 15:29:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121220142902.GI26483@game.jcrosoft.org>
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
Subject: [PATCH 0/6] at91: mux cleanup and switch to gpiolib
To: barebox@lists.infradead.org

Hi,

	this patch series update the mux api of the at91 and use a part of the
	pinctrl from the kernel and switch tot hte gpiolib

	we also drop the fact taht a gpio is invalid if 0

	This pull depends on the gpiolib one

The following changes since commit b1e244b763731fb16fee15a93f45fc8c5455628a:

  gpiolib: add command to dump the current gpio status (2012-12-18 23:09:05 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_gpio

for you to fetch changes up to 35fc9a4f9eb6eff72aa0bed5cad052f7e11a03ab:

  at91: switch to gpiolib (2012-12-18 23:09:08 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      at91: use gpio_is_valid to check gpio
      at91: use -EINVAL for invalid gpio
      at91: drop PIN_BASE offset for gpio
      at91: gpio: switch to device driver
      at91: gpio: switch to ops
      at91: switch to gpiolib

 arch/arm/Kconfig                         |    2 +-
 arch/arm/boards/at91rm9200ek/init.c      |    1 +
 arch/arm/boards/at91sam9260ek/init.c     |    3 +-
 arch/arm/boards/at91sam9261ek/init.c     |    2 +-
 arch/arm/boards/at91sam9263ek/init.c     |    4 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |    2 +-
 arch/arm/boards/at91sam9n12ek/init.c     |    4 +-
 arch/arm/boards/at91sam9x5ek/init.c      |    2 +-
 arch/arm/boards/dss11/init.c             |    3 +-
 arch/arm/boards/mmccpu/init.c            |    2 +-
 arch/arm/boards/pm9261/init.c            |    2 +-
 arch/arm/boards/pm9263/init.c            |    4 +-
 arch/arm/boards/pm9g45/init.c            |    6 +-
 arch/arm/boards/qil-a9260/init.c         |    4 +-
 arch/arm/boards/tny-a926x/init.c         |    4 +-
 arch/arm/boards/usb-a926x/init.c         |    3 +-
 arch/arm/mach-at91/at91rm9200.c          |   46 ++++++-------
 arch/arm/mach-at91/at91rm9200_devices.c  |   10 +--
 arch/arm/mach-at91/at91sam9260.c         |   34 ++++------
 arch/arm/mach-at91/at91sam9260_devices.c |   14 ++--
 arch/arm/mach-at91/at91sam9261.c         |   36 ++++------
 arch/arm/mach-at91/at91sam9261_devices.c |   14 ++--
 arch/arm/mach-at91/at91sam9263.c         |   44 +++++-------
 arch/arm/mach-at91/at91sam9263_devices.c |   16 ++---
 arch/arm/mach-at91/at91sam9g45.c         |   43 +++++-------
 arch/arm/mach-at91/at91sam9g45_devices.c |   14 ++--
 arch/arm/mach-at91/at91sam9n12.c         |   38 +++++------
 arch/arm/mach-at91/at91sam9n12_devices.c |   14 ++--
 arch/arm/mach-at91/at91sam9x5.c          |   38 +++++------
 arch/arm/mach-at91/at91sam9x5_devices.c  |   14 ++--
 arch/arm/mach-at91/generic.h             |   12 ++++
 arch/arm/mach-at91/gpio.c                |  530 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------
 arch/arm/mach-at91/include/mach/board.h  |   12 ++--
 arch/arm/mach-at91/include/mach/gpio.h   |  402 +++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------------------
 drivers/mtd/nand/atmel_nand.c            |    4 +-
 drivers/usb/gadget/at91_udc.c            |    4 +-
 36 files changed, 773 insertions(+), 614 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
