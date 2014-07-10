Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5KdT-0000kl-5M
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 20:08:09 +0000
Received: by mail-lb0-f171.google.com with SMTP id s7so85560lbd.16
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 13:07:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 11 Jul 2014 00:07:23 +0400
Message-Id: <1405022845-12402-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/2] add driver for PCA95[357]x, PCA9698, TCA64xx,
 and MAX7310 SMBus I/O expanders
To: barebox@lists.infradead.org

changes since RFC v1 patchseries:

  * gpio-pca953x.c: drop depricated devicetree parameters;
  * gpio-pca953x.c: add pca953x_gpio_get_direction();
  * move SMBus stuff from i2c.c to i2c-smbus.c, introduce CONFIG_I2C_SMBUS.

Antony Pavlov (2):
  i2c: import SMBus stuff from linux
  gpio: add driver for PCA95[357]x, PCA9698, TCA64xx, and MAX7310 SMBus
    I/O expanders

 drivers/gpio/Kconfig            |  21 ++
 drivers/gpio/Makefile           |   1 +
 drivers/gpio/gpio-pca953x.c     | 481 ++++++++++++++++++++++++++++++++++++++++
 drivers/i2c/Kconfig             |   3 +
 drivers/i2c/Makefile            |   1 +
 drivers/i2c/i2c-smbus.c         | 371 +++++++++++++++++++++++++++++++
 include/i2c/i2c.h               |  57 +++++
 include/platform_data/pca953x.h |  27 +++
 8 files changed, 962 insertions(+)
 create mode 100644 drivers/gpio/gpio-pca953x.c
 create mode 100644 drivers/i2c/i2c-smbus.c
 create mode 100644 include/platform_data/pca953x.h

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
