Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wp-0000gN-HS
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:44 +0000
Received: by mail-ee0-f45.google.com with SMTP id c4so31012eek.32
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:18 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:07 +0100
Message-Id: <1384003450-21001-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/4] gpiolib: add get_direction callback
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

At least for debugging purposes it is helpful to determine the current
direction for a given GPIO. Add a callback to gpiochip, to allow to
get it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 include/gpio.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/gpio.h b/include/gpio.h
index 140d53c..708b2aa 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,6 +3,9 @@
 
 #include <asm/gpio.h>
 
+#define GPIO_DIR_OUT	(0 << 0)
+#define GPIO_DIR_IN	(1 << 0)
+
 #ifndef CONFIG_GPIOLIB
 static inline int gpio_request(unsigned gpio, const char *label)
 {
@@ -24,6 +27,7 @@ struct gpio_ops {
 	void (*free)(struct gpio_chip *chip, unsigned offset);
 	int (*direction_input)(struct gpio_chip *chip, unsigned offset);
 	int (*direction_output)(struct gpio_chip *chip, unsigned offset, int value);
+	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
 	int (*get)(struct gpio_chip *chip, unsigned offset);
 	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
 };
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
