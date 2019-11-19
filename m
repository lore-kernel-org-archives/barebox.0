Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16v-0007Cc-Hs
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:15 +0100
Message-Id: <20191119105036.12300-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/21] mci: SDHCI helper functions and arasan driver
To: Barebox List <barebox@lists.infradead.org>

As we have several drivers for different SDHCI controller variants it's
time to start sharing some code. This series creates some generic SDHCI
helper functions and starts using them drom the different drivers.
There's more to share, this series is only a start. Finally the Arasan
SDHCI driver is added which is used on zynq(mp) SoCs.

Sascha

Sascha Hauer (20):
  mci: Add sdhci helper
  mci: sdhci: Add missing command type defines
  mci: imx-esdhc: use sdhci helpers
  mci: bcm2835: use sdhci helpers
  mci: tegra: use sdhci helpers
  mci: dove: use sdhci helpers
  mci: imx-esdhc: Use 16bit register definitions
  mci: mci-bcm2835: Use 16bit register definitions
  mci: tegra: Use 16bit register definitions
  mci: imx-esdhc-pbl: Use 16bit register definitions
  mci: sdhci: remove 32bit register defines
  mci: sdhci: remove duplicate transfer mode register defines
  mci: sdhci: remove duplicate register defines for interrupt bits
  mci: sdhci: remove duplicate register defines for prsstat bits
  mci: dove: Use sdhci_set_cmd_xfer_mode()
  mci: imx-esdhc: Use sdhci_set_cmd_xfer_mode()
  mci: bcm2835: Use sdhci_set_cmd_xfer_mode()
  mci: tegra: Use sdhci_set_cmd_xfer_mode()
  mci: imx-esdhci: Use generic PIO transfer function
  mci: mci-bcm2835: Use generic PIO transfer function

Thomas Haemmerle (1):
  mci: add Arasan SDHCI controller driver

 drivers/mci/Kconfig         |  13 ++
 drivers/mci/Makefile        |   2 +
 drivers/mci/arasan-sdhci.c  | 423 ++++++++++++++++++++++++++++++++++++
 drivers/mci/dove-sdhci.c    | 144 ++++++------
 drivers/mci/imx-esdhc-pbl.c |  41 ++--
 drivers/mci/imx-esdhc.c     | 263 ++++++++--------------
 drivers/mci/imx-esdhc.h     |   4 +-
 drivers/mci/mci-bcm2835.c   | 227 ++++++-------------
 drivers/mci/sdhci.c         | 127 +++++++++++
 drivers/mci/sdhci.h         | 127 ++++++-----
 drivers/mci/tegra-sdmmc.c   | 159 ++++++--------
 11 files changed, 937 insertions(+), 593 deletions(-)
 create mode 100644 drivers/mci/arasan-sdhci.c
 create mode 100644 drivers/mci/sdhci.c

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
