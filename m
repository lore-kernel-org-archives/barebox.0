Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iK-0007BR-SO
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:54 +0000
Received: by wiun10 with SMTP id n10so39568115wiu.1
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:30 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:20 +0200
Message-Id: <1429052000-20647-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 6/6] gpio: orion: Convert to platform_driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With support for deferred probing, we can now relax driver
registration for Marvell Orion GPIO driver from postcore_initcall()
to normal platform_driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- new patch

Cc: barebox@lists.infradead.org
---
 drivers/gpio/gpio-orion.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 855763ea665a..3deeac126f25 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -124,9 +124,4 @@ static struct driver_d orion_gpio_driver = {
 	.probe = orion_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(orion_gpio_dt_ids),
 };
-
-static int orion_gpio_init(void)
-{
-	return platform_driver_register(&orion_gpio_driver);
-}
-postcore_initcall(orion_gpio_init);
+device_platform_driver(orion_gpio_driver);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
