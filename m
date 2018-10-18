Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD5mk-0006ul-4u
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 10:44:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mY-0000Ar-B1
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:43:58 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mY-0007Uo-3N
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:43:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 12:43:45 +0200
Message-Id: <20181018104349.26332-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 0/4] gpio-hog fixes
To: barebox@lists.infradead.org

Hi,

in 2017 Andrey ported the linux gpio-hog functionality to barebox. So we
can set simple power-on/reset gpios from DT without specifying them in
the board file.

First this series do some fixes in the gpio-hog implementation. Then we
have to reorder the initcall sequence to make use of the above descrbied
feature. Since now the gpio devices depending on the pinctrl devices, so
we have to probe the pinctrl first.

I've tested it on a iMX6 based board, other testers are welcome.

Regrads,
Marco

Marco Felsch (4):
  gpiolib: fix of_gpio_hog error handling
  gpiolib: fix of_hog_gpio gpio label assignment
  gpio: tree-wide don't probe devices during core_initcall
  pinctrl: tree-wide probe devices during core_initcall

 drivers/gpio/gpio-dw.c               |  2 +-
 drivers/gpio/gpio-imx.c              |  2 +-
 drivers/gpio/gpio-mxs.c              |  2 +-
 drivers/gpio/gpio-vf610.c            |  2 +-
 drivers/gpio/gpiolib.c               | 13 ++++++++-----
 drivers/pinctrl/imx-iomux-v1.c       |  2 +-
 drivers/pinctrl/imx-iomux-v2.c       |  2 +-
 drivers/pinctrl/imx-iomux-v3.c       |  2 +-
 drivers/pinctrl/mvebu/armada-370.c   |  2 +-
 drivers/pinctrl/mvebu/armada-xp.c    |  2 +-
 drivers/pinctrl/mvebu/dove.c         |  2 +-
 drivers/pinctrl/mvebu/kirkwood.c     |  2 +-
 drivers/pinctrl/pinctrl-at91.c       |  4 ++--
 drivers/pinctrl/pinctrl-mxs.c        |  2 +-
 drivers/pinctrl/pinctrl-single.c     |  2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c |  2 +-
 drivers/pinctrl/pinctrl-tegra20.c    |  2 +-
 drivers/pinctrl/pinctrl-tegra30.c    |  2 +-
 drivers/pinctrl/pinctrl-vf610.c      |  2 +-
 19 files changed, 27 insertions(+), 24 deletions(-)

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
