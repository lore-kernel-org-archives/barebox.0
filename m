Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpqR-0003EY-TI
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:25 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:52 +0100
Message-Id: <1288600434-6112-20-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 19/21] doc: rework and unify documentation for gpio commands
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox     |    5 ++-
 Documentation/users_manual.dox |    1 +
 commands/gpio.c                |  100 +++++++++++++++++++++------------------
 3 files changed, 59 insertions(+), 47 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index aa489e0..2b949f7 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -30,7 +30,10 @@ available in @a Barebox:
 @li @subpage edit_command
 @li @subpage erase_command
 @li @subpage export_command
-@li @subpage gpio_for_users
+@li @subpage gpio_get_value_command
+@li @subpage gpio_set_value_command
+@li @subpage gpio_direction_input_command
+@li @subpage gpio_direction_output_command
 @li @subpage tftp_command
 @li @subpage loadenv_command
 @li @subpage ls_command
diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
index bbc7911..ea47b18 100644
--- a/Documentation/users_manual.dox
+++ b/Documentation/users_manual.dox
@@ -7,6 +7,7 @@ you find a lot of nice tricks on these pages to make your life easier.
 @li @subpage building
 @li @subpage first_steps
 @li @subpage command_reference
+@li @subpage gpio_for_users
 
 \todo Rework the following sections
 @li @subpage shell_notes
diff --git a/commands/gpio.c b/commands/gpio.c
index 6a949f2..3fb5c63 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -36,12 +36,14 @@ static int do_gpio_get_value(struct command *cmdtp, int argc, char *argv[])
 	return value;
 }
 
-static const __maybe_unused char cmd_gpio_get_value_help[] =
-"Usage: gpio_get_value <gpio>\n";
+BAREBOX_CMD_HELP_START(gpio_get_value)
+BAREBOX_CMD_HELP_USAGE("gpio_get_value <gpio>")
+BAREBOX_CMD_HELP_SHORT("get the value of an gpio input pin")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(gpio_get_value)
 	.cmd		= do_gpio_get_value,
-	.usage		= "return a gpio's value",
+	.usage		= "return value of a gpio pin",
 	BAREBOX_CMD_HELP(cmd_gpio_get_value_help)
 BAREBOX_CMD_END
 
