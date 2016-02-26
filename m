Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZH92-000615-VZ
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 12:05:17 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 13:04:42 +0100
Message-Id: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/5] HWRNG: add support for HW Random Number Generators
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds support for registering a /dev/hwrng like in a
linux system.

Tested with the i.MX25 RNG, that is also added.

Regards,
Steffen

Steffen Trumtrar (5):
  drivers: add simple hw_random implementation
  lib: random: get_random_bytes from HWRNG if present
  ARM: imx25: clk: add rngb clock
  ARM: i.MX25: dtsi: add rng node
  hw_random: add driver for Freescale RNGC

 arch/arm/dts/imx25.dtsi       |  11 ++
 arch/arm/mach-imx/clk-imx25.c |   5 +-
 drivers/Kconfig               |   1 +
 drivers/Makefile              |   1 +
 drivers/hw_random/Kconfig     |  17 +++
 drivers/hw_random/Makefile    |   2 +
 drivers/hw_random/core.c      | 110 +++++++++++++++
 drivers/hw_random/mxc-rngc.c  | 311 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/hw_random.h     |  44 ++++++
 lib/random.c                  |  19 +++
 10 files changed, 519 insertions(+), 2 deletions(-)
 create mode 100644 drivers/hw_random/Kconfig
 create mode 100644 drivers/hw_random/Makefile
 create mode 100644 drivers/hw_random/core.c
 create mode 100644 drivers/hw_random/mxc-rngc.c
 create mode 100644 include/linux/hw_random.h

-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
