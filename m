Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1tci-0002Z9-5Y
 for barebox@lists.infradead.org; Tue, 10 Oct 2017 12:27:03 +0000
Received: by mail-lf0-x242.google.com with SMTP id a132so3399975lfa.2
 for <barebox@lists.infradead.org>; Tue, 10 Oct 2017 05:26:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Oct 2017 15:26:26 +0300
Message-Id: <20171010122631.9421-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/5] sandbox: add gpio support with libftdi1
To: barebox@lists.infradead.org

This patch series makes it possible to use FT2232H ACBUS[7:0]
pins as gpio pins from sandbox barebox.

The main goal of adding gpio functionality to sandbox barebox
is using it for connecting real i2c and spi devices to sandbox barebox.

Sample dts-file for at24 i2c eeprom and at25 spi flash is included.

Alas bit-bang i2c via libftdi1 works too slow and ds1307 i2c rtc driver
does not work correctly.

Changes since RFC v1 patch series (http://lists.infradead.org/pipermail/barebox/2017-February/029106.html):

  * rebase on top barebox v2017.10.0;
  * libftdi cmdline options are added;
  * device tree support is added.

Antony Pavlov (5):
  sandbox: avoid symbol conflict for {open,read,close}dir
  sandbox: add gpio support with libftdi1
  sandbox: parse libftdi options
  sandbox_defconfig: enable gpio, spi, i2c and led stuff
  sandbox: dts: add i2c and spi libftdi1 bit-bang example

 arch/sandbox/Kconfig                           |   1 +
 arch/sandbox/Makefile                          |  10 +-
 arch/sandbox/configs/sandbox_defconfig         |  24 ++-
 arch/sandbox/dts/sandbox.dts                   |  47 +++++
 arch/sandbox/mach-sandbox/include/mach/linux.h |  11 ++
 arch/sandbox/os/Makefile                       |   3 +
 arch/sandbox/os/common.c                       |  12 +-
 arch/sandbox/os/ftdi.c                         | 250 +++++++++++++++++++++++++
 drivers/gpio/Kconfig                           |   4 +
 drivers/gpio/Makefile                          |   1 +
 drivers/gpio/gpio-libftdi1.c                   | 125 +++++++++++++
 11 files changed, 483 insertions(+), 5 deletions(-)
 create mode 100644 arch/sandbox/os/ftdi.c
 create mode 100644 drivers/gpio/gpio-libftdi1.c

-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
