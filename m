Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edYt7-0001v9-1b
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 09:59:38 +0000
Received: by mail-lf0-x241.google.com with SMTP id f3so9833194lfe.4
 for <barebox@lists.infradead.org>; Mon, 22 Jan 2018 01:59:25 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Jan 2018 12:59:15 +0300
Message-Id: <20180122095918.11721-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 0/3] sandbox: add gpio support with libftdi1
To: barebox@lists.infradead.org

This patch series makes it possible to use FT2232H ACBUS[7:0]
pins as gpio pins from sandbox barebox.

There are ready-to-use FT2232H-based boards:

  * FT2232H-56Q Mini-Module (http://www.ftdichip.com/Products/Modules/DevelopmentModules.htm#FT2232H-56_Mini)
  * FT2232 breakout board (http://dangerousprototypes.com/docs/FT2232_breakout_board)

The main goal of adding gpio functionality to sandbox barebox
is using it for connecting real i2c and spi devices to sandbox barebox.

Sample dts-file for at24 i2c eeprom and at25 spi flash is included.

Changes since v2 patch series (http://lists.infradead.org/pipermail/barebox/2018-January/031887.html):

  * ftdi USB IDs are moved to dts, parseopt_* functions are unused;
  * dts stuff moved to sandbox-libftdi-example.dtsi;
  * led example is added.

Changes since v1 patch series (http://lists.infradead.org/pipermail/barebox/2017-October/031306.html):

  * rebase on top barebox v2017.12.0;
  * ds1307 i2c rtc driver works fine (i2c-gpio,scl-output-only is used);
  * parseopt_* functions are used for cmdline parsing.

Changes since RFC v1 patch series (http://lists.infradead.org/pipermail/barebox/2017-February/029106.html):

  * rebase on top barebox v2017.10.0;
  * libftdi cmdline options are added;
  * device tree support is added.

Antony Pavlov (3):
  sandbox: avoid symbol conflict for {open,read,close}dir
  sandbox: add gpio support with libftdi1
  sandbox: add i2c and spi libftdi1 bit-bang example

 arch/sandbox/Kconfig                           |   1 +
 arch/sandbox/Makefile                          |  10 +-
 arch/sandbox/configs/sandbox_defconfig         |  21 +++-
 arch/sandbox/dts/sandbox-libftdi-example.dtsi  |  80 +++++++++++++
 arch/sandbox/mach-sandbox/include/mach/linux.h |  12 ++
 arch/sandbox/os/Makefile                       |   3 +
 arch/sandbox/os/ftdi.c                         | 154 +++++++++++++++++++++++++
 drivers/gpio/Kconfig                           |   4 +
 drivers/gpio/Makefile                          |   1 +
 drivers/gpio/gpio-libftdi1.c                   | 137 ++++++++++++++++++++++
 10 files changed, 420 insertions(+), 3 deletions(-)
 create mode 100644 arch/sandbox/dts/sandbox-libftdi-example.dtsi
 create mode 100644 arch/sandbox/os/ftdi.c
 create mode 100644 drivers/gpio/gpio-libftdi1.c

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
