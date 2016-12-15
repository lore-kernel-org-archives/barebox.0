Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp39.i.mail.ru ([94.100.177.99])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cHTcv-0008QC-NZ
 for barebox@lists.infradead.org; Thu, 15 Dec 2016 10:51:07 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 15 Dec 2016 13:50:37 +0300
Message-Id: <1481799037-17213-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] gpio: gpio-74164: Add 74lvc594 ID
To: barebox@lists.infradead.org

The latest kernel gpio-74x164 driver supports 74LVC594 IC ID.
Patch adds such ID to barebox driver.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-74164.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
index 926207a..e4d413b 100644
--- a/drivers/gpio/gpio-74164.c
+++ b/drivers/gpio/gpio-74164.c
@@ -92,6 +92,7 @@ static struct gpio_ops gpio_74164_ops = {
 
 static struct platform_device_id gpio_74164_ids[] = {
 	{ "74hc164" },
+	{ "74lvc594" },
 	{ "74hc595" },
 	{ }
 };
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
