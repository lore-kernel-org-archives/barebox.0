Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xf-O3
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:55 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:33 +0100
Message-Id: <1288703442-5032-5-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 04/13] doc: unify documentation for 'mount'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/mount.c |   78 +++++++++++++++++++++++++----------------------------
 1 files changed, 37 insertions(+), 41 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 8e4388e..52d1700 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -58,49 +58,45 @@ static int do_mount(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_mount_help[] =
-"Usage: mount:         list mounted filesystems\n"
-"or:    mount <device> <fstype> <mountpoint>\n"
-"\n"
-"Mount a filesystem of a given type to a mountpoint.\n"
-"<device> can be one of /dev/* or some arbitrary string if no\n"
-"device is needed for this driver (for example ramfs).\n"
-"<fstype> is the filesystem driver to use. Try the 'devinfo' command\n"
-"for a list of available drivers.\n"
-"<mountpoint> must be an empty directory descending directly from the\n"
-"root directory.\n";
+BAREBOX_CMD_HELP_START(mount)
+BAREBOX_CMD_HELP_USAGE("mount [<device> <fstype> <mountpoint>]\n")
+BAREBOX_CMD_HELP_SHORT("Mount a filesystem of a given type to a mountpoint.\n")
+BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
+BAREBOX_CMD_HELP_END
 
-BAREBOX_CMD_START(mount)
-	.cmd		= do_mount,
-	.usage		= "mount a filesystem to a device",
-	BAREBOX_CMD_HELP(cmd_mount_help)
-BAREBOX_CMD_END
+/**
+ * @page mount_command
+
+<ul>
+<li>\<device> can be a device in /dev or some arbitrary string if no
+    device is needed for this driver, i.e. on ramfs. </li>
+<li>\<fstype> is the filesystem driver. A list of available drivers can
+    be shown with the \ref devinfo_command command.</li>
+<li>\<mountpoint> must be an empty directory, one level below the /
+    directory.</li>
+</ul>
 
-/** @page mount_command mount
- * Usage: mount [\<device> \<fstype> \<mountpoint>]
- *
- * Mounts a filesystem of a given \<fstype> on a \<device> to a \<mountpoint>.
- * \<device> can be one of /dev/ * or some arbitrary string if no
- * device is needed for this driver (for example ramfs).
- *
- * \<fstype> is the filesystem driver to use. Try the 'devinfo' command
- * for a list of available drivers.
- *
- * \<mountpoint> must be an empty directory descending directly from the
- * root directory.
  */
 
-/** @page how_mount_works How mount works in barebox
- *
- * Mounting a filesystem ontop of a device is working like devices and drivers
- * are finding together.
- *
- * The mount command creates a new device with the filesystem name as the
- * driver for this "device". So the framework is able to merge both parts
- * together.
- *
- * By the way: With this feature its impossible to accidentely remove
- * partitions in use. A partition is internally also a device. If its mounted
- * it will be marked as busy, so an delpart command fails, until the filesystem
- * has been unmounted.
+/**
+ * @page how_mount_works How mount works in barebox
+
+Mounting a filesystem ontop of a device is working like devices and
+drivers are finding together.
+
+The mount command creates a new device with the filesystem name as the
+driver for this "device". So the framework is able to merge both parts
+together.
+
+By the way: With this feature its impossible to accidentely remove
+partitions in use. A partition is internally also a device. If its
+mounted it will be marked as busy, so an delpart command fails, until
+the filesystem has been unmounted.
+
  */
+
+BAREBOX_CMD_START(mount)
+	.cmd		= do_mount,
+	.usage		= "Mount a filesystem of a given type to a mountpoint or list mounted filesystems.",
+	BAREBOX_CMD_HELP(cmd_mount_help)
+BAREBOX_CMD_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
