Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUcWP-0001vS-98
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 09:59:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Dec 2010 10:53:48 +0100
Message-Id: <1292838831-25038-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
References: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] LED: Add LED trigger support
To: barebox <barebox@lists.infradead.org>

This patch allows to associate LEDs with certain triggers, such
as heartbeat or network activity.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/Kconfig        |    7 ++
 drivers/led/Makefile       |    1 +
 drivers/led/led-triggers.c |  153 ++++++++++++++++++++++++++++++++++++++++++++
 include/led.h              |   32 +++++++++
 include/net.h              |    3 +
 lib/vsprintf.c             |    4 +
 net/eth.c                  |    8 ++-
 net/net.c                  |   20 ++++--
 8 files changed, 222 insertions(+), 6 deletions(-)
 create mode 100644 drivers/led/led-triggers.c

diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
index 048a0f4..106093b 100644
--- a/drivers/led/Kconfig
+++ b/drivers/led/Kconfig
@@ -11,4 +11,11 @@ config LED_GPIO_RGB
 	bool "gpio rgb LED support"
 	depends on LED_GPIO
 
+config LED_TRIGGERS
+	select POLLER
+	bool "LED triggers support"
+	help
+	  This allows to assign certain triggers like heartbeat or network
+	  activity to LEDs.
+
 endif
diff --git a/drivers/led/Makefile b/drivers/led/Makefile
index 29b9fd5..6aafa6d 100644
--- a/drivers/led/Makefile
+++ b/drivers/led/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_LED) += core.o
 obj-$(CONFIG_LED_GPIO) += led-gpio.o
+obj-$(CONFIG_LED_TRIGGERS) += led-triggers.o
diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
new file mode 100644
index 0000000..764b4e7
--- /dev/null
+++ b/drivers/led/led-triggers.c
@@ -0,0 +1,153 @@
+/*
+ * LED trigger support for barebox
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
+#include <poller.h>
+#include <errno.h>
+#include <clock.h>
+#include <led.h>
+#include <init.h>
+
+/**
+ * @file
+ * @brief LED trigger framework
+ *
+ * This file contains triggers which can be associated to LEDs.
+ *
+ * With this framework LEDs can be associated to different events.
+ * An event can be a heartbeat, network activity or panic.
+ * led_trigger() is the central function which is called in the
+ * different barebox frameworks to trigger an event.
+ *
+ * currently there are the following triggers are defined:
+ *
+ * led_trigger_panic:		triggered in panic()
+ * led_trigger_heartbeat:	shows the heartbeat of barebox. Blinks as long
+ *				barebox is up and running.
+ * led_trigger_net_rx:		Triggered during network packet reception
+ * led_trigger_net_tx:		Triggered during network packet transmission
+ * led_trigger_net_txrx:	combination of the two above
+ */
+
+struct led_trigger_struct {
+	struct led *led;
+	uint64_t flash_start;
+};
+
+static struct led_trigger_struct triggers[LED_TRIGGER_MAX];
+
+static void trigger_func(struct poller_struct *poller)
+{
+	int i;
+
+	for (i = 0; i < LED_TRIGGER_MAX; i++) {
+		if (triggers[i].led &&
+		    triggers[i].flash_start &&
+		    is_timeout(triggers[i].flash_start, 200 * MSECOND)) {
+			led_set(triggers[i].led, 0);
+		}
+	}
+
+	if (triggers[LED_TRIGGER_HEARTBEAT].led &&
+			is_timeout(triggers[LED_TRIGGER_HEARTBEAT].flash_start, SECOND))
+		led_trigger(LED_TRIGGER_HEARTBEAT, TRIGGER_FLASH);
+}
+
+static struct poller_struct trigger_poller = {
+	.func = trigger_func,
+};
+
+/**
+ * led_trigger - triggers a trigger
+ * @param trigger	The trigger to enable/disable
+ * @param enable	true if enable
+ *
+ * Enable/disable a LED for a given trigger.
+ */
+void led_trigger(enum led_trigger trigger, enum trigger_type type)
+{
+	if (trigger >= LED_TRIGGER_MAX)
+		return;
+	if (!triggers[trigger].led)
+		return;
+
+	if (type == TRIGGER_FLASH) {
+		if (is_timeout(triggers[trigger].flash_start, 400 * MSECOND)) {
+			led_set(triggers[trigger].led, 1);
+			triggers[trigger].flash_start = get_time_ns();
+		}
+		return;
+	}
+
+	led_set(triggers[trigger].led, type == TRIGGER_ENABLE ? 1 : 0);
+}
+
+/**
+ * led_set_trigger - set the LED for a trigger
+ * @param trigger	The trigger to set a LED for
+ * @param led		The LED
+ *
+ * This function associates a trigger with a LED. Pass led = NULL
+ * to disable a trigger
+ */
+int led_set_trigger(enum led_trigger trigger, struct led *led)
+{
+	int i;
+
+	if (trigger >= LED_TRIGGER_MAX)
+		return -EINVAL;
+
+	if (led)
+		for (i = 0; i < LED_TRIGGER_MAX; i++)
+			if (triggers[i].led == led)
+				return -EBUSY;
+
+	if (triggers[trigger].led && !led)
+		led_set(triggers[trigger].led, 0);
+
+	triggers[trigger].led = led;
+
+	return 0;
+}
+
+/**
+ * led_get_trigger - get the LED for a trigger
+ * @param trigger	The trigger to set a LED for
+ *
+ * return the LED number of a trigger.
+ */
+int led_get_trigger(enum led_trigger trigger)
+{
+	if (trigger >= LED_TRIGGER_MAX)
+		return -EINVAL;
+	if (!triggers[trigger].led)
+		return -ENODEV;
+	return led_get_number(triggers[trigger].led);
+}
+
+int trigger_init(void)
+{
+	return poller_register(&trigger_poller);
+}
+late_initcall(trigger_init);
diff --git a/include/led.h b/include/led.h
index 0210897..9ec1f0d 100644
--- a/include/led.h
+++ b/include/led.h
@@ -26,6 +26,38 @@ int led_register(struct led *led);
 void led_unregister(struct led *led);
 void led_unregister(struct led *led);
 
