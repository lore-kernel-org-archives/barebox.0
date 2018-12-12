Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gX5EE-00042w-Jt
 for barebox@lists.infradead.org; Wed, 12 Dec 2018 14:11:12 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 12 Dec 2018 15:10:48 +0100
Message-Id: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 0/6] Raspberry Pi miniuart support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This patch series adds support for the raspberry pi miniuart (also called
aux-uart) to barebox.
With this series the miniuart overlay is no longer necessary to start barebox on
Raspberry Pi 3.

Rouven Czerwinski (6):
  mach-bcm2835/core: add clkdev for uart1
  serial_ns16550: handle default reg-io-width
  serial_ns16550: add raspberry pi compatible and init
  ARM: rpi: add NS16550 support
  bcm2837-rpi-3: choose miniuart as stdout
  doc: bcm283x: remove miniuart overlay instruction

 Documentation/boards/bcm2835.rst |  1 -
 arch/arm/configs/rpi_defconfig   |  1 +
 arch/arm/dts/bcm2837-rpi-3.dts   |  7 +----
 arch/arm/mach-bcm283x/core.c     |  6 ++++
 drivers/serial/serial_ns16550.c  | 66 ++++++++++++++++++++++++++--------------
 5 files changed, 51 insertions(+), 30 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
