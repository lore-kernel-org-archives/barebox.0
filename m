Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dRlSG-0000I7-23
 for barebox@lists.infradead.org; Sun, 02 Jul 2017 20:26:54 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun,  2 Jul 2017 22:24:52 +0200
Message-Id: <1499027092-2522-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] gpiolib: fix: do not access oftree on non-OFDEVICE boards
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Alexander Kurz <akurz@blala.de>

Non-OFDEVICE boards may have OFTREE=y set, e.g. by BOOTM_OFTREE.
Attempts to browse the oftree will crash barebox on those boards.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/gpio/gpiolib.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index a3e17ad..a1ff965 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -416,7 +416,10 @@ int gpiochip_add(struct gpio_chip *chip)
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
 		gpio_desc[i].chip = chip;
 
-	return of_gpiochip_scan_hogs(chip);
+	if (IS_ENABLED(CONFIG_OFDEVICE))
+		return of_gpiochip_scan_hogs(chip);
+	else
+		return 0;
 }
 
 void gpiochip_remove(struct gpio_chip *chip)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