+/* LED trigger support */
+enum led_trigger {
+	LED_TRIGGER_PANIC,
+	LED_TRIGGER_HEARTBEAT,
+	LED_TRIGGER_NET_RX,
+	LED_TRIGGER_NET_TX,
+	LED_TRIGGER_NET_TXRX,
+	LED_TRIGGER_MAX,
+};
+
+enum trigger_type {
+	TRIGGER_ENABLE,
+	TRIGGER_DISABLE,
+	TRIGGER_FLASH,
+};
+
+#ifdef CONFIG_LED_TRIGGERS
+int led_set_trigger(enum led_trigger trigger, struct led *led);
+void led_trigger(enum led_trigger trigger, enum trigger_type);
+#else
+static inline int led_set_trigger(enum led_trigger trigger, struct led *led)
+{
+	return 0;
+}
+
+static inline void led_trigger(enum led_trigger trigger, enum trigger_type type)
+{
+}
+#endif
+
+int led_get_trigger(enum led_trigger trigger);
+
 /* gpio LED support */
 struct gpio_led {
 	int gpio;
diff --git a/include/net.h b/include/net.h
index c695e5f..ccaab8b 100644
--- a/include/net.h
+++ b/include/net.h
@@ -18,6 +18,7 @@
 #include <malloc.h>
 #include <stdlib.h>
 #include <clock.h>
+#include <led.h>
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 
@@ -417,4 +418,6 @@ static inline unsigned char *net_udp_get_payload(struct net_connection *con)
 int net_udp_send(struct net_connection *con, int len);
 int net_icmp_send(struct net_connection *con, int len);
 
+void led_trigger_network(enum led_trigger trigger);
+
 #endif /* __NET_H__ */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index e2ea84d..fec87ba 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -17,6 +17,7 @@
 #include <malloc.h>
 
 #include <common.h>
+#include <led.h>
 #include <reloc.h>
 
 unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
@@ -625,6 +626,9 @@ void __noreturn panic(const char *fmt, ...)
 	vprintf(fmt, args);
 	putchar('\n');
 	va_end(args);
+
+	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
+
 #if defined (CONFIG_PANIC_HANG)
 	hang();
 #else
diff --git a/net/eth.c b/net/eth.c
index a82a263..7502e98 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -77,6 +77,8 @@ int eth_send(void *packet, int length)
 		eth_current->active = 1;
 	}
 
+	led_trigger_network(LED_TRIGGER_NET_TX);
+
 	return eth_current->send(eth_current, packet, length);
 }
 
@@ -183,4 +185,8 @@ void eth_unregister(struct eth_device *edev)
 	list_del(&edev->list);
 }
 
-
+void led_trigger_network(enum led_trigger trigger)
+{
+	led_trigger(trigger, TRIGGER_FLASH);
+	led_trigger(LED_TRIGGER_NET_TXRX, TRIGGER_FLASH);
+}
diff --git a/net/net.c b/net/net.c
index a613d1d..9b4ab89 100644
--- a/net/net.c
+++ b/net/net.c
@@ -628,19 +628,29 @@ int net_receive(unsigned char *pkt, int len)
 {
 	struct ethernet *et = (struct ethernet *)pkt;
 	int et_protlen = ntohs(et->et_protlen);
+	int ret;
 
-	if (len < ETHER_HDR_SIZE)
-		return 0;
+	led_trigger_network(LED_TRIGGER_NET_RX);
+
+	if (len < ETHER_HDR_SIZE) {
+		ret = 0;
+		goto out;
+	}
 
 	switch (et_protlen) {
 	case PROT_ARP:
-		return net_handle_arp(pkt, len);
+		ret = net_handle_arp(pkt, len);
+		break;
 	case PROT_IP:
-		return net_handle_ip(pkt, len);
+		ret = net_handle_ip(pkt, len);
+		break;
 	default:
 		debug("%s: got unknown protocol type: %d\n", __func__, et_protlen);
-		return 1;
+		ret = 1;
+		break;
 	}
+out:
+	return ret;
 }
 
 static int net_init(void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
