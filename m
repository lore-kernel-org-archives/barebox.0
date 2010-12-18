Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PTyVF-0000MK-5q
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 15:15:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 18 Dec 2010 16:15:06 +0100
Message-Id: <1292685309-32326-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] LED: Add LED trigger support
To: barebox@lists.infradead.org

This patch allows to associate LEDs with certain triggers, such
as heartbeat or network activity.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/Kconfig  |    3 +++
 drivers/led/Makefile |    1 +
 include/led.h        |   26 ++++++++++++++++++++++++++
 include/net.h        |    3 +++
 lib/vsprintf.c       |    4 ++++
 net/eth.c            |   20 +++++++++++++++++++-
 net/net.c            |   21 ++++++++++++++++-----
 7 files changed, 72 insertions(+), 6 deletions(-)

diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
index b5e2f97..d8540c5 100644
--- a/drivers/led/Kconfig
+++ b/drivers/led/Kconfig
@@ -7,4 +7,7 @@ config LED_GPIO
 	bool "gpio LED support"
 	depends on GENERIC_GPIO
 
+config LED_TRIGGERS
+	bool "LED triggers support"
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
diff --git a/include/led.h b/include/led.h
index 98b8c2e..2dc0f9d 100644
--- a/include/led.h
+++ b/include/led.h
@@ -22,6 +22,32 @@ int led_register(struct led *led);
 void led_unregister(struct led *led);
 void led_unregister(struct led *led);
 
+/* LED trigger support */
+enum led_trigger {
+	led_trigger_panic,
+	led_trigger_heartbeat,
+	led_trigger_net_rx,
+	led_trigger_net_tx,
+	led_trigger_net_txrx,
+	led_trigger_max,
+};
+
+#ifdef CONFIG_LED_TRIGGERS
+int led_set_trigger(enum led_trigger trigger, struct led *led);
+void led_trigger(enum led_trigger trigger, bool enable);
+#else
+static inline int led_set_trigger(enum led_trigger trigger, struct led *led)
+{
+	return 0;
+}
+
+static inline void led_trigger(enum led_trigger trigger, bool enable)
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
index c695e5f..71c314e 100644
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
 
+void led_trigger_network(enum led_trigger trigger, int active);
+
 #endif /* __NET_H__ */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index e2ea84d..6117337 100644
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
+	led_trigger(led_trigger_panic, 1);
+
 #if defined (CONFIG_PANIC_HANG)
 	hang();
 #else
diff --git a/net/eth.c b/net/eth.c
index a82a263..6ac4f09 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -77,7 +77,13 @@ int eth_send(void *packet, int length)
 		eth_current->active = 1;
 	}
 
-	return eth_current->send(eth_current, packet, length);
+	led_trigger_network(led_trigger_net_tx, 1);
+
+	ret = eth_current->send(eth_current, packet, length);
+
+	led_trigger_network(led_trigger_net_tx, 0);
+
+	return ret;
 }
 
 int eth_rx(void)
@@ -183,4 +189,16 @@ void eth_unregister(struct eth_device *edev)
 	list_del(&edev->list);
 }
 
+void led_trigger_network(enum led_trigger trigger, int enable)
+{
+	static bool rx_active, tx_active;
 
+	led_trigger(trigger, enable);
+
+	if (trigger == led_trigger_net_tx)
+		tx_active = enable;
+	if (trigger == led_trigger_net_rx)
+		rx_active = enable;
+
+	led_trigger(led_trigger_net_txrx, tx_active || rx_active);
+}
diff --git a/net/net.c b/net/net.c
index a613d1d..afd5964 100644
--- a/net/net.c
+++ b/net/net.c
@@ -628,19 +628,30 @@ int net_receive(unsigned char *pkt, int len)
 {
 	struct ethernet *et = (struct ethernet *)pkt;
 	int et_protlen = ntohs(et->et_protlen);
+	int ret;
 
-	if (len < ETHER_HDR_SIZE)
-		return 0;
+	led_trigger_network(led_trigger_net_rx, 1);
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
+	led_trigger_network(led_trigger_net_rx, 0);
+	return ret;
 }
 
 static int net_init(void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
