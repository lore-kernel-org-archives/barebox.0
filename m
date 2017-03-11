Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmhgP-0000Vg-Dq
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 14:07:51 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 11 Mar 2017 15:07:06 +0100
Message-Id: <20170311140706.8851-5-o.rempel@pengutronix.de>
In-Reply-To: <20170311140706.8851-1-o.rempel@pengutronix.de>
References: <20170311140706.8851-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 4/4] led-trigger: rework
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/trigger.c         |  54 +++++++++++---------
 drivers/led/led-triggers.c | 125 +++++++++++++++++++++++++++++++++++----------
 include/led.h              |   6 ++-
 3 files changed, 131 insertions(+), 54 deletions(-)

diff --git a/commands/trigger.c b/commands/trigger.c
index 2758ce74e..0dd3b346f 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -28,59 +28,62 @@
 #define LED_COMMAND_SHOW_INFO		2
 #define	LED_COMMAND_DISABLE_TRIGGER	3
 
-static char *trigger_names[] = {
-	[LED_TRIGGER_PANIC] = "panic",
-	[LED_TRIGGER_HEARTBEAT] = "heartbeat",
-	[LED_TRIGGER_NET_RX] = "net rx",
-	[LED_TRIGGER_NET_TX] = "net tx",
-	[LED_TRIGGER_NET_TXRX] = "net",
-	[LED_TRIGGER_DEFAULT_ON] = "default on",
-};
 
 static int do_trigger(int argc, char *argv[])
 {
-	struct led *led;
-	int i, opt, ret = 0;
+	struct led *led = NULL;
+	int opt, ret = 0;
 	int cmd = LED_COMMAND_SHOW_INFO;
-	unsigned long trigger = 0;
+	enum led_trigger trigger;
+	const char *led_name = NULL;
+	const char *trigger_name = NULL;
 
 	while((opt = getopt(argc, argv, "t:d:")) > 0) {
 		switch(opt) {
 		case 't':
-			trigger = simple_strtoul(optarg, NULL, 0);
+			trigger_name = optarg;
 			cmd = LED_COMMAND_SET_TRIGGER;
 			break;
 		case 'd':
-			trigger = simple_strtoul(optarg, NULL, 0);
+			led_name = optarg;
 			cmd = LED_COMMAND_DISABLE_TRIGGER;
 		}
 	}
 
+	if (optind < argc)
+		led = led_by_name_or_number(argv[optind]);
+
 	switch (cmd) {
 	case LED_COMMAND_SHOW_INFO:
-		for (i = 0; i < LED_TRIGGER_MAX; i++) {
-			int led = led_get_trigger(i);
-			printf("%d: %s", i, trigger_names[i]);
-			if (led >= 0)
-				printf(" (led %d)", led);
-			printf("\n");
-		}
+		led_triggers_show_info();
 		break;
 
 	case LED_COMMAND_DISABLE_TRIGGER:
-		ret = led_set_trigger(trigger, NULL);
+		led = led_by_name_or_number(led_name);
+		if (!led) {
+			printf("no such led: %s\n", led_name);
+			return 1;
+		}
+
+		led_trigger_disable(led);
 		break;
 
 	case LED_COMMAND_SET_TRIGGER:
 		if (argc - optind != 1)
 			return COMMAND_ERROR_USAGE;
-		led = led_by_name_or_number(argv[optind]);
 
+		led = led_by_name_or_number(argv[optind]);
 		if (!led) {
 			printf("no such led: %s\n", argv[optind]);
 			return 1;
 		}
 
+		trigger = trigger_by_name(trigger_name);
+		if (trigger == LED_TRIGGER_INVALID) {
+			printf("no such trigger: %s\n", trigger_name);
+			return 1;
+		}
+
 		ret = led_set_trigger(trigger, led);
 		break;
 	}
@@ -92,16 +95,17 @@ static int do_trigger(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(trigger)
 BAREBOX_CMD_HELP_TEXT("Control a LED trigger. Without options assigned triggers are shown.")
+BAREBOX_CMD_HELP_TEXT("triggers are given with their name, LEDs are given with their name or number")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-t",  "set a trigger (needs LED argument)")
-BAREBOX_CMD_HELP_OPT ("-d",  "disable a trigger")
+BAREBOX_CMD_HELP_OPT ("-t <trigger> <led>",  "set a trigger")
+BAREBOX_CMD_HELP_OPT ("-d <led>",  "disable a trigger")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(trigger)
 	.cmd		= do_trigger,
 	BAREBOX_CMD_DESC("handle LED triggers")
-	BAREBOX_CMD_OPTS("[-td] TRIGGER [LED]")
+	BAREBOX_CMD_OPTS("[-td] [LED]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_trigger_help)
 BAREBOX_CMD_END
diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index 6c05cc5bb..76a1481e1 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -52,7 +52,7 @@ struct led_trigger_struct {
 	enum led_trigger trigger;
 };
 
-static struct led_trigger_struct triggers[LED_TRIGGER_MAX];
+static LIST_HEAD(led_triggers);
 
 /**
  * led_trigger - triggers a trigger
@@ -63,17 +63,53 @@ static struct led_trigger_struct triggers[LED_TRIGGER_MAX];
  */
 void led_trigger(enum led_trigger trigger, enum trigger_type type)
 {
+	struct led_trigger_struct *led_trigger;
+
 	if (trigger >= LED_TRIGGER_MAX)
 		return;
-	if (!triggers[trigger].led)
-		return;
 
-	if (type == TRIGGER_FLASH) {
-		led_flash(triggers[trigger].led, 200);
-		return;
+	list_for_each_entry(led_trigger, &led_triggers, list) {
+		if (led_trigger->trigger != trigger)
+			continue;
+
+		switch (type) {
+		case TRIGGER_FLASH:
+			led_flash(led_trigger->led, 200);
+			break;
+		case TRIGGER_ENABLE:
+			led_set(led_trigger->led, led_trigger->led->max_value);
+			break;
+		case TRIGGER_DISABLE:
+			led_set(led_trigger->led, 0);
+			break;
+		}
 	}
+}
+
+static struct led_trigger_struct *led_find_trigger(struct led *led)
+{
+	struct led_trigger_struct *led_trigger;
+
+	list_for_each_entry(led_trigger, &led_triggers, list)
+		if (led_trigger->led == led)
+			return led_trigger;
+
+	return NULL;
+}
 
-	led_set(triggers[trigger].led, type == TRIGGER_ENABLE ? triggers[trigger].led->max_value : 0);
+void led_trigger_disable(struct led *led)
+{
+	struct led_trigger_struct *led_trigger;
+
+	led_trigger = led_find_trigger(led);
+	if (!led_trigger)
+		return;
+
+	list_del(&led_trigger->list);
+
+	led_set(led, 0);
+
+	free(led_trigger);
 }
 
 /**
@@ -86,40 +122,73 @@ void led_trigger(enum led_trigger trigger, enum trigger_type type)
  */
 int led_set_trigger(enum led_trigger trigger, struct led *led)
 {
-	int i;
+	struct led_trigger_struct *led_trigger;
 
 	if (trigger >= LED_TRIGGER_MAX)
 		return -EINVAL;
 
-	if (led)
-		for (i = 0; i < LED_TRIGGER_MAX; i++)
-			if (triggers[i].led == led)
-				return -EBUSY;
+	led_trigger_disable(led);
 
-	if (triggers[trigger].led && !led)
-		led_set(triggers[trigger].led, 0);
+	led_trigger = xzalloc(sizeof(*led_trigger));
 
-	triggers[trigger].led = led;
+	led_trigger->led = led;
+	led_trigger->trigger = trigger;
+	list_add_tail(&led_trigger->list, &led_triggers);
 
-	if (led && trigger == LED_TRIGGER_DEFAULT_ON)
-		led_set(triggers[trigger].led, triggers[trigger].led->max_value);
-	if (led && trigger == LED_TRIGGER_HEARTBEAT)
+	if (trigger == LED_TRIGGER_DEFAULT_ON)
+		led_set(led, led->max_value);
+	if (trigger == LED_TRIGGER_HEARTBEAT)
 		led_blink(led, 200, 1000);
 
 	return 0;
 }
 
+static char *trigger_names[] = {
+	[LED_TRIGGER_PANIC] = "panic",
+	[LED_TRIGGER_HEARTBEAT] = "heartbeat",
+	[LED_TRIGGER_NET_RX] = "net-rx",
+	[LED_TRIGGER_NET_TX] = "net-tx",
+	[LED_TRIGGER_NET_TXRX] = "net",
+	[LED_TRIGGER_DEFAULT_ON] = "default-on",
+};
+
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
+
 /**
- * led_get_trigger - get the LED for a trigger
- * @param trigger	The trigger to set a LED for
- *
- * return the LED number of a trigger.
+ * led_triggers_show_info - Show information about all registered
+ * triggers
  */
-int led_get_trigger(enum led_trigger trigger)
+void led_triggers_show_info(void)
 {
-	if (trigger >= LED_TRIGGER_MAX)
-		return -EINVAL;
-	if (!triggers[trigger].led)
-		return -ENODEV;
-	return led_get_number(triggers[trigger].led);
+	struct led_trigger_struct *led_trigger;
+	int i;
+
+	for (i = 0; i < LED_TRIGGER_MAX; i++) {
+		printf("%s", trigger_name(i));
+
+		list_for_each_entry(led_trigger, &led_triggers, list) {
+			struct led *led = led_trigger->led;
+
+			if (led_trigger->trigger != i)
+				continue;
+
+			printf("\n  LED %d (%s)", led->num, led->name);
+		}
+
+		printf("\n");
+	}
 }
diff --git a/include/led.h b/include/led.h
index fb5c48b9e..0ce857129 100644
--- a/include/led.h
+++ b/include/led.h
@@ -49,6 +49,7 @@ enum led_trigger {
 	LED_TRIGGER_NET_TXRX,
 	LED_TRIGGER_DEFAULT_ON,
 	LED_TRIGGER_MAX,
+	LED_TRIGGER_INVALID = LED_TRIGGER_MAX,
 };
 
 enum trigger_type {
@@ -59,6 +60,7 @@ enum trigger_type {
 
 #ifdef CONFIG_LED_TRIGGERS
 int led_set_trigger(enum led_trigger trigger, struct led *led);
+void led_trigger_disable(struct led *led);
 void led_trigger(enum led_trigger trigger, enum trigger_type);
 #else
 static inline int led_set_trigger(enum led_trigger trigger, struct led *led)
@@ -71,7 +73,9 @@ static inline void led_trigger(enum led_trigger trigger, enum trigger_type type)
 }
 #endif
 
-int led_get_trigger(enum led_trigger trigger);
+void led_triggers_show_info(void);
+const char *trigger_name(enum led_trigger trigger);
+enum led_trigger trigger_by_name(const char *name);
 
 void led_of_parse_trigger(struct led *led, struct device_node *np);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
