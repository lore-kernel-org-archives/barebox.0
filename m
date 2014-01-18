Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4UOe-0003S2-Rf
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 11:49:05 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 18 Jan 2014 12:48:09 +0100
Message-Id: <1390045689-23127-6-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
References: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] ARM: mioa701: poweroff the board on long power press
To: barebox@lists.infradead.org

When the board is on console, a way is added to manually power off the
board, on a long power key press (4s).

This enables to be able to poweroff the board whatever the state, and is
the only manual way (no mechanical possibility).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/Makefile         |    2 +-
 arch/arm/boards/mioa701/gpio0_poweroff.c |   81 ++++++++++++++++++++++++++++++
 2 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/mioa701/gpio0_poweroff.c

diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
index 01c7a25..3072706 100644
--- a/arch/arm/boards/mioa701/Makefile
+++ b/arch/arm/boards/mioa701/Makefile
@@ -1,2 +1,2 @@
-obj-y += board.o
+obj-y += board.o gpio0_poweroff.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mioa701/gpio0_poweroff.c b/arch/arm/boards/mioa701/gpio0_poweroff.c
new file mode 100644
index 0000000..2054548
--- /dev/null
+++ b/arch/arm/boards/mioa701/gpio0_poweroff.c
@@ -0,0 +1,81 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
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
+ */
+
+#include <clock.h>
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <poller.h>
+
+#include "mioa701.h"
+
+#define POWEROFF_SECS (4 * SECOND)
+
+static void blink_led_keyboard(void)
+{
+	gpio_set_value(GPIO115_LED_nKeyboard, 0);
+	mdelay(400);
+	gpio_set_value(GPIO115_LED_nKeyboard, 1);
+	mdelay(400);
+}
+
+static void try_poweroff(void)
+{
+	int poweroff_released = 0;
+
+	blink_led_keyboard();
+	poweroff_released |= !gpio_get_value(GPIO0_KEY_POWER);
+	if (poweroff_released)
+		return;
+
+	gpio_set_value(GPIO115_LED_nKeyboard, 0);
+	mdelay(2000);
+	poweroff();
+}
+
+static void gpio0_poller_fn(struct poller_struct *poller)
+{
+	static uint64_t gpio0_start;
+	static bool gpio0_activated;
+
+	if (!gpio_get_value(GPIO0_KEY_POWER)) {
+		gpio0_activated = false;
+		return;
+	}
+
+	if (gpio0_activated) {
+		if (is_timeout_non_interruptible(gpio0_start, POWEROFF_SECS)) {
+			try_poweroff();
+			gpio0_activated = false;
+		}
+	} else {
+		gpio0_activated = true;
+		gpio0_start = get_time_ns();
+	}
+}
+
+static struct poller_struct gpio0_poller = {
+	.func = gpio0_poller_fn,
+};
+
+static int gpio0_poweroff_probe(void)
+{
+	return poller_register(&gpio0_poller);
+}
+
+device_initcall(gpio0_poweroff_probe);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
