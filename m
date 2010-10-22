Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HbO-00071F-GK
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:24:11 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 15:24:00 +0200
References: <201010221058.01249.jbe@pengutronix.de>
	<034801cb71e8$d8d10740$8a7315c0$@cpdesign.com.au>
In-Reply-To: <034801cb71e8$d8d10740$8a7315c0$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010221524.00862.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] Add some help using the gpio commands at runtime
To: barebox@lists.infradead.org, marc@cpdesign.com.au

From: Juergen Beisert <jbe@pengutronix.de>
Subject: [PATCH] Add some help using the gpio commands at runtime

Last time I used the gpio commands I was somehow confused about the behaviour
of the 'gpio_get_value' command. So, I decided to add some doc for it. Here's
the result.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 Documentation/commands.dox |    1 
 commands/gpio.c            |   61 
+++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)

Index: barebox-2010.10.0/Documentation/commands.dox
===================================================================
--- barebox-2010.10.0.orig/Documentation/commands.dox
+++ barebox-2010.10.0/Documentation/commands.dox
@@ -10,6 +10,7 @@
 @li @subpage edit_command
 @li @subpage erase_command
 @li @subpage export_command
+@li @subpage gpio_for_users
 @li @subpage tftp_command
 @li @subpage loadenv_command
 @li @subpage mount_command
Index: barebox-2010.10.0/commands/gpio.c
===================================================================
--- barebox-2010.10.0.orig/commands/gpio.c
+++ barebox-2010.10.0/commands/gpio.c
@@ -120,3 +120,64 @@ BAREBOX_CMD_START(gpio_direction_output)
 	BAREBOX_CMD_HELP(cmd_gpio_direction_output_help)
 BAREBOX_CMD_END
 
+/**
+@page gpio_for_users Runtime GPIO handling
+
+@section regular_gpio General usage information
+
+These commands are available if the symbol @b CONFIG_GENERIC_GPIO and
+@b CONFIG_CMD_GPIO are enabled in the Kconfig.
+
+@note All gpio related commands take a number to identify the pad. This
+number is architecture dependent. There may be no intuitional correlation
+between available pads and the GPIO numbers to be used in the commands. Due
+to this it's also possible the numbers change between @b barebox releases.
+
+@section gpio_dir_out Switch a pad into an output GPIO
+@verbatim
+gpio_direction_output <gpio_no> <initial_value>
+@endverbatim
+- @b gpio_no Architecture dependent GPIO number
+- @b initial_value Output value the pad should emit
+
+@note To avoid glitches on the pad's line, the routines will first setting up
+the pad's value and after that switching the pad itself to output (if the
+silicon is able to do so)
+
+@note If the pad is already configured into a non GPIO mode (if available)
+this command may fail (silently)
+
+@section gpio_dir_in Switch a pad into an input GPIO
+@verbatim
+gpio_direction_input <gpio_no>
+@endverbatim
+- @b gpio_no Architecture dependent GPIO number
+
+@note If the pad is already configured into a non GPIO mode (if available)
+this command may fail (silently)
+
+@section gpio_get_value Read in the value of an GPIO input pad
+@verbatim
+gpio_get_value <gpio_no>
+@endverbatim
+
+Reads in the current pad's line value from the given GPIO number. It returns
+the value as a shell return code. There is no visible output at stdout. You
+can check the return value by using "echo $?"
+
+@note If the return code is not '0' or '1' it's meant as an error code.
+
+@note If the pad is not configured for GPIO mode this command may fail
+(silently) and returns garbage
+
+@section gpio_set_value Set a new value to a GPIO output pad
+@verbatim
+gpio_set_value <gpio_no> <value>
+@endverbatim
+- @b gpio_no Architecture dependent GPIO number
+- @b value Output value the pad should emit
+
+Sets a new output @b value to the pad with GPIO number @b gpio_no
+
+@note If the pad is not configured for GPIO mode this command may fail 
(silently)
+*/



-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
