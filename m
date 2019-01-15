Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjHWR-0007KI-Fm
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 05:44:25 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 15 Jan 2019 06:44:00 +0100
Message-Id: <cover.cea99e013da63859278229c6e1566362a1800ff4.1547530950.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v6 0/9] Raspberry Pi miniuart support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This patch series adds support for the raspberry pi miniuart (also called
aux-uart) to barebox.
With this series the miniuart overlay is no longer necessary to start barebox on
Raspberry Pi 3.

v6:
- Remove leftover val and missing fixup of the AUX Clock defines

v5:
- Add defines for register and base values
  from Sascha Hauer and Roland Hieber

v4:
- Fix indentation for compatible
- Fix __maybe_unused annnotation for rpi_drvdata missed in v3
  from Sascha Hauer

v3:
- Fix Indentation
  from Oleksij Rempel and Sascha Hauer

v2:
- Move console clock initialization into board core
- Retrieve the core clock frequency for the miniuart from the firmware
- Double the clock frequency in the ns16550 rpi init function instead of
  during initialization
  from Lucas Stach

Rouven Czerwinski (9):
  ARM: rpi: fix typo in rpi-common.c
  ARM: rpi: move clks into board specific rpi-common
  ARM: rpi: retrieve miniuart clock from firmware
  serial_ns16550: handle default reg-io-width
  serial_ns16550: add raspberry pi compatible and init
  ARM: rpi: add NS16550 support
  ARM: rpi: choose miniuart as stdout
  doc: bcm283x: remove miniuart overlay instruction
  ARM: rpi: use defines for uart bases

 Documentation/boards/bcm2835.rst          |  1 +-
 arch/arm/boards/raspberry-pi/rpi-common.c | 34 ++++++++++-
 arch/arm/configs/rpi_defconfig            |  1 +-
 arch/arm/dts/bcm2837-rpi-3.dts            |  7 +--
 arch/arm/mach-bcm283x/core.c              | 19 +------
 drivers/serial/serial_ns16550.c           | 74 ++++++++++++++++--------
 6 files changed, 85 insertions(+), 51 deletions(-)

base-commit: 0b5361a328632e64c14a54306119093a0c7fecdf
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
