Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.97.mail-out.ovh.net ([87.98.174.141]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUjmL-0003yX-3n
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 18:16:26 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id A91E54A7326
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 20:16:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Jun 2011 20:03:04 +0200
Message-Id: <1307642584-23695-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [RFC PATCH] cammand/gpio: switch to getopt
To: barebox@lists.infradead.org

this will simplify the implementation and save 296 bytes

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/gpio.c |  162 ++++++++++++++++++++++--------------------------------
 1 files changed, 66 insertions(+), 96 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 073c9d3..af1fd39 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -19,113 +19,83 @@
 #include <command.h>
 #include <errno.h>
 #include <gpio.h>
+#include <getopt.h>
 
-static int do_gpio_get_value(struct command *cmdtp, int argc, char *argv[])
+static int do_gpio(struct command *cmdtp, int argc, char *argv[])
 {
-	int gpio, value;
+	int opt;
+	int gpio = -1;
+	int value = -1;
+	int mode = -1;
+	int ret = 0;
 
-	if (argc < 2)
+	if (!argc)
 		return COMMAND_ERROR_USAGE;
 
-	gpio = simple_strtoul(argv[1], NULL, 0);
-
-	value = gpio_get_value(gpio);
-	if (value < 0)
+	while((opt = getopt(argc, argv, "g:oiS:G")) > 0) {
+		switch(opt) {
+		case 'g':
+			gpio = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'o':
+			mode = 1;
+			break;
+		case 'i':
+			mode = 2;
+			break;
+		case 'G':
+			mode = 3;
+			value = 0;
+			break;
+		case 'S':
+			if (mode != 1)
+				mode = 4;
+			value = simple_strtoul(optarg, NULL, 0);
+			break;
+
+		}
+	}
+
+	if (gpio < 0 || mode < 0 || value < 0)
 		return 1;
 
-	return value;
-}
-
-BAREBOX_CMD_HELP_START(gpio_get_value)
-BAREBOX_CMD_HELP_USAGE("gpio_get_value <gpio>\n")
-BAREBOX_CMD_HELP_SHORT("get the value of an gpio input pin\n")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(gpio_get_value)
-	.cmd		= do_gpio_get_value,
-	.usage		= "return value of a gpio pin",
-	BAREBOX_CMD_HELP(cmd_gpio_get_value_help)
-BAREBOX_CMD_END
-
-static int do_gpio_set_value(struct command *cmdtp, int argc, char *argv[])
-{
-	int gpio, value;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	gpio = simple_strtoul(argv[1], NULL, 0);
-	value = simple_strtoul(argv[2], NULL, 0);
-
-	gpio_set_value(gpio, value);
-
-	return 0;
-}
-
-BAREBOX_CMD_HELP_START(gpio_set_value)
-BAREBOX_CMD_HELP_USAGE("gpio_set_value <gpio> <value>\n")
-BAREBOX_CMD_HELP_SHORT("set the value of an gpio output pin\n")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(gpio_set_value)
-	.cmd		= do_gpio_set_value,
-	.usage		= "set a gpio's output value",
-	BAREBOX_CMD_HELP(cmd_gpio_set_value_help)
-BAREBOX_CMD_END
-
-static int do_gpio_direction_input(struct command *cmdtp, int argc, char *argv[])
-{
-	int gpio, ret;
-
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	gpio = simple_strtoul(argv[1], NULL, 0);
-
-	ret = gpio_direction_input(gpio);
-	if (ret)
-		return 1;
-
-	return 0;
-}
-
-BAREBOX_CMD_HELP_START(gpio_direction_input)
-BAREBOX_CMD_HELP_USAGE("gpio_direction_input <gpio>\n")
-BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to input\n")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(gpio_direction_input)
-	.cmd		= do_gpio_direction_input,
-	.usage		= "set direction of a gpio pin to input",
-	BAREBOX_CMD_HELP(cmd_gpio_direction_input_help)
-BAREBOX_CMD_END
-
-static int do_gpio_direction_output(struct command *cmdtp, int argc, char *argv[])
-{
-	int gpio, value, ret;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	gpio = simple_strtoul(argv[1], NULL, 0);
-	value = simple_strtoul(argv[2], NULL, 0);
+	switch (mode) {
+	case 1:
+		ret = gpio_direction_input(gpio);
+		break;
+	case 2:
+		ret = gpio_direction_output(gpio, value);
+		break;
+	case 3:
+		value = gpio_get_value(gpio);
+		if (value < 0)
+			return 1;
+		return value;
+	case 4:
+		gpio_set_value(gpio, value);
+		break;
+	}
 
-	ret = gpio_direction_output(gpio, value);
 	if (ret)
 		return 1;
 
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(gpio_direction_output)
-BAREBOX_CMD_HELP_USAGE("gpio_direction_output <gpio> <value>\n")
-BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to output\n")
+BAREBOX_CMD_HELP_START(gpio)
+BAREBOX_CMD_HELP_USAGE("gpio -g <gpio> [-o|-i] [-g|-s <value>]\n")
+BAREBOX_CMD_HELP_SHORT("gpio management\n")
+BAREBOX_CMD_HELP_OPT  ("-g <gpio>",	"gpio number\n")
+BAREBOX_CMD_HELP_OPT  ("-o",		"output mode (you need to specify a value\n")
+BAREBOX_CMD_HELP_OPT  ("-i",		"input mode\n")
+BAREBOX_CMD_HELP_OPT  ("-G",		"get value\n")
+BAREBOX_CMD_HELP_OPT  ("-S",		"set value\n")
 BAREBOX_CMD_HELP_END
 
-BAREBOX_CMD_START(gpio_direction_output)
-	.cmd		= do_gpio_direction_output,
-	.usage		= "set direction of a gpio pin to output",
-	BAREBOX_CMD_HELP(cmd_gpio_direction_output_help)
+BAREBOX_CMD_START(gpio)
+	.cmd		= do_gpio,
+	.usage		= "gpio management",
+	BAREBOX_CMD_HELP(cmd_gpio_help)
 BAREBOX_CMD_END
 
 /**
@@ -133,7 +103,7 @@ BAREBOX_CMD_END
 
 @section regular_gpio General usage information
 
-These commands are available if the symbol @b CONFIG_GENERIC_GPIO and @b
+The gpio command are available if the symbol @b CONFIG_GENERIC_GPIO and @b
 CONFIG_CMD_GPIO are enabled in Kconfig.
 
 @note All gpio related commands take a number to identify the pad. This
@@ -143,7 +113,7 @@ between @b barebox releases.
 
 @section gpio_dir_out Use Pad as GPIO Output
 @verbatim
-# gpio_direction_output <gpio_no> <initial_value>
+# gpio -g <gpio_no> -S <initial_value>
 @endverbatim
 - gpio_no: Architecture dependend GPIO number
 - initial_value: Output value
@@ -155,7 +125,7 @@ available), this command may silently fail. </p>
 
 @section gpio_dir_in Use Pad as GPIO Input
 @verbatim
-# gpio_direction_input <gpio_no>
+# gpio -g <gpio_no> -i
 @endverbatim
 - gpio_no: Architecture dependent GPIO number
 
@@ -164,7 +134,7 @@ this command may silently fail. </p>
 
 @section gpio_get_value Read Input Value from GPIO Pin
 @verbatim
-# gpio_get_value <gpio_no>
+# gpio -g <gpio_no> -G
 @endverbatim
 
 <p> Reads the current value of a GPIO pin and return the value as a
@@ -178,7 +148,7 @@ fail and return garbage. </p>
 
 @section gpio_set_value Set Output Value on GPIO Pin
 @verbatim
-# gpio_set_value <gpio_no> <value>
+# gpio -g <gpio_no> -S <value>
 @endverbatim
 - gpio_no: Architecture dependent GPIO number
 - value: Output value
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
