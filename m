Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcL-0004s0-7V
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id b5so2417350plr.4
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:18 -0800
Message-Id: <20190201023133.1078-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/15] PCIE support for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series contains port of the various Linux patches needed to
enable support of PCIE IP block on i.MX8MQ SoCs. Last four patches are
marked as RFC since correpsonding Linux series hasn't been picked into
PCI tree yet [pcie-imx8mq]. However all of the code should be in good
enough shape for review and discussion.

Feedback is welcome!

Thanks,
Andrey Smirnov

[pcie-imx8mq] https://lore.kernel.org/lkml/20190124201522.8973-1-andrew.smirnov@gmail.com/T/#u

Andrey Smirnov (15):
  PCI: dwc: Fix pointer width cast problem
  ARM: aarch64: Add PCI fixups section to linker script
  soc: imx: gpcv2: use A_CORE instread of A7 for more i.MX platforms
  soc: imx: gpcv2: make pgc driver more generic for other i.MX platforms
  soc: imx: gpcv2: Switch to SPDX identifier
  soc: imx: gpcv2: prefix i.MX7 specific defines
  soc: imx: gpcv2: add support for i.MX8MQ SoC
  reset: Constify "ops" in struct reset_controller_dev
  reset: imx7: Add plubming to support multiple IP variants
  include: Import dt-bindings/reset/imx8mq-reset.h
  reset: imx7: Add support for i.MX8MQ IP block variant
  PCI: imx6: Introduce drvdata
  PCI: imx6: Mark PHY functions as i.MX6 specific
  PCI: imx6: Convert DIRECT_SPEED_CHANGE quirk code to use a flag
  PCI: imx6: Add support for i.MX8MQ

 arch/arm/lib64/barebox.lds.S             |  12 +
 arch/arm/mach-imx/Kconfig                |   1 +
 drivers/pci/Kconfig                      |   4 +-
 drivers/pci/pci-imx6.c                   | 149 ++++++++++--
 drivers/pci/pcie-designware-host.c       |   6 +-
 drivers/reset/reset-imx7.c               | 172 +++++++++++--
 drivers/reset/reset-socfpga.c            |   2 +-
 drivers/soc/imx/Kconfig                  |   8 +-
 drivers/soc/imx/Makefile                 |   2 +-
 drivers/soc/imx/gpcv2.c                  | 297 ++++++++++++++++++-----
 include/dt-bindings/reset/imx8mq-reset.h |  64 +++++
 include/linux/reset-controller.h         |   2 +-
 12 files changed, 614 insertions(+), 105 deletions(-)
 create mode 100644 include/dt-bindings/reset/imx8mq-reset.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
