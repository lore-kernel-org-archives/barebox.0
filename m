Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f181.google.com ([209.85.217.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbQEp-0000XJ-QL
 for barebox@lists.infradead.org; Sun, 12 May 2013 06:58:32 +0000
Received: by mail-lb0-f181.google.com with SMTP id w10so5446961lbi.12
 for <barebox@lists.infradead.org>; Sat, 11 May 2013 23:58:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 May 2013 10:57:16 +0400
Message-Id: <1368341836-19152-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] gpio: fix typos
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/asm-generic/gpio.h |    1 -
 include/gpio.h             |    2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
index c2e7a5d..95fdd05 100644
--- a/include/asm-generic/gpio.h
+++ b/include/asm-generic/gpio.h
@@ -18,4 +18,3 @@ int gpio_direction_output(unsigned gpio, int value);
 int gpio_direction_input(unsigned gpio);
 
 #endif /* __ASM_GENERIC_GPIO_H */
-
diff --git a/include/gpio.h b/include/gpio.h
index c2fb9f7..140d53c 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -6,7 +6,7 @@
 #ifndef CONFIG_GPIOLIB
 static inline int gpio_request(unsigned gpio, const char *label)
 {
-       return 0;
+	return 0;
 }
 
 static inline void gpio_free(unsigned gpio)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
