Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PTyVF-0000MM-6D
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 15:15:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 18 Dec 2010 16:15:04 +0100
Message-Id: <1292685309-32326-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] basic LED support
To: barebox@lists.infradead.org

This patch adds core functionality for controlling LEDs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig      |    1 +
 drivers/Makefile     |    1 +
 drivers/led/Kconfig  |    6 +++
 drivers/led/Makefile |    1 +
 drivers/led/core.c   |  119 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/led.h        |   25 ++++++++++
 6 files changed, 153 insertions(+), 0 deletions(-)
 create mode 100644 drivers/led/Kconfig
 create mode 100644 drivers/led/Makefile
 create mode 100644 drivers/led/core.c
 create mode 100644 include/led.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index d94017b..86d8fb5 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -12,5 +12,6 @@ source "drivers/video/Kconfig"
 source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
 source "drivers/mfd/Kconfig"
+source "drivers/led/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 242a564..b1b402f 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_MCI) += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
 obj-y	+= mfd/
+obj-$(CONFIG_LED) += led/
diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
new file mode 100644
index 0000000..964626c
--- /dev/null
+++ b/drivers/led/Kconfig
@@ -0,0 +1,6 @@
+menuconfig LED
+	bool "LED support"
+
+if LED
+
+endif
diff --git a/drivers/led/Makefile b/drivers/led/Makefile
new file mode 100644
index 0000000..0c1a6b6
--- /dev/null
+++ b/drivers/led/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_LED) += core.o
diff --git a/drivers/led/core.c b/drivers/led/core.c
new file mode 100644
index 0000000..4a0f0a6
--- /dev/null
+++ b/drivers/led/core.c
@@ -0,0 +1,119 @@
+/*
+ * core LED support for barebox
+ *
+ * (C) Copyright 2010 Sascha Hauer, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <linux/list.h>
+#include <errno.h>
+#include <asm/gpio.h>
+#include <led.h>
+#include <poller.h>
+#include <clock.h>
+
+/**
+ * @file
+ * @brief LED framework
+ *
+ * This file contains the core LED framework for barebox.
+ *
+ * Each LED can be set to a value where 0 means disabled and values
+ * > 0 mean enabled. LEDs can have different enable values where the
+ * exact meaning depends on the LED, for example a gpio controlled rgb
+ * LED can have enable values from 1 to 7 which correspond to different
+ * colors. value could also mean a brightness.
+ * Each LED is assigned a number. numbers start with 0 and are increased
+ * with each registered LED. The number stays the same during lifecycle,
+ * gaps because of unregistered LEDs are not filled up.
+ */
+
+static LIST_HEAD(leds);
+static int num_leds;
+
+/**
+ * led_by_number - get the number of a LED
+ * @param num number of the LED to return
+ */
+struct led *led_by_number(int num)
+{
+	struct led *led;
+
+	list_for_each_entry(led, &leds, list) {
+		if (led->num == num)
+			return led;
+	}
+
+	return NULL;
+}
+
+/**
+ * led_set - set the value of a LED
+ * @param led	the led
+ * @param value	the value of the LED (0 is disabled)
+ */
+int led_set(struct led *led, unsigned int value)
+{
+	if (value > led->max_value)
+		value = led->max_value;
+
+	led->set(led, value);
+
+	return 0;
+}
+
+/**
+ * led_set_num - set the value of a LED
+ * @param num	the number of the LED
+ * @param value	the value of the LED (0 is disabled)
+ */
+int led_set_num(int num, unsigned int value)
+{
+	struct led *led = led_by_number(num);
+
+	if (!led)
+		return -ENODEV;
+
+	return led_set(led, value);
+}
+
+/**
+ * led_register - Register a LED
+ * @param led	the led
+ */
+int led_register(struct led *led)
+{
+	led->num = num_leds++;
+
+	list_add_tail(&led->list, &leds);
+
+	return 0;
+}
+
+/**
+ * led_unregister - Unegister a LED
+ * @param led	the led
+ */
+void led_unregister(struct led *led)
+{
+	list_del(&led->list);
+}
diff --git a/include/led.h b/include/led.h
new file mode 100644
index 0000000..62d0d08
--- /dev/null
+++ b/include/led.h
@@ -0,0 +1,25 @@
+#ifndef __LED_H
+#define __LED_H
+
+struct led {
+	unsigned long triger;
+	void (*set)(struct led *, unsigned int value);
+	int max_value;
+	int num;
+	struct list_head list;
+};
+
+struct led *led_by_number(int no);
+
+static inline int led_get_number(struct led *led)
+{
+	return led->num;
+}
+
+int led_set_num(int num, unsigned int value);
+int led_set(struct led *led, unsigned int value);
+int led_register(struct led *led);
+void led_unregister(struct led *led);
+void led_unregister(struct led *led);
+
+#endif /* __LED_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
