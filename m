Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-0000zv-9L
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:09:57 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCp-0005eI-UH
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:31 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:38 +0100
Message-Id: <20be88d72bbe97474097bf96b2999e7fd2c763c7.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 2/9] trivial: relocate doxygen help page for led command
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 Documentation/commands.dox |    1 +
 commands/led.c             |   16 +++++++++-------
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 2b5bc44..31183ec 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -58,6 +58,7 @@ available in @a Barebox:
 @li @subpage icache
 @li @subpage iminfo
 @li @subpage insmod
+@li @subpage led_command
 @li @subpage linux16_command
 @li @subpage loadenv_command
 @li @subpage loadb
diff --git a/commands/led.c b/commands/led.c
index 7fd9d44..2591ed0 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -74,21 +74,23 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+
+BAREBOX_CMD_HELP_START(led)
+BAREBOX_CMD_HELP_USAGE("led <led> <value>\n")
+BAREBOX_CMD_HELP_SHORT("control the value of a LED. a value of 0 means disabled\n")
+BAREBOX_CMD_HELP_SHORT("without arguments the available LEDs are listed\n")
+BAREBOX_CMD_HELP_END
+
 /**
  * @page led_command
 
-The exact meaning of <value> is unspecified. It can be a color in case of rgb
+The exact meaning of &lt;value&gt; is unspecified. It can be a color in case of rgb
 LEDs or a brightness if this is controllable. In most cases only 1 for enabled
 is allowed.
 
+\note This command is available only if enabled in menuconfig.
 */
 
-BAREBOX_CMD_HELP_START(led)
-BAREBOX_CMD_HELP_USAGE("led <led> <value>\n")
-BAREBOX_CMD_HELP_SHORT("control the value of a LED. a value of 0 means disabled\n")
-BAREBOX_CMD_HELP_SHORT("without arguments the available LEDs are listed\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(led)
 	.cmd		= do_led,
 	.usage		= "led <led> <value>",
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
