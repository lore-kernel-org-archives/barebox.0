Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgP-0006w3-1H
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:45 +0000
Received: by mail-lb0-f170.google.com with SMTP id 10so5391428lbg.1
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:06 +0400
Message-Id: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/7] MIPS: malta: enable gpio & i2c stuff
To: barebox@lists.infradead.org

Antony Pavlov (7):
  gpio: add Malta CBUS FPGA I2C driver
  MIPS: add <asm/gpio.h> header file
  MIPS: malta: enable gpiolib
  MIPS: dts: qemu-malta.dts: enable CBUS FPGA I2C gpio driver
  i2c: i2c_gpio: add devicetree support
  MIPS: dts: qemu-malta.dts: use i2c-gpio for accessing CBUS FPGA I2C
    bus
  MIPS: qemu-malta_defconfig: enable gpio & i2c stuff

 .../devicetree/bindings/gpio/gpio_i2c.txt          |  32 ++++
 arch/mips/Kconfig                                  |   1 +
 arch/mips/configs/qemu-malta_defconfig             |  60 +++----
 arch/mips/dts/qemu-malta.dts                       |  23 +++
 arch/mips/include/asm/gpio.h                       |   6 +
 drivers/gpio/Kconfig                               |  10 ++
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-malta-fpga-i2c.c                 | 186 +++++++++++++++++++++
 drivers/i2c/busses/i2c-gpio.c                      |  54 +++++-
 include/of_gpio.h                                  |  55 ++++++
 10 files changed, 397 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio_i2c.txt
 create mode 100644 arch/mips/include/asm/gpio.h
 create mode 100644 drivers/gpio/gpio-malta-fpga-i2c.c

-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
