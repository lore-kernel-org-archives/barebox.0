Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xg-OR
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:55 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:35 +0100
Message-Id: <1288703442-5032-7-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 06/13] doc: unify documentation for 'protect' and 'unprotect'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/flash.c |   76 ++++++++++++++++++++++++++++++++----------------------
 1 files changed, 45 insertions(+), 31 deletions(-)

diff --git a/commands/flash.c b/commands/flash.c
index 4549f0a..c49de33 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -162,43 +162,57 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_protect_help[] =
-"Usage: (un)protect <device> [area]\n"
-"(un)protect a flash device or parts of a device if an area specification\n"
-"is given\n";
+BAREBOX_CMD_HELP_START(protect)
+BAREBOX_CMD_HELP_USAGE("protect <device> [area]\n")
+BAREBOX_CMD_HELP_SHORT("protect a flash device (or parts of a device, if an area is specified)\n")
+BAREBOX_CMD_HELP_END
 
-BAREBOX_CMD_START(protect)
+BAREBOX_CMD_START(erase)
 	.cmd		= do_protect,
-	.usage		= "enable FLASH write protection",
+	.usage		= "enable flash write protection",
 	BAREBOX_CMD_HELP(cmd_protect_help)
 BAREBOX_CMD_END
 
-BAREBOX_CMD_START(unprotect)
-	.cmd		= do_protect,
-	.usage		= "disable FLASH write protection",
-	BAREBOX_CMD_HELP(cmd_protect_help)
-BAREBOX_CMD_END
+/**
+ * @page protect_command
+
+Protect the flash memory behind the device. It depends on the device
+given, what area will be protected. If the device represents the whole
+flash memory the whole memory will be protected. If the device
+represents a partition on a main flash memory, only this partition part
+will be protected.
+
+Refer addpart_command, delpart_command and devinfo_command for partition
+handling.
+
+\todo Rework this documentation, what is an 'area'? Explain more about
+flashes here.
 
-/** @page protect_command protect Protect a flash memory
- *
- * Usage is: protect \<devicee>
- *
- * Protect the flash memory behind the device. It depends on the device given,
- * what area will be protected. If the device represents the whole flash memory
- * the whole memory will be protected. If the device represents a partition on
- * a main flash memory, only this partition part will be protected.
- *
- * Refer \b addpart, \b delpart and \b devinfo for partition handling.
  */
 
-/** @page unprotect_command unprotect Unprotect a flash memory
- *
- * Usage is: unprotect \<devicee>
- *
- * Unprotect the flash memory behind the device. It depends on the device given,
- * what area will be unprotected. If the device represents the whole flash memory
- * the whole memory will be unprotected. If the device represents a partition
- * on a main flash memory, only this partition part will be unprotected.
- *
- * Refer \b addpart, \b delpart and \b devinfo for partition handling.
+BAREBOX_CMD_HELP_START(unprotect)
+BAREBOX_CMD_HELP_USAGE("unprotect <device> [area]\n")
+BAREBOX_CMD_HELP_SHORT("unprotect a flash device (or parts of a device, if an area is specified)\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(erase)
+	.cmd		= do_unprotect,
+	.usage		= "enable flash write protection",
+	BAREBOX_CMD_HELP(cmd_unprotect_help)
+BAREBOX_CMD_END
+
+/**
+ * @page unprotect_command
+
+Unprotect the flash memory behind the device. It depends on the device given,
+what area will be unprotected. If the device represents the whole flash memory
+the whole memory will be unprotected. If the device represents a partition
+on a main flash memory, only this partition part will be unprotected.
+
+Refer addpart_command, delpart_command and devinfo_command for partition
+handling.
+
+\todo Rework this documentation, what does it mean?
+
  */
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
