Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej4q-0001fP-BY
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 17:13:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id c9so20995295wrw.8
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 09:13:33 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 18:13:01 +0100
Message-Id: <20191210171305.24276-1-h.feurstein@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] led: unify led trigger tables
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

Currently we have two slightly different led-trigger tables. One in the
core module, and the other one in the led-triggers module. The one in the
core module, which is used to parse the device-tree triggers, is lacking
net-rx and net-tx.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/led/core.c         | 46 +++++++++++++++++++++++---------------
 drivers/led/led-triggers.c | 25 ---------------------
 2 files changed, 28 insertions(+), 43 deletions(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index 431966d06..fec7324e7 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -256,22 +256,35 @@ void led_unregister(struct led *led)
 	list_del(&led->list);
 }
 
-struct led_trg {
-	const char *str;
-	enum led_trigger trg;
+static char *trigger_names[] = {
+	[LED_TRIGGER_PANIC] = "panic",
+	[LED_TRIGGER_HEARTBEAT] = "heartbeat",
+	[LED_TRIGGER_NET_RX] = "net-rx",
+	[LED_TRIGGER_NET_TX] = "net-tx",
+	[LED_TRIGGER_NET_TXRX] = "net",
+	[LED_TRIGGER_DEFAULT_ON] = "default-on",
 };
 
-static struct led_trg triggers[] = {
-	{ .str = "heartbeat", LED_TRIGGER_HEARTBEAT, },
-	{ .str = "panic", LED_TRIGGER_PANIC, },
-	{ .str = "net", LED_TRIGGER_NET_TXRX, },
-	{ .str = "default-on", LED_TRIGGER_DEFAULT_ON, },
-};
+const char *trigger_name(enum led_trigger trigger)
+{
+	return trigger_names[trigger];
+}
+
+enum led_trigger trigger_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < LED_TRIGGER_MAX; i++)
+		if (!strcmp(name, trigger_names[i]))
+			return i;
+
+	return LED_TRIGGER_MAX;
+}
 
 void led_of_parse_trigger(struct led *led, struct device_node *np)
 {
+	enum led_trigger trg;
 	const char *trigger;
-	int i;
 
 	trigger = of_get_property(np, "linux,default-trigger", NULL);
 	if (!trigger)
@@ -280,13 +293,10 @@ void led_of_parse_trigger(struct led *led, struct device_node *np)
 	if (!trigger)
 		return;
 
-	for (i = 0; i < ARRAY_SIZE(triggers); i++) {
-		struct led_trg *trg = &triggers[i];
-		if (!strcmp(trg->str, trigger)) {
-			/* disable LED before installing trigger */
-			led_set(led, 0);
-			led_set_trigger(trg->trg, led);
-			return;
-		}
+	trg = trigger_by_name(trigger);
+	if (trg != LED_TRIGGER_MAX) {
+		/* disable LED before installing trigger */
+		led_set(led, 0);
+		led_set_trigger(trg, led);
 	}
 }
diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index 76a1481e1..216c8639b 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -143,31 +143,6 @@ int led_set_trigger(enum led_trigger trigger, struct led *led)
 	return 0;
 }
 
-static char *trigger_names[] = {
-	[LED_TRIGGER_PANIC] = "panic",
-	[LED_TRIGGER_HEARTBEAT] = "heartbeat",
-	[LED_TRIGGER_NET_RX] = "net-rx",
-	[LED_TRIGGER_NET_TX] = "net-tx",
-	[LED_TRIGGER_NET_TXRX] = "net",
-	[LED_TRIGGER_DEFAULT_ON] = "default-on",
-};
-
-const char *trigger_name(enum led_trigger trigger)
-{
-	return trigger_names[trigger];
-}
-
-enum led_trigger trigger_by_name(const char *name)
-{
-	int i;
-
-	for (i = 0; i < LED_TRIGGER_MAX; i++)
-		if (!strcmp(name, trigger_names[i]))
-			return i;
-
-	return LED_TRIGGER_MAX;
-}
-
 /**
  * led_triggers_show_info - Show information about all registered
  * triggers
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
