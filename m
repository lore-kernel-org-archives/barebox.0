Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrvy-0006Oc-MX
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 13:44:31 +0000
Received: by mail-yw1-xc41.google.com with SMTP id m16so5061617ywh.12
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2019 06:44:29 -0700 (PDT)
MIME-Version: 1.0
From: Rico Pahlisch <rico.pahlisch@kiwigrid.com>
Date: Mon, 17 Jun 2019 15:44:17 +0200
Message-ID: <CAHBg2Ld_n600PKRkg1Ye+QviSYoguos5vheT6MWVQw3Nz4za4Q@mail.gmail.com>
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
Subject: Raspberry CM3 eMMC Boot
To: barebox@lists.infradead.org

Hello,

I try to boot from the internal eMMC with the raspberry CM3 barebox
build but I dont get a promt.
After changing the code barebox works fine. Does any one else have
problems with the raspberry 3 compute module.

diff --git a/drivers/pinctrl/pinctrl-bcm2835.c
b/drivers/pinctrl/pinctrl-bcm2835.c
index 5fd5740..56daa04 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -209,4 +209,4 @@ static int bcm2835_gpio_add(void)
 {
        return platform_driver_register(&bcm2835_gpio_driver);
 }
-coredevice_initcall(bcm2835_gpio_add);
+device_initcall(bcm2835_gpio_add);


Best regards,
Rico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
