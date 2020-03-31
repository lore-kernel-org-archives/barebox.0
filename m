Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvD-0005rQ-Oh
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:37 +0000
Received: by mail-pj1-x1032.google.com with SMTP id m15so1456357pje.3
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:46:59 -0700
Message-Id: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/23] A number of ZII related fixes
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

Here's a patchset containing a number of ZII board related fixes I've
had in my tree for a while. Hopefully none of them are controversial.

Thanks,
Andrey Smirnov

Andrey Smirnov (23):
  ARM: zii-common: Gate rdu_i210_invm() call with CONFIG_PCI_IMX6
  ARM: imx7d-zii-rpu2: Drop redundant chosen node
  ARM: zii-imx7d-dev: Fix compatible name
  ARM: zii-common: Check for I2C errors in do_rdu2_switch_reset()
  i2c: Port of_find_i2c_device_by_node() from Linux
  ARM: zii-common: Find switch watchdog via DT
  ARM: zii-common: Support rave_switch_reset on ZII Ultra
  ARM: zii-imx6q-rdu2: Differentiate between RDU2 and RDU2+
  ARM: zii-imx7d-dev: Differentiate between RPU2 and RMU2
  ARM: zii-imx8mq-dev: Differentiate between Zest and RMB3
  ARM: zii-common: Add common environment directory
  ARM: zii-imx6q-rdu2: Register SD card slot with BBU
  ARM: zii-vf610-dev: Register SD card slot with BBU
  ARM: zii-imx8mq-dev: Register SD card slot with BBU
  ARM: zii-vf610-dev: Add newline to end of board.c
  ARM: rdu2: Drop redundant USB GPIO hog nodes
  ARM: imx8mq: Drop trailing whitespace
  ARM: imx8mq: Drop redundant DT nodes
  ARM: zii-imx8mq-dev: Add boot source info
  ARM: zii-imx8mq-dev: Drop redundant "stdout-path"
  ARM: zii-imx7d-dev: Drop redundant RMU2 .dtsi
  ARM: zii-imx7d-rmu2: Add SPI NOR partition info
  ARM: zii-imx7d-rmu2: Add boot source info

 arch/arm/boards/zii-common/Makefile           |   1 +
 arch/arm/boards/zii-common/board.c            |   4 +
 .../defaultenv-zii-common}/boot/net           |   9 +-
 arch/arm/boards/zii-common/switch-cmd.c       |  49 ++-
 arch/arm/boards/zii-imx51-rdu1/board.c        |   1 +
 arch/arm/boards/zii-imx6q-rdu2/board.c        |  11 +-
 .../zii-imx6q-rdu2/defaultenv-rdu2/boot/net   |  24 --
 arch/arm/boards/zii-imx7d-dev/board.c         |  14 +-
 arch/arm/boards/zii-imx8mq-dev/board.c        |  16 +-
 .../defaultenv-imx8mq-zii-dev/boot/net        |  24 --
 .../network/eth0-discover                     |   4 +
 arch/arm/boards/zii-vf610-dev/board.c         |  11 +-
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi            |  36 --
 arch/arm/dts/imx7d-zii-rmu2.dts               |  37 +-
 arch/arm/dts/imx7d-zii-rmu2.dtsi              | 361 ------------------
 arch/arm/dts/imx7d-zii-rpu2.dts               |   9 -
 arch/arm/dts/imx8mq-zii-ultra.dtsi            |  12 +-
 arch/arm/dts/imx8mq.dtsi                      |  99 +----
 include/i2c/i2c.h                             |   8 +
 19 files changed, 156 insertions(+), 574 deletions(-)
 rename arch/arm/boards/{zii-imx51-rdu1/defaultenv-rdu1 => zii-common/defaultenv-zii-common}/boot/net (73%)
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
 delete mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/network/eth0-discover
 delete mode 100644 arch/arm/dts/imx7d-zii-rmu2.dtsi

--
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
