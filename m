Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD5mk-0006vX-4q
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 10:44:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0000Az-Kn
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0007oV-CN
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 12:43:48 +0200
Message-Id: <20181018104349.26332-4-m.felsch@pengutronix.de>
In-Reply-To: <20181018104349.26332-1-m.felsch@pengutronix.de>
References: <20181018104349.26332-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 3/4] gpio: tree-wide don't probe devices during core_initcall
To: barebox@lists.infradead.org

Since commit 37e6bee7e5 ("gpiolib: Add support for GPIO "hog" nodes")
barebox can handle hog-gpios. To work correctly the pinctrl driver
must be initialised first. Reorder all core_initcall's so the pinctrl
driver can be called first.

find drivers/gpio/ -type f -name gpio-*.c -exec sed -i \
	's/core_initcall/postcore_initcall/' "{}" +;

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpio-dw.c    | 2 +-
 drivers/gpio/gpio-imx.c   | 2 +-
 drivers/gpio/gpio-mxs.c   | 2 +-
 drivers/gpio/gpio-vf610.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index f145c01232..b81e6a75c5 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -199,4 +199,4 @@ static int __init dwgpio_init(void)
 {
 	return platform_driver_register(&dwgpio_driver);
 }
-core_initcall(dwgpio_init);
+postcore_initcall(dwgpio_init);
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d618e60119..2827e11e73 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -222,4 +222,4 @@ static int imx_gpio_add(void)
 	platform_driver_register(&imx_gpio_driver);
 	return 0;
 }
-core_initcall(imx_gpio_add);
+postcore_initcall(imx_gpio_add);
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index b2b3ad3ac6..ef78873ad2 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -183,4 +183,4 @@ static int mxs_gpio_add(void)
 	platform_driver_register(&mxs_gpio_driver);
 	return 0;
 }
-core_initcall(mxs_gpio_add);
+postcore_initcall(mxs_gpio_add);
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 2aff62be59..ca2bf9ac69 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -161,4 +161,4 @@ static int __init gpio_vf610_init(void)
 {
 	return platform_driver_register(&vf610_gpio_driver);
 }
-core_initcall(gpio_vf610_init);
+postcore_initcall(gpio_vf610_init);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
