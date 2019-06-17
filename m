Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000Rx-M9
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0000iv-Qx
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002G1-Dj
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:39 +0200
Message-Id: <20190617150751.3421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v1 00/12] ARM: stm32mp: add drivers for GPIO, pinctrl
To: barebox@lists.infradead.org

Feedback welcome.

I still have a patch that ports designware_qos from U-Boot to barebox
sitting on my branch. It works fine, but it needs refactoring, so it
can reuse existing functionality in the generic designware MAC driver
that's already in barebox. That will take a while, but if there's interest
in it, I can push the current state somwhere till then.

Cheers,
Ahmad Fatoum (12):
  ARM: dts: stm32mp157a-dk1.dts: include upstream dts before barebox'
  ARM: dts: stm32mp: factor out common DK nodes into dtsi
  gpiolib: add gpio_get_chip helper
  driver: add stubs for hardware spinlocks
  pinctrl: add driver for STM32 GPIO and pin multiplexer
  ARM: dts: stm32mp157a-dk1: enable heartbeat and error LEDs
  ARM: stm32mp: turn on GPIO related options
  ARM: stm32mp157c-dk2: add board-specific sysconf fixups
  ARM: psci: fix erroneous call of ->system_reset on system_off
  ARM: sm: move get_gicd_base_address to header for reuse
  ARM: stm32mp: implement PSCI support
  ARM: stm32mp157c-dk2: boot kernel in nonsecure mode

 arch/arm/Kconfig                              |   1 +
 arch/arm/boards/stm32mp157c-dk2/Makefile      |   1 +
 arch/arm/boards/stm32mp157c-dk2/board.c       | 106 +++++
 .../defaultenv-dk2/nv/bootm.secure_state      |   1 +
 arch/arm/configs/stm32mp_defconfig            |   8 +-
 arch/arm/cpu/psci.c                           |   6 +-
 arch/arm/cpu/sm.c                             |  29 +-
 arch/arm/dts/stm32mp157a-dk1.dts              |  58 +--
 arch/arm/dts/stm32mp157a-dk1.dtsi             |  36 ++
 arch/arm/dts/stm32mp157c-dk2.dts              |  10 +-
 arch/arm/dts/stm32mp157c.dtsi                 |  15 +
 arch/arm/include/asm/gic.h                    |  29 ++
 arch/arm/mach-stm32mp/Kconfig                 |   2 +
 arch/arm/mach-stm32mp/Makefile                |   2 +-
 arch/arm/mach-stm32mp/include/mach/stm32.h    |  16 +
 arch/arm/mach-stm32mp/psci.c                  | 166 +++++++
 drivers/gpio/gpiolib.c                        |   7 +
 drivers/pinctrl/Kconfig                       |   6 +
 drivers/pinctrl/Makefile                      |   1 +
 drivers/pinctrl/pinctrl-stm32.c               | 425 ++++++++++++++++++
 include/gpio.h                                |   1 +
 include/hwspinlock.h                          |  31 ++
 include/soc/stm32/gpio.h                      | 120 +++++
 23 files changed, 980 insertions(+), 97 deletions(-)
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/defaultenv-dk2/nv/bootm.secure_state
 create mode 100644 arch/arm/dts/stm32mp157a-dk1.dtsi
 create mode 100644 arch/arm/mach-stm32mp/psci.c
 create mode 100644 drivers/pinctrl/pinctrl-stm32.c
 create mode 100644 include/hwspinlock.h
 create mode 100644 include/soc/stm32/gpio.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
