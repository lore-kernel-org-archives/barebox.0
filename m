Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7N01-0001Z1-3f
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 08:54:48 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 31 Aug 2012 10:54:22 +0200
Message-Id: <1346403272-24446-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 00/10] ARM i.MX: add gpiolib support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi all,

this patch series moves mach-imx to gpiolib support.
This was tested on imx6 and at least compiles on other SoC-defconfigs.

Greetings,
Steffen

Sascha Hauer (2):
  add gpiolib support
  ARM i.MX: switch to gpiolib support

Steffen Trumtrar (8):
  ARM i.MX5: add imx-gpio devices
  ARM i.MX6: add imx-gpio devices
  ARM i.MX53: add imx-gpio devices
  ARM i.MX35: add imx-gpio devices
  ARM i.MX27: add imx-gpio devices
  ARM i.MX25: add imx-gpio devices
  ARM i.MX1: add imx-gpio devices
  ARM i.MX21: add imx-gpio devices

 arch/arm/mach-imx/gpio.c  |   91 +++++++++++++++++++-----------
 arch/arm/mach-imx/imx1.c  |    9 +++
 arch/arm/mach-imx/imx21.c |   15 +++++
 arch/arm/mach-imx/imx25.c |    4 ++
 arch/arm/mach-imx/imx27.c |    6 ++
 arch/arm/mach-imx/imx35.c |    4 ++
 arch/arm/mach-imx/imx51.c |    5 ++
 arch/arm/mach-imx/imx53.c |    7 +++
 arch/arm/mach-imx/imx6.c  |   14 +++++
 drivers/Makefile          |    1 +
 drivers/gpio/Makefile     |    1 +
 drivers/gpio/gpio.c       |  134 +++++++++++++++++++++++++++++++++++++++++++++
 include/gpio.h            |   32 ++++++++---
 13 files changed, 283 insertions(+), 40 deletions(-)
 create mode 100644 drivers/gpio/Makefile
 create mode 100644 drivers/gpio/gpio.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
