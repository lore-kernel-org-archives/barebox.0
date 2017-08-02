Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcnhj-00009n-Si
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 07:04:29 +0000
Received: by mail-lf0-x241.google.com with SMTP id o85so3145073lff.1
 for <barebox@lists.infradead.org>; Wed, 02 Aug 2017 00:04:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Aug 2017 10:03:56 +0300
Message-Id: <20170802070356.8185-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] gpio: clps711x: clps711x_gpio_dt_ids: add missing sentinel
 entry
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-clps711x.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index d71c606690..e97f468e82 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -74,6 +74,9 @@ out_err:
 
 static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
 	{ .compatible = "cirrus,clps711x-gpio", },
+	{
+		/* sentinel */
+	}
 };
 
 static struct driver_d clps711x_gpio_driver = {
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
