Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTPGg-0001yQ-NR
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 04:19:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 20 Apr 2013 08:18:47 +0400
Message-Id: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/5] GPIO: Rename "drivers/gpio.c" to "drivers/gpiolib.c"
To: barebox@lists.infradead.org

Rename "drivers/gpio.c" to "drivers/gpiolib.c".
Reason is for understand functionality of driver.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/Makefile              | 3 ++-
 drivers/gpio/{gpio.c => gpiolib.c} | 0
 2 files changed, 2 insertions(+), 1 deletion(-)
 rename drivers/gpio/{gpio.c => gpiolib.c} (100%)

diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 00acb68..6a94430 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,4 +1,5 @@
-obj-$(CONFIG_GPIOLIB)		+= gpio.o
+obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
+
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpiolib.c
similarity index 100%
rename from drivers/gpio/gpio.c
rename to drivers/gpio/gpiolib.c
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
