Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSh-0000rc-68
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id t6-v6so1244033plo.9
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:53 -0700
Message-Id: <20181027013157.23135-8-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/11] gpiolib: Introduce gpio_find_by_label()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce gpio_find_by_label() in order to allow manipulating GPIOs by
the labels assigned to them via DT or board/driver code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpiolib.c | 17 +++++++++++++++++
 include/gpio.h         |  6 ++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index b83a27de7..afece61d9 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -91,6 +91,23 @@ done:
 	return ret;
 }
 
+int gpio_find_by_label(const char *label)
+{
+	int i;
+
+	for (i = 0; i < ARCH_NR_GPIOS; i++) {
+		struct gpio_info *info = &gpio_desc[i];
+
+		if (!info->requested || !info->chip || !info->label)
+			continue;
+
+		if (!strcmp(info->label, label))
+			return i;
+	}
+
+	return -ENOENT;
+}
+
 void gpio_free(unsigned gpio)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
diff --git a/include/gpio.h b/include/gpio.h
index e42fa2338..38d6ba2df 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -92,6 +92,11 @@ static inline int gpio_request(unsigned gpio, const char *label)
 	return 0;
 }
 
+static inline int gpio_find_by_label(const char *label)
+{
+	return -ENOSYS;
+}
+
 static inline void gpio_free(unsigned gpio)
 {
 }
@@ -114,6 +119,7 @@ static inline void gpio_free_array(const struct gpio *array, size_t num)
 }
 #else
 int gpio_request(unsigned gpio, const char *label);
+int gpio_find_by_label(const char *label);
 void gpio_free(unsigned gpio);
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label);
 int gpio_request_array(const struct gpio *array, size_t num);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
