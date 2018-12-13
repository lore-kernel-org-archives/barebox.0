Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLfr-0005Qc-Cj
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:44:50 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 13 Dec 2018 08:44:22 +0100
Message-Id: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 0/8] Raspberry Pi miniuart support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This patch series adds support for the raspberry pi miniuart (also called
aux-uart) to barebox.
With this series the miniuart overlay is no longer necessary to start barebox on
Raspberry Pi 3.

v2:
- Move console clock initialization into board core
- Retrieve the core clock frequency for the miniuart from the firmware
- Double the clock frequency in the ns16550 rpi init function instead of
  during initialization
from Lucas Stach

Rouven Czerwinski (8):
  ARM: rpi: fix typo in rpi-common.c
  ARM: rpi: move clks into board specific rpi-common
  ARM: rpi: retrieve miniuart clock from firmware
  serial_ns16550: handle default reg-io-width
  serial_ns16550: add raspberry pi compatible and init
  ARM: rpi: add NS16550 support
  ARM: rpi: choose miniuart as stdout
  doc: bcm283x: remove miniuart overlay instruction

 Documentation/boards/bcm2835.rst          |  1 -
 arch/arm/boards/raspberry-pi/rpi-common.c | 30 +++++++++-
 arch/arm/configs/rpi_defconfig            |  1 +
 arch/arm/dts/bcm2837-rpi-3.dts            |  7 +--
 arch/arm/mach-bcm283x/core.c              | 19 ------
 drivers/serial/serial_ns16550.c           | 71 +++++++++++++++--------
 6 files changed, 78 insertions(+), 51 deletions(-)

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