@@ -60,8 +62,10 @@ static int do_gpio_set_value(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_gpio_set_value_help[] =
-"Usage: gpio_set_value <gpio> <value>\n";
+BAREBOX_CMD_HELP_START(gpio_set_value)
+BAREBOX_CMD_HELP_USAGE("gpio_set_value <gpio> <value>")
+BAREBOX_CMD_HELP_SHORT("set the value of an gpio output pin")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(gpio_set_value)
 	.cmd		= do_gpio_set_value,
@@ -85,12 +89,14 @@ static int do_gpio_direction_input(struct command *cmdtp, int argc, char *argv[]
 	return 0;
 }
 
-static const __maybe_unused char cmd_do_gpio_direction_input_help[] =
-"Usage: gpio_direction_input <gpio>\n";
+BAREBOX_CMD_HELP_START(gpio_direction_input)
+BAREBOX_CMD_HELP_USAGE("gpio_direction_input <gpio>")
+BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to input")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(gpio_direction_input)
 	.cmd		= do_gpio_direction_input,
-	.usage		= "set a gpio as output",
+	.usage		= "set direction of a gpio pin to input",
 	BAREBOX_CMD_HELP(cmd_do_gpio_direction_input_help)
 BAREBOX_CMD_END
 
@@ -111,73 +117,75 @@ static int do_gpio_direction_output(struct command *cmdtp, int argc, char *argv[
 	return 0;
 }
 
-static const __maybe_unused char cmd_gpio_direction_output_help[] =
-"Usage: gpio_direction_output <gpio> <value>\n";
+BAREBOX_CMD_HELP_START(gpio_direction_output)
+BAREBOX_CMD_HELP_USAGE("gpio_direction_output <gpio> <value>")
+BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to output")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(gpio_direction_output)
 	.cmd		= do_gpio_direction_output,
-	.usage		= "set a gpio as output",
+	.usage		= "set direction of a gpio pin to output",
 	BAREBOX_CMD_HELP(cmd_gpio_direction_output_help)
 BAREBOX_CMD_END
 
 /**
-@page gpio_for_users Runtime GPIO handling
+ * @page gpio_for_users GPIO Handling
 
 @section regular_gpio General usage information
 
-These commands are available if the symbol @b CONFIG_GENERIC_GPIO and
-@b CONFIG_CMD_GPIO are enabled in the Kconfig.
+These commands are available if the symbol @b CONFIG_GENERIC_GPIO and @b
+CONFIG_CMD_GPIO are enabled in Kconfig.
 
 @note All gpio related commands take a number to identify the pad. This
-number is architecture dependent. There may be no intuitional correlation
-between available pads and the GPIO numbers to be used in the commands. Due
-to this it's also possible the numbers change between @b barebox releases.
+number is architecture dependent and may not directly correlate with the
+pad numbers. Due to this, it is also possible that the numbers changes
+between @b barebox releases.
 
-@section gpio_dir_out Switch a pad into an output GPIO
+@section gpio_dir_out Use Pad as GPIO Output
 @verbatim
-gpio_direction_output <gpio_no> <initial_value>
+# gpio_direction_output <gpio_no> <initial_value>
 @endverbatim
-- @b gpio_no Architecture dependent GPIO number
-- @b initial_value Output value the pad should emit
+- gpio_no: Architecture dependend GPIO number
+- initial_value: Output value
 
-@note To avoid glitches on the pad's line, the routines will first setting up
-the pad's value and after that switching the pad itself to output (if the
-silicon is able to do so)
+<p> To avoid glitches on the pad the routines will first sett up the
+pad's value and afterwards switch the pad to output (if the silicon is
+able to do so). If the pad is already configured in non-GPIO mode (if
+available), this command may silently fail. </p>
 
-@note If the pad is already configured into a non GPIO mode (if available)
-this command may fail (silently)
-
-@section gpio_dir_in Switch a pad into an input GPIO
+@section gpio_dir_in Use Pad as GPIO Input
 @verbatim
-gpio_direction_input <gpio_no>
+# gpio_direction_input <gpio_no>
 @endverbatim
-- @b gpio_no Architecture dependent GPIO number
+- gpio_no: Architecture dependent GPIO number
 
-@note If the pad is already configured into a non GPIO mode (if available)
-this command may fail (silently)
+<p> If the pad is already configured in non-GPIO mode (if available),
+this command may silently fail. </p>
 
-@section gpio_get_value Read in the value of an GPIO input pad
+@section gpio_get_value Read Input Value from GPIO Pin
 @verbatim
-gpio_get_value <gpio_no>
+# gpio_get_value <gpio_no>
 @endverbatim
 
-Reads in the current pad's line value from the given GPIO number. It returns
-the value as a shell return code. There is no visible output at stdout. You
-can check the return value by using "echo $?"
+<p> Reads the current value of a GPIO pin and return the value as a
+shell return code. There is no visible output on stdout. You can check
+the return value by using "echo $?". </p>
 
-@note If the return code is not '0' or '1' it's meant as an error code.
+<p> A return code other than '0' or '1' specifies an error code. </p>
 
-@note If the pad is not configured for GPIO mode this command may fail
-(silently) and returns garbage
+<p> If the pad is not configured in GPIO mode, this command may silently
+fail and return garbage. </p>
 
-@section gpio_set_value Set a new value to a GPIO output pad
+@section gpio_set_value Set Output Value on GPIO Pin
 @verbatim
-gpio_set_value <gpio_no> <value>
+# gpio_set_value <gpio_no> <value>
 @endverbatim
-- @b gpio_no Architecture dependent GPIO number
-- @b value Output value the pad should emit
+- gpio_no: Architecture dependent GPIO number
+- value: Output value
+
+<p> Set a new output value on pad with GPIO number \<gpio_no>. </p>
 
-Sets a new output @b value to the pad with GPIO number @b gpio_no
+<p> If the pad is not configured in GPIO-mode, this command may silently
+fail. </p>
 
-@note If the pad is not configured for GPIO mode this command may fail (silently)
 */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
