Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZWq8-0004zz-1O
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 08:04:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 19 Dec 2018 11:03:58 +0300
Message-Id: <20181219080403.13737-5-shc_work@mail.ru>
In-Reply-To: <20181219080403.13737-1-shc_work@mail.ru>
References: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: [PATCH 05/10] gpio: clps711x: Change compatible string
To: barebox@lists.infradead.org

This patch changes compatible string for CLPS711X GPIO driver
to "cirrus,ep7209-gpio" for conform with linux kernel.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-clps711x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index c1ec6ab68..eef2a29e8 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -71,7 +71,7 @@ out_err:
 }
 
 static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
-	{ .compatible = "cirrus,clps711x-gpio", },
+	{ .compatible = "cirrus,ep7209-gpio", },
 	{ /* sentinel */ }
 };
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
