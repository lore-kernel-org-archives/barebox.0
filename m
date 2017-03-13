Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnMMh-0004tq-Vc
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 09:34:11 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 13 Mar 2017 10:33:37 +0100
Message-Id: <20170313093339.12597-3-o.rempel@pengutronix.de>
In-Reply-To: <20170313093339.12597-1-o.rempel@pengutronix.de>
References: <20170313093339.12597-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 2/4] led: Add blink/flash to led command
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

The LED framework now supports blinking/flashing LEDs, so
add this functionality to the led command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/led.c | 44 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/commands/led.c b/commands/led.c
index 354f74df8..a53f0df6a 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -29,6 +29,44 @@ static int do_led(int argc, char *argv[])
 	unsigned long value;
 	struct led *led;
 	int ret;
+	int opt;
+	int flash = 0, blink = 0;
+	int blink_on_ms = 500;
+	int blink_off_ms = 500;
+
+	while ((opt = getopt(argc, argv, "fb")) > 0) {
+		switch(opt) {
+		case 'f':
+			flash = 1;
+			break;
+		case 'b':
+			blink = 1;
+			break;
+		}
+	}
+
+	if (flash || blink) {
+		int args = argc - optind;
+
+		if (!args || (flash && blink))
+			return COMMAND_ERROR_USAGE;
+
+		led = led_by_name_or_number(argv[optind]);
+		if (!led) {
+			printf("no such LED: %s\n", argv[optind]);
+			return 1;
+		}
+
+		if (args > 1)
+			blink_on_ms = simple_strtoul(argv[optind + 1], NULL, 0);
+		if (args > 2)
+			blink_off_ms = simple_strtoul(argv[optind + 2], NULL, 0);
+
+		if (flash)
+			return led_flash(led, blink_on_ms);
+		if (blink)
+			return led_blink(led, blink_on_ms, blink_off_ms);
+	}
 
 	if (argc == 1) {
 		int i = 0;
@@ -73,9 +111,13 @@ static int do_led(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(led)
 BAREBOX_CMD_HELP_TEXT("Control the value of a LED. The exact meaning of VALUE is unspecified,")
 BAREBOX_CMD_HELP_TEXT("it can be a brightness, or a color. Most often a value of '1' means on")
-BAREBOX_CMD_HELP_TEXT("and '0' means off.")
+BAREBOX_CMD_HELP_TEXT("and '0' means off. Basic usage is 'led <led> <value>'. LEDs can be given")
+BAREBOX_CMD_HELP_TEXT("by name or number.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Without arguments the available LEDs are listed.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b <led> [duration-on-ms] [duration-off-ms]",  "blink a LED")
+BAREBOX_CMD_HELP_OPT ("-f <led> [duration-ms]",  "flash a LED")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(led)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
