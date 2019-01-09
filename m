Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82R-0003n5-D1
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:12:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id c123so3244702pfb.0
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:11:49 -0800
Message-Id: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/21] PCIe support for i.MX7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This seires is a build-up on previously submitted PCI sync set [1] and
contains the patches I created while working on adding support for
PCIe on i.MX7. The series consists of following:

 - Patches adding necessary regulator pluming to support porint ANATOP
   driver

 - ANATOP driver port

 - Port of basic power domain infrastructure from Linux kernel needed
   for controlling GPCv2 (useful for both i.MX7 and, especially, for
   i.MX8MQ)

 - Port of GPCv2 driver from Linux as well as of some bug fixes for it

 - Port of i.MX7 reset controller driver

 - Patches adding support for i.MX7 to existing i.MX6 PCIe host
   controller driver

 - Misc fixes

This series has been tested on i.MX7D SabreSD board against Toshiba
NVMe device.

Feedback is welcome!

Thanks,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2018-December/036005.html

Andrey Smirnov (21):
  regulator: Convert drivers to use struct regulator_desc
  regulator: Port basic regmap regulator functions
  regulator: Add support for setting regulator's voltage
  base: driver: Drop redundant list_empty() check
  base: Port driver_deferred_probe_check_state() from Linux
  regulator: Add primitive support for deferred probe
  regulator: Port ANATOP driver from Linux
  drivers: base: Port power management code from Linux
  soc: imx: Add GPCv2 power gating driver
  soc: imx: gpcv2: fix regulator deferred probe
  soc: imx: gpcv2: correct PGC offset
  reset: Add i.MX7 SRC reset driver
  reset: imx7: Fix always writing bits as 0
  reset: Mark local functions as static
  PCI: imx6: Add code to support i.MX7D
  PCI: imx6: Allow probe deferral by reset GPIO
  PCI: imx6: Do not wait for speed change on i.MX7
  PCI: imx6: Do not switch speed if Gen2 is disabled
  PCI: imx6: Fix spelling mistake: "contol" -> "control"
  PCI: imx6: Drop unnecessary root_bus_nr setting
  PCI: imx6: Port imx6_pcie_ltssm_enable()

 arch/arm/mach-imx/Kconfig            |   1 +
 drivers/Kconfig                      |   2 +
 drivers/Makefile                     |   1 +
 drivers/base/Kconfig                 |   3 +
 drivers/base/Makefile                |   4 +-
 drivers/base/driver.c                |  68 ++++--
 drivers/base/platform.c              |   7 +
 drivers/base/power.c                 | 245 +++++++++++++++++++++
 drivers/pci/Kconfig                  |   4 +-
 drivers/pci/pci-imx6.c               | 245 +++++++++++++++------
 drivers/regulator/Kconfig            |   8 +
 drivers/regulator/Makefile           |   5 +-
 drivers/regulator/anatop-regulator.c | 161 ++++++++++++++
 drivers/regulator/bcm2835.c          |   6 +-
 drivers/regulator/core.c             |  60 ++++-
 drivers/regulator/fixed.c            |   6 +-
 drivers/regulator/helpers.c          | 186 ++++++++++++++++
 drivers/reset/Kconfig                |  11 +
 drivers/reset/Makefile               |   1 +
 drivers/reset/core.c                 |   8 +-
 drivers/reset/reset-imx7.c           | 151 +++++++++++++
 drivers/soc/imx/Kconfig              |   9 +
 drivers/soc/imx/Makefile             |   1 +
 drivers/soc/imx/gpcv2.c              | 315 +++++++++++++++++++++++++++
 include/driver.h                     |   2 +
 include/pm_domain.h                  |  82 +++++++
 include/regulator.h                  |  41 +++-
 27 files changed, 1524 insertions(+), 109 deletions(-)
 create mode 100644 drivers/base/Kconfig
 create mode 100644 drivers/base/power.c
 create mode 100644 drivers/regulator/anatop-regulator.c
 create mode 100644 drivers/regulator/helpers.c
 create mode 100644 drivers/reset/reset-imx7.c
 create mode 100644 drivers/soc/imx/Kconfig
 create mode 100644 drivers/soc/imx/Makefile
 create mode 100644 drivers/soc/imx/gpcv2.c
 create mode 100644 include/pm_domain.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
