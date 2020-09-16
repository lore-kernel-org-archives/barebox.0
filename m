Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrH-0007wU-Cw
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:25 +0200
Message-Id: <20200916135035.7089-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/10] power: reset: add support for syscon reboot modes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With this patch set, we have a framework to generically support passing
reboot modes to previous bootloader stages as well as process them.
Stuff you can do with this:

  linux$ reboot recovery
  * fall into barebox menu prompt, unless overridden *

  linux$ reboot emmc
  * sources /env/bmode/emmc if available *

  barebox$ gpr.reboot_mode.next=serial reset
  * fall into imx-usb-loader mode *

To enable this, besides having kernel and bootloader driver support,
you'll need to describe in the device tree where the reboot mode is
to be stored and what reboot modes there are.
This patch set implements it for two SoC families:

stm32mp15x:
  - All now support `reboot loader` and `reboot recovery` from Linux,
    if the syscon exists (The reboot mode itself is fixed up).

i.MX6Q/DL:
  - No OS communication by default, but you can now easily tell the
    BootROM where to boot from after warm reset

One thing missing in this series is support for nvmem-reboot-mode.
I ported the kernel driver[], but didn't come around to test it.

Details inside. Feedback appreciated. :-)

[1]: https://github.com/a3f/barebox/tree/reboot_mode

Ahmad Fatoum (10):
  usbgadget: autostart: support delayed usbgadget.autostart=1
  drivers: add reboot-mode infrastructure
  power: reset: reboot-mode: port syscon-reboot-mode support
  power: reset: reboot-mode: fix up node into boot device tree
  defaultenv: provide defaults for generic reboot modes
  ARM: dts: stm32mp: setup syscon-reboot-mode on TAMP general purpose
    register
  ARM: stm32mp: remove custom reboot mode logic from arch code
  power: reset: reboot-mode: support multi-word magic
  power: reset: syscon-reboot-mode: support multi-word reboot modes
  ARM: dts: i.MX6qdl: define BootROM reboot-mode on top of SRC_GPR{9,10}

 Documentation/user/defaultenv-2.rst           |  18 +-
 Documentation/user/reboot-mode.rst            |  95 ++++++++
 arch/arm/dts/imx6qdl.dtsi                     |  21 ++
 arch/arm/dts/stm32mp151.dtsi                  |  15 ++
 .../mach-stm32mp/include/mach/bootsource.h    |  12 -
 arch/arm/mach-stm32mp/init.c                  |  16 +-
 common/Kconfig                                |   5 +
 common/startup.c                              |  16 ++
 common/usbgadget.c                            |   6 +-
 defaultenv/Makefile                           |   1 +
 .../defaultenv-2-reboot-mode/bmode/bootloader |   3 +
 .../defaultenv-2-reboot-mode/bmode/loader     |   2 +
 .../defaultenv-2-reboot-mode/bmode/recovery   |   2 +
 defaultenv/defaultenv.c                       |   2 +
 drivers/Kconfig                               |   1 +
 drivers/Makefile                              |   1 +
 drivers/power/Kconfig                         |   2 +
 drivers/power/Makefile                        |   2 +
 drivers/power/reset/Kconfig                   |  16 ++
 drivers/power/reset/Makefile                  |   3 +
 drivers/power/reset/reboot-mode.c             | 229 ++++++++++++++++++
 drivers/power/reset/syscon-reboot-mode.c      | 129 ++++++++++
 include/linux/reboot-mode.h                   |  38 +++
 include/of.h                                  |   2 +
 24 files changed, 604 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/user/reboot-mode.rst
 create mode 100644 defaultenv/defaultenv-2-reboot-mode/bmode/bootloader
 create mode 100755 defaultenv/defaultenv-2-reboot-mode/bmode/loader
 create mode 100644 defaultenv/defaultenv-2-reboot-mode/bmode/recovery
 create mode 100644 drivers/power/Kconfig
 create mode 100644 drivers/power/Makefile
 create mode 100644 drivers/power/reset/Kconfig
 create mode 100644 drivers/power/reset/Makefile
 create mode 100644 drivers/power/reset/reboot-mode.c
 create mode 100644 drivers/power/reset/syscon-reboot-mode.c
 create mode 100644 include/linux/reboot-mode.h

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
