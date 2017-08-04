Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ddcNl-0002zp-GR
 for barebox@lists.infradead.org; Fri, 04 Aug 2017 13:11:15 +0000
Received: by mail-lf0-x243.google.com with SMTP id 65so1081878lfa.0
 for <barebox@lists.infradead.org>; Fri, 04 Aug 2017 06:10:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  4 Aug 2017 16:10:45 +0300
Message-Id: <20170804131045.29427-1-antonynpavlov@gmail.com>
In-Reply-To: <20170802122512.GA16652@ravnborg.org>
References: <20170802122512.GA16652@ravnborg.org>
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
Subject: [PATCH v2] gpio: clps711x: clps711x_gpio_dt_ids: add missing sentinel
 entry
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Alexander Shiyan <shc_work@mail.ru>
---

Changes since v1:

  * change formatting

 drivers/gpio/gpio-clps711x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index d71c606690..769e6ca4f7 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -74,6 +74,7 @@ out_err:
 
 static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
 	{ .compatible = "cirrus,clps711x-gpio", },
+	{ /* sentinel */ }
 };
 
 static struct driver_d clps711x_gpio_driver = {
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
