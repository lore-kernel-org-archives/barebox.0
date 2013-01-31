Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from la-in-x022b.1e100.net ([2a00:1450:4010:c03::22b]
 helo=mail-la0-x22b.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U11mD-0006DH-Pm
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 21:34:36 +0000
Received: by mail-la0-f43.google.com with SMTP id ek20so2327488lab.30
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:34:27 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Feb 2013 01:46:33 +0400
Message-Id: <1359668796-22835-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
References: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/5] gpiolib: add gpio_request_{in,out}put support
To: barebox@lists.infradead.org

gpio_request() followed by gpio_direction_{in,out}put
is a gpio usage pattern (e.g. the similar functions
are used in a ARM boards code).

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpio.c |   34 ++++++++++++++++++++++++++++++++++
 include/gpio.h      |   13 +++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
index d37f5a0..5876454 100644
--- a/drivers/gpio/gpio.c
+++ b/drivers/gpio/gpio.c
@@ -47,6 +47,40 @@ int gpio_request(unsigned gpio, const char *label)
 	return 0;
 }
 
+int gpio_request_input(unsigned gpio, const char *label)
+{
+	int ret;
+
+	ret = gpio_request(gpio, label);
+	if (ret)
+		return ret;
+
+	ret = gpio_direction_input(gpio);
+	if (ret) {
+		pr_err("can't configure gpio %d (%s) as input (%d)\n",
+			gpio, label, ret);
+	}
+
+	return ret;
+}
+
+int gpio_request_output(unsigned gpio, const char *label, int value)
+{
+	int ret;
+
+	ret = gpio_request(gpio, label);
+	if (ret)
+		return ret;
+
+	ret = gpio_direction_output(gpio, value);
+	if (ret) {
+		pr_err("can't configure gpio %d (%s) as output (%d)\n",
+			gpio, label, ret);
+	}
+
+	return ret;
+}
+
 void gpio_free(unsigned gpio)
 {
 	struct gpio_info *gi = &gpio_desc[gpio];
diff --git a/include/gpio.h b/include/gpio.h
index 794d959..309c1c5 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -9,11 +9,24 @@ static inline int gpio_request(unsigned gpio, const char *label)
 	return 0;
 }
 
+static inline int gpio_request_input(unsigned gpio, const char *label)
+{
+	return 0;
+}
+
+static inline int gpio_request_output(unsigned gpio, const char *label,
+		int value)
+{
+	return 0;
+}
+
 static inline void gpio_free(unsigned gpio)
 {
 }
 #else
 int gpio_request(unsigned gpio, const char *label);
+int gpio_request_input(unsigned gpio, const char *label);
+int gpio_request_output(unsigned gpio, const char *label, int value);
 void gpio_free(unsigned gpio);
 #endif
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
