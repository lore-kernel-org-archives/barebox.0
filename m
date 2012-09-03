Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrg-0007py-Sl
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:37 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:07 +0200
Message-Id: <1346660298-18148-1-git-send-email-s.trumtrar@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 00/11] ARM i.MX: add gpiolib support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi,

this includes some fixes from v1:
	- remove imx_gpio_base[] and imx_gpio_count
	- regain two functions in include/gpio.h
	- add "config GPIOLIB" to drivers/gpio/Kconfig
	- select GPIOLIB in all converted i.MXs

Regards,
Steffen


Sascha Hauer (2):
  add gpiolib support
  ARM i.MX: switch to gpiolib support

Steffen Trumtrar (9):
  ARM i.MX1: add imx-gpio devices
  ARM i.MX21: add imx-gpio devices
  ARM i.MX25: add imx-gpio devices
  ARM i.MX27: add imx-gpio devices
  ARM i.MX31: add imx-gpio devices
  ARM i.MX35: add imx-gpio devices
  ARM i.MX51: add imx-gpio devices
  ARM i.MX53: add imx-gpio devices
  ARM i.MX6: add imx-gpio devices

 arch/arm/mach-imx/Kconfig |    9 +++
 arch/arm/mach-imx/gpio.c  |   94 +++++++++++++++++++------------
 arch/arm/mach-imx/imx1.c  |   18 +++---
 arch/arm/mach-imx/imx21.c |   22 +++++---
 arch/arm/mach-imx/imx25.c |   13 ++---
 arch/arm/mach-imx/imx27.c |   17 ++----
 arch/arm/mach-imx/imx31.c |   12 ++--
 arch/arm/mach-imx/imx35.c |   12 ++--
 arch/arm/mach-imx/imx51.c |   14 ++---
 arch/arm/mach-imx/imx53.c |   19 +++----
 arch/arm/mach-imx/imx6.c  |   26 +++++----
 drivers/Makefile          |    1 +
 drivers/gpio/Kconfig      |    2 +
 drivers/gpio/Makefile     |    1 +
 drivers/gpio/gpio.c       |  134 +++++++++++++++++++++++++++++++++++++++++++++
 include/gpio.h            |   27 ++++++++-
 16 files changed, 298 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpio/Kconfig
 create mode 100644 drivers/gpio/Makefile
 create mode 100644 drivers/gpio/gpio.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
