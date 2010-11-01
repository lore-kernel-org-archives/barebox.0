Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq6-0007oM-2E
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:10 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:51 +0100
Message-Id: <1288600434-6112-19-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 18/21] doc: unify documentation for 'erase'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/flash.c |   30 ++++++++++++++++--------------
 1 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/commands/flash.c b/commands/flash.c
index 20f5cfc..c855c88 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -83,10 +83,10 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_erase_help[] =
-"Usage: erase <device> [area]\n"
-"Erase a flash device or parts of a device if an area specification\n"
-"is given\n";
+BAREBOX_CMD_HELP_START(erase)
+BAREBOX_CMD_HELP_USAGE("erase <device> [area]")
+BAREBOX_CMD_HELP_SHORT("Erase a flash device or parts of a device if an area specification is given.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(erase)
 	.cmd		= do_flerase,
@@ -94,16 +94,18 @@ BAREBOX_CMD_START(erase)
 	BAREBOX_CMD_HELP(cmd_erase_help)
 BAREBOX_CMD_END
 
-/** @page erase_command erase Erase flash memory
- *
- * Usage is: erase \<devicee>
- *
- * Erase the flash memory behind the device. It depends on the device given,
- * what area will be erased. If the device represents the whole flash memory
- * the whole memory will be erased. If the device represents a partition on
- * a main flash memory, only this partition part will be erased.
- *
- * Refer \b addpart, \b delpart and \b devinfo for partition handling.
+/**
+ * @page erase_command
+
+<p> Erase the flash memory handled by this device. Which area will be
+erased depends on the device: If the device represents the whole flash
+memory, the whole memory will be erased. If the device represents a
+partition on a main flash memory, only this partition part will be
+erased. </p>
+
+Refer to \ref addpart_command, \ref delpart_command and \ref
+devinfo_command for partition handling.
+
  */
 
 static int do_protect(struct command *cmdtp, int argc, char *argv[])
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
