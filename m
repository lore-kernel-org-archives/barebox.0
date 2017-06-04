Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dHLxy-0000KD-Ox
 for barebox@lists.infradead.org; Sun, 04 Jun 2017 03:12:36 +0000
Received: by mail-pf0-x244.google.com with SMTP id u26so16834764pfd.2
 for <barebox@lists.infradead.org>; Sat, 03 Jun 2017 20:12:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  3 Jun 2017 20:11:50 -0700
Message-Id: <20170604031154.26663-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 0/4] GPIO "active low",
 hogging and usb-nop-xceive 'reset-gpio' support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

Hi everyone,

This is a v3 of my original patchset. Changes in this version are the following:

  - new flags, GPIOF_INIT_[IN]ACTIVE and GPIOF_OUT_INIT_[IN]ACTIVE are
    added to avoid semantically overloading the meaing of "HIGH/LOW"
    variants of those

  - added commentary about GPIO 'hog' interpretation of the meaning of
    'output-high', 'output-low'

Changes since v1:

  - 'active low' support is moved inot a dedicated API
  - of_gpiochip_scan_gpios renamed to of_gpiochip_scan_hogs
  - nop_usbphy_init doesn't try to needlessly configure reset gpio's directionality

Let me know if anything else needs changing.

Thanks,
Andrey Smirnov

Andrey Smirnov (4):
  gpio-imx: Do not use gpio_set_value()
  gpiolib: Add code to support "active low" GPIOs
  gpiolib: Add support for GPIO "hog" nodes
  usb-nop-xceiv: Add support for 'reset-gpios' binding

 drivers/gpio/gpio-imx.c     |   2 +-
 drivers/gpio/gpiolib.c      | 146 ++++++++++++++++++++++++++++++++++++++++++--
 drivers/phy/usb-nop-xceiv.c |  45 ++++++++++++--
 include/gpio.h              |  25 ++++++++
 4 files changed, 208 insertions(+), 10 deletions(-)

-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
