Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvh9y-0002VJ-Cs
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 11:32:41 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gvh9o-00081l-W3
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 12:32:21 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 12:32:12 +0100
Message-Id: <20190218113220.18649-1-tomaz.solc@tablix.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/8] Fixing MMC access on Raspberry Pi CM3
To: barebox@lists.infradead.org

Changes from the first patch series:

 - Base Compute Module 3 device tree off upstream device tree for CM3 + IO3
   dev board, instead of R. Pi 3B.
 - Keep Makefile.bcm283x without a newline at the end of file.
 - Make mci init before pinctrl by moving mci-bcm2835 to device_initcall()
   instead of changing link order.
 - Add CONFIG_PINCTRL to rpi_defconfig.

Best regards
Tomaz

Tomaz Solc (8):
  ARM: rpi: switch emmc from sdhost to sdhci
  Kconfig: add pin controllers submenu.
  pinctrl: bcm2835: move existing code from gpio.
  pinctrl: bcm2835: register the pin controller.
  mci: bcm2835: use device_initcall(), not coredev.
  mci: bcm2835: parse other device tree properties.
  ARM: rpi: Add device tree for Compute Module 3.
  ARM: rpi: add CONFIG_PINCTRL to rpi_defconfig.

 arch/arm/boards/raspberry-pi/lowlevel.c            | 10 +++++
 arch/arm/configs/rpi_defconfig                     |  4 +-
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/bcm2837-rpi-3.dts                     |  9 ++++
 arch/arm/dts/bcm2837-rpi-cm3.dts                   | 18 ++++++++
 arch/arm/mach-bcm283x/Kconfig                      |  6 +++
 drivers/gpio/Kconfig                               |  4 --
 drivers/gpio/Makefile                              |  1 -
 drivers/mci/mci-bcm2835.c                          |  5 ++-
 drivers/pinctrl/Kconfig                            | 10 +++++
 drivers/pinctrl/Makefile                           |  1 +
 .../gpio-bcm2835.c => pinctrl/pinctrl-bcm2835.c}   | 52 +++++++++++++++++++++-
 images/Makefile.bcm283x                            |  6 ++-
 13 files changed, 117 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/dts/bcm2837-rpi-cm3.dts
 rename drivers/{gpio/gpio-bcm2835.c => pinctrl/pinctrl-bcm2835.c} (77%)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
