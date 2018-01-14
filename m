Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkI-0005tI-G4
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:16 +0000
Received: by mail-lf0-x242.google.com with SMTP id h92so817400lfi.7
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:45 +0300
Message-Id: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/7] sandbox: add gpio support with libftdi1
To: barebox@lists.infradead.org

This patch series makes it possible to use FT2232H ACBUS[7:0]
pins as gpio pins from sandbox barebox.

There are ready-to-use FT2232H-based boards:

  * FT2232H-56Q Mini-Module (http://www.ftdichip.com/Products/Modules/DevelopmentModules.htm#FT2232H-56_Mini)
  * FT2232 breakout board (http://dangerousprototypes.com/docs/FT2232_breakout_board)

The main goal of adding gpio functionality to sandbox barebox
is using it for connecting real i2c and spi devices to sandbox barebox.

Sample dts-file for at24 i2c eeprom and at25 spi flash is included.

Changes since v1 patch series (http://lists.infradead.org/pipermail/barebox/2017-October/031306.html):

  * rebase on top barebox v2017.12.0;
  * ds1307 i2c rtc driver works fine (i2c-gpio,scl-output-only is used);
  * parseopt_* functions are used for cmdline parsing.

Changes since RFC v1 patch series (http://lists.infradead.org/pipermail/barebox/2017-February/029106.html):

  * rebase on top barebox v2017.10.0;
  * libftdi cmdline options are added;
  * device tree support is added.

Antony Pavlov (7):
  sandbox: avoid symbol conflict for {open,read,close}dir
  sandbox: add gpio support with libftdi1
  sandbox: add i2c and spi libftdi1 bit-bang example
  move parseopt to lib/
  include/parseopt.h: add guard macro
  parseopt: introduce parseopt_u16() and parseopt_str()
  sandbox: parse libftdi options

 arch/sandbox/Kconfig                           |   1 +
 arch/sandbox/Makefile                          |  10 +-
 arch/sandbox/configs/sandbox_defconfig         |  26 +++-
 arch/sandbox/dts/sandbox.dts                   |  52 +++++++
 arch/sandbox/mach-sandbox/include/mach/linux.h |  11 ++
 arch/sandbox/os/Makefile                       |   3 +
 arch/sandbox/os/common.c                       |  12 +-
 arch/sandbox/os/ftdi.c                         | 181 +++++++++++++++++++++++++
 drivers/gpio/Kconfig                           |   4 +
 drivers/gpio/Makefile                          |   1 +
 drivers/gpio/gpio-libftdi1.c                   | 125 +++++++++++++++++
 fs/Makefile                                    |   2 +-
 fs/fs.c                                        |   3 +-
 fs/nfs.c                                       |   3 +-
 fs/parseopt.c                                  |  60 --------
 fs/parseopt.h                                  |   2 -
 include/parseopt.h                             |   9 ++
 lib/Makefile                                   |   1 +
 lib/parseopt.c                                 | 124 +++++++++++++++++
 19 files changed, 558 insertions(+), 72 deletions(-)
 create mode 100644 arch/sandbox/os/ftdi.c
 create mode 100644 drivers/gpio/gpio-libftdi1.c
 delete mode 100644 fs/parseopt.c
 delete mode 100644 fs/parseopt.h
 create mode 100644 include/parseopt.h
 create mode 100644 lib/parseopt.c

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
